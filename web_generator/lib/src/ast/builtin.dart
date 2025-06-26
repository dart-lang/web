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
  static final BuiltinType stringType = BuiltinType(name: 'String');
  static final BuiltinType intType = BuiltinType(name: 'int');
  static final BuiltinType numType = BuiltinType(name: 'num');
  static final BuiltinType doubleType = BuiltinType(name: 'double');
  static final BuiltinType booleanType = BuiltinType(name: 'bool');

  static final BuiltinType anyType =
      BuiltinType(name: 'JSAny', fromDartJSInterop: true);
  static final BuiltinType objectType =
      BuiltinType(name: 'JSObject', fromDartJSInterop: true);
  static final BuiltinType unknownType =
      BuiltinType(name: 'JSAny', fromDartJSInterop: true, isNullable: true);
  static final BuiltinType undefinedType =
      BuiltinType(name: 'JSAny', fromDartJSInterop: true, isNullable: true);

  static final BuiltinType JSBooleanType =
      BuiltinType(name: 'JSBoolean', fromDartJSInterop: true);
  static final BuiltinType JSStringType =
      BuiltinType(name: 'JSString', fromDartJSInterop: true);
  static final BuiltinType JSNumberType =
      BuiltinType(name: 'JSNumber', fromDartJSInterop: true);
}

BuiltinType ArrayType(Type elementType) => BuiltinType(
    name: 'JSArray', typeParams: [elementType], fromDartJSInterop: true);
BuiltinType PromiseType(Type wrappedType) => BuiltinType(
    name: 'JSPromise', typeParams: [wrappedType], fromDartJSInterop: true);
