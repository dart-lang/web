// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

/// Union of 11 types
///
/// - [JSDataView]
/// - [JSFloat32Array]
/// - [JSFloat64Array]
/// - [JSInt16Array]
/// - [JSInt32Array]
/// - [JSInt8Array]
/// - [JSTypedArray]
/// - [JSUint16Array]
/// - [JSUint32Array]
/// - [JSUint8Array]
/// - [JSUint8ClampedArray]
typedef ArrayBufferView = JSObject;

/// Union of: [ArrayBufferView], [JSArrayBuffer]
typedef BufferSource = JSObject;
typedef Timestamp = int;
extension type DataHandler._(JSObject _) implements JSObject {
  external void setInput(BufferSource data);
  external Timestamp getLastUpdated();
}
