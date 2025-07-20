// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

import '../ast/base.dart';
import '../config.dart';
import '../js/helpers.dart';
import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';
import 'namer.dart';
import 'parser.dart';
import 'transform/transformer.dart';

void _setGlobalOptions(Config config) {
  GlobalOptions.variadicArgsCount = config.functions?.varArgs ?? 4;
}

class TransformResult {
  ProgramDeclarationMap programMap;

  TransformResult._(this.programMap);

  // TODO(https://github.com/dart-lang/web/issues/388): Handle union of overloads
  //  (namespaces + functions, multiple interfaces, etc)
  Map<String, String> generate(Config config) {
    final formatter = DartFormatter(
        languageVersion: DartFormatter.latestShortStyleLanguageVersion);

    _setGlobalOptions(config);

    return programMap.map((file, declMap) {
      final emitter =
          DartEmitter.scoped(useNullSafetySyntax: true, orderDirectives: true);
      final specs = declMap.decls.values.map((d) {
        return switch (d) {
          final Declaration n => n.emit(),
          final Type _ => null,
        };
      }).whereType<Spec>();
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
          ..ignoreForFile.addAll(
              ['constant_identifier_names', 'non_constant_identifier_names'])
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
        .where((e) => UniqueNamer.parse(e.key).name == name)
        .map((e) => e.value)
        .toList();
  }

  /// Used to search for a declaration using the name it is exported with in TS,
  /// which may be its actual name, and may not
  List<Node> findByExportedName(String name) {
    return decls.entries
        .where((e) {
          final decl = e.value;
          if (decl case Declaration(name: final n)) {
            return name == n;
          }
          return false;
        })
        .map((e) => e.value)
        .toList();
  }

  void add(Node decl) => decls[decl.id.toString()] = decl;
}

typedef ProgramDeclarationMap = Map<String, NodeMap>;

TransformResult transform(ParserResult parserResult, {required Config config}) {
  final manager =
      TransformerManager.fromParsedResults(parserResult, config: config);

  return manager.transform();
}

class ProgramMap {
  /// A map of files to already generated [NodeMap]s
  ///
  /// If a file is not included here, its node map is not complete
  /// and should be generated via
  final p.PathMap<NodeMap> _map = p.PathMap.of({});

  final p.PathMap<Transformer> _activeTransformers = p.PathMap.of({});

  final ts.TSProgram program;

  final ts.TSTypeChecker typeChecker;

  final List<String> files;

  List<String> get absoluteFiles =>
      files.map((f) => p.normalize(p.absolute(f))).toList();

  final List<String> filterDeclSet;

  ProgramMap(this.program, this.files, {this.filterDeclSet = const []})
      : typeChecker = program.getTypeChecker();

  /// Find the node definition for a given declaration named [decl]
  /// or associated with a TypeScript node [node] from the map of files
  List<Node>? getDeclarationRef(String file, TSNode node, [String? decl]) {
    // if (!absoluteFiles.contains(p.absolute(file))) return null;

    // check
    NodeMap nodeMap;
    if (_map.containsKey(file)) {
      nodeMap = _map[file]!;
    } else {
      final src = program.getSourceFile(file);

      // TODO: We could add the exported declarations here ahead of
      //  time thanks to the type checker.
      //  @srujzs What do you think?
      final transformer =
          _activeTransformers.putIfAbsent(file, () => Transformer(this, src));

      if (transformer.nodes.contains(node)) {
        nodeMap = transformer.filter();
      } else if (decl case final d?
          when transformer.nodeMap.findByName(d).isNotEmpty) {
        nodeMap = transformer.filter();
      } else if (decl case final d?) {
        // find the source file decl
        if (src == null) return null;

        final symbol = typeChecker.getSymbolAtLocation(src)!;
        final exports = symbol.exports?.toDart ?? {};

        if (exports.containsKey(d.toJS)) {
          final targetSymbol = exports[d.toJS]!;
          final first2 = targetSymbol.getDeclarations()!.toDart.first;
          transformer.transform(first2);
          nodeMap = transformer.filter();
        } else {
          return null;
        }

        // throw UnsupportedError('message');
      } else {
        transformer.transform(node);
        nodeMap = transformer.filter();
      }

      _activeTransformers[file] = transformer;
    }

    final name = decl ?? (node as TSNamedDeclaration).name?.text;
    return name == null ? null : nodeMap.findByName(name);
  }

  /// Get the node map for a given [file],
  /// transforming it and generating it if needed.
  NodeMap getNodeMap(String file) {
    final absolutePath = p.normalize(p.absolute(file));
    return _map.putIfAbsent(absolutePath, () {
      final src = program.getSourceFile(file);
      // transform file
      _activeTransformers.putIfAbsent(
          absolutePath, () => Transformer(this, src, file: file));

      ts.forEachChild(
          src!,
          ((TSNode node) {
            // ignore end of file
            if (node.kind == TSSyntaxKind.EndOfFileToken) return;

            _activeTransformers[absolutePath]!.transform(node);
          }).toJS as ts.TSNodeCallback);

      return _activeTransformers[absolutePath]!.filter();
    });
  }
}

class TransformerManager {
  final ProgramMap programMap;

  List<String> get inputFiles => programMap.files;

  ts.TSProgram get program => programMap.program;

  ts.TSTypeChecker get typeChecker => programMap.typeChecker;

  TransformerManager(ts.TSProgram program, List<String> inputFiles,
      {List<String> filterDeclSet = const []})
      : programMap =
            ProgramMap(program, inputFiles, filterDeclSet: filterDeclSet);

  TransformerManager.fromParsedResults(ParserResult result, {Config? config})
      : programMap = ProgramMap(result.program, result.files.toList(),
            filterDeclSet: config?.includedDeclarations ?? []);

  TransformResult transform() {
    final outputNodeMap = <String, NodeMap>{};
    // run through each file
    for (final file in inputFiles) {
      // transform
      outputNodeMap[file] = programMap.getNodeMap(file);
    }

    return TransformResult._(outputNodeMap);
  }
}
