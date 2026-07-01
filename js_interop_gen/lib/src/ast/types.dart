// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';
import '../interop_gen/hasher.dart';
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
  ID get id => ID(
    type: 'type',
    name: typeParams.isEmpty
        ? name
        : '$name<${typeParams.map((t) => t.id.name).join(',')}>',
  );

  @override
  bool isNullable;

  T declaration;

  List<Type> typeParams;

  String? url;

  ReferredType({
    required this.name,
    required this.declaration,
    this.typeParams = const [],
    this.url,
    this.isNullable = false,
  });

  factory ReferredType.fromType(
    Type type,
    T declaration, {
    List<Type> typeParams,
    String? url,
    bool isNullable,
  }) = ReferredDeclarationType;

  @override
  Reference emit([TypeOptions? options]) {
    final opts = options ?? TypeOptions();
    var decl = declaration as Declaration;
    while (decl is NamedDeclaration && decl.mergedInto != null) {
      decl = decl.mergedInto!;
    }
    final mappedSymbol = opts.declarationToEmittedName[decl];
    final declTypeParams = <GenericType>[];
    if (decl is TypeDeclaration) {
      declTypeParams.addAll(decl.typeParameters);
    } else if (decl is TypeAliasDeclaration) {
      declTypeParams.addAll(decl.typeParameters);
    }

    final paddedTypeParams = [
      ...typeParams,
      if (typeParams.length < declTypeParams.length)
        for (var i = typeParams.length; i < declTypeParams.length; ++i)
          declTypeParams[i].defaultType ??
              declTypeParams[i].constraint ??
              BuiltinType.anyType,
    ];

    return TypeReference(
      (t) => t
        ..symbol =
            mappedSymbol ??
            (decl is NestableDeclaration
                ? decl.completedDartName
                : decl.dartName ?? decl.name)
        ..types.addAll(
          paddedTypeParams.map((t) {
            final typeArgsOptions = TypeOptions(
              isTypeArgument: true,
              url: opts.url,
              variadicArgsCount: opts.variadicArgsCount,
              shouldEmitJsTypes: opts.shouldEmitJsTypes,
              redeclareOverrides: opts.redeclareOverrides,
              validGenericNames: opts.validGenericNames,
            );
            return (t == BuiltinType.$voidType ? BuiltinType.anyType : t).emit(
              typeArgsOptions,
            );
          }),
        )
        ..isNullable = opts.nullable || isNullable
        ..url = opts.url ?? url,
    );
  }
}

class ReferredDeclarationType<T extends Declaration> extends ReferredType<T> {
  Type type;

  @override
  String get name =>
      type is NamedType ? (type as NamedType).name : declaration.name;

  ReferredDeclarationType(
    this.type,
    T declaration, {
    super.typeParams,
    super.url,
    bool? isNullable,
  }) : super(
         name: declaration.name,
         declaration: declaration,
         isNullable: isNullable ?? false,
       );

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

  TupleType({
    required this.types,
    super.isNullable,
    required String? tupleDeclUrl,
    this.readonly = false,
    TupleDeclaration? decl,
  }) : super(
         declaration:
             decl ?? TupleDeclaration(count: types.length, readonly: readonly),
         name: readonly
             ? 'JSReadonlyTuple${types.length}'
             : 'JSTuple${types.length}',
         url: tupleDeclUrl,
       );

  @override
  ID get id => ID(
    type: 'type',
    name: types.map((t) => t.id.name).join(','),
    index: readonly ? 1 : 0,
  );

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

