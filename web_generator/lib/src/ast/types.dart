// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';
import '../interop_gen/namer.dart';
import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';

class ReferredType<T extends Declaration> extends Type {
  @override
  String name;

  @override
  ID get id => ID(type: 'type', name: name);

  T declaration;

  List<Type> typeParams;

  ReferredType(
      {required this.name,
      required this.declaration,
      this.typeParams = const []});

  @override
  Reference emit([TypeOptions? options]) {
    // TODO: Support referred types imported from URL
    return TypeReference((t) => t
      ..symbol = declaration.name
      ..types.addAll(typeParams.map((t) => t.emit(options)))
      ..isNullable = options?.nullable);
  }
}

// TODO(https://github.com/dart-lang/web/issues/385): Implement Support for UnionType (including implementing `emit`)
class UnionType extends Type {
  final List<Type> types;

  UnionType({required this.types});

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id.name).join('|'));

  @override
  String? get name => null;

  @override
  Reference emit([TypeOptions? options]) {
    throw UnimplementedError('TODO: Implement UnionType.emit');
  }
}

// TODO: Handle naming anonymous declarations
// TODO: Extract having a declaration associated with a type to its own type
//  (e.g DeclarationAssociatedType)
class HomogenousEnumType<T extends LiteralType, D extends Declaration>
    extends UnionType {
  final List<T> _types;

  @override
  List<T> get types => _types;

  final Type baseType;

  final bool isNullable;

  String declarationName;

  HomogenousEnumType(
      {required List<T> types, this.isNullable = false, required String name})
      : declarationName = name,
        _types = types,
        baseType = types.first.baseType,
        super(types: types);

  EnumDeclaration get declaration => EnumDeclaration(
      name: declarationName,
      dartName: UniqueNamer.makeNonConflicting(declarationName),
      baseType: baseType,
      members: types.map((t) {
        final name = t.value.toString();
        return EnumMember(
          name,
          t.value,
          dartName: UniqueNamer.makeNonConflicting(name),
          parent: UniqueNamer.makeNonConflicting(declarationName),
        );
      }).toList(),
      exported: true);

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declarationName
      ..isNullable = options?.nullable ?? isNullable);
  }
}

/// The base class for a type generic (like 'T')
class GenericType extends Type {
  @override
  final String name;

  final Type? constraint;

  final Declaration? parent;

  GenericType({required this.name, this.constraint, this.parent});

  @override
  ID get id =>
      ID(type: 'generic-type', name: '$name@${parent?.id ?? "(anonymous)"}');

  @override
  Reference emit([TypeOptions? options]) => TypeReference((t) => t
    ..symbol = name
    ..bound = constraint?.emit()
    ..isNullable = options?.nullable);
}

/// A type representing a bare literal, such as `null`, a string or number
class LiteralType extends Type {
  final LiteralKind kind;

  final Object? value;

  @override
  String get name => switch (kind) {
        LiteralKind.$null => 'null',
        LiteralKind.int || LiteralKind.double => 'number',
        LiteralKind.string => 'string',
        LiteralKind.$true => 'true',
        LiteralKind.$false => 'false'
      };

  BuiltinType get baseType {
    final primitive = kind.primitive;

    return BuiltinType.primitiveType(primitive);
  }

  LiteralType({required this.kind, required this.value});

  @override
  Reference emit([TypeOptions? options]) {
    return baseType.emit(options);
  }

  @override
  ID get id => ID(type: 'type', name: name);
}

enum LiteralKind {
  $null,
  string,
  double,
  $true,
  $false,
  int;

  PrimitiveType get primitive => switch (this) {
        LiteralKind.$null => PrimitiveType.undefined,
        LiteralKind.string => PrimitiveType.string,
        LiteralKind.int => PrimitiveType.num,
        LiteralKind.double => PrimitiveType.double,
        LiteralKind.$true || LiteralKind.$false => PrimitiveType.boolean
      };
}
