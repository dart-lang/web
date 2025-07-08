// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import '../web_rename_map.dart';
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
      PrimitiveType.int ||
      PrimitiveType.num ||
      PrimitiveType.double when shouldEmitJsType =>
        BuiltinType(
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
      PrimitiveType.$void || PrimitiveType.undefined => $voidType,
      PrimitiveType.any || PrimitiveType.unknown => anyType,
      PrimitiveType.object => BuiltinType(
          name: 'JSObject', fromDartJSInterop: true, isNullable: isNullable),
      PrimitiveType.symbol => BuiltinType(
          name: 'JSSymbol', fromDartJSInterop: true, isNullable: isNullable),
      PrimitiveType.bigint => BuiltinType(
          name: 'JSBigInt', fromDartJSInterop: true, isNullable: isNullable),
      PrimitiveType.array => BuiltinType(
          name: 'JSArray',
          typeParams: [typeParams.single],
          fromDartJSInterop: true,
          isNullable: isNullable),
    };
  }
}

class PackageWebType extends Type {
  @override
  final String name;

  final List<Type> typeParams;

  final bool? isNullable;

  @override
  ID get id => ID(type: 'type', name: name);

  @override
  String? get dartName => null;

  PackageWebType._(
      {required this.name, this.typeParams = const [], this.isNullable});

  @override
  Reference emit([TypeOptions? options]) {
    options ??= TypeOptions();

    // TODO: We can make this a shared function as it is called a lot
    //  between types
    return TypeReference((t) => t
      ..symbol = name
      ..types.addAll(typeParams
          // if there is only one type param, and it is void, ignore
          .where((p) => typeParams.length != 1 || p != BuiltinType.$voidType)
          .map((p) => p.emit(TypeOptions())))
      ..url = 'package:web/web.dart'
      ..isNullable = isNullable ?? options!.nullable);
  }

  static PackageWebType parse(String name,
      {bool? isNullable, List<Type> typeParams = const []}) {
    return PackageWebType._(
        name: renameMap.containsKey(name) ? renameMap[name]! : name,
        isNullable: isNullable,
        typeParams: typeParams);
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
  symbol,
  array,
  bigint
}

const supportedTypesMap = {
  'Array': BuiltinTypeGenerator('JSArray',
      fromDartJSInterop: true, typeParamCount: 1),
  'Promise': BuiltinTypeGenerator('JSPromise',
      fromDartJSInterop: true, typeParamCount: 1),
  'ArrayBuffer': BuiltinTypeGenerator('JSArrayBuffer', fromDartJSInterop: true),
  'Function': BuiltinTypeGenerator('JSFunction', fromDartJSInterop: true),
  'DataView': BuiltinTypeGenerator('JSDataView', fromDartJSInterop: true),
  'Float32Array':
      BuiltinTypeGenerator('JSFloat32Array', fromDartJSInterop: true),
  'Float64Array':
      BuiltinTypeGenerator('JSFloat64Array', fromDartJSInterop: true),
  'Int8Array': BuiltinTypeGenerator('JSInt8Array', fromDartJSInterop: true),
  'Int16Array': BuiltinTypeGenerator('JSInt16Array', fromDartJSInterop: true),
  'Int32Array': BuiltinTypeGenerator('JSInt32Array', fromDartJSInterop: true),
  'Uint8Array': BuiltinTypeGenerator('JSUint8Array', fromDartJSInterop: true),
  'Uint16Array': BuiltinTypeGenerator('JSUint16Array', fromDartJSInterop: true),
  'Uint32Array': BuiltinTypeGenerator('JSUint32Array', fromDartJSInterop: true),
  'Uint8ClampedArray':
      BuiltinTypeGenerator('JSUint8ClampedArray', fromDartJSInterop: true),
};

class BuiltinTypeGenerator {
  final String name;

  final bool fromDartJSInterop;

  final int? typeParamCount;

  const BuiltinTypeGenerator(
    this.name, {
    this.fromDartJSInterop = false,
    this.typeParamCount,
  });

  BuiltinType call({bool? isNullable, List<Type> typeParams = const []}) {
    assert(typeParamCount == null || typeParams.length == typeParamCount,
        'Type param count not equal to the number of type params passed');
    return BuiltinType(
        name: name,
        fromDartJSInterop: fromDartJSInterop,
        isNullable: isNullable,
        typeParams: typeParams);
  }
}