  UnionType({
    required this.types,
    required String name,
    this.isNullable = false,
  }) : declarationName = _sanitizeIdentifier(name);

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id.name).join('|'));

  @override
  Declaration get declaration => _UnionDeclaration(
    name: declarationName,
    types: types,
    isNullable: isNullable,
  );

  @override
  Reference emit([TypeOptions? options]) {
    final opts = options ?? TypeOptions();
    return TypeReference(
      (t) => t
        ..symbol = declarationName
        ..isNullable = opts.nullable || isNullable
        ..types.addAll(
          getGenericTypes(this).map(
            (t) => t.emit(
              TypeOptions(
                isTypeArgument: true,
                url: opts.url,
                variadicArgsCount: opts.variadicArgsCount,
                shouldEmitJsTypes: opts.shouldEmitJsTypes,
                redeclareOverrides: opts.redeclareOverrides,
                validGenericNames: opts.validGenericNames,
              ),
            ),
          ),
        ),
    );
  }

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is TupleType && other.types.every(types.contains);
  }
}

class IntersectionType extends DeclarationType {
  final List<Type> types;

  @override
  bool isNullable = false;

  @override
  String declarationName;

  IntersectionType({required this.types, required String name})
    : declarationName = _sanitizeIdentifier(name);

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id.name).join('&'));

  @override
  Declaration get declaration =>
      _IntersectionDeclaration(name: declarationName, types: types);

  @override
  Reference emit([TypeOptions? options]) {
    final opts = options ?? TypeOptions();
    return TypeReference(
      (t) => t
        ..symbol = declarationName
        ..isNullable = opts.nullable || isNullable
        ..types.addAll(
          getGenericTypes(this).map(
            (t) => t.emit(
              TypeOptions(
                isTypeArgument: true,
                url: opts.url,
                variadicArgsCount: opts.variadicArgsCount,
                shouldEmitJsTypes: opts.shouldEmitJsTypes,
                redeclareOverrides: opts.redeclareOverrides,
                validGenericNames: opts.validGenericNames,
              ),
            ),
          ),
        ),
    );
  }

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is TupleType && other.types.every(types.contains);
  }
}

class HomogenousEnumType<T extends LiteralType, D extends Declaration>
    extends UnionType
    implements DeclarationType {
  final List<T> _types;

  @override
  List<T> get types => _types;

  final Type baseType;

  HomogenousEnumType({
    required List<T> super.types,
    super.isNullable,
    required super.name,
  }) : _types = types,
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
        dartName: UniqueNamer.makeNonConflicting(_sanitizeIdentifier(name)),
        parent: UniqueNamer.makeNonConflicting(declarationName),
      );
    }).toList(),
    exported: true,
  );
}

/// The base class for a type generic (like 'T')
class GenericType extends NamedType {
  @override
  final String name;

  Type? constraint;

  Type? defaultType;

  final Declaration? parent;

  @override
  bool isNullable = false;

  GenericType({
    required this.name,
    this.constraint,
    this.defaultType,
    this.parent,
    bool? isNullable,
  }) : isNullable = isNullable ?? false;

  @override
  ID get id {
    final p = parent;
    final parentName = p == null
        ? '(anonymous)'
        : (p is NestableDeclaration ? p.qualifiedName : p.name);
    return ID(type: 'generic-type', name: '$name@$parentName');
  }

  @override
  Reference emit([TypeOptions? options]) {
    final hasValidGeneric = options?.validGenericNames.contains(name) ?? true;
    if (!hasValidGeneric) {
      if (constraint != null) {
        return getDartRepresentationType(constraint!).emit(options);
      }
      return BuiltinType.primitiveType(
        PrimitiveType.any,
        isNullable: isNullable,
      ).emit(options);
    }

    return TypeReference(
      (t) => t
        ..symbol = name
        ..bound = (options?.isTypeArgument ?? false)
            ? null
            : constraint?.emit(options)
        ..isNullable = (options?.nullable ?? false) || isNullable,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GenericType &&
        other.name == name &&
        other.constraint == constraint &&
        other.defaultType == defaultType;
  }

  @override
  int get hashCode => Object.hash(name, constraint, defaultType);
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
    LiteralKind.$false => 'false',
  };

  BuiltinType get baseType {
    final primitive = kind.primitive;

    return BuiltinType.primitiveType(primitive);
  }

