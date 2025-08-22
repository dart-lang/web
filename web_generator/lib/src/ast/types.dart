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
class ReferredType<T extends Declaration> extends NamedType {
  @override
  String name;

  @override
  ID get id => ID(type: 'type', name: name);

  @override
  bool isNullable;

  T declaration;

  List<Type> typeParams;

  String? url;

  ReferredType(
      {required this.name,
      required this.declaration,
      this.typeParams = const [],
      this.url,
      this.isNullable = false});

  factory ReferredType.fromType(Type type, T declaration,
      {List<Type> typeParams,
      String? url,
      bool isNullable}) = ReferredDeclarationType;

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = (declaration is NestableDeclaration)
          ? (declaration as NestableDeclaration).completedDartName
          : declaration.dartName ?? declaration.name
      ..types.addAll(typeParams.map((t) => t.emit(options)))
      ..isNullable = (options?.nullable ?? false) || isNullable
      ..url = options?.url ?? url);
  }
}

class ReferredDeclarationType<T extends Declaration> extends ReferredType<T> {
  Type type;

  @override
  String get name =>
      type is NamedType ? (type as NamedType).name : declaration.name;

  ReferredDeclarationType(this.type, T declaration,
      {super.typeParams, super.url, super.isNullable})
      : super(name: declaration.name, declaration: declaration);

  @override
  Reference emit([covariant TypeOptions? options]) {
    options ??= TypeOptions();
    options.url = super.url;
    options.nullable = super.isNullable;

    return type.emit(options);
  }
}

class TupleType extends ReferredType<TupleDeclaration> {
  final List<Type> types;

  @override
  List<Type> get typeParams => types;

  bool readonly;

  TupleType(
      {required this.types,
      super.isNullable,
      required String? tupleDeclUrl,
      this.readonly = false})
      : super(
            declaration: TupleDeclaration(count: types.length),
            name: readonly
                ? 'JSReadonlyTuple${types.length}'
                : 'JSTuple${types.length}',
            url: tupleDeclUrl);

  @override
  ID get id => ID(
      type: 'type',
      name: types.map((t) => t.id.name).join(','),
      index: readonly ? 1 : 0);

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is TupleType && other.types.every(types.contains);
  }
}

class UnionType extends DeclarationType {
  final List<Type> types;

  @override
  bool isNullable;

  @override
  String declarationName;

  UnionType(
      {required this.types, required String name, this.isNullable = false})
      : declarationName = name;

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id.name).join('|'));

  @override
  Declaration get declaration => _UnionDeclaration(
      name: declarationName, types: types, isNullable: isNullable);

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declarationName
      ..isNullable = (options?.nullable ?? false) || isNullable);
  }

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is TupleType && other.types.every(types.contains);
  }
}

class HomogenousEnumType<T extends LiteralType, D extends Declaration>
    extends UnionType implements DeclarationType {
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
class GenericType extends NamedType {
  @override
  final String name;

  Type? constraint;

  final Declaration? parent;

  @override
  bool isNullable = false;

  GenericType(
      {required this.name, this.constraint, this.parent, bool? isNullable})
      : isNullable = isNullable ?? false;

  @override
  ID get id =>
      ID(type: 'generic-type', name: '$name@${parent?.id ?? "(anonymous)"}');

  @override
  Reference emit([TypeOptions? options]) => TypeReference((t) => t
    ..symbol = name
    ..bound = constraint?.emit()
    ..isNullable = (options?.nullable ?? false) || isNullable);

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
  bool isNullable;

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

  LiteralType(
      {required this.kind, required this.value, this.isNullable = false});

  @override
  Reference emit([TypeOptions? options]) {
    options ??= TypeOptions();
    options.nullable = isNullable;

    return baseType.emit(options);
  }

  @override
  ID get id => ID(type: 'type', name: '$name.$value');

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

class ObjectLiteralType extends DeclarationType<TypeDeclaration> {
  final List<PropertyDeclaration> properties;

  final List<MethodDeclaration> methods;

  final List<ConstructorDeclaration> constructors;

  final List<OperatorDeclaration> operators;

  @override
  bool isNullable;

  @override
  final String declarationName;

  @override
  final ID id;

  bool readonly = false;

  String? _dartName;

  @override
  String? get dartName => _dartName;

  @override
  set dartName(String? value) {
    _dartName = value;
  }

  ObjectLiteralType(
      {required String name,
      required this.id,
      this.properties = const [],
      this.methods = const [],
      this.constructors = const [],
      this.operators = const [],
      this.isNullable = false,
      String? declarationDartName})
      : declarationName = name,
        _dartName = declarationDartName;

  @override
  TypeDeclaration get declaration => InterfaceDeclaration(
      name: declarationName,
      dartName: dartName,
      exported: true,
      id: ID(type: 'interface', name: id.name),
      objectLiteralConstructor: true,
      properties: properties,
      methods: methods,
      operators: operators,
      constructors: constructors,
      typeParameters: getGenericTypes(this).map((g) {
        g.constraint ??= BuiltinType.anyType;
        return g;
      }).toList());

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declarationName
      ..isNullable = options?.nullable ?? isNullable
      ..types.addAll(getGenericTypes(this).map((t) => t.emit(options))));
  }
}

