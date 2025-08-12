// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta.dart';

import '../ast/base.dart';
import '../ast/builtin.dart';
import '../ast/declarations.dart';
import '../ast/helpers.dart';
import '../ast/types.dart';
import '../js_type_supertypes.dart';
import 'hasher.dart';
import 'transform.dart';

/// A directed acyclic graph representation of an inverted type hierarchy,
/// where a node (type) is connected to other nodes such that the given type
/// is directed to a supertype of the given type.
class TypeHierarchy {
  List<TypeHierarchy> nodes = [];

  String value;

  TypeHierarchy(this.value);

  TypeHierarchy? getMapWithValue(String value) {
    if (this.value == value) return this;
    if (nodes.isEmpty) return null;
    return nodes.where((v) => v.getMapWithValue(value) != null).firstOrNull;
  }

  @visibleForTesting
  TypeHierarchy getMapWithLookup(Iterable<int> path) {
    if (path.isEmpty) return this;
    return nodes[path.first].getMapWithLookup(path.skip(1));
  }

  @visibleForTesting
  String getValueWithLookup(Iterable<int> path) {
    if (path.isEmpty) return value;
    return nodes[path.first].getValueWithLookup(path.skip(1));
  }

  @visibleForTesting
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

  void addChainedValues(Iterable<String> list) {
    if (list.isEmpty) {
      return;
    } else if (list.length == 1) {
      nodes.add(TypeHierarchy(list.single));
      return;
    }
    nodes.add(TypeHierarchy(list.first)..addChainedValues(list.skip(1)));
  }

  Set<String> expand() {
    final set = <String>{value};
    for (final node in nodes) {
      set.add(node.value);
      set.addAll(node.expand());
    }
    return set;
  }

  @override
  bool operator ==(Object other) {
    return other is TypeHierarchy && other.value == value;
  }

  @override
  int get hashCode => Object.hashAll([value]);

  @override
  String toString() => value.toString();
}

Map<String, TypeHierarchy> _cachedTrees = {};

/// Given a set of type hierarchies, form a map indexing the number of edges
/// directed at a given node (the center for a specific [TypeHierarchy]) to the
/// node.
Map<TypeHierarchy, int> generateMapFromNodes(List<TypeHierarchy> nodes) {
  final graph = <TypeHierarchy, int>{};
  for (final node in nodes) {
    graph[node] = 0;
    _mapFromNodes(node.nodes, graph);
  }
  return graph;
}

void _mapFromNodes(List<TypeHierarchy> nodes, Map<TypeHierarchy, int> map) {
  for (final node in nodes) {
    map.update(node, (v) => v++, ifAbsent: () => 1);
    _mapFromNodes(node.nodes, map);
  }
}

/// Given a set of type hierarchies, form a topologically sorted list using
/// (a modified version of) Kahn's algorithm on the type hierarchies,
/// sorting each level as a [Set] of distinct types.
///
/// Returns a list of sets of strings forming the levels in the topological
/// ordering
List<Set<String>> topologicalList(List<TypeHierarchy> nodes) {
  final graph = generateMapFromNodes(nodes);
  final outputList = <Set<String>>[];

  final nodesWithoutEdges = <TypeHierarchy>{};
  for (final MapEntry(key: node, value: noOfEdges) in graph.entries) {
    if (noOfEdges == 0) nodesWithoutEdges.add(node);
  }

  while (nodesWithoutEdges.isNotEmpty) {
    final listToAdd = <String>{};
    final nodesToAddNext = <TypeHierarchy>{};
    for (final node in nodesWithoutEdges) {
      listToAdd.add(node.value);
      for (final n in node.nodes) {
        graph[n] = graph[n]! - 1;
        if (graph[n] == 0) {
          nodesToAddNext.add(n);
        }
      }
    }

    nodesWithoutEdges.clear();
    nodesWithoutEdges.addAll(nodesToAddNext);
    outputList.add(listToAdd);
  }

  return outputList;
}