  LiteralType({
    required this.kind,
    required this.value,
    this.isNullable = false,
  });

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
    LiteralKind.$true || LiteralKind.$false => PrimitiveType.boolean,
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

  ObjectLiteralType({
    required String name,
    required this.id,
    this.properties = const [],
    this.methods = const [],
    this.constructors = const [],
    this.operators = const [],
    this.isNullable = false,
    String? declarationDartName,
  }) : declarationName = name,
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
    }).toSet(),
  );

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference(
      (t) => t
        ..symbol = declarationName
        ..isNullable = options?.nullable ?? isNullable
        ..types.addAll(getGenericTypes(this).map((t) => t.emit(options))),
    );
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
  ID get id => ID(type: 'type', name: 'TypeOf_${enumeration.name}');

  @override
  Declaration get declaration => _EnumObjDeclaration(
    name: declarationName,
    dartName: dartName,
    reference: enumeration,
  );

  @override
  String get declarationName => '${enumeration.name}_EnumType';

  @override
  Reference emit([covariant TypeOptions? options]) {
    return TypeReference(
      (t) => t
        ..symbol = declarationName
        ..isNullable = options?.nullable ?? isNullable,
    );
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
    List<GenericType> typeParameters = const [],
    this.parameters = const [],
    this.isNullable = false,
  }) : typeParameters = List.of(typeParameters),
       declarationName = name {
    if (this.typeParameters.isEmpty) {
      this.typeParameters.addAll(
        getGenericTypes(this).map((t) {
          t.constraint ??= BuiltinType.anyType;
          return t;
        }),
      );
    }
  }

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference(
      (t) => t
        ..symbol = declarationName
        ..isNullable = options?.nullable ?? isNullable
        ..types.addAll(
          typeParameters.map((t) {
            final clonedT = GenericType(name: t.name, isNullable: t.isNullable);
            return clonedT.emit(options);
          }),
        ),
    );
  }
}

class ConstructorType extends ClosureType {
  ConstructorType({
    required super.name,
    required super.id,
    required super.returnType,
    super.typeParameters,
    super.parameters,
    super.isNullable,
  });

  @override
  CallableDeclaration get declaration => _ConstructorDeclaration(
    name: declarationName,
    returnType: returnType,
    parameters: parameters,
    typeParameters: typeParameters,
  );
}

class FunctionType extends ClosureType {
  FunctionType({
    required super.name,
    required super.id,
    required super.returnType,
    super.typeParameters,
    super.parameters,
    super.isNullable,
  });

  @override
  InterfaceDeclaration get declaration => InterfaceDeclaration(
    name: declarationName,
    exported: true,
    id: ID(type: 'interface', name: declarationName),
    typeParameters: typeParameters.toSet(),
    useFirstExtendeeAsRepType: true,
    extendedTypes: [BuiltinType.referred('Function')!],
    methods: [
      MethodDeclaration(
        name: 'call',
        id: ID(type: 'fun', name: 'call'),
        returnType: returnType,
        parameters: parameters,
      ),
    ],
  );
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

  _ConstructorDeclaration({
    required this.name,
    this.parameters = const [],
    this.typeParameters = const [],
    required this.returnType,
  });

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    final (requiredParams, optionalParams) = emitParameters(
      parameters,
      options,
    );

    final repType = BuiltinType.referred('Function')!;

    final isNamedParams =
        desugarTypeAliases(returnType) is ObjectLiteralType &&
        (desugarTypeAliases(returnType) as ObjectLiteralType)
            .constructors
            .isEmpty;

