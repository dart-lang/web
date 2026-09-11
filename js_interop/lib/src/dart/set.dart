// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import '../set.dart';

/// Conversion from [Set] to [JSSet].
extension SetToJSSet<E extends JSAny?> on Set<E> {
  /// Converts [this] to a [JSSet] by cloning it.
  ///
  /// Because JavaScript's set type has no way of customizing equality, the
  /// returned set always uses [same-value-zero equality] to compare equality
  /// regardless of the original Dart [Set]'s equality relation. If there are
  /// multiple elements in this set that would be considered equal, the one that
  /// appears later in iteration order takes precedence.
  ///
  /// [same-value-zero equality]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Equality_comparisons_and_sameness#same-value-zero_equality
  JSSet<E> get toJS {
    var set = JSSet<E>();
    for (var element in this) {
      set.add(element);
    }
    return set;
  }
}
