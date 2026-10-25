// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore

@JS()
library;

import 'dart:js_interop';

/// Union of: [JSString], [WebAssemblyException]
typedef ExceptionOrString = JSAny;

/// Union of: [BoxTarget], [JSString]
typedef BoxOrString = JSAny;

@JS('WebAssembly.Exception')
extension type WebAssemblyException._(JSObject _) implements JSObject {
  external factory WebAssemblyException();
}

extension type SubException._(JSObject _)
    implements WebAssemblyException, JSObject {}

extension type ExceptionThrower._(JSObject _) implements JSObject {
  external factory ExceptionThrower();

  external WebAssemblyException make();
  external JSPromise<WebAssemblyException> makeAsync();
  external void take(WebAssemblyException e);
  external void takeUnion(ExceptionOrString value);
  external WebAssemblyException get last;
  external set last(WebAssemblyException value);
}

extension type BoxTarget._(JSObject _) implements JSObject {
  external factory BoxTarget();
}

extension type BoxReader._(JSObject _) implements JSObject {
  external BoxTarget readBox();
  external BoxTarget readAlt();
  external void takeUnion(BoxOrString value);
}
