import '../ast/base.dart';
import '../ast/builtin.dart';
import '../ast/types.dart';

// TODO: Complete Implementation
Type getSubTypeOfTypes(List<Type> types, {bool isNullable = false}) {
  if (_getSharedTypeIfAny(types, isNullable: isNullable) case final t?) {
    return t;
  }

  // get the type hierarchy of each type.

  // get the common
  // throw UnimplementedError('');
  return BuiltinType.primitiveType(PrimitiveType.any, isNullable: isNullable);
}

/// Checks if there is a type shared between the types, usually in the
/// case of a literal
Type? _getSharedTypeIfAny(List<Type> types, {bool isNullable = true}) {
  LiteralKind? kind;
  Type? equalType;
  var isNull = false;
  var allEqualTypes = true;
  var allLiteralTypes = true;

  for (final t in types) {
    if (t is LiteralType) {
      if (t.kind == LiteralKind.$null) {
        isNull = true;
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

      return BuiltinType.primitiveType(primitiveType, isNullable: isNullable);
    } else {
      return equalType!;
    }
  }
}
