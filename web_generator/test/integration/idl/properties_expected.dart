// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

extension type PropertyTest._(JSObject _) implements JSObject {
  static const bool DEBUG = false;

  external static int get testCount;
  external String operator [](JSAny indexOrName);
  external void operator []=(int index, String value);
  external String get title;
  external set title(String value);
  external int get createdAt;
  external String? get optionalName;
  external set optionalName(String? value);
  external JSArray<JSString> get tags;
  external set tags(JSArray<JSString> value);
  external JSUint8Array get binaryData;
  external set binaryData(JSUint8Array value);
  external JSAny? get flexibleValue;
  external set flexibleValue(JSAny? value);
  external String get testInfo;
  external set testInfo(String value);
}