/// Given a [Type], get its ancestoral graph (a DAG) and form a [TypeHierarchy]
/// from it.
///
/// The function recursively goes through the types [type] inherits from,
/// depending on what kind of type it is, and follows this ancestral tree up
/// until it gets to the final ancestor: `JSAny` (all types inherit `JSAny`)
TypeHierarchy getTypeHierarchy(Type type) {
  if (type case final ReferredType ref
      when ref.declaration is TypeAliasDeclaration) {
    return getTypeHierarchy((ref.declaration as TypeAliasDeclaration).type);
  }

  final name = type is NamedType ? type.name : type.id.name;
  return _cachedTrees.putIfAbsent(name, () {
    final hierarchy = TypeHierarchy(name);

    switch (type) {
      case HomogenousEnumType(types: final homogenousTypes):
        hierarchy.nodes.add(getTypeHierarchy(homogenousTypes.first.baseType));
        break;
      case UnionType(types: final types):
        // subtype is union
        hierarchy.nodes
            .add(getTypeHierarchy(getLowestCommonAncestorOfTypes(types)));
        break;
      case TupleType(types: final types):
        // subtype is JSArray<union>
        hierarchy.nodes.add(getTypeHierarchy(BuiltinType.primitiveType(
            PrimitiveType.array,
            typeParams: [getLowestCommonAncestorOfTypes(types)])));
        break;
      case GenericType(constraint: final constraintedType):
        hierarchy.nodes
            .add(getTypeHierarchy(constraintedType ?? BuiltinType.anyType));
        break;
      case ReferredDeclarationType(type: final referredType):
        return getTypeHierarchy(referredType);
      case ReferredType(declaration: final decl) when decl is ClassDeclaration:
        final types = [
          if (decl.extendedType != null) decl.extendedType!,
          ...decl.implementedTypes,
        ];
        if (types.isEmpty) {
          hierarchy.nodes.add(getTypeHierarchy(
              BuiltinType.primitiveType(PrimitiveType.object)));
        } else {
          for (final t in types) {
            hierarchy.nodes.add(getTypeHierarchy(t));
          }
        }
        break;
      case ReferredType(declaration: final decl)
          when decl is InterfaceDeclaration:
        if (decl.extendedTypes.isEmpty) {
          hierarchy.nodes.add(getTypeHierarchy(
              BuiltinType.primitiveType(PrimitiveType.object)));
        } else {
          for (final t in decl.extendedTypes) {
            hierarchy.nodes.add(getTypeHierarchy(t));
          }
        }
        break;
      case ReferredType(declaration: final decl)
          when decl is NamespaceDeclaration:
      case ObjectLiteralType():
        // subtype is JSObject
        hierarchy.nodes.add(
            getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.object)));
        break;
      case ReferredType(declaration: final decl)
          when decl is FunctionDeclaration:
      case ClosureType():
        // subtype is JSFunction
        hierarchy.nodes
            .add(getTypeHierarchy(BuiltinType.referred('Function')!));
        break;
      case LiteralType(baseType: final baseType):
        hierarchy.nodes.add(getTypeHierarchy(baseType));
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
        hierarchy.addChainedValues(list);
        break;
      default:
        print('WARN: Could not get type hierarchy for type of kind '
            '${type.runtimeType}. Skipping...');
        break;
    }
    return hierarchy;
  });
}

