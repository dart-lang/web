// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

import '../ast/base.dart';
import '../ast/declarations.dart';
import '../config.dart';
import '../js/helpers.dart';
import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';
import 'namer.dart';
import 'parser.dart';
import 'qualified_name.dart';
import 'transform/transformer.dart';

void _setGlobalOptions(Config config) {
  GlobalOptions.variadicArgsCount = config.functions?.varArgs ?? 4;
}

typedef ProgramDeclarationMap = Map<String, NodeMap>;

class TransformResult {
  ProgramDeclarationMap programDeclarationMap;

  TransformResult._(this.programDeclarationMap);

  // TODO(https://github.com/dart-lang/web/issues/388): Handle union of overloads
  //  (namespaces + functions, multiple interfaces, etc)
  Map<String, String> generate(Config config) {
    final formatter = DartFormatter(
        languageVersion: DartFormatter.latestShortStyleLanguageVersion);

    _setGlobalOptions(config);

    return programDeclarationMap.map((file, declMap) {
      final emitter =
          DartEmitter.scoped(useNullSafetySyntax: true, orderDirectives: true);
      final specs = declMap.values
          .map((d) {
            return switch (d) {
              final Declaration n => n.emit(),
              final Type _ => null,
            };
          })
          .nonNulls
          .whereType<Spec>();
      final lib = Library((l) {
        if (config.preamble case final preamble?) {
          l.comments.addAll(const LineSplitter().convert(preamble).map((l) {
            if (l.startsWith('//')) {
              return l.replaceFirst(RegExp(r'^\/\/\s*'), '');
            }
            return l;
          }));
        }
        l
          ..ignoreForFile.addAll([
            'constant_identifier_names',
            'non_constant_identifier_names',
            if (declMap.values
                .any((d) => d is NestableDeclaration && d.parent != null))
              'camel_case_types',
          ])
          ..body.addAll(specs);
      });
      return MapEntry(
          file.replaceAll('.d.ts', '.dart'),
          formatter.format('${lib.accept(emitter)}'
              .replaceAll('static external', 'external static')));
    });
  }
}

/// A map of declarations, where the key is the declaration's stringified [ID].
extension type NodeMap._(Map<String, Node> decls) implements Map<String, Node> {
  NodeMap([Map<String, Node>? decls]) : decls = decls ?? <String, Node>{};

  List<Node> findByName(String name) {
    return decls.entries
        .where((e) {
          final n = UniqueNamer.parse(e.key).name;
          if (!n.contains('.')) return n == name;

          final qualifiedName = QualifiedName.raw(n);
          return qualifiedName.last.part == name;
        })
        .map((e) => e.value)
        .toList();
  }

  List<Node> findByQualifiedName(QualifiedName qName) {
    return decls.entries
        .where((e) {
          final name = UniqueNamer.parse(e.key).name;
          final qualifiedName = QualifiedName.raw(name);
          return qualifiedName.map((n) => n.part) == qName.map((n) => n.part);
        })
        .map((e) => e.value)
        .toList();
  }

  void add(Node decl) => decls[decl.id.toString()] = decl;
}

/// A program map is a map used for handling the context of
/// transforming and resolving declarations across files in the project.
///
/// This helps us to work with imports and exports across files, and allow for
/// quick transformation of declarations in files without having to re-transform
/// declarations already generated for.
///
/// It keeps references of transformers and nodemaps (if already built) of files
/// in the project using [p.PathMap]s (to allow easy indexing).
///
/// It also contains the program context [program] and declarations to filter
/// out for via [filterDeclSet]
///
/// It is responsible for generating and updating/memoizing the individual transformer
/// for a given file
class ProgramMap {
  /// A map of files to already generated [NodeMap]s
  ///
  /// If a file is not included here, its node map is not complete
  /// and should be generated via [_activeTransformers]
  final p.PathMap<NodeMap> _pathMap = p.PathMap.of({});

  final p.PathMap<Transformer> _activeTransformers = p.PathMap.of({});

  /// The typescript program for the given project
  final ts.TSProgram program;

  /// The type checker for the given program
  ///
  /// It is generated as this to prevent having to regenerate it multiple times
  final ts.TSTypeChecker typeChecker;

  /// The files in the given project
  final p.PathSet files;

  final List<String> filterDeclSet;

  final bool generateAll;

