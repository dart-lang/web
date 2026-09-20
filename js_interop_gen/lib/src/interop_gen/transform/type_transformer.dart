// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:collection/collection.dart';

import '../../ast/base.dart';
import '../../ast/builtin.dart';
import '../../ast/declarations.dart';
import '../../ast/helpers.dart';
import '../../ast/types.dart';
import '../../js/typescript.types.dart';
import '../hasher.dart';
import '../namer.dart';
import 'transformer.dart';

/// A companion helper class that translates TypeScript AST type nodes
/// ([TSTypeNode]) into Dart AST [Type] representations for a [Transformer].
class TypeTransformer {
  final Transformer transformer;

  TypeTransformer(this.transformer);

  /// Parses a TypeScript AST Type Node [TSTypeNode] into a [Type] Node
  /// used to represent a type.
  ///
  /// [parameter] represents whether the [TSTypeNode] is being passed in
  /// the context of a parameter, which is mainly used to differentiate between
  /// using [num] and [double] in the context of a [JSNumber].
  ///
  /// [typeArg] represents whether the [TSTypeNode] is being passed in the
  /// context of a type argument, as Dart core types are not allowed in
  /// type arguments.
  ///
  /// [isNullable] means that the given type is nullable, usually when it is
  /// unionized with `undefined` or `null`.
  // TODO(nikeokoronkwo): Add support for constructor and function types,
  //  https://github.com/dart-lang/web/issues/410
  //  https://github.com/dart-lang/web/issues/422
  Type transformType(
    TSTypeNode type, {
    bool parameter = false,
    bool typeArg = false,
    bool? isNullable,
  }) {
    LiteralType literalFromNum(num value) => LiteralType(
      isNullable: isNullable ?? false,
      kind: value is int ? LiteralKind.int : LiteralKind.double,
      value: value,
    );

    LiteralType literalFromString(String value) => LiteralType(
      isNullable: isNullable ?? false,
      kind: LiteralKind.string,
      value: value,
    );

    LiteralType literalFromBool(bool value) => LiteralType(
      isNullable: isNullable ?? false,
      kind: value ? LiteralKind.$true : LiteralKind.$false,
      value: value,
    );

    LiteralType literalFromNull() {
      // Null literals usually come through the syntax path.
      // This fallback handling is for completeness
      // and safety in resolved paths.
      return LiteralType(
        isNullable: isNullable ?? false,
        kind: LiteralKind.$null,
        value: null,
      );
    }

    switch (type.kind) {
      case TSSyntaxKind.ParenthesizedType:
        return transformType(
          (type as TSParenthesizedTypeNode).type,
          parameter: parameter,
          typeArg: typeArg,
          isNullable: isNullable,
        );
      case TSSyntaxKind.TypeReference:
        final refType = type as TSTypeReferenceNode;

        return transformer.typeResolver.getTypeFromTypeNode(
          refType,
          typeArg: typeArg,
          isNullable: isNullable ?? false,
        );
      case TSSyntaxKind.TypePredicate:
        // in the future, we can be smarter about this
        // but for now, we just have this as a boolean
        return BuiltinType.primitiveType(
          PrimitiveType.boolean,
          isNullable: isNullable,
        );
      case TSSyntaxKind.ConditionalType:
        return _transformConditionalType(
          type as TSConditionalTypeNode,
          isNullable: isNullable,
        );
      case TSSyntaxKind.TypeLiteral:
        return transformer.transformTypeLiteral(
          type as TSTypeLiteralNode,
          isNullable: isNullable,
        );
      case TSSyntaxKind.ConstructorType || TSSyntaxKind.FunctionType:
        return transformer.transformClosureType(
          type as TSFunctionOrConstructorTypeNodeBase,
          isConstructor: type.kind == TSSyntaxKind.ConstructorType,
          isNullable: isNullable,
        );
      case TSSyntaxKind.UnionType:
        return _transformUnionType(
          type as TSUnionTypeNode,
          parameter: parameter,
          typeArg: typeArg,
          isNullable: isNullable,
        );
      case TSSyntaxKind.IntersectionType:
        return _transformIntersectionType(
          type as TSIntersectionTypeNode,
          parameter: parameter,
          typeArg: typeArg,
          isNullable: isNullable,
        );
      case TSSyntaxKind.TupleType:
        // tuple type is array
        final tupleType = type as TSTupleTypeNode;
        // TODO: Handle named tuple params (`[x: number, y: number]`)
        final types = tupleType.elements.toDart
            .map<Type>((t) => transformType(t, typeArg: true))
            .toList();

        // we will work based on the length of the types
        final typeLength = types.length;

        // check if a tuple of a certain length already exists
        // generate if not
        final (tupleUrl, tupleDeclaration) = transformer.programMap
            .getCommonType(
              'JSTuple$typeLength',
              ifAbsent: ('_tuples.dart', TupleDeclaration(count: typeLength)),
            )!;

        return tupleDeclaration.asReferredType(
          types,
          isNullable ?? false,
          tupleUrl,
        );

      case TSSyntaxKind.LiteralType:
        final literalType = type as TSLiteralTypeNode;
        final literal = literalType.literal;

        // Try to handle simple literals first
        switch (literal.kind) {
          case TSSyntaxKind.NumericLiteral:
            return literalFromNum(num.parse(literal.text));
          case TSSyntaxKind.StringLiteral:
            return literalFromString(literal.text);
          case TSSyntaxKind.TrueKeyword:
            return literalFromBool(true);
          case TSSyntaxKind.FalseKeyword:
            return literalFromBool(false);
          case TSSyntaxKind.NullKeyword:
            return literalFromNull();
          default:
            final resolvedType = transformer.typeChecker.getTypeFromTypeNode(
              literalType,
            );

            if (resolvedType != null) {
              if (resolvedType.isNumberLiteral()) {
                return literalFromNum(
                  (resolvedType as TSNumberLiteralType).value,
                );
              } else if (resolvedType.isStringLiteral()) {
                return literalFromString(
                  (resolvedType as TSStringLiteralType).value,
                );
              } else if ((resolvedType.flags & TSTypeFlags.BooleanLiteral) !=
                  0) {
                // BooleanLiteralType may not expose its value;
                // fall back to the type string
                // to infer true/false.
                final typeStr = transformer.typeChecker.typeToString(
                  resolvedType,
                );
                if (typeStr == 'true' || typeStr == 'false') {
                  return literalFromBool(typeStr == 'true');
                }
              }

              // Fallback to underlying type if not a literal
              final underlyingTypeNode = transformer.typeChecker.typeToTypeNode(
                resolvedType,
              );
              if (underlyingTypeNode != null) {
                return transformType(
                  underlyingTypeNode,
                  //Avoid recursion if the underlying type is the same literal.
                  //typeToTypeNode usually returns a keyword type for primitives
                );
              }
            }

            return BuiltinType.primitiveType(
              PrimitiveType.any,
              isNullable: isNullable,
            );
        }
      case TSSyntaxKind.TypeQuery:
        final typeQuery = type as TSTypeQueryNode;

        final exprName = typeQuery.exprName;
        final typeArguments = typeQuery.typeArguments?.toDart;

        final getTypeFromDeclaration = transformer.typeResolver
            .getTypeFromDeclaration(
              exprName,
              typeArguments,
              typeArg: typeArg,
              isNotTypableDeclaration: true,
              isNullable: isNullable ?? false,
            );

        switch (getTypeFromDeclaration) {
          case ReferredType(declaration: final referredDecl)
              when referredDecl is EnumDeclaration:
            // check for type in type map
            final enumName = 'TypeOf_${referredDecl.name}';
            final enumID = ID(type: 'type', name: enumName);

            // enum is actually an object
            return transformer.typeMap.putIfAbsent(enumID.toString(), () {
              return EnumObjectType(
                referredDecl,
                isNullable: isNullable ?? false,
              );
            });
          default:
            return getTypeFromDeclaration;
        }
      case TSSyntaxKind.TypeOperator
          when (type as TSTypeOperatorNode).operator ==
              TSSyntaxKind.ReadonlyKeyword:
        final transformedType = transformType(
          type.type,
          parameter: parameter,
          typeArg: typeArg,
          isNullable: isNullable,
        );
        switch (transformedType) {
          // turn tuple to readonly tuple
          case final TupleType tuple:
            // make readonly
            final (tupleUrl, tupleDeclaration) = transformer.programMap
                .getCommonType(
                  'JSReadonlyTuple${tuple.types.length}',
                  ifAbsent: (
                    '_tuples.dart',
                    TupleDeclaration(count: tuple.types.length, readonly: true),
                  ),
                )!;

            return tupleDeclaration.asReferredType(
              tuple.types,
              isNullable ?? false,
              tupleUrl,
            );
          // TODO: mapped types
          // by default just return
          default:
            return transformedType;
        }
      case TSSyntaxKind.TypeOperator
          when (type as TSTypeOperatorNode).operator ==
              TSSyntaxKind.KeyOfKeyword:
        (List<String>, Type?) extractKeysOrReturnType(Type targetType) {
          switch (targetType) {
            case ObjectLiteralType(properties: final objectProps):
              return (objectProps.map((o) => o.name).toList(), null);
            case EnumObjectType(enumeration: final enumeration):
              return (enumeration.members.map((e) => e.name).toList(), null);
            case ReferredType(declaration: final referredDecl)
                when referredDecl is InterfaceDeclaration:
              return (
                referredDecl.properties.map((o) => o.name).toList(),
                null,
              );
            case ReferredDeclarationType(type: final referredToType):
              return extractKeysOrReturnType(referredToType);
            default:
              return (
                [],
                BuiltinType.primitiveType(
                  PrimitiveType.string,
                  isNullable: isNullable,
                ),
              );
          }
        }

        final transformedType = transformType(
          type.type,
          parameter: parameter,
          typeArg: typeArg,
          isNullable: isNullable,
        );

        // keyof
        final (keys, returnTypeOrNull) = extractKeysOrReturnType(
          transformedType,
        );

        if (returnTypeOrNull != null) return returnTypeOrNull;

        if (keys.isEmpty) {
          return BuiltinType.primitiveType(
            PrimitiveType.never,
            isNullable: isNullable,
          );
        }

        final typeName = transformedType is NamedType
            ? (transformedType.dartName ?? transformedType.name)
            : transformedType.id.name;
        return HomogenousEnumType(
          types: keys
              .map((k) => LiteralType(kind: LiteralKind.string, value: k))
              .toList(),
          name: 'KeyOf_$typeName',
        );
      case TSSyntaxKind.TypeOperator
          when (type as TSTypeOperatorNode).operator ==
              TSSyntaxKind.UniqueKeyword:
        // Dart does not support unique symbols

        return transformType(
          type.type,
          parameter: parameter,
          typeArg: typeArg,
          isNullable: isNullable,
        );
      case TSSyntaxKind.IndexedAccessType:
        return _transformIndexedAccessType(
          type as TSIndexedAccessType,
          isNullable: isNullable,
        );
      case TSSyntaxKind.ArrayType:
        return BuiltinType.primitiveType(
          PrimitiveType.array,
          typeParams: [
            getJSTypeAlternative(
              transformType((type as TSArrayTypeNode).elementType),
            ),
          ],
          isNullable: isNullable,
        );
      default:
        // check for primitive type via its kind
        final primitiveType = switch (type.kind) {
          TSSyntaxKind.ArrayType => PrimitiveType.array,
          TSSyntaxKind.StringKeyword => PrimitiveType.string,
          TSSyntaxKind.AnyKeyword => PrimitiveType.any,
          TSSyntaxKind.ObjectKeyword => PrimitiveType.object,
          TSSyntaxKind.NumberKeyword =>
            (parameter ? PrimitiveType.num : PrimitiveType.double),
          TSSyntaxKind.UndefinedKeyword => PrimitiveType.undefined,
          TSSyntaxKind.UnknownKeyword => PrimitiveType.unknown,
          TSSyntaxKind.BooleanKeyword => PrimitiveType.boolean,
          TSSyntaxKind.VoidKeyword => PrimitiveType.$void,
          TSSyntaxKind.BigIntKeyword => PrimitiveType.bigint,
          TSSyntaxKind.SymbolKeyword => PrimitiveType.symbol,
          TSSyntaxKind.NeverKeyword => PrimitiveType.never,
          _ => null,
        };

        if (primitiveType != null) {
          return BuiltinType.primitiveType(
            primitiveType,
            shouldEmitJsType: typeArg ? true : null,
            isNullable: primitiveType == PrimitiveType.any ? true : isNullable,
          );
        } else if (transformer.errorIfUnsupported) {
          throw UnsupportedError(
            'The given type with kind ${type.kind} is not supported yet',
          );
        } else {
          print(
            'WARN: The given type with kind ${type.kind} is '
            'not supported yet',
          );
          return BuiltinType.primitiveType(
            PrimitiveType.any,
            isNullable: isNullable,
          );
        }
    }
  }