    return ExtensionType(
      (eType) => eType
        ..name = name
        ..primaryConstructorName = '_'
        ..representationDeclaration = RepresentationDeclaration(
          (r) => r
            ..declaredRepresentationType = repType.emit(
              options?.toTypeOptions(),
            )
            ..name = '_',
        )
        ..implements.add(repType.emit(options?.toTypeOptions()))
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..methods.add(
          Method(
            (m) => m
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
                              ...optionalParams.map((p) => refer(p.name)),
                          ],
                    isNamedParams
                        ? [
                            ...requiredParams.map((p) => (p.name, p.type)),
                            if (optionalParams.isNotEmpty)
                              ...optionalParams.map((p) => (p.name, p.type)),
                          ].asMap().map((_, v) {
                            final (name, type) = v;
                            final isNumType = type?.symbol == 'num';
                            return MapEntry(
                              name,
                              isNumType
                                  ? refer(name).property('toDouble').call([])
                                  : refer(name),
                            );
                          })
                        : {},
                    typeParameters
                        .map((t) => t.emit(options?.toTypeOptions()))
                        .toList(),
                  )
                  .code,
          ),
        ),
    );
  }
}

sealed class UnionOrIntersectionDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id;

  late List<Type> types;

  @override
  List<GenericType> typeParameters;

  @override
  String name;

  @override
  String? dartName;

  UnionOrIntersectionDeclaration({
    required this.name,
    List<Type> types = const [],
    List<GenericType>? typeParams,
  }) : typeParameters = typeParams ?? [] {
    final uniqueTypes = <Type>[];
    final seenNames = <String>{};
    for (final type in types) {
      final getterName = typeNameForGetter(type);
      if (seenNames.add(getterName)) {
        uniqueTypes.add(type);
      }
    }
    this.types = uniqueTypes;

    if (typeParams == null) {
      final seen = <String, GenericType>{};
      for (final type in this.types) {
        for (final t in getGenericTypes(type)) {
          final existing = seen[t.name];
          if (existing == null) {
            seen[t.name] = t;
            t.constraint ??= BuiltinType.anyType;
            typeParameters.add(t);
          } else {
            final existingConstraint = existing.constraint;
            final newConstraint = t.constraint;
            if (newConstraint != null &&
                (existingConstraint == null ||
                    (existingConstraint is BuiltinType &&
                        existingConstraint.name == 'JSAny'))) {
              existing.constraint = newConstraint;
            }
          }
        }
      }
    }
  }

  Spec _emit({
    covariant DeclarationOptions? options,
    bool extendTypes = false,
    bool isNullable = false,
  }) {
    final opts = options ??= DeclarationOptions();
    final previousGenericNames = opts.validGenericNames;
    opts.validGenericNames = {
      ...previousGenericNames,
      ...typeParameters.map((t) => t.name),
    };

    try {
      final repType = extendTypes
          ? getGreatestCommonSubtypeOfTypes(types, isNullable: isNullable)
          : getLowestCommonAncestorOfTypes(types, isNullable: isNullable);

      final extendees = <Type>[];
      if (extendTypes) {
        // check if any types are primitive
        // TODO: We can be much smarter about this, but this works best so far
        if (types.any((t) {
              final jsAltType = getJSTypeAlternative(t);
              return jsAltType is BuiltinType &&
                  nonObjectRepTypes.contains(jsAltType.name);
            }) ||
            (repType is BuiltinType && repType.name == 'JSAny')) {
          extendees.add(
            BuiltinType.primitiveType(PrimitiveType.any, isNullable: false),
          );
        } else {
          extendees.addAll(types.map(getJSTypeAlternative));
        }
      } else {
        extendees.add(repType);
      }

      final memberDeclCount = <String, int>{};
      final memberDecls = <String, MemberDeclaration>{};
      final propTypes = <String, List<Type>>{};

      for (final e in extendees) {
        final d = switch (e) {
          ReferredType(declaration: final decl) => decl,
          DeclarationType(declaration: final decl) => decl,
          _ => null,
        };
        if (d != null) {
          final members = getMemberHierarchy(d, true);
          for (final m in members) {
            memberDeclCount[m] = (memberDeclCount[m] ?? 0) + 1;

            final found = findMemberInHierarchy(d, m);
            if (found != null) {
              if (found is PropertyDeclaration) {
                propTypes.putIfAbsent(m, () => []).add(found.type);
                if (memberDecls[m] == null) memberDecls[m] = found;
              } else if (found is MethodDeclaration) {
                if (memberDecls[m] == null) memberDecls[m] = found;
              }
            }
          }
        }
      }

      final conflictingMembers = memberDeclCount.entries
          .where((e) => e.value > 1)
          .map((e) => e.key)
          .toSet();

      final conflictingMethods = <Method>[];

      for (final m in conflictingMembers) {
        final decl = memberDecls[m];
        if (decl != null) {
          final spec = (decl as Declaration).emit(opts);
          if (spec is Method) {
            conflictingMethods.add(
              Method(
                (builder) => builder
                  ..name = spec.name
                  ..type = spec.type
                  ..external = true
                  ..static = spec.static
                  ..returns = spec.returns
                  ..requiredParameters.addAll(spec.requiredParameters)
                  ..optionalParameters.addAll(spec.optionalParameters)
                  ..annotations.addAll(spec.annotations),
              ),
            );
          } else if (spec is Field) {
            if ((decl.name?.startsWith('as') ?? false) &&
                decl is PropertyDeclaration) {
              final typeRef = decl.type.emit(opts.toTypeOptions());
              conflictingMethods.add(
                Method(
                  (builder) => builder
                    ..name = decl.name
                    ..type = MethodType.getter
                    ..returns = typeRef
                    ..lambda = true
                    ..body = refer('_').asA(typeRef).code,
                ),
              );
            } else {
              final typesToIntersect = propTypes[m] ?? [];
              final intersectedType = _intersectTypes(typesToIntersect);
              final isNullable = typesToIntersect.every((t) => t.isNullable);
              var emittedType = intersectedType.emit(
                opts.toTypeOptions(nullable: isNullable),
              );

              final overrideSymbol = opts.typeOverrides[name]?[spec.name];
              if (overrideSymbol != null) {
                emittedType = refer(overrideSymbol);
              } else if (typesToIntersect.length > 1) {
                final resolvedName = intersectedType is BuiltinType
                    ? intersectedType.name
                    : '';
                if (resolvedName == 'JSAny' || resolvedName == 'never') {
                  final constituents = typesToIntersect
                      .map(
                        (t) => t.emit(opts.toTypeOptions()).symbol ?? t.id.name,
                      )
                      .toSet()
                      .join(', ');
                  print(
                    '\n⚠️  [js_interop_gen] MEMBER TYPE CONFLICT DETECTED:\n'
                    '   ├─ Context Type: "$name"\n'
                    '   ├─ Property:     "$m" has conflicting constituent '
                    'types: [$constituents]\n'
                    '   ├─ Resolved to:  "$resolvedName" (Fallback)\n'
                    '   └─ 💡 Suggestion: To define a custom type '
                    'signature for '
                    'this field, register a type override:\n'
                    '      typeOverrides: {\n'
                    '        \'$name\': {\'$m\': \'<DesiredType>\'}\n'
                    '      }\n',
                  );
                }
              }

              conflictingMethods.add(
                Method(
                  (builder) => builder
                    ..name = spec.name
                    ..type = MethodType.getter
                    ..external = true
                    ..static = spec.static
                    ..returns = emittedType
                    ..annotations.addAll(spec.annotations),
                ),
              );
              if (decl case PropertyDeclaration(readonly: false)) {
                conflictingMethods.add(
                  Method(
                    (builder) => builder
                      ..name = spec.name
                      ..type = MethodType.setter
                      ..external = true
                      ..static = spec.static
                      ..annotations.addAll(spec.annotations)
                      ..requiredParameters.add(
                        Parameter(
                          (p) => p
                            ..name = 'value'
                            ..type = emittedType,
                        ),
                      ),
                  ),
                );
              }
            }
          }
        }
      }

      final filteredExtendees = extendees
          .where(
            (e) => !e.isNullable && isSubtypeOf(repType, getStaticRepType(e)),
          )
          .map((e) {
            final ref = e.emit(opts.toTypeOptions());
            return ref is TypeReference
                ? ref.rebuild((b) => b..isNullable = false)
                : ref;
          })
          .toList();

      return ExtensionType(
        (e) => e
          ..methods.addAll(conflictingMethods)
          ..name = name
          ..primaryConstructorName = '_'
          ..representationDeclaration = RepresentationDeclaration(
            (r) => r
              ..name = '_'
              ..declaredRepresentationType = repType.emit(opts.toTypeOptions()),
          )
          ..implements.addAll({
            if (filteredExtendees.isEmpty) ...{
              if (!repType.isNullable)
                refer(
                  isSubtypeOf(
                        repType,
                        BuiltinType.primitiveType(PrimitiveType.object),
                      )
                      ? 'JSObject'
                      : 'JSAny',
                  'dart:js_interop',
                ),
            } else
              ...filteredExtendees,
          })
          ..types.addAll(
            typeParameters.map((t) => t.emit(opts.toTypeOptions())),
          )
          ..methods.addAll(
            types.map((t) {
              final type = t.emit(opts.toTypeOptions());
              final jsTypeAlt = getJSTypeAlternative(t);
              return Method((m) {
                final word = typeNameForGetter(t, opts);
                final Expression body;
                final jsAlt = jsTypeAlt;
                final desugared = desugarTypeAliases(t);
                if (desugarTypeAliases(t) == repType ||
                    (jsAlt is NamedType && jsAlt.name == 'JSAny') ||
                    (desugared is NamedType && desugared.name == 'void')) {
                  body = refer('_');
                } else if (jsTypeAlt.id == t.id) {
                  final repDesugared = desugarTypeAliases(repType);
                  final tDesugared = desugarTypeAliases(t);
                  if (repDesugared is ReferredType &&
                      tDesugared is ReferredType &&
                      (repDesugared.typeParams.isNotEmpty ||
                          tDesugared.typeParams.isNotEmpty)) {
                    body = refer(
                      '_',
                    ).asA(refer('JSAny', 'dart:js_interop')).asA(type);
                  } else {
                    body = refer('_').asA(type);
                  }
                } else {
                  body = switch (desugarTypeAliases(t)) {
                    BuiltinType(name: final n) when n == 'int' =>
                      refer('_')
                          .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                          .property('toDartInt'),
                    BuiltinType(name: final n)
                        when n == 'double' || n == 'num' =>
                      refer('_')
                          .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                          .property('toDartDouble'),
                    BuiltinType() =>
                      refer('_')
                          .asA(jsTypeAlt.emit(options?.toTypeOptions()))
                          .property('toDart'),
                    LiteralType(kind: LiteralKind.$true) ||
                    LiteralType(kind: LiteralKind.$false) =>
                      refer('_')
                          .asA(refer('JSBoolean', 'dart:js_interop'))
                          .property('toDart'),
                    LiteralType(kind: LiteralKind.string) =>
                      refer('_')
                          .asA(refer('JSString', 'dart:js_interop'))
                          .property('toDart'),
                    LiteralType(kind: LiteralKind.int) =>
                      refer('_')
                          .asA(refer('JSNumber', 'dart:js_interop'))
                          .property('toDartInt'),
                    LiteralType(kind: LiteralKind.double) =>
                      refer('_')
                          .asA(refer('JSNumber', 'dart:js_interop'))
                          .property('toDartDouble'),
                    ReferredType(
                      declaration: final decl,
                      name: final n,
                      url: final url,
                    )
                        when decl is EnumDeclaration =>
                      refer(n, url).property('_').call([
                        refer(
                          '_',
                        ).asA(jsTypeAlt.emit(options?.toTypeOptions())),
                      ]),
                    _ => refer(
                      '_',
                    ).asA(jsTypeAlt.emit(options?.toTypeOptions())),
                  };
                }
                m
                  ..type = MethodType.getter
                  ..name = 'as${uppercaseFirstLetter(word)}'
                  ..returns = type
                  ..body = body.code;
              });
            }),
          ),
      );
    } finally {
      opts.validGenericNames = previousGenericNames;
    }
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

  _EnumObjDeclaration({
    required this.name,
    this.dartName,
    required this.reference,
  });

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    final repType = BuiltinType.primitiveType(PrimitiveType.object);
    return ExtensionType(
      (e) => e
        ..name = dartName ?? name
        ..annotations.addAll([
          if (dartName != null && dartName != name) generateJSAnnotation(name),
        ])
        ..primaryConstructorName = '_'
        ..representationDeclaration = RepresentationDeclaration(
          (r) => r
            ..declaredRepresentationType = repType.emit(
              options?.toTypeOptions(),
            )
            ..name = '_',
        )
        ..implements.add(repType.emit(options?.toTypeOptions()))
        ..fields.addAll(reference.members.map((mem) => mem.emit(true)))
        ..methods.addAll(
          reference.members.map((mem) {
            return mem.value == null
                ? null
                : Method(
                    (m) => m
                      ..name = mem.value is int
                          ? '\$${mem.value}'
                          : mem.value.toString()
                      ..annotations.addAll([
                        if (mem.value is int)
                          refer(
                            'JS',
                            'dart:js_interop',
                          ).call([literalString(mem.value.toString())]),
                      ])
                      ..type = MethodType.getter
                      ..returns = refer('String')
                      ..lambda = true
                      ..static = true
                      ..body = literalString(mem.name).code,
                  );
          }).nonNulls,
        ),
    );
  }

  @override
  ID get id => ID(type: 'enum-rep', name: name);
}

