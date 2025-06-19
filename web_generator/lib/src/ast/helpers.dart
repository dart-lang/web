import 'package:code_builder/code_builder.dart';

import 'base.dart';
import 'builtin.dart';

BuiltinType? getSupportedType(String name, [List<Type> typeParams = const []]) {
  return switch (name) {
    'Array' => ArrayType(typeParams.singleOrNull ?? PrimitiveType.any),
    'Promise' => PromiseType(typeParams.singleOrNull ?? PrimitiveType.any),
    _ => null
  };
}

Expression generateJSAnnotation([String? name]) {
  return refer('JS', 'dart:js_interop')
      .call([if (name != null) literalString(name)]);
}

List<Parameter> spreadParam(Parameter p, int count) {
  return List.generate(count - 1, (i) {
    final paramNumber = i + 2;
    final type = p.type;
    return Parameter((pa) => pa
      // ..replace(p)
      ..name = '${p.name}$paramNumber'
      ..type = type == null
          ? null
          : (type is TypeReference
              ? type.rebuild((t) => t..isNullable = true)
              : (type.type as TypeReference)
                  .rebuild((t) => t..isNullable = true)));
    // return p.rebuild((param) {
    //   return param
    //     ..name = '${param.name}$paramNumber'
    //     ..required = false
    //     ..type = type == null
    //         ? null
    //         : (type is TypeReference
    //             ? type.rebuild((t) => t..isNullable = true)
    //             : (type.type as TypeReference)
    //                 .rebuild((t) => t..isNullable = true));
    // });
  });
}