  List<TSTypeNode> _filterNonNullableTypeNodes(List<TSTypeNode> nodes) => nodes
      .where(
        (t) =>
            t.kind != TSSyntaxKind.UndefinedKeyword &&
            !(t.kind == TSSyntaxKind.LiteralType &&
                (t as TSLiteralTypeNode).literal.kind ==
                    TSSyntaxKind.NullKeyword),
      )
      .toList();

  T _getOrCreateCachedType<T extends Type>(
    ID expectedId,
    String name,
    T Function() create, {
    required bool cacheHitNullable,
    required bool cacheMissNullable,
  }) {
    final typeMap = transformer.typeMap;
    if (typeMap.containsKey(expectedId.toString())) {
      return (typeMap[expectedId.toString()] as T)
        ..isNullable = cacheHitNullable;
    }
    final created = create();
    final cached =
        typeMap.putIfAbsent(expectedId.toString(), () {
              transformer.namer.markUsed(name);
              return created;
            })
            as T;
    return cached..isNullable = cacheMissNullable;
  }

  Type _transformConditionalType(
    TSConditionalTypeNode conditionalType, {
    required bool? isNullable,
  }) {
    final trueType = transformType(conditionalType.trueType);
    final falseType = transformType(conditionalType.falseType);

    final types = [
      trueType,
      falseType,
    ].sorted((a, b) => a.id.toString().compareTo(b.id.toString()));

    final expectedID = ID(type: 'type', name: types.join('|'));
    final trueTypeName = trueType is NamedType
        ? trueType.name
        : trueType.dartName ?? trueType.id.name;
    final falseTypeName = falseType is NamedType
        ? falseType.name
        : falseType.dartName ?? falseType.id.name;
    final conditionalName = '${trueTypeName}Or$falseTypeName';

    return _getOrCreateCachedType<UnionType>(
      expectedID,
      conditionalName,
      () => UnionType(types: types, name: conditionalName),
      cacheHitNullable: isNullable ?? false,
      cacheMissNullable: isNullable ?? false,
    );
  }

