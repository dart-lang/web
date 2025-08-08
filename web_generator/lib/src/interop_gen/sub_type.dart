// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../ast/base.dart';
import '../ast/builtin.dart';
import '../ast/declarations.dart';
import '../ast/helpers.dart';
import '../ast/types.dart';
import '../js_type_supertypes.dart';
import 'hasher.dart';
import 'transform.dart';

class TypeHierarchalTree {
  List<TypeHierarchalTree> nodes = [];

  TypeHierarchalTree? parent;

  String value;

  TypeHierarchalTree(this.value);

  TypeHierarchalTree? getMapWithValue(String value) {
    if (this.value == value) return this;
    if (nodes.isEmpty) return null;
    return nodes.where((v) => v.getMapWithValue(value) != null).firstOrNull;
  }

  TypeHierarchalTree getMapWithLookup(Iterable<int> path) {
    final firstIndex = path.firstOrNull;
    if (firstIndex == null) return this;
    return nodes[firstIndex].getMapWithLookup(path.skip(1));
  }

  String getValueWithLookup(Iterable<int> path) {
    final firstIndex = path.firstOrNull;
    if (firstIndex == null) return value;
    return nodes[firstIndex].getValueWithLookup(path.skip(1));
  }

  ({int level, List<int> path})? lookup(String value) {
    return _lookup(value, 0, []);
  }

  ({int level, List<int> path})? _lookup(
      String value, int level, List<int> indexPath) {
    if (this.value == value) return (level: level, path: indexPath);
    if (nodes.isEmpty) {
      return null;
    } else {
      // find value
      return nodes.indexed
          .map((v) {
            final lookupVal =
                v.$2._lookup(value, level + 1, [...indexPath, v.$1]);
            return lookupVal;
          })
          .nonNulls
          .firstOrNull;
    }
  }

  void add(TypeHierarchalTree map) {
    map.parent = this;
    return nodes.add(map);
  }

  void addValues(Iterable<String> list) {
    if (list.isEmpty) {
      return;
    } else if (list.length == 1) {
      nodes.add(TypeHierarchalTree(list.single));
      return;
    }
    nodes.add(TypeHierarchalTree(list.first)..addValues(list.skip(1)));
  }

  Set<String> expand() {
    return {
      value,
      ...nodes.map((n) => n.value),
      ...nodes
          .map((n) => n.expand())
          .fold(<String>{}, (prev, next) => {...prev, ...next})
    };
  }
}

TypeHierarchalTree getTypeHierarchy(Type type) {
  if (type case final ReferredType ref
      when ref.declaration is TypeAliasDeclaration) {
    return getTypeHierarchy((ref.declaration as TypeAliasDeclaration).type);
  }

  final map = TypeHierarchalTree(type.name ?? type.id.name);

  switch (type) {
    case HomogenousEnumType(types: final homogenousTypes):
      map.add(getTypeHierarchy(homogenousTypes.first.baseType));
      break;
    case UnionType(types: final types):
      // subtype is union
      map.add(getTypeHierarchy(getSubTypeOfTypes(types)));
      break;
    case TupleType(types: final types):
      // subtype is JSArray<union>
      map.add(getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.array,
          typeParams: [getSubTypeOfTypes(types)])));
      break;
    case GenericType(constraint: final constraintedType):
      map.add(getTypeHierarchy(constraintedType ?? BuiltinType.anyType));
      break;
    case ReferredDeclarationType(type: final referredType):
      return getTypeHierarchy(referredType);
    case ReferredType(declaration: final decl) when decl is ClassDeclaration:
      final types = [
        if (decl.extendedType != null) decl.extendedType!,
        ...decl.implementedTypes,
      ];
      if (types.isEmpty) {
        map.add(
            getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.object)));
      } else {
        for (final t in types) {
          map.add(getTypeHierarchy(t));
        }
      }
      break;
    case ReferredType(declaration: final decl)
        when decl is InterfaceDeclaration:
      if (decl.extendedTypes.isEmpty) {
        map.add(
            getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.object)));
      } else {
        for (final t in decl.extendedTypes) {
          map.add(getTypeHierarchy(t));
        }
      }
      break;
    case ReferredType(declaration: final decl)
        when decl is NamespaceDeclaration:
    case ObjectLiteralType():
      // subtype is JSObject
      map.add(
          getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.object)));
      break;
    case ReferredType(declaration: final decl) when decl is FunctionDeclaration:
    case ClosureType():
      // subtype is JSFunction
      map.add(getTypeHierarchy(BuiltinType.referred('Function')!));
      break;
    case LiteralType(baseType: final baseType):
      map.add(getTypeHierarchy(baseType));
      break;

    case BuiltinType():
      // we can only use JS types
      final BuiltinType(name: jsName) =
          getJSTypeAlternative(type) as BuiltinType;

      var value = jsTypeSupertypes[jsName];
      final list = <String>[];
      while (value != null) {
        list.add(value);
        value = jsTypeSupertypes[value];
      }
      map.addValues(list);
      break;
    default:
      print('WARN: Could not get type hierarchy for type of kind '
          '${type.runtimeType}. Skipping...');
      break;
  }
  return map;
}

