// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import 'types.dart';

class ASTOptions {
  bool parameter;
  bool jsTypes;
  int variardicArgsCount;

  ASTOptions(
      {this.parameter = false,
      this.variardicArgsCount = 4,
      this.jsTypes = false});
}

sealed class Node {
  abstract final String? name;
  abstract final ID id;
  String? get dartName;

  Spec emit([ASTOptions? options]);

  Node();
}

abstract class Declaration extends Node {
  @override
  abstract final String name;
}

abstract class NamedDeclaration extends Declaration {
  ReferredType asReferredType([List<Type>? typeArgs]) =>
      ReferredType(name: name, declaration: this, typeParams: typeArgs ?? []);
}

abstract interface class ExportableDeclaration extends Declaration {
  /// Whether this declaration is exported.
  bool get exported;
}

abstract class Type extends Node {
  @override
  String? dartName;

  @override
  Reference emit([ASTOptions? options]);
}