/// An object representation of a typescript enum, usually used
/// either from a `typeof` expression, or a direct assignment.
class EnumObjectType extends DeclarationType {
  final EnumDeclaration enumeration;

  String? _dartName;

  @override
  String? get dartName => _dartName;

  @override
  set dartName(String? value) {
    _dartName = value;
  }

  @override
  bool isNullable;

  EnumObjectType(this.enumeration, {String? dartName, this.isNullable = false})
      : _dartName = dartName ?? enumeration.dartName;

  @override
  ID get id => ID(type: 'type', name: '${enumeration.name}_EnumType');

  @override
  Declaration get declaration => _EnumObjDeclaration(
      name: declarationName, dartName: dartName, reference: enumeration);

  @override
  String get declarationName => '${enumeration.name}_EnumType';

  @override
  Reference emit([covariant TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declarationName
      ..isNullable = options?.nullable ?? isNullable);
  }
}

sealed class ClosureType extends DeclarationType {
  final List<ParameterDeclaration> parameters;
  final Type returnType;
  final List<GenericType> typeParameters;
  @override
  bool isNullable;

  @override
  final String declarationName;

  @override
  final ID id;

  ClosureType({
    required String name,
    required this.id,
    required this.returnType,
    this.typeParameters = const [],
    this.parameters = const [],
    this.isNullable = false,
  }) : declarationName = name {
    if (typeParameters.isEmpty) {
      typeParameters.addAll(getGenericTypes(this).map((t) {
        t.constraint ??= BuiltinType.anyType;
        return t;
      }));
    }
  }

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference((t) => t
      ..symbol = declarationName
      ..isNullable = options?.nullable ?? isNullable
      ..types.addAll(typeParameters.map((t) {
        final clonedT = GenericType(name: t.name, isNullable: t.isNullable);
        return clonedT.emit(options);
      })));
  }
}

class ConstructorType extends ClosureType {
  ConstructorType(
      {required super.name,
      required super.id,
      required super.returnType,
      super.typeParameters,
      super.parameters,
      super.isNullable});

  @override
  CallableDeclaration get declaration => _ConstructorDeclaration(
      name: declarationName,
      returnType: returnType,
      parameters: parameters,
      typeParameters: typeParameters);
}

class FunctionType extends ClosureType {
  FunctionType(
      {required super.name,
      required super.id,
      required super.returnType,
      super.typeParameters,
      super.parameters,
      super.isNullable});

  @override
  InterfaceDeclaration get declaration => InterfaceDeclaration(
          name: declarationName,
          exported: true,
          id: ID(type: 'interface', name: declarationName),
          typeParameters: typeParameters,
          assertRepType: true,
          extendedTypes: [
            BuiltinType.referred('Function')!
          ],
          methods: [
            MethodDeclaration(
                name: 'call',
                id: const ID(type: 'fun', name: 'call'),
                returnType: returnType,
                parameters: parameters)
          ]);
}

