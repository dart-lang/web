// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';
import '../interop_gen/namer.dart';
import '../interop_gen/sub_type.dart';
import '../utils/case.dart';
import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';
import 'helpers.dart';

/// A type referring to a type in the TypeScript AST
class ReferredType<T extends Declaration> extends Type {
  @override
  String name;

  @override
  ID get id => ID(type: 'type', name: name);

  T declaration;

  List<Type> typeParams;

  String? url;

  ReferredType(
      {required this.name,
      required this.declaration,
      this.typeParams = const [],
      this.url});

  factory ReferredType.fromType(Type type, T declaration,
      {List<Type> typeParams, String? url}) = ReferredDeclarationType;

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declaration.dartName ?? declaration.name
      ..types.addAll(typeParams.map((t) => t.emit(options)))
      ..isNullable = options?.nullable
      ..url = options?.url ?? url);
  }
}

class ReferredDeclarationType<T extends Declaration> extends ReferredType<T> {
  Type type;

  @override
  String get name => type.name ?? declaration.name;

  ReferredDeclarationType(this.type, T declaration,
      {super.typeParams, super.url})
      : super(name: declaration.name, declaration: declaration);

  @override
  Reference emit([covariant TypeOptions? options]) {
    options ??= TypeOptions();
    options.url = super.url;

    return type.emit(options);
  }
}

class TupleType extends Type {
  final List<Type> types;

  TupleType({required this.types});

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id.name).join(','));

  @override
  String? get name => null;

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = 'JSTuple${types.length}'
      ..types.addAll(types.map((type) => type.emit(options))));
  }

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is TupleType && other.types.every(types.contains);
  }
}

class UnionType extends Type implements DeclarationAssociatedType {
  final List<Type> types;

  final bool isNullable;

  @override
  String declarationName;

  UnionType(
      {required this.types, required String name, this.isNullable = false})
      : declarationName = name;

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id.name).join('|'));

  @override
  String? get name => null;

  @override
  Declaration get declaration => _UnionDeclaration(
      name: declarationName, types: types, isNullable: isNullable);

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declarationName
      ..isNullable = options?.nullable ?? isNullable);
  }

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is TupleType && other.types.every(types.contains);
  }
}

class HomogenousEnumType<T extends LiteralType, D extends Declaration>
    extends UnionType implements DeclarationAssociatedType {
  final List<T> _types;

  @override
  List<T> get types => _types;

  final Type baseType;

  HomogenousEnumType(
      {required List<T> super.types, super.isNullable, required super.name})
      : _types = types,
        baseType = types.first.baseType;

  @override
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

  @override
  bool operator ==(Object other) {
    return other is GenericType &&
        other.name == name &&
        other.constraint == constraint;
  }

  @override
  int get hashCode => Object.hash(name, constraint);
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

  @override
  bool operator ==(Object other) {
    return other is LiteralType && other.name == name && other.value == value;
  }

  @override
  int get hashCode => Object.hash(name, value);
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

// TODO: Merge properties/methods of related types
class _UnionDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'union', name: name);

  bool isNullable;

  List<Type> types;

  _UnionDeclaration(
      {required this.name, this.types = const [], this.isNullable = false});

  @override
  String? dartName;

  @override
  String name;

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final repType = getSubTypeOfTypes(types, isNullable: isNullable);

    return ExtensionType((e) => e
      ..name = name
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..name = '_'
        ..declaredRepresentationType = repType.emit(options?.toTypeOptions()))
      ..implements.addAll([
        if (!isNullable || repType != BuiltinType.anyType)
          repType.emit(options?.toTypeOptions())
      ])
      ..methods.addAll(types.map((t) {
        final type = t.emit(options?.toTypeOptions());
        final jsTypeAlt = getJSTypeAlternative(t);
        return Method((m) {
          final word = t is DeclarationAssociatedType
              ? t.declarationName
              : (t.dartName ?? t.name ?? t.id.name);
          m
            ..type = MethodType.getter
            ..name = 'as${uppercaseFirstLetter(word)}'
            ..returns = type
            ..body = jsTypeAlt.id == t.id
                ? refer('_').asA(type).code
                : switch (t) {
                    BuiltinType(name: final n) when n == 'int' => refer('_')
                        .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                        .property('toDartInt')
                        .code,
                    BuiltinType(name: final n)
                        when n == 'double' || n == 'num' =>
                      refer('_')
                          .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                          .property('toDartDouble')
                          .code,
                    BuiltinType() => refer('_')
                        .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                        .property('toDart')
                        .code,
                    ReferredType(
                      declaration: final decl,
                      name: final n,
                      url: final url
                    )
                        when decl is EnumDeclaration =>
                      refer(n, url).property('_').call([
                        refer('_')
                            .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                            .property(switch (decl.baseType.name) {
                              'int' => 'toDartInt',
                              'num' || 'double' => 'toDartDouble',
                              _ => 'toDart'
                            })
                      ]).code,
                    _ => refer('_')
                        .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                        .code
                  };
        });
      })));
  }
}
