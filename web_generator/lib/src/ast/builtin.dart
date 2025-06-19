// ignore_for_file: non_constant_identifier_names

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import 'base.dart';

abstract class BuiltinBaseType extends Type {
  @override
  abstract final String name;
}

class BuiltinType extends BuiltinBaseType {
  @override
  String name;

  List<Type> typeParams;

  /// Whether the given type is present in "dart:js_interop"
  bool fromDartJSInterop;

  BuiltinType(
      {required this.name,
      this.typeParams = const [],
      this.fromDartJSInterop = true});

  @override
  Reference emit([ASTOptions? options]) {
    options ??= ASTOptions();
    options.jsTypes = true;

    return TypeReference((t) => t
      ..symbol = name
      ..types.addAll(typeParams
          // if there is only one type param, and it is void, ignore
          .where((p) => typeParams.length != 1 || p != PrimitiveType.$void)
          .map((p) => p.emit(options)))
      ..url = fromDartJSInterop ? 'dart:js_interop' : null);
  }

  @override
  ID get id => ID(type: 'type', name: name);
}

BuiltinType ArrayType(Type elementType) =>
    BuiltinType(name: 'JSArray', typeParams: [elementType]);
BuiltinType PromiseType(Type wrappedType) =>
    BuiltinType(name: 'JSPromise', typeParams: [wrappedType]);

enum PrimitiveType implements BuiltinBaseType {
  string('string'),
  any('any'),
  object('object'),
  number('number'),
  boolean('boolean'),
  undefined('undefined'),
  $void('void'),
  unknown('unknown');

  const PrimitiveType(this.name);

  @override
  final String name;

  @override
  ID get id => ID(type: 'type', name: name);

  // TODO(https://github.com/dart-lang/web/pull/386): Configuration options: double and num
  @override
  Reference emit([ASTOptions? options]) {
    final shouldEmitJsType = options?.jsTypes ?? false;
    return switch (this) {
      PrimitiveType.string => shouldEmitJsType
          ? refer('JSString', 'dart:js_interop')
          : refer('String'),
      PrimitiveType.any => refer('JSAny', 'dart:js_interop'),
      PrimitiveType.object => refer('JSObject', 'dart:js_interop'),
      PrimitiveType.number => shouldEmitJsType
          ? refer('JSNumber', 'dart:js_interop')
          : refer(options?.parameter ?? false ? 'num' : 'double'),
      PrimitiveType.boolean => shouldEmitJsType
          ? refer('JSBoolean', 'dart:js_interop')
          : refer('bool'),
      PrimitiveType.$void => refer('void'),
      PrimitiveType.undefined => TypeReference((t) => t
        ..symbol = 'JSAny'
        ..url = 'dart:js_interop'
        ..isNullable = true),
      PrimitiveType.unknown => TypeReference((t) => t
        ..symbol = 'JSAny'
        ..url = 'dart:js_interop'
        ..isNullable = true)
    };
  }

  @override
  String? get dartName => null;

  @override
  set dartName(String? _) {}
}