  ProgramMap(this.program, List<String> files,
      {this.filterDeclSet = const [], bool? generateAll})
      : typeChecker = program.getTypeChecker(),
        generateAll = generateAll ?? false,
        files = p.PathSet.of(files);

  /// Find the node definition for a given declaration named [declName]
  /// or associated with a TypeScript node [node] from the map of files
  List<Node>? getDeclarationRef(String file, TSNode node, [String? declName]) {
    // check
    NodeMap nodeMap;
    if (_pathMap.containsKey(file)) {
      nodeMap = _pathMap[file]!;
    } else {
      final src = program.getSourceFile(file);

      final transformer =
          _activeTransformers.putIfAbsent(file, () => Transformer(this, src));

      if (!transformer.nodes.contains(node)) {
        if (declName case final d?
            when transformer.nodeMap.findByName(d).isEmpty) {
          // find the source file decl
          if (src == null) return null;

          final symbol = typeChecker.getSymbolAtLocation(src)!;
          final exports = symbol.exports?.toDart ?? {};

          final targetSymbol = exports[d.toJS]!;

          transformer.transform(targetSymbol.getDeclarations()!.toDart.first);
        } else {
          transformer.transform(node);
        }
      }

      nodeMap = transformer.filterAndReturn();
      _activeTransformers[file] = transformer;
    }

    final name = declName ?? (node as TSNamedDeclaration).name?.text;
    return name == null ? null : nodeMap.findByName(name);
  }

  /// Get the node map for a given [file],
  /// transforming it and generating it if needed.
  NodeMap getNodeMap(String file) {
    final absolutePath = p.normalize(p.absolute(file));
    return _pathMap.putIfAbsent(absolutePath, () {
      final src = program.getSourceFile(file);

      if (src == null) return NodeMap({});

      final sourceSymbol = typeChecker.getSymbolAtLocation(src);

      // transform file
      _activeTransformers.putIfAbsent(
          absolutePath,
          () => Transformer(
                this,
                src,
                file: file,
              ));
      if (sourceSymbol == null || generateAll) {
        // fallback to transforming each node
        // TODO: This is a temporary fix to running this with @types/web
        ts.forEachChild(
            src,
            ((TSNode node) {
              // ignore end of file
              if (node.kind == TSSyntaxKind.EndOfFileToken) return;

              _activeTransformers[absolutePath]!.transform(node);
            }).toJS as ts.TSNodeCallback);
      } else {
        final exportedSymbols = sourceSymbol.exports?.toDart;

        for (final MapEntry(value: symbol)
            in exportedSymbols?.entries ?? <MapEntry<JSString, TSSymbol>>[]) {
          final decls = symbol.getDeclarations()?.toDart ?? [];
          try {
            final aliasedSymbol = typeChecker.getAliasedSymbol(symbol);
            decls.addAll(aliasedSymbol.getDeclarations()?.toDart ?? []);
          } catch (_) {
            // throws error if no aliased symbol, so ignore
          }
          for (final decl in decls) {
            _activeTransformers[absolutePath]!.transform(decl);
          }
        }
      }

      return _activeTransformers[absolutePath]!.filterAndReturn();
    });
  }
}

/// A transform manager is used for transforming the results from parsing
/// the TS files. It uses [ProgramMap] under the hood to manage the
/// transformation context while transforming through each file
class TransformerManager {
  final ProgramMap programMap;

  p.PathSet get inputFiles => programMap.files;

  ts.TSProgram get program => programMap.program;

  ts.TSTypeChecker get typeChecker => programMap.typeChecker;

  TransformerManager(ts.TSProgram program, List<String> inputFiles,
      {List<String> filterDeclSet = const [], bool? generateAll})
      : programMap = ProgramMap(program, inputFiles,
            filterDeclSet: filterDeclSet, generateAll: generateAll);

  TransformerManager.fromParsedResults(ParserResult result, {Config? config})
      : programMap = ProgramMap(result.program, result.files.toList(),
            filterDeclSet: config?.includedDeclarations ?? [],
            generateAll: config?.generateAll);

  TransformResult transform() {
    final outputNodeMap = <String, NodeMap>{};
    // run through each file
    for (final file in inputFiles) {
      // transform
      outputNodeMap[file!] = programMap.getNodeMap(file);
    }

    return TransformResult._(outputNodeMap);
  }
}
