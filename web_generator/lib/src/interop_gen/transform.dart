// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import '../ast/base.dart';
import '../ast/declarations.dart';
import '../config.dart';
import '../js/helpers.dart';
import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';
import 'generate.dart';
import 'namer.dart';
import 'parser.dart';
import 'qualified_name.dart';
import 'transform/transformer.dart';

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

String commonDir(String a, String b) {
  final partsA = p.split(p.normalize(a));
  final partsB = p.split(p.normalize(b));

  final common = <String>[];
  final length = min(partsA.length, partsB.length);

  for (var i = 0; i < length; i++) {
    if (partsA[i] == partsB[i]) {
      common.add(partsA[i]);
    } else {
      break;
    }
  }

  return common.isEmpty ? '.' : p.joinAll(common);
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

  String get basePath => files.length == 1
      ? (p.extension(files.single!) == ''
          ? files.single!
          : p.dirname(files.single!))
      : files.reduce((prev, next) {
          if (prev == null && next == null) {
            return null;
          } else if (prev == null) {
            return p.extension(next!) == '' ? next : p.dirname(next);
          } else if (next == null) {
            return p.extension(prev) == '' ? prev : p.dirname(prev);
          }
          return commonDir(prev, next);
        })!;

  final List<String> filterDeclSet;

  final bool generateAll;

  /// A map of file paths to the modules they define
  final p.PathMap<List<String>> moduleMap;

  /// A map of module names to their respective modules
  final NodeMap<ModuleDeclaration> moduleDeclarations = NodeMap({});

  /// A reference to the global module declaration, if any
  ModuleDeclaration? globalModule;

  bool isDefinedModule(String name) {
    return moduleMap.values.any((v) => v.contains(name));
  }

  bool isDefinedModuleInFile(String file, String name) {
    return moduleMap[file]?.contains(name) ?? false;
  }

  bool isBuiltModule(String name) {
    return moduleDeclarations.keys.contains(name);
  }

  ProgramMap(this.program, List<String> files,
      {this.filterDeclSet = const [],
      bool? generateAll,
      p.PathMap<List<String>>? moduleMap})
      : typeChecker = program.getTypeChecker(),
        generateAll = generateAll ?? false,
        files = p.PathSet.of(files),
        moduleMap = moduleMap ?? p.PathMap();

  /// Transforms a given module child declaration by finding the file where it
  /// is defined and transforming it

  /// Find the node definition for a given declaration named [declName]
  /// or associated with a TypeScript node [node] from the map of files
  ///
  /// [context] provides the context of the import, for resolving relative
  /// imports and [file] is the file to search in, if not provided, it will
  /// search in the global module or the module that contains the file.
  List<Node>? getDeclarationRef(String file, TSNode node, {String? declName}) {
    Transformer? getTransformer(
      String filePath, {
      ModuleDeclaration? module,
    }) {
      final src = program.getSourceFile(filePath);

      final transformer = _activeTransformers.putIfAbsent(
          filePath, () => Transformer(this, src));

      if (!transformer.nodes.contains(node)) {
        if (module != null) {
          // just transform the node
          final transformedDecls = transformer.transformNode(node);
          switch (node.kind) {
            case TSSyntaxKind.ClassDeclaration ||
                  TSSyntaxKind.InterfaceDeclaration:
              final outputDecl = transformedDecls.first as TypeDeclaration;
              outputDecl.parent = module;
              module.nestableDeclarations.add(outputDecl);
            case TSSyntaxKind.EnumDeclaration:
              final outputDecl = transformedDecls.first as EnumDeclaration;
              outputDecl.parent = module;
              module.nestableDeclarations.add(outputDecl);
            default:
              module.topLevelDeclarations.addAll(transformedDecls);
          }
          module.nodes.add(node);
        } else if (declName case final d?
            when transformer.nodeMap.findByName(d).isEmpty) {
          // fetch the symbol for the node
          // and transform the associated declaration
          final symbol = typeChecker.getSymbolAtLocation(src!)!;
          final exports = symbol.exports?.toDart ?? {};

          final targetSymbol = exports[d.toJS]!;
          transformer.transform(targetSymbol.getDeclarations()!.toDart.first);
        } else {
          transformer.transform(node);
        }
      }

      return transformer;
    }

    // check
    var nodeMap = NodeMap<Node>();
    final name = declName ?? (node as TSNamedDeclaration).name?.text;

    // search through modules first
    if (file == 'global' || file.isEmpty) {
      globalModule ??= ModuleDeclaration.global();
      final globalNodeMap = globalModule!.nodeMap;
      if ((name != null && globalNodeMap.findByName(name).isEmpty) ||
          !globalModule!.nodes.contains(node)) {
        final fileName = node.getSourceFile().fileName;
        final transformer = getTransformer(fileName, module: globalModule);

        if (transformer == null) {
          // if no transformer, then we cannot find the node
          return null;
        }
      }
      nodeMap = globalModule!.nodeMap;
    }
    final moduleID = ID(name: file, type: 'module').toString();
    if (moduleDeclarations.containsKey(moduleID)) {
      final module = moduleDeclarations[moduleID]!;
      if ((name != null && module.nodeMap.findByName(name).isEmpty) ||
          !module.nodes.contains(node)) {
        final fileName = node.getSourceFile().fileName;
        final transformer = getTransformer(fileName, module: module);

        moduleDeclarations[moduleID] = module;

        if (transformer == null) {
          // if no transformer, then we cannot find the node
          // for a specific module, a file must be found
          throw Exception(
              'Could not find transformer containing the given module $file');
        }
      }

      nodeMap = moduleDeclarations[moduleID]!.nodeMap;
    } else if (moduleMap.entries.where((entry) => entry.value.contains(file))
        case final targetModules when targetModules.isNotEmpty) {
      // if the file is a module, we need to find the node map for the module
      for (final MapEntry(key: moduleFile) in targetModules) {
        // ensure module is transformed
        if (moduleFile != null) {
          final nm = getNodeMap(moduleFile);
          final moduleDecl = nm.values
              .whereType<ModuleReference>()
              .firstWhereOrNull((m) => m.id.name == moduleFile);

          if (moduleDecl != null) {
            nodeMap = moduleDecl.reference.nodeMap;
            break;
          }
        }
      }
    } else {
      final fileWithExt = file.endsWith('.d.ts')
          ? file
          : '$file.d.ts'; // ensure we have the correct file extension

      // if not, search through files
      if (_pathMap.containsKey(fileWithExt)) {
        nodeMap = _pathMap[fileWithExt]!;
      } else {
        final transformer = getTransformer(fileWithExt);
        if (transformer == null) {
          // if no transformer, then we cannot find the node
          return null;
        }

        nodeMap = transformer.filterAndReturn();
        _activeTransformers[fileWithExt] = transformer;
      }
    }

    return name == null ? null : nodeMap.findByName(name);
  }

  (String, NamedDeclaration)? getCommonType(String name,
      {(String, NamedDeclaration)? ifAbsent}) {
    try {
      final MapEntry(key: url, value: nodeMap) = _commonTypes.entries
          .firstWhere((e) => e.value.containsKey(name), orElse: () {
        if (ifAbsent case (final file, final decl)) {
          _commonTypes.update(
            file,
            (nodeMap) => nodeMap..add(decl),
            ifAbsent: () => NodeMap()..add(decl),
          );
          return MapEntry(file, _commonTypes[file]!);
        }
        throw Exception('Could not find common type for decl $name');
      });

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

        // global modules are not captured as exports
        final globalModuleDeclarations = src.statements.toDart.where((s) =>
            s.kind == TSSyntaxKind.ModuleDeclaration &&
            ((s as TSModuleDeclaration).name as TSIdentifier).text == 'global');

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

        for (final module in globalModuleDeclarations) {
          _activeTransformers[absolutePath]!.transform(module);
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
            generateAll: config?.generateAll,
            moduleMap: p.PathMap.of(
                result.preprocessResult.map((k, v) => MapEntry(k, v.modules))));

  TransformResult transform() {
    final outputNodeMap = <String, NodeMap>{};
    // run through each file
    for (final file in inputFiles) {
      // transform
      outputNodeMap[file!] = programMap.getNodeMap(file);
    }

    return TransformResult(outputNodeMap,
        commonTypes: programMap._commonTypes.cast(),
        moduleDeclarations: programMap.moduleDeclarations,
        globalModule: programMap.globalModule);
  }
}
