// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import '../ast/base.dart';
import '../ast/declarations.dart';
import '../ast/helpers.dart';
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
  ProgramDeclarationMap commonTypes;
  bool multiFileOutput;

  TransformResult._(this.programDeclarationMap, {this.commonTypes = const {}})
    : multiFileOutput = programDeclarationMap.length > 1;

  // TODO(https://github.com/dart-lang/web/issues/388): Handle union of overloads
  //  (namespaces + functions, multiple interfaces, etc)
  Map<String, String> generate(Config config) {
    final formatter = DartFormatter(
      languageVersion: config.languageVersion,
    );

    _setGlobalOptions(config);

    return {...programDeclarationMap, ...commonTypes}.map((file, declMap) {
      final emitter = DartEmitter.scoped(
        useNullSafetySyntax: true,
        orderDirectives: true,
      );
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
          l.comments.addAll(
            const LineSplitter().convert(preamble).map((l) {
              if (l.startsWith('//')) {
                return l.replaceFirst(RegExp(r'^\/\/\s*'), '');
              }
              return l;
            }),
          );
        }
        var parentCaseIgnore = false;
        var anonymousIgnore = false;
        var tupleDecl = false;

        for (final value in declMap.values) {
          if (value is TupleDeclaration) tupleDecl = true;
          if (value.id.name.contains('Anonymous')) anonymousIgnore = true;
          if (value case NestableDeclaration(parent: final _?)) {
            parentCaseIgnore = true;
          }
        }
        l
          ..ignoreForFile.addAll({
            'constant_identifier_names',
            'non_constant_identifier_names',
            if (parentCaseIgnore) 'camel_case_types',
            if (anonymousIgnore) ...[
              'camel_case_types',
              'library_private_types_in_public_api',
              'unnecessary_parenthesis',
            ],
            if (tupleDecl) 'unnecessary_parenthesis',
          })
          ..body.addAll(specs);
      });
      return MapEntry(
        file.replaceAll('.d.ts', '.dart'),
        formatter.format(
          '${lib.accept(emitter)}'.replaceAll(
            'static external',
            'external static',
          ),
        ),
      );
    });
  }
}

