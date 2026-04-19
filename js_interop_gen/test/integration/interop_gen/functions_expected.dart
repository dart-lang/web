// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

@_i1.JS()
external String greetUser(String name);
@_i1.JS()
external void logMessages(
  _i1.JSArray<_i1.JSString> messages, [
  _i1.JSArray<_i1.JSString> messages2,
  _i1.JSArray<_i1.JSString> messages3,
  _i1.JSArray<_i1.JSString> messages4,
]);
@_i1.JS()
external _i1.JSPromise<U> delay<U extends _i1.JSAny?>(num ms, [U? returnValue]);
@_i1.JS()
external _i1.JSArray<_i1.JSNumber> toArray(num a);
@_i1.JS('toArray')
external _i1.JSArray<_i1.JSString> toArray$1(String a);
@_i1.JS()
external double square(num a);
@_i1.JS()
external double pow(num a);
@_i1.JS('pow')
external double pow$1(num a, num power);
@_i1.JS()
external _i1.JSObject createUser(String name, [num? age, String? role]);
@_i1.JS()
external T firstElement<T extends _i1.JSAny?>(_i1.JSArray<T> arr);
@_i2.doNotStore
@_i1.JS()
external _i1.JSAny? throwError([String? msg]);
@_i2.doNotStore
@_i1.JS('throwError')
external _i1.JSAny? throwError$1();
@_i1.JS()
external _i1.JSArray<T> wrapInArray<T extends _i1.JSAny?>(T value);
@_i1.JS()
external T identity<T extends _i1.JSAny?>(T value);
@_i1.JS()
external void someFunction<A extends _i1.JSAny?>(_i1.JSArray<A> arr);
@_i1.JS('someFunction')
external B someFunction$1<A extends _i1.JSAny?, B extends _i1.JSAny?>(
  _i1.JSArray<A> arr,
);
@_i1.JS()
external T logTuple<T extends _i1.JSArray<_i1.JSAny?>>(
  T args, [
  T args2,
  T args3,
  T args4,
]);
