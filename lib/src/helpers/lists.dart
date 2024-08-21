// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';

extension on JSObject {
  /// The **`item()`** method returns the [JSObject]
  /// at the specified index in the assumed js list.
  external JSObject item(int index);

  /// The **`length`** read-only property indicates the number of
  /// items in a given assumed js list.
  external int get length;
}


/// A wrapper to present a js list as a `List<T>`.
class JSListWrapper<T extends JSObject> extends Object
    with ListMixin<T>
    implements List<T> {
  final JSObject _original;
  JSListWrapper(this._original);

  @override
  int get length => _original.length;

  @override
  T operator [](int index) {
    if (index > length) {
      throw IndexError.withLength(index, length, indexable: this);
    }
    return _original.item(index) as T;
  }

  @override
  void operator []=(int index, T value) {
    throw UnsupportedError('Cannot assign element of immutable List.');
  }

  @override
  set length(int value) {
    throw UnsupportedError('Cannot resize immutable List.');
  }

  @override
  T get first {
    if (length > 0) return _original.item(0) as T;
    throw StateError('No elements');
  }

  @override
  T get last {
    final len = length;
    if (len > 0) return _original.item(len - 1) as T;
    throw StateError('No elements');
  }

  @override
  T get single {
    if (length > 1) throw StateError('More than one element');
    return first;
  }

  @override
  T elementAt(int index) => this[index];
}