/// A map of declarations, where the key is the declaration's stringified [ID].
extension type NodeMap<N extends Node>._(Map<String, N> decls)
    implements Map<String, N> {
  NodeMap([Map<String, N>? decls]) : decls = decls ?? <String, N>{};

  List<N> findByName(String name) {
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

  List<N> findByQualifiedName(QualifiedName qName) {
    return decls.entries
        .where((e) {
          final name = UniqueNamer.parse(e.key).name;
          final qualifiedName = QualifiedName.raw(name);
          return qualifiedName.map((n) => n.part) == qName.map((n) => n.part);
        })
        .map((e) => e.value)
        .toList();
  }

  void add(N decl) => decls[decl.id.toString()] = decl;
}

extension type TypeMap._(Map<String, Type> types) implements NodeMap<Type> {
  TypeMap([Map<String, Type>? types]) : types = types ?? <String, Type>{};

  @redeclare
  void add(Type decl) => types[decl.id.toString()] = decl;
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

  /// Common types shared across files in the program.
  ///
  /// This includes builtin supported types like `JSTuple`
  final p.PathMap<NodeMap<NamedDeclaration>> _commonTypes = p.PathMap.of({});

  /// The type checker for the given program
  ///
  /// It is generated as this to prevent having to regenerate it multiple times
  final ts.TSTypeChecker typeChecker;

  /// The files in the given project
  final p.PathSet files;

  /// A list of declarations to include
  final List<String> filterDeclSet;

  /// The declarations as globs
  List<RegExp> get filterDeclSetPatterns => filterDeclSet.map((decl) {
    final escapedDecl = RegExp.escape(decl);
    if (escapedDecl == decl) return RegExp('^$decl\$');
    return RegExp(decl);
  }).toList();

  final bool generateAll;

  final bool strictUnsupported;

  ProgramMap(
    this.program,
    List<String> files, {
    this.filterDeclSet = const [],
    bool? generateAll,
    this.strictUnsupported = false,
  }) : typeChecker = program.getTypeChecker(),
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

      if (src == null && !strictUnsupported) {
        // print warning
        print('WARN: Could not find file $file');
        // try to transform by yourself
        final anonymousTransformer = _activeTransformers.putIfAbsent(
          file,
          () => Transformer(this, null, file: file),
        );

        // TODO: Replace with .transformAndReturn once #388 lands
        return anonymousTransformer.transformAndReturn(node);
      } else {
        final transformer = _activeTransformers.putIfAbsent(
          file,
          () => Transformer(this, src),
        );

        if (!transformer.nodes.contains(node)) {
          if (declName case final d?
              when transformer.nodeMap.findByName(d).isEmpty) {
            // find the source file decl
            if (src == null) return null;

            final symbol = typeChecker.getSymbolAtLocation(src)!;
            final exports = symbol.exports?.toDart ?? {};

            final targetSymbol = exports[d.toJS]!;

            for (final decl
                in targetSymbol.getDeclarations()?.toDart ??
                    <TSDeclaration>[]) {
              transformer.transform(decl);
            }
          } else {
            transformer.transform(node);
          }
        }

        nodeMap = transformer.processAndReturn();
        _activeTransformers[file] = transformer;
      }
    }

    final name = declName ?? (node as TSNamedDeclaration).name?.text;
    return name == null ? null : nodeMap.findByName(name);
  }

  (String, NamedDeclaration)? getCommonType(
    String name, {
    (String, NamedDeclaration)? ifAbsent,
  }) {
    try {
      final MapEntry(key: url, value: nodeMap) = _commonTypes.entries
          .firstWhere(
            (e) => e.value.containsKey(name),
            orElse: () {
              if (ifAbsent case (final file, final decl)) {
                _commonTypes.update(
                  file,
                  (nodeMap) => nodeMap..add(decl),
                  ifAbsent: () => NodeMap()..add(decl),
                );
                return MapEntry(file, _commonTypes[file]!);
              }
              throw Exception('Could not find common type for decl $name');
            },
          );

      if ((url, nodeMap) case (final declUrl?, final declarationMap)) {
        return (declUrl, declarationMap.findByName(name).first);
      }
    } on Exception {
      return null;
    }
    return null;
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
        () => Transformer(this, src, file: file),
      );
      if (sourceSymbol == null || generateAll) {
        // fallback to transforming each node
        // TODO: This is a temporary fix to running this with @types/web
        ts.forEachChild(
          src,
          ((TSNode node) {
                // ignore end of file
                if (node.kind == TSSyntaxKind.EndOfFileToken) return;

                _activeTransformers[absolutePath]!.transform(node);
              }).toJS
              as ts.TSNodeCallback,
        );
      } else {
        final exportedSymbols = sourceSymbol.exports?.toDart;

        for (final MapEntry(key: symbolName, value: symbol)
            in exportedSymbols?.entries ?? <MapEntry<JSString, TSSymbol>>[]) {
          // if there are decls to filter by and it does not match any, skip
          if (!filterDeclSetPatterns.any(
                (f) => f.hasMatch(symbolName.toDart),
              ) &&
              filterDeclSet.isNotEmpty) {
            continue;
          }
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

      return _activeTransformers[absolutePath]!.processAndReturn();
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

  TransformerManager(
    ts.TSProgram program,
    List<String> inputFiles, {
    List<String> filterDeclSet = const [],
    bool? generateAll,
  }) : programMap = ProgramMap(
         program,
         inputFiles,
         filterDeclSet: filterDeclSet,
         generateAll: generateAll,
       );

  TransformerManager.fromParsedResults(ParserResult result, {Config? config})
    : programMap = ProgramMap(
        result.program,
        result.files.toList(),
        filterDeclSet: config?.includedDeclarations ?? [],
        generateAll: config?.generateAll,
        strictUnsupported: config?.strictUnsupported ?? false,
      );

  TransformResult transform() {
    final outputNodeMap = <String, NodeMap>{};
    // run through each file
    for (final file in inputFiles) {
      // transform
      outputNodeMap[file!] = programMap.getNodeMap(file);
    }

    return TransformResult._(
      outputNodeMap,
      commonTypes: programMap._commonTypes.cast(),
    );
  }
}
