// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef LogLevel = String;
extension type ConfigOptions._(JSObject _) implements JSObject {}
extension type EmptyInterface._(JSObject _) implements JSObject {}
extension type BaseInterface._(JSObject _) implements JSObject {
  external void f();
  external void g();
}
extension type Paint._(JSObject _) implements JSObject {}
extension type SolidColor._(JSObject _) implements Paint, JSObject {
  external double get red;
  external set red(num value);
  external double get green;
  external set green(num value);
  external double get blue;
  external set blue(num value);
}
extension type MyInterface._(JSObject _) implements JSObject {
  external void doSomething();
  external bool isReady();
  external JSPromise<JSString> saveData([ConfigOptions config]);
  external void log(String message, [LogLevel level]);
  external String operator [](int index);
  external String get name;
  external set name(String value);
  external int get id;
}
extension type MySubInterface._(JSObject _) implements JSObject {
  external void reset();
  external String get info;
  external set info(String value);
}
extension type MyException._(JSObject _) implements JSObject {
  external factory MyException([String message, String name]);

  external String get name;
  external String get message;
  external int get code;
}
extension type ProtocolXError._(JSObject _) implements MyException, JSObject {
  external factory ProtocolXError(
    ProtocolXErrorOptions options, [
    String message,
  ]);

  external int get errorCode;
}
extension type ProtocolXErrorOptions._(JSObject _) implements JSObject {
  external factory ProtocolXErrorOptions({required int errorCode});

  external int get errorCode;
  external set errorCode(int value);
}