TypeMap createTypeMap(List<Type> types, {TypeMap? map}) {
  final outputMap = map ??
      TypeMap({
        'JSBoolean': BuiltinType.primitiveType(PrimitiveType.boolean,
            shouldEmitJsType: true),
        'JSNumber': BuiltinType.primitiveType(PrimitiveType.num,
            shouldEmitJsType: true),
        'JSObject': BuiltinType.primitiveType(PrimitiveType.object,
            shouldEmitJsType: true),
        'JSString': BuiltinType.primitiveType(PrimitiveType.string,
            shouldEmitJsType: true),
        'JSVoid': BuiltinType.primitiveType(PrimitiveType.$void,
            shouldEmitJsType: true),
        'JSSymbol': BuiltinType.primitiveType(PrimitiveType.symbol,
            shouldEmitJsType: true),
        'JSBigInt': BuiltinType.primitiveType(PrimitiveType.bigint,
            shouldEmitJsType: true),
        'JSAny': BuiltinType.primitiveType(PrimitiveType.any),
        'JSTypedArray':
            BuiltinType(name: 'JSTypedArray', fromDartJSInterop: true),
      });

  void addToMap(Type type) {
    outputMap[type is NamedType ? type.name : type.id.name] = type;
  }

  for (final type in types) {
    final name = type is NamedType ? type.name : type.id.name;

    if (outputMap.containsKey(name)) continue;

    addToMap(type);
    switch (type) {
      case ReferredDeclarationType(type: final referredType):
        outputMap.addAll(createTypeMap([referredType], map: outputMap));
        break;
      case ReferredType(declaration: final decl) when decl is ClassDeclaration:
        outputMap.addAll(createTypeMap([
          if (decl.extendedType != null) decl.extendedType!,
          ...decl.implementedTypes
        ], map: outputMap));
      case ReferredType(declaration: final decl)
          when decl is FunctionDeclaration:
        addToMap(BuiltinType.referred('Function')!);
        break;
      case ReferredType(declaration: final decl)
          when decl is InterfaceDeclaration:
        outputMap
            .addAll(createTypeMap([...decl.extendedTypes], map: outputMap));
      case HomogenousEnumType(types: final homogenousTypes):
        outputMap.addAll(
            createTypeMap([homogenousTypes.first.baseType], map: outputMap));
        break;
      case TupleType(types: final types):
      case UnionType(types: final types):
        outputMap.addAll(createTypeMap(types, map: outputMap));
        break;
      case GenericType(constraint: final constrainedType?):
        outputMap.addAll(createTypeMap([constrainedType], map: outputMap));
        break;
      default:
        break;
    }
  }

  return outputMap;
}

/// Given a list of types, usually from a union, get the subtype shared by the
/// types by getting the lowest common ancestor between the given types.
///
/// If a [typeMap] is not provided, it generates the smallest necessary typemap
/// for the types. If only one type is provided, that type is returned.
///
/// Types may have more than one type in common. In such case, a union of those
/// common types is returned by the given function.
Type getLowestCommonAncestorOfTypes(List<Type> types,
    {bool isNullable = false, TypeMap? typeMap}) {
  typeMap ??= createTypeMap(types);

  if (types.isEmpty) throw Exception('You must pass types');
  if (types.singleOrNull case final singleType?) {
    return singleType..isNullable = isNullable;
  }

  if (_getSharedPrimitiveTypeIfAny(types, isNullable: isNullable)
      case final t?) {
    return t;
  }

  // Calculate the intersection of all type hierarchies
  final typeMaps = types.map(getTypeHierarchy);
  final parentHierarchy = typeMaps.map((map) => map.expand());
  final commonTypes =
      parentHierarchy.reduce((val, element) => val.intersection(element));

  final topoList = topologicalList(typeMaps.toList());
  for (final level in topoList) {
    final typesAtLevel = commonTypes.intersection(level);
    if (typesAtLevel.isNotEmpty) {
      if (typesAtLevel.singleOrNull case final finalType?) {
        return deduceType(finalType, typeMap);
      } else {
        return UnionType(
            types: typesAtLevel.map((c) => deduceType(c, typeMap!)).toList(),
            name: 'AnonymousUnion_'
                '${AnonymousHasher.hashUnion(commonTypes.toList())}');
      }
    }
  }

  return BuiltinType.primitiveType(PrimitiveType.any);
}

Type deduceType(String name, TypeMap map) {
  final referredType =
      BuiltinType.referred(name.startsWith('JS') ? name.substring(2) : name);
  if (referredType != null) return referredType;
  return (map[name] ?? BuiltinType.primitiveType(PrimitiveType.any)) as Type;
}

/// Checks if there is a type shared between the types, usually in the
/// case of a literal
Type? _getSharedPrimitiveTypeIfAny(List<Type> types, {bool isNullable = true}) {
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