class _IntersectionDeclaration extends UnionOrIntersectionDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'intersection', name: name);

  _IntersectionDeclaration({required super.name, super.types}) : super();

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    return super._emit(options: options, extendTypes: true);
  }
}

class _UnionDeclaration extends UnionOrIntersectionDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'union', name: name);

  bool isNullable;

  _UnionDeclaration({required super.name, super.types, this.isNullable = false})
    : super();

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    return super._emit(options: options, isNullable: isNullable);
  }
}

String typeNameForGetter(Type t, [Options? options]) {
  final List<Type> typeParams;
  final String baseName;
  if (t is BuiltinType) {
    baseName = t.dartName ?? t.name;
    typeParams = t.typeParams;
  } else if (t is PackageWebType) {
    baseName = t.dartName ?? t.name;
    typeParams = t.typeParams;
  } else if (t is ReferredType) {
    final mappedSymbol = options?.declarationToEmittedName[t.declaration];
    baseName =
        mappedSymbol ??
        ((t.declaration is NestableDeclaration)
            ? (t.declaration as NestableDeclaration).completedDartName
            : t.declaration.dartName ?? t.declaration.name);
    typeParams = t.typeParams;
  } else if (t is DeclarationType) {
    baseName = t.declarationName;
    typeParams = const [];
  } else if (t is LiteralType) {
    baseName = t.name;
    typeParams = const [];
  } else if (t is NamedType) {
    baseName = t.dartName ?? t.name;
    typeParams = const [];
  } else {
    baseName = t.dartName ?? t.id.name;
    typeParams = const [];
  }

  var result = baseName;
  if (typeParams.isNotEmpty) {
    final paramsName = typeParams
        .map((p) => uppercaseFirstLetter(typeNameForGetter(p, options)))
        .join('And');
    result = '${baseName}Of$paramsName';
  }
  return _sanitizeIdentifier(result);
}

