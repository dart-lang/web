// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

extension type MyMethodExamples._(JSObject _) implements JSObject {
  external static bool isValid(String candidate);
  external void reset();
  external void configure([bool force, String? label]);
  external void log(
    String message, [
    JSAny? extra1,
    JSAny? extra2,
    JSAny? extra3,
    JSAny? extra4,
  ]);
  external void update(JSAny keyOrKeys, [String value]);
  external JSPromise<JSString> fetchRemoteValue([String? endpoint]);
  external void init();
}
extension type Dimensions._(JSObject _) implements JSObject {
  external int get width;
  external set width(int value);
  external int get height;
  external set height(int value);
}
extension type Button._(JSObject _) implements JSObject {
  external bool isMouseOver();
  external void setDimensions(JSAny sizeOrWidth, [int height]);
}
