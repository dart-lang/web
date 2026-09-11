// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';

import 'set_like.dart';
import 'utils.dart';

/// The JavaScript `Map` type.
///
/// **Note:** unlike Dart maps, JavaScript maps do not support customizable
/// equality comparisons. Keys will always be compared using [same-value-zero
/// equality].
///
/// [same-value-zero equality]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Equality_comparisons_and_sameness#same-value-zero_equality
@JS('Map')
extension type JSMap<K extends JSAny?, V extends JSAny?>._(JSObject _)
    implements JSObject, JSIterable<JSArray>, JSSetLike<K> {
  /// Returns a Dart iterable of key/value pairs in this map.
  Iterable<(K, V)> get pairs sync* {
    for (var entry in _entries().toDartIterable) {
      yield (entry[0] as K, entry[1] as V);
    }
  }

  /// Returns a copy of this map as a Dart [LinkedHashMap].
  ///
  /// This map's equality relation is identical to the JS Map's, meaning that it
  /// considers `NaN` to be equivalent to `NaN`.
  Map<K, V> get toDart {
    var map = LinkedHashMap<K, V>(equals: sameValueZeroEquals);
    for (var (key, value) in pairs) {
      map[key] = value;
    }
    return map;
  }

  /// See [`new Map()`].
  ///
  /// [`new Map()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/Map
  external JSMap([JSIterableProtocol<JSArray> iterable]);

  /// See [`Map.clear()`].
  ///
  /// [`Map.clear()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/clear
  external void clear();

  /// See [`Map.delete()`].
  ///
  /// [`Map.delete()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/delete
  external bool delete(JSAny? key);

  @JS('entries')
  external JSIterable<JSArray> _entries();

  /// See [`Map.get()`].
  ///
  /// [`Map.get()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get
  V? operator [](JSAny? key) => _get(key);
  @JS('get')
  external V? _get(JSAny? key);

  /// See [`Map.keys()`].
  ///
  /// [`Map.keys()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/keys
  JSIterable<K> get keys => _keys();
  @JS('keys')
  external JSIterable<K> _keys();

  /// See [`Map.set()`].
  ///
  /// [`Map.set()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/set
  void operator []=(K key, V value) => _set(key, value);
  @JS('set')
  external void _set(K key, V value);

  /// See [`Map.values()`].
  ///
  /// [`Map.values()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/values
  JSIterable<V> get values => _values();
  @JS('values')
  external JSIterable<V> _values();
}
