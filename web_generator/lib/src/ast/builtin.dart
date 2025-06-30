// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import 'base.dart';

/// A built in type supported by `dart:js_interop` or by this library
/// (with generated declarations)
class BuiltinType extends Type {
  @override
  final String name;

  final List<Type> typeParams;

  /// Whether the given type is present in "dart:js_interop"
  final bool fromDartJSInterop;

  // TODO(nikeokoronkwo): Types in general should have an `isNullable`
  //  property on them to indicate nullability for Dart generated code.
  final bool? isNullable;

  BuiltinType(
      {required this.name,
      this.typeParams = const [],
      this.fromDartJSInterop = false,
      this.isNullable});

  @override
  ID get id => ID(type: 'type', name: name);

  @override
  String? get dartName => null;

  @override
  Reference emit([TypeOptions? options]) {
    options ??= TypeOptions();

    return TypeReference((t) => t
      ..symbol = name
      ..types.addAll(typeParams
          // if there is only one type param, and it is void, ignore
          .where((p) => typeParams.length != 1 || p != $voidType)
          .map((p) => p.emit(TypeOptions())))
      ..url = fromDartJSInterop ? 'dart:js_interop' : null
      ..isNullable = isNullable ?? options!.nullable);
  }

  static final BuiltinType $voidType = BuiltinType(name: 'void');
  static final BuiltinType anyType =
      BuiltinType(name: 'JSAny', fromDartJSInterop: true, isNullable: true);

  static BuiltinType primitiveType(PrimitiveType typeIdentifier,
      {bool? shouldEmitJsType,
      bool? isNullable,
      List<Type> typeParams = const []}) {
    shouldEmitJsType ??= GlobalOptions.shouldEmitJsTypes;
    return switch (typeIdentifier) {
      PrimitiveType.int || PrimitiveType.num || PrimitiveType.double 
        when shouldEmitJsType => BuiltinType(
          name: 'JSNumber', fromDartJSInterop: true, isNullable: isNullable),
      PrimitiveType.int => BuiltinType(name: 'int', isNullable: isNullable),
      PrimitiveType.num => BuiltinType(name: 'num', isNullable: isNullable),
      PrimitiveType.double => 
        BuiltinType(name: 'double', isNullable: isNullable),
      PrimitiveType.boolean => shouldEmitJsType
          ? BuiltinType(
              name: 'JSBoolean',
              fromDartJSInterop: true,
              isNullable: isNullable)
          : BuiltinType(name: 'bool', isNullable: isNullable),
      PrimitiveType.string => shouldEmitJsType
          ? BuiltinType(
              name: 'JSString', fromDartJSInterop: true, isNullable: isNullable)
          : BuiltinType(name: 'String', isNullable: isNullable),
      PrimitiveType.$void => $voidType,
      PrimitiveType.any || PrimitiveType.unknown || PrimitiveType.undefined 
        => anyType,
      PrimitiveType.object => BuiltinType(
          name: 'JSObject', fromDartJSInterop: true, isNullable: isNullable),
      PrimitiveType.array => BuiltinType(
          name: 'JSArray',
          typeParams: [typeParams.single],
          fromDartJSInterop: true,
          isNullable: isNullable),
      PrimitiveType.promise => BuiltinType(
          name: 'JSPromise',
          typeParams: [typeParams.single],
          fromDartJSInterop: true,
          isNullable: isNullable),
      PrimitiveType.function => BuiltinType(
          name: 'JSFunction', fromDartJSInterop: true, isNullable: isNullable),
    };
  }
}

enum PrimitiveType {
  int,
  num,
  double,
  boolean,
  string,
  $void,
  any,
  object,
  unknown,
  undefined,
  array,
  promise,
  function
}
