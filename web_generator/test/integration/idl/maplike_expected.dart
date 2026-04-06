// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:collection';
import 'dart:js_interop';

extension type MyMaplike._(JSObject _) implements JSObject {
  @JS()
  external JSString get(JSString key);
  @JS()
  external bool has(JSString key);
  @JS()
  external JSIterator<JSString> keys();
  Map<String, String> get asMap => _MyMaplikeMapView(this);
}

class _MyMaplikeMapView extends UnmodifiableMapBase<String, String> {
  _MyMaplikeMapView(this._jsObject);

  final MyMaplike _jsObject;

  @override
  String? operator [](Object? key) {
    final value = _jsObject.get(key as JSString);
    return value.toDart;
  }

  @override
  Iterable<String> get keys {
    return _jsObject.keys().toDartIterable.map((e) => e.toDart);
  }
}

extension type MyReadWriteMaplike._(JSObject _) implements JSObject {
  @JS()
  external JSString get(JSString key);
  @JS()
  external bool has(JSString key);
  @JS()
  external void set(JSString key, JSString value);
  @JS()
  external bool delete(JSString key);
  @JS()
  external void clear();
  @JS()
  external JSIterator<JSString> keys();
  Map<String, String> get asMap => _MyReadWriteMaplikeMapView(this);
}

class _MyReadWriteMaplikeMapView extends MapBase<String, String> {
  _MyReadWriteMaplikeMapView(this._jsObject);

  final MyReadWriteMaplike _jsObject;

  @override
  String? operator [](Object? key) {
    final value = _jsObject.get(key as JSString);
    return value.toDart;
  }

  @override
  void operator []=(String key, String value) {
    _jsObject.set(key.toJS, value.toJS);
  }

  @override
  void clear() {
    _jsObject.clear();
  }

  @override
  Iterable<String> get keys {
    return _jsObject.keys().toDartIterable.map((e) => e.toDart);
  }

  @override
  String? remove(Object? key) {
    final k = key as JSString;
    final value = _jsObject.get(k);
    _jsObject.delete(k);
    return value.toDart;
  }
}
