// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'array.dart';

/// A type-safe representation of a heterogeneous two-element JavaScript array.
@anonymous
extension type JSPair<E1 extends JSAny?, E2 extends JSAny?>._(
  JSArray<JSAny?> _array
)
    implements JSObject, JSIterable<JSAny?> {
  /// Creates a new [JSPair] with the given values.
  factory JSPair(E1 value1, E2 value2) => JSPair._([value1, value2].toJS);

  /// Gets and sets the first element of the pair.
  E1 get $1 => _array[0] as E1;
  set $1(E1 value) => _array[0] = value;

  /// Gets and sets the second element of the pair.
  E2 get $2 => _array[1] as E2;
  set $2(E2 value) => _array[1] = value;

  /// Returns this as a Dart record.
  (E1, E2) get toDart => ($1, $2);

  /// Returns a shallow copy of this pair as a [JSArray].
  JSArray<JSAny?> get toArray => _array.slice();
}
