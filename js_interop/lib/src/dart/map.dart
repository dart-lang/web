// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import '../map.dart';
import '../record.dart';

/// Conversion from [Map] to [JSMap].
extension MapToJSMap<K extends JSAny?, V extends JSAny?> on Map<K, V> {
  /// Converts [this] to a [JSMap] by cloning it.
  ///
  /// Because JavaScript's map type has no way of customizing equality, the
  /// returned map always uses [same-value-zero equality] to compare equality
  /// regardless of the original Dart [Map]'s equality relation. If there are
  /// multiple keys in this map that would be considered equal, the one that
  /// appears later in iteration order takes precedence.
  ///
  /// [same-value-zero equality]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Equality_comparisons_and_sameness#same-value-zero_equality
  JSMap<K, V> get toJS {
    var map = JSMap<K, V>();
    for (var entry in entries) {
      map[entry.key] = entry.value;
    }
    return map;
  }
}

/// Conversion from [Map] to [JSRecord].
extension MapToJSRecord<V extends JSAny?> on Map<String, V> {
  /// Converts [this] to a [JSRecord] by cloning it.
  JSRecord<V> get toJSRecord => JSRecord.ofMap<V>(this);
}
