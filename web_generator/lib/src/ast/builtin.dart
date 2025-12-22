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
class BuiltinType extends NamedType {
  @override
  final String name;

  final List<Type> typeParams;

  /// Whether the given type is present in "dart:js_interop"
  final bool fromDartJSInterop;

  @override
  bool isNullable;

  /// This denotes a type that has a discardable result
  ///
  /// These are for types such as `void` or `never`
  bool discardable;

  BuiltinType({
    required this.name,
    this.typeParams = const [],
    this.fromDartJSInterop = false,
    bool? isNullable,
    this.discardable = false,
  }) : isNullable = isNullable ?? false;

  @override
  ID get id => ID(type: 'type', name: name);

  @override
  String? get dartName => null;

  @override
  Reference emit([TypeOptions? options]) {
    return TypeReference(
      (t) => t
        ..symbol = name
        ..types.addAll(
          typeParams
              // if there is only one type param, and it is void, ignore
              .where((p) => typeParams.length != 1 || p != $voidType)
              .map((p) => p.emit(options)),
        )
        ..url = fromDartJSInterop ? 'dart:js_interop' : null
        ..isNullable = isNullable || (options?.nullable ?? false),
    );
  }

  static final BuiltinType $voidType = BuiltinType(name: 'void');
  static final BuiltinType anyType = BuiltinType(
    name: 'JSAny',
    fromDartJSInterop: true,
    isNullable: true,
  );

  static BuiltinType primitiveType(
    PrimitiveType typeIdentifier, {
    bool? shouldEmitJsType,
    bool? isNullable,
    List<Type> typeParams = const [],
  }) {
    shouldEmitJsType ??= GlobalOptions.shouldEmitJsTypes;
    return switch (typeIdentifier) {
      PrimitiveType.int ||
      PrimitiveType.num ||
      PrimitiveType.double when shouldEmitJsType =>
        BuiltinType(
          name: 'JSNumber',
          fromDartJSInterop: true,
          isNullable: isNullable,
        ),
      PrimitiveType.int => BuiltinType(name: 'int', isNullable: isNullable),
      PrimitiveType.num => BuiltinType(name: 'num', isNullable: isNullable),
      PrimitiveType.double => BuiltinType(
          name: 'double',
          isNullable: isNullable,
        ),
      PrimitiveType.boolean => shouldEmitJsType
          ? BuiltinType(
              name: 'JSBoolean',
              fromDartJSInterop: true,
              isNullable: isNullable,
            )
          : BuiltinType(name: 'bool', isNullable: isNullable),
      PrimitiveType.string => shouldEmitJsType
          ? BuiltinType(
              name: 'JSString',
              fromDartJSInterop: true,
              isNullable: isNullable,
            )
          : BuiltinType(name: 'String', isNullable: isNullable),
      PrimitiveType.$void || PrimitiveType.undefined => $voidType,
      PrimitiveType.any => (isNullable ?? false)
          ? anyType
          : BuiltinType(name: 'JSAny', fromDartJSInterop: true),
      PrimitiveType.never => BuiltinType(
          name: 'JSAny',
          fromDartJSInterop: true,
          discardable: true,
          isNullable: true,
        ),
      PrimitiveType.unknown => anyType,
      PrimitiveType.object => BuiltinType(
          name: 'JSObject',
          fromDartJSInterop: true,
          isNullable: isNullable,
        ),
      PrimitiveType.symbol => BuiltinType(
          name: 'JSSymbol',
          fromDartJSInterop: true,
          isNullable: isNullable,
        ),
      PrimitiveType.bigint => BuiltinType(
          name: 'JSBigInt',
          fromDartJSInterop: true,
          isNullable: isNullable,
        ),
      PrimitiveType.array => BuiltinType(
          name: 'JSArray',
          typeParams: [typeParams.single],
          fromDartJSInterop: true,
          isNullable: isNullable,
        ),
    };
  }

  static BuiltinType? referred(
    String name, {
    bool? isNullable,
    List<Type> typeParams = const [],
  }) {
    final jsName = switch (name) {
      'Array' => 'JSArray',
      'Promise' => 'JSPromise',
      'ArrayBuffer' => 'JSArrayBuffer',
      'Function' => 'JSFunction',
      'DataView' => 'JSDataView',
      'Float32Array' => 'JSFloat32Array',
      'Float64Array' => 'JSFloat64Array',
      'Int8Array' => 'JSInt8Array',
      'Int16Array' => 'JSInt16Array',
      'Int32Array' => 'JSInt32Array',
      'Int64Array' => 'JSInt64Array',
      'Uint8Array' => 'JSUint8Array',
      'Uint16Array' => 'JSUint16Array',
      'Uint32Array' => 'JSUint32Array',
      'Uint8ClampedArray' => 'JSUint8ClampedArray',
      _ => null,
    };
    final jsTypeArgs = switch (name) {
      'Array' || 'Promise' => 1,
      _ => 0,
    };
    if (jsName case final typeName?) {
      return BuiltinType(
        name: typeName,
        fromDartJSInterop: true,
        typeParams: typeParams.take(jsTypeArgs).toList(),
        isNullable: isNullable,
      );
    }
    return null;
  }
}

class PackageWebType extends NamedType {
  @override
  final String name;

  final List<Type> typeParams;

  @override
  bool isNullable;

  @override
  ID get id => ID(type: 'type', name: name);

  @override
  String? get dartName => null;

  PackageWebType._({
    required this.name,
    this.typeParams = const [],
    this.isNullable = false,
  });

  @override
  Reference emit([TypeOptions? options]) {
    // TODO: We can make this a shared function as it is called a lot
    //  between types
    return TypeReference(
      (t) => t
        ..symbol = name
        ..types.addAll(
          typeParams
              // if there is only one type param, and it is void, ignore
              .where(
                (p) => typeParams.length != 1 || p != BuiltinType.$voidType,
              )
              .map((p) => p.emit(options)),
        )
        ..url = 'package:web/web.dart'
        ..isNullable = isNullable || (options?.nullable ?? false),
    );
  }

  static PackageWebType parse(
    String name, {
    bool? isNullable,
    List<Type> typeParams = const [],
  }) {
    return PackageWebType._(
      name: renameMap.containsKey(name) ? renameMap[name]! : name,
      isNullable: isNullable ?? false,
      typeParams: typeParams,
    );
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
  bigint,
  never,
}
