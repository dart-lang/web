// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef Comparator = JSFunction;
typedef LogLevel = String;
extension type ConfigOptions._(JSObject _) implements JSObject {}
@JS()
external $MyLibrary get MyLibrary;
@JS('MyLibrary')
extension type $MyLibrary._(JSObject _) implements JSObject {
  static const int VERSION_MAJOR = 1;

  static const int VERSION_MINOR = 4;

  external void initialize();
  external String stringify(JSObject input);
  external JSPromise<JSAny?> fetchResource(String url);
  external void log(String message, [LogLevel level]);
  external ConfigOptions getDefaultConfig();
  external void forEach(JSArray<JSString> items, Comparator compareFn);
}