  Type _transformUnionType(
    TSUnionTypeNode unionType, {
    required bool parameter,
    required bool typeArg,
    required bool? isNullable,
  }) {
    final unionTypes = unionType.types.toDart;
    final nonNullableUnionTypes = _filterNonNullableTypeNodes(unionTypes);
    final shouldBeNullable = nonNullableUnionTypes.length != unionTypes.length;

    if (nonNullableUnionTypes.singleOrNull case final singleTypeNode?) {
      return transformType(
        singleTypeNode,
        typeArg: typeArg,
        parameter: parameter,
        isNullable: shouldBeNullable || (isNullable ?? false),
      );
    }

    final types = nonNullableUnionTypes
        .map<Type>(
          (t) => transformType(t, typeArg: typeArg, parameter: parameter),
        )
        .toList();

    if (types.isEmpty) {
      return BuiltinType.primitiveType(
        PrimitiveType.never,
        isNullable: shouldBeNullable || (isNullable ?? false),
      );
    }

    var isHomogenous = true;
    final nonNullLiteralTypes = <LiteralType>[];
    var onlyContainsBooleanTypes = true;
    LiteralType? firstNonNullablePrimitiveType;

    for (final type in types) {
      if (type is LiteralType) {
        firstNonNullablePrimitiveType ??= type;
        onlyContainsBooleanTypes &=
            (type.kind == LiteralKind.$true) ||
            (type.kind == LiteralKind.$false);
        if (type.kind.primitive !=
            firstNonNullablePrimitiveType.kind.primitive) {
          isHomogenous = false;
        }
        nonNullLiteralTypes.add(type);
      } else {
        isHomogenous = false;
      }
    }

    if (isHomogenous &&
        nonNullLiteralTypes.isNotEmpty &&
        onlyContainsBooleanTypes) {
      return BuiltinType.primitiveType(
        PrimitiveType.boolean,
        isNullable: shouldBeNullable,
      );
    }

    final idMap = isHomogenous
        ? nonNullLiteralTypes.map((t) => t.value.toString())
        : types.map((t) => t.id.name);
    final expectedId = ID(type: 'type', name: idMap.join('|'));
    final name = 'AnonymousUnion_${AnonymousHasher.hashUnion(idMap.toList())}';

    return _getOrCreateCachedType<UnionType>(
      expectedId,
      name,
      () => isHomogenous
          ? HomogenousEnumType(types: nonNullLiteralTypes, name: name)
          : UnionType(types: types, name: name),
      cacheHitNullable: isNullable ?? false,
      cacheMissNullable: shouldBeNullable,
    );
  }

