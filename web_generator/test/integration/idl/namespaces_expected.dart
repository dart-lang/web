// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef Comparator = JSFunction;
typedef LogLevel = String;
extension type ConfigOptions._(JSObject _) implements JSObject {}

@JS('MyLibrary')
extension type MyLibrary(JSObject _) implements JSObject {
  static const int VERSION_MAJOR = 1;
  static const int VERSION_MINOR = 4;

  static external void initialize();
  static external String stringify(JSObject input);
  static external JSPromise<JSAny?> fetchResource(String url);
  static external void log(String message, [LogLevel level]);
  static external ConfigOptions getDefaultConfig();
  static external void forEach(JSArray<JSString> items, Comparator compareFn);
}
