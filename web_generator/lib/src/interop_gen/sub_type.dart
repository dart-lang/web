import '../ast/base.dart';
import '../ast/builtin.dart';
import '../ast/types.dart';

class TypeMap {
  List<TypeMap> nodes = [];

  TypeMap? parent;

  String value;

  TypeMap(this.value);

  bool lookup(String value) {
    if (this.value == value) return true;
    if (nodes.isEmpty) {
      return false;
    } else {
      return nodes.any((n) => n.lookup(value));
    }
  }

  void add(TypeMap map) {
    map.parent = this;
    return nodes.add(map);
  }

  Set<String> expand() {
    return {
      ...nodes.map((n) => n.value),
      ...nodes.map((n) => n.expand()).reduce((prev, next) => {...prev, ...next})
    };
  }
}

// TypeMap getTypeHierarchy(Type type) {
//   final map = TypeMap(type.name ?? type.id.name);

//   switch (type) {
//     case UnionType(types: final types):
//       map.add(getTypeHierarchy(getSubTypeOfTypes(types)));
//       break;
//     case TupleType(types: final types):
//       map.add(getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.array, typeParams: [
//         getSubTypeOfTypes(types)
//       ])));
//       break;
    
//   }
// }
 
// TODO: Complete Implementation
Type getSubTypeOfTypes(List<Type> types, {bool isNullable = false}) {
  if (_getSharedTypeIfAny(types, isNullable: isNullable) case final t?) {
    return t;
  }

  // get the type hierarchy of each type.

  // get the common
  // throw UnimplementedError('');
  return BuiltinType.primitiveType(PrimitiveType.any);
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
