// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../ast/base.dart';
import '../../js/typescript.dart' as ts;
import '../../js/typescript.types.dart';
import '../namer.dart';
import '../transform.dart';
import 'export_reference.dart';

/// The shared context/state for a TypeScript AST transformation session.
class TransformerContext {
  /// A set of already resolved TS Nodes
  final nodes = <TSNode>{};

  /// A map of declarations
  final NodeMap<Declaration> nodeMap = NodeMap();

  /// A map of types
  final TypeMap typeMap = TypeMap();

  /// The program map
  final ProgramMap programMap;

  /// The type checker for the given program
  ts.TSTypeChecker get typeChecker => programMap.typeChecker;

  /// A set of declarations to export updated during transformation
  final Set<ExportReference> exportSet;

  /// A set of declarations to filter for
  List<String> get filterDeclSet => programMap.filterDeclSet;

  /// The declarations as globs
  late final List<RegExp> filterDeclSetPatterns = filterDeclSet.map((decl) {
    final escapedDecl = RegExp.escape(decl);
    if (escapedDecl == decl) return RegExp('^$decl\$');
    return RegExp(decl);
  }).toList();

  /// namer, for giving elements unique names
  final UniqueNamer namer;

  final ts.TSSourceFile? sourceFile;
  final String? _fileName;

  /// Get the current file handled by this transformer
  String get file => (sourceFile?.fileName ?? _fileName)!;

  bool get generateAll => programMap.generateAll;

  bool get errorIfUnsupported => programMap.strictUnsupported;

  TransformerContext(
    this.programMap,
    this.sourceFile, {
    Set<String> exportSet = const {},
    String? file,
  }) : exportSet = exportSet.map((e) => ExportReference(e, as: e)).toSet(),
       namer = UniqueNamer(),
       _fileName = file,
       assert(sourceFile != null || file != null, 'Source file must be known');
}
