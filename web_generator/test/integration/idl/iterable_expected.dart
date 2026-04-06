// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:core';
import 'dart:js_interop';

extension type ValueIterable._(JSObject _)
    implements JSObject, JSIterable<JSNumber> {
  Iterable<double> get toDart => toDartIterable.map((e) => e.toDartDouble);
}
extension type KeyValueIterable._(JSObject _)
    implements JSObject, JSIterable<JSArray<JSAny>> {
  Iterable<({String key, String value})> get toDart => toDartIterable.map(
    (e) => (
      key: (e.toDart[0] as JSString).toDart,
      value: (e.toDart[1] as JSString).toDart,
    ),
  );
}

extension type AsyncIterable._(JSObject _) implements JSObject {}