class _ConstructorDeclaration extends CallableDeclaration
    implements ExportableDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'closure', name: name);

  @override
  String? dartName;

  @override
  String name;

  @override
  List<ParameterDeclaration> parameters;

  @override
  Type returnType;

  @override
  List<GenericType> typeParameters;

  _ConstructorDeclaration(
      {required this.name,
      this.parameters = const [],
      this.typeParameters = const [],
      required this.returnType});

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    final (requiredParams, optionalParams) =
        emitParameters(parameters, options);

    final repType = BuiltinType.referred('Function')!;

    final isNamedParams = desugarTypeAliases(returnType) is ObjectLiteralType &&
        (desugarTypeAliases(returnType) as ObjectLiteralType)
            .constructors
            .isEmpty;

    return ExtensionType((eType) => eType
      ..name = name
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..declaredRepresentationType = repType.emit(options?.toTypeOptions())
        ..name = '_')
      ..implements.add(repType.emit(options?.toTypeOptions()))
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..methods.add(Method((m) => m
        ..name = 'call'
        ..returns = returnType.emit(options?.toTypeOptions())
        ..requiredParameters.addAll(requiredParams)
        ..optionalParameters.addAll(optionalParams)
        ..lambda = true
        ..body = returnType
            .emit(options?.toTypeOptions())
            .call(
                isNamedParams
                    ? []
                    : [
                        ...requiredParams.map((p) => refer(p.name)),
                        if (optionalParams.isNotEmpty)
                          ...optionalParams.map((p) => refer(p.name))
                      ],
                isNamedParams
                    ? [
                        ...requiredParams.map((p) => (p.name, p.type)),
                        if (optionalParams.isNotEmpty)
                          ...optionalParams.map((p) => (p.name, p.type))
                      ].asMap().map((_, v) {
                        final (name, type) = v;
                        final isNumType = type?.symbol == 'num';
                        return MapEntry(
                            name,
                            isNumType
                                ? refer(name).property('toDouble').call([])
                                : refer(name));
                      })
                    : {},
                typeParameters
                    .map((t) => t.emit(options?.toTypeOptions()))
                    .toList())
            .code)));
  }
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

  List<GenericType> typeParameters;

  _UnionDeclaration(
      {required this.name,
      this.types = const [],
      this.isNullable = false,
      List<GenericType>? typeParams})
      : typeParameters = typeParams ?? [] {
    if (typeParams == null) {
      for (final type in types) {
        typeParameters.addAll(getGenericTypes(type).map((t) {
          t.constraint ??= BuiltinType.anyType;
          return t;
        }));
      }
    }
  }

  @override
  String? dartName;

  @override
  String name;

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final repType =
        getLowestCommonAncestorOfTypes(types, isNullable: isNullable);

    return ExtensionType((e) => e
      ..name = name
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..name = '_'
        ..declaredRepresentationType = repType.emit(options?.toTypeOptions()))
      ..implements.addAll([repType.emit(options?.toTypeOptions())])
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..methods.addAll(types.map((t) {
        final type = t.emit(options?.toTypeOptions());
        final jsTypeAlt = getJSTypeAlternative(t);
        return Method((m) {
          final word = switch (t) {
            DeclarationType(declarationName: final declName) => declName,
            NamedType(name: final typeName, dartName: final dartTypeName) =>
              dartTypeName ?? typeName,
            _ => t.dartName ?? t.id.name
          };
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
                            .property(decl.baseType is NamedType
                                ? switch ((decl.baseType as NamedType).name) {
                                    'int' => 'toDartInt',
                                    'num' || 'double' => 'toDartDouble',
                                    _ => 'toDart'
                                  }
                                : 'toDart')
                      ]).code,
                    _ => refer('_')
                        .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                        .code
                  };
        });
      })));
  }
}

class _EnumObjDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  bool get exported => true;

  @override
  String? dartName;

  @override
  String name;

  EnumDeclaration reference;

  _EnumObjDeclaration(
      {required this.name, this.dartName, required this.reference});

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    final repType = BuiltinType.primitiveType(PrimitiveType.object);
    return ExtensionType((e) => e
      ..name = dartName ?? name
      ..annotations.addAll([
        if (dartName != null && dartName != name) generateJSAnnotation(name)
      ])
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..declaredRepresentationType = repType.emit(options?.toTypeOptions())
        ..name = '_')
      ..implements.add(repType.emit(options?.toTypeOptions()))
      ..fields.addAll(reference.members.map((mem) => mem.emit()))
      ..methods.addAll(reference.members.map((mem) {
        return mem.value == null
            ? null
            : Method((m) => m
              ..name =
                  mem.value is int ? '\$${mem.value}' : mem.value.toString()
              ..annotations.addAll([
                if (mem.value is int)
                  refer('JS', 'dart:js_interop')
                      .call([literalString(mem.value.toString())])
              ])
              ..type = MethodType.getter
              ..returns = refer('String')
              ..lambda = true
              ..static = true
              ..body = literalString(mem.name).code);
      }).nonNulls));
  }

  @override
  ID get id => ID(type: 'enum-rep', name: name);
}
