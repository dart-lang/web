// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';

BuiltinType? getSupportedType(String name, [List<Type> typeParams = const []]) {
  final type = switch (name) {
    'Array' => PrimitiveType.array,
    'Promise' => PrimitiveType.promise,
    _ => null
  };

  if (type == null) return null;

  return BuiltinType.primitiveType(type, typeParams: [
    getJSTypeAlternative(typeParams.singleOrNull ?? BuiltinType.anyType)
  ]);
}

Type getJSTypeAlternative(Type type) {
  if (type is BuiltinType) {
    if (type.fromDartJSInterop) return type;

    final primitiveType = switch (type.name) {
      'num' => PrimitiveType.num,
      'int' => PrimitiveType.int,
      'double' => PrimitiveType.double,
      'String' => PrimitiveType.string,
      'bool' => PrimitiveType.boolean,
      _ => null
    };

    if (primitiveType == null) return BuiltinType.anyType;

    return BuiltinType.primitiveType(primitiveType, shouldEmitJsType: true);
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
    return ParameterDeclaration(name: paramName, type: p.type)
        .emit();
  });
}
