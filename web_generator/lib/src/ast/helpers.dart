import 'package:code_builder/code_builder.dart';

import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';

BuiltinType? getSupportedType(String name, [List<Type> typeParams = const []]) {
  return switch (name) {
    'Array' => ArrayType(getJSTypeAlternative(typeParams.singleOrNull ?? BuiltinType.anyType)),
    'Promise' => PromiseType(getJSTypeAlternative(typeParams.singleOrNull ?? BuiltinType.anyType)),
    _ => null
  };
}

Type getJSTypeAlternative(Type type) {
  if (type is BuiltinType) {
    if (type.fromDartJSInterop) return type;

    return switch (type.name) {
      'num' => BuiltinType.JSNumberType,
      'int' => BuiltinType.JSNumberType,
      'double' => BuiltinType.JSNumberType,
      'String' => BuiltinType.JSStringType,
      'void' => BuiltinType.anyType,
      'bool' => BuiltinType.JSBooleanType,
      _ => BuiltinType.anyType
    };
  }
  return type;
}

Expression generateJSAnnotation([String? name]) {
  return refer('JS', 'dart:js_interop')
      .call([if (name != null) literalString(name)]);
}

List<Parameter> spreadParam(ParameterDeclaration p, int count) {
  return List.generate(count - 1, (i) {
    final paramNumber = i + 2;
    final paramName = '${p.name}$paramNumber';
    return ParameterDeclaration(
      name: paramName, 
      type: p.type,
      optional: true
    ).emit();
    // final type = p.type;
    // return Parameter((pa) => pa
    //   ..name = 
    //   ..type = type == null
    //       ? null
    //       : (type is TypeReference
    //           ? type.rebuild((t) => t..isNullable = true)
    //           : (type.type as TypeReference)
    //               .rebuild((t) => t..isNullable = true)));
  });
}
