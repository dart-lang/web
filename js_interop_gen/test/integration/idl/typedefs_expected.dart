// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef ArrayBufferView = JSObject;
typedef BufferSource = JSObject;
typedef Timestamp = int;
extension type DataHandler._(JSObject _) implements JSObject {
  external void setInput(BufferSource data);
  external Timestamp getLastUpdated();
}
