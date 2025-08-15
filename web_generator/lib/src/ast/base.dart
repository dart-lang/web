// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import 'documentation.dart';
import 'types.dart';

class GlobalOptions {
  static int variadicArgsCount = 4;
  static bool shouldEmitJsTypes = false;
  static bool redeclareOverrides = true;
}

class Options {}

class DeclarationOptions extends Options {
  bool override;
  bool static;

  DeclarationOptions({this.override = false, this.static = false});

  TypeOptions toTypeOptions({bool nullable = false}) =>
      TypeOptions(nullable: nullable);
}

class TypeOptions extends Options {
  bool nullable;
  String? url;

  TypeOptions({this.nullable = false, this.url});
}

class ASTOptions {
  bool parameter;
  bool emitJSTypes;
  int variadicArgsCount;

  ASTOptions(
      {this.parameter = false,
      this.variadicArgsCount = 4,
      this.emitJSTypes = false});
}

sealed class Node {
  abstract final ID id;
  String? get dartName;

  Spec emit([Options? options]);

  Node();
}

abstract class Declaration extends Node {
  String get name;

  @override
  Spec emit([covariant DeclarationOptions? options]);
}

abstract class NamedDeclaration extends Declaration {
  @override
  abstract String name;

  ReferredType asReferredType(
          [List<Type>? typeArgs, bool isNullable = false, String? url]) =>
      ReferredType(
          name: name,
          declaration: this,
          typeParams: typeArgs ?? [],
          url: url,
          isNullable: isNullable);
}

abstract interface class DocumentedDeclaration {
  /// The documentation associated with the given declaration
  abstract Documentation? documentation;
}

abstract interface class ExportableDeclaration extends Declaration {
  /// Whether this declaration is exported.
  bool get exported;

  @override
  abstract String? dartName;

  @override
  abstract String name;
}

abstract class Type extends Node {
  @override
  String? dartName;

  /// Whether the given type is nullable or not
  /// (unioned with `undefined` or `null`)
  abstract bool isNullable;

  @override
  Reference emit([covariant TypeOptions? options]);

  @override
  bool operator ==(Object other) {
    return other is Type && id == other.id;
  }

  @override
  int get hashCode => Object.hashAll([id]);
}

abstract class FieldDeclaration extends NamedDeclaration {
  abstract final Type type;
}

abstract class CallableDeclaration extends NamedDeclaration {
  abstract final List<ParameterDeclaration> parameters;

  abstract final List<GenericType> typeParameters;

  abstract final Type returnType;
}

enum DeclScope { private, protected, public }

abstract class DeclarationType<T extends Declaration> extends Type {
  T get declaration;

  String get declarationName;
}

class ParameterDeclaration {
  final String name;

  final bool optional;

  final Type type;

  final bool variadic;

  ParameterDeclaration(
      {required this.name,
      this.optional = false,
      required this.type,
      this.variadic = false});

  Parameter emit([DeclarationOptions? options]) {
    return Parameter((p) => p
      ..name = name
      ..type = type.emit(TypeOptions(nullable: optional)));
  }
}

abstract class NamedType extends Type {
  String get name;
}