Type _intersectTypes(List<Type> types) {
  if (types.isEmpty) return BuiltinType.anyType;
  if (types.length == 1) return types.first;

  // Deduplicate structurally equal types using their IDs
  final uniqueTypes = <Type>[];
  for (final t in types) {
    if (!uniqueTypes.any((u) => u.id == t.id)) {
      uniqueTypes.add(t);
    }
  }

  if (uniqueTypes.length == 1) return uniqueTypes.first;

  // Remove JSAny or JSAny? from the intersection if other types are present.
  // JSAny & T simplifies to T.
  final filteredTypes = uniqueTypes.where((t) {
    final jsAlt = getJSTypeAlternative(t);
    return !(jsAlt is BuiltinType && jsAlt.name == 'JSAny');
  }).toList();

  if (filteredTypes.isEmpty) return BuiltinType.anyType;
  if (filteredTypes.length == 1) return filteredTypes.first;

  final desugaredTypes = filteredTypes.map(desugarTypeAliases).toList();

  // If any constituent is 'never', the entire intersection is 'never'
  if (desugaredTypes.any((t) => t is BuiltinType && t.name == 'never')) {
    return BuiltinType.primitiveType(PrimitiveType.never);
  }

  // Identify the JS interop representation primitive name
  final basePrimitiveNames = desugaredTypes.map((t) {
    final jsAlt = getJSTypeAlternative(t);
    return jsAlt is BuiltinType ? jsAlt.name : null;
  }).toSet();

  const disjointPrimitives = {
    'JSString',
    'JSNumber',
    'JSBoolean',
    'JSSymbol',
    'JSBigInt',
  };

  final primitiveNames = basePrimitiveNames
      .where((n) => n != null && disjointPrimitives.contains(n))
      .cast<String>()
      .toSet();

  // Intersecting disjoint primitives (like string & number) results in never!
  if (primitiveNames.length > 1) {
    return BuiltinType.primitiveType(PrimitiveType.never);
  }

  // Intersecting primitive and object type also results in never.
  // We check if there are object types in desugaredTypes.
  // A type is an object if its jsAlt name is not in disjointPrimitives
  // (and not JSAny).
  final hasPrimitives = primitiveNames.isNotEmpty;
  final hasObjects = desugaredTypes.any((t) {
    final jsAlt = getJSTypeAlternative(t);
    final name = jsAlt is BuiltinType ? jsAlt.name : t.id.name;
    return name != 'JSAny' && !disjointPrimitives.contains(name);
  });

  if (hasPrimitives && hasObjects) {
    return BuiltinType.primitiveType(PrimitiveType.never);
  }

  // If they are all primitives of the same family (e.g. JSBoolean &
  // boolean literal true):
  // Return the common primitive type family!
  if (hasPrimitives && !hasObjects && primitiveNames.length == 1) {
    final commonPrimName = primitiveNames.first;
    for (final t in filteredTypes) {
      final jsAlt = getJSTypeAlternative(t);
      if (jsAlt is BuiltinType && jsAlt.name == commonPrimName) {
        return t;
      }
    }
    final primType = switch (commonPrimName) {
      'JSString' => PrimitiveType.string,
      'JSNumber' => PrimitiveType.num,
      'JSBoolean' => PrimitiveType.boolean,
      'JSSymbol' => PrimitiveType.symbol,
      'JSBigInt' => PrimitiveType.bigint,
      _ => PrimitiveType.any,
    };
    return BuiltinType.primitiveType(primType);
  }

  // If only objects exist, represent as IntersectionType
  final idNames = filteredTypes.map((t) => t.id.name).toList();
  final hash = AnonymousHasher.hashUnion(idNames);
  final name = 'AnonymousIntersection_$hash';
  return IntersectionType(types: filteredTypes, name: name);
}

String _sanitizeIdentifier(String name) {
  final sanitized = name
      .replaceAll('|', 'Or')
      .replaceAll('&', 'And')
      .replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_')
      .replaceAll(RegExp(r'_{2,}'), '_');
  return sanitized.isNotEmpty && RegExp(r'^[0-9]').hasMatch(sanitized)
      ? '\$$sanitized'
      : sanitized;
}
