// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

extension type ConfigOptions._(JSObject _) implements JSObject {
  external factory ConfigOptions({
    required String endpoint,
    bool useCache,
    int timeout,
    JSArray<JSString>? tags,
  });

  external String get endpoint;
  external set endpoint(String value);
  external bool get useCache;
  external set useCache(bool value);
  external int get timeout;
  external set timeout(int value);
  external JSArray<JSString>? get tags;
  external set tags(JSArray<JSString>? value);
}
extension type ExtendedOptions._(JSObject _)
    implements ConfigOptions, JSObject {
  external factory ExtendedOptions({
    required String endpoint,
    bool useCache,
    int timeout,
    JSArray<JSString>? tags,
    String? userToken,
    String mode,
  });

  external String? get userToken;
  external set userToken(String? value);
  external String get mode;
  external set mode(String value);
}
extension type Configurable._(JSObject _) implements JSObject {
  external void applySettings([ExtendedOptions options]);
}