  Type _transformIntersectionType(
    TSIntersectionTypeNode intersectionType, {
    required bool parameter,
    required bool typeArg,
    required bool? isNullable,
  }) {
    final intersectionTypes = intersectionType.types.toDart;
    final nonNullableIntersectionTypes = _filterNonNullableTypeNodes(
      intersectionTypes,
    );
    final shouldBeNullable =
        nonNullableIntersectionTypes.length != intersectionTypes.length;

    if (shouldBeNullable) {
      return BuiltinType.primitiveType(
        PrimitiveType.never,
        isNullable: isNullable,
      );
    }

    if (nonNullableIntersectionTypes.singleOrNull case final singleTypeNode?) {
      return transformType(
        singleTypeNode,
        typeArg: typeArg,
        parameter: parameter,
        isNullable: isNullable,
      );
    }

    final types = nonNullableIntersectionTypes
        .map<Type>(
          (t) => transformType(t, typeArg: typeArg, parameter: parameter),
        )
        .toList();

    final idMap = types.map((t) => t.id.name);
    final expectedId = ID(type: 'type', name: idMap.join('&'));
    final intersectionHash = AnonymousHasher.hashUnion(idMap.toList());
    final name = 'AnonymousIntersection_$intersectionHash';

    return _getOrCreateCachedType<IntersectionType>(
      expectedId,
      name,
      () => IntersectionType(types: types, name: name),
      cacheHitNullable: isNullable ?? false,
      cacheMissNullable: isNullable ?? shouldBeNullable,
    );
  }

