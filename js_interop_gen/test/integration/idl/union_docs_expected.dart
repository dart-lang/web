// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

/// Union of: [JSTypedArray]
typedef AllTypedArrays = JSTypedArray;

/// Union of: [JSArrayBuffer], `SharedArrayBuffer`
typedef BufferUnion = JSObject;

/// Union of: [JSBoolean], [JSString]
typedef PrimitiveUnion = JSAny;

/// Union of: `JSArray<JSString>`, `JSObject<JSString, JSString>`
typedef GenericUnion = JSObject;

/// Union of 4 types
///
/// - [JSInt16Array]
/// - [JSInt32Array]
/// - [JSInt8Array]
/// - [JSString]
typedef NonCollapsingLongUnion = JSAny;
extension type DummyInterface._(JSObject _) implements JSObject {
  external void testAllTypedArrays(AllTypedArrays a);
  external void testBufferUnion(BufferUnion b);
  external void testPrimitiveUnion(PrimitiveUnion p);
  external void testGenericUnion(GenericUnion g);
  external void testNonCollapsingLongUnion(NonCollapsingLongUnion n);
}