TypeMap createTypeMap(List<Type> types) {
  final outputMap = TypeMap();

  void addToMap(Type type) {
    outputMap.addAll(<String, Type>{type.name ?? type.id.name: type});
  }

  for (final type in types) {
    addToMap(type);
    switch (type) {
      case ReferredDeclarationType(type: final referredType):
        outputMap.addAll(createTypeMap([referredType]));
        break;
      case ReferredType(declaration: final decl) when decl is ClassDeclaration:
        outputMap.addAll(createTypeMap([
          if (decl.extendedType != null) decl.extendedType!,
          ...decl.implementedTypes
        ]));
      case ReferredType(declaration: final decl)
          when decl is FunctionDeclaration:
        addToMap(BuiltinType.referred('Function')!);
        break;
      case ReferredType(declaration: final decl)
          when decl is InterfaceDeclaration:
        outputMap.addAll(createTypeMap([...decl.extendedTypes]));
      case HomogenousEnumType(types: final homogenousTypes):
        outputMap.addAll(
            createTypeMap(homogenousTypes.map((h) => h.baseType).toList()));
        break;
      case TupleType(types: final types):
      case UnionType(types: final types):
        outputMap.addAll(createTypeMap(types));
        break;
      case GenericType(constraint: final constraintedType?):
        outputMap.addAll(createTypeMap([constraintedType]));
        break;
      default:
        break;
    }
  }

  return outputMap;
}

Type getSubTypeOfTypes(List<Type> types,
    {bool isNullable = false, TypeMap? typeMap}) {
  typeMap ??= createTypeMap(types);

  if (types.isEmpty) throw Exception('You must pass types');
  if (types.singleOrNull case final singleType?) {
    return singleType..isNullable = isNullable;
  }

  if (_getSharedTypeIfAny(types, isNullable: isNullable) case final t?) {
    return t;
  }

  // get the type hierarchy of each type.
  final typeMaps = types.map(getTypeHierarchy);
  final parentHierarchy = typeMaps.map((map) => map.expand());
  final commonTypes =
      parentHierarchy.reduce((val, element) => val.intersection(element));

  // filter any
  final markedForRemoval = <String>{};
  for (final type in commonTypes) {
    // map should be same for all types
    final lookupResult = typeMaps.first.lookup(type)!;
    final typeMap = typeMaps.first.getMapWithLookup(lookupResult.path);

    // remove types in map
    markedForRemoval.addAll(commonTypes.where(
        (t) => typeMap.lookup(t) != null && typeMap.lookup(t)!.level != 0));
  }

  commonTypes.removeAll(markedForRemoval);

  if (commonTypes.singleOrNull case final finalType?) {
    return deduceType(finalType, typeMap);
  } else if (commonTypes.isEmpty) {
    return BuiltinType.primitiveType(PrimitiveType.any);
  } else {
    return UnionType(
        types: commonTypes.map((c) => deduceType(c, typeMap!)).toList(),
        name: '_AnonymousUnion_'
            '${AnonymousHasher.hashUnion(commonTypes.toList())}');
  }
}

Type deduceType(String name, TypeMap map, {bool? shouldEmitJsType}) {
  final referredType =
      BuiltinType.referred(name.startsWith('JS') ? name.substring(2) : name);
  if (referredType != null) return referredType;
  return (switch (name) {
        'JSBoolean' => BuiltinType.primitiveType(PrimitiveType.boolean,
            shouldEmitJsType: shouldEmitJsType),
        'JSNumber' => BuiltinType.primitiveType(PrimitiveType.num,
            shouldEmitJsType: shouldEmitJsType),
        'JSObject' => BuiltinType.primitiveType(PrimitiveType.object,
            shouldEmitJsType: shouldEmitJsType),
        'JSString' => BuiltinType.primitiveType(PrimitiveType.string,
            shouldEmitJsType: shouldEmitJsType),
        'JSVoid' => BuiltinType.primitiveType(PrimitiveType.$void,
            shouldEmitJsType: shouldEmitJsType),
        'JSSymbol' => BuiltinType.primitiveType(PrimitiveType.symbol,
            shouldEmitJsType: shouldEmitJsType),
        'JSBigInt' => BuiltinType.primitiveType(PrimitiveType.bigint,
            shouldEmitJsType: shouldEmitJsType),
        'JSAny' => BuiltinType.primitiveType(PrimitiveType.any),
        'JSTypedArray' =>
          BuiltinType(name: 'JSTypedArray', fromDartJSInterop: true),
        _ => map[name]
      } ??
      BuiltinType.primitiveType(PrimitiveType.any)) as Type;
}

/// Checks if there is a type shared between the types, usually in the
/// case of a literal
Type? _getSharedTypeIfAny(List<Type> types, {bool isNullable = true}) {
  LiteralKind? kind;
  Type? equalType;
  bool? isNull;
  var allEqualTypes = true;
  var allLiteralTypes = true;

  for (final t in types) {
    if (t is LiteralType) {
      if (t.kind == LiteralKind.$null) {
        isNull ??= true;
        continue;
      }
      kind ??= t.kind;
      if (kind != t.kind) {
        allEqualTypes = false;
        break;
      }
    } else {
      allLiteralTypes = false;
      equalType ??= t;
      if (equalType.id != t.id) {
        allEqualTypes = false;
        break;
      }
    }
  }

  if (allEqualTypes) {
    if (allLiteralTypes) {
      final primitiveType = switch (kind) {
        LiteralKind.string => PrimitiveType.string,
        LiteralKind.$false || LiteralKind.$true => PrimitiveType.boolean,
        LiteralKind.double => PrimitiveType.double,
        LiteralKind.int => PrimitiveType.int,
        _ => PrimitiveType.any
      };

      return BuiltinType.primitiveType(primitiveType,
          isNullable: isNull ?? isNullable);
    } else {
      return equalType!;
    }
  }

  return null;
}