  Type _transformIndexedAccessType(
    TSIndexedAccessType accessNode, {
    required bool? isNullable,
  }) {
    final objectType = transformType(accessNode.objectType);
    final isLocalType =
        (objectType is ReferredType && objectType.url == null) ||
        objectType is ObjectLiteralType;

    final indexType = transformType(accessNode.indexType);

    Set<String> collectKeys(Type t) {
      final keys = <String>{};
      if (t is LiteralType) {
        if (t.kind == LiteralKind.string) {
          keys.add(t.value as String);
        } else if (t.kind == LiteralKind.int || t.kind == LiteralKind.double) {
          keys.add(t.value.toString());
        }
      } else if (t is HomogenousEnumType) {
        for (final sub in t.types) {
          keys.addAll(collectKeys(sub));
        }
      } else if (t is UnionType) {
        for (final sub in t.types) {
          keys.addAll(collectKeys(sub));
        }
      }
      return keys;
    }

    final keys = collectKeys(indexType);

    if (accessNode.indexType.kind == TSSyntaxKind.TypeQuery) {
      final query = accessNode.indexType as TSTypeQueryNode;
      final text = query.exprName.getText();
      if (text.startsWith('Symbol.')) {
        keys.add(text);
      }
    }

    List<Type> lookup(Type obj, String key) {
      final matchingTypes = <Type>[];
      final candidates = <PropertyDeclaration>[];
      if (obj is ObjectLiteralType) {
        candidates.addAll(obj.properties);
      } else if (obj is ReferredType &&
          obj.declaration is InterfaceDeclaration) {
        final decl = obj.declaration as InterfaceDeclaration;
        candidates.addAll(decl.properties);
      }

      for (final prop in candidates) {
        if (prop.name == key) {
          matchingTypes.add(prop.type);
        }
      }
      return matchingTypes;
    }

    List<Type> filterResults(List<Type> results, String key) {
      if (!isLocalType || results.isEmpty) {
        return results;
      }

      final isNumeric = double.tryParse(key) != null;
      final isSymbol = key.startsWith('Symbol.');

      if (isNumeric || isSymbol) {
        return results;
      }

      const allowed = {
        'String',
        'num',
        'double',
        'bool',
        'void',
        'int',
        'JSAny',
      };
      return results.where((t) {
        if (t is LiteralType && t.kind == LiteralKind.$null) {
          return true;
        }
        if (t is BuiltinType) return allowed.contains(t.name);
        return false;
      }).toList();
    }

    final matchingTypes = keys
        .expand((key) => filterResults(lookup(objectType, key), key))
        .toList();

    if (matchingTypes.isNotEmpty) {
      if (matchingTypes.length == 1) {
        return matchingTypes.first..isNullable = (isNullable ?? false);
      }

      final seenIds = <String>{};
      final types = matchingTypes
          .where((t) => seenIds.add(t.id.toString()))
          .toList();

      if (types.length == 1) {
        return types.first..isNullable = (isNullable ?? false);
      }

      final typeNames = types.map((t) => t.id.name).toList();
      final expectedId = ID(type: 'type', name: typeNames.join('|'));
      final unionHash = AnonymousHasher.hashUnion(typeNames);
      final un = UnionType(types: types, name: 'AnonymousUnion_$unionHash');

      return _getOrCreateCachedType<UnionType>(
        expectedId,
        un.declarationName,
        () => un,
        cacheHitNullable: isNullable ?? false,
        cacheMissNullable: isNullable ?? false,
      );
    }

    if (transformer.errorIfUnsupported) {
      throw UnsupportedError(
        'IndexedAccessType resolution failed in strict mode.',
      );
    }

    return BuiltinType.primitiveType(PrimitiveType.any, isNullable: false);
  }

  Type transformTypeExpressionWithTypeArguments(
    TSExpressionWithTypeArguments type,
  ) {
    if (type.expression.kind == TSSyntaxKind.Identifier) {
      final identifier = type.expression as TSIdentifier;

      final getTypeFromDeclaration = transformer.typeResolver
          .getTypeFromDeclaration(identifier, type.typeArguments?.toDart);

      return getTypeFromDeclaration;
    } else if (type.expression.kind == TSSyntaxKind.PropertyAccessExpression) {
      final symbol = transformer.typeChecker.getSymbolAtLocation(
        type.expression,
      );
      final tsType = transformer.typeChecker.getTypeFromTypeNode(type);
      return transformer.typeResolver.getTypeFromSymbol(
        symbol,
        tsType,
        type.typeArguments?.toDart,
        false,
        false,
        false,
      );
    } else {
      throw UnimplementedError(
        "The given type expression's expression of kind "
        '${type.expression.kind} is not supported yet',
      );
    }
  }
}
