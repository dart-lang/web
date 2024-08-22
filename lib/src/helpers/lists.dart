// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';

/// Defines interop members on a JSObject that would be present on a JS list object.
/// The JSObject is assumed to be one of the JS list type as right now
/// we don't have a single interface that would represent all the JS list types.
extension on JSObject {
  /// The **`item()`** method returns the [JSObject]
  /// at the specified index in the list.
  external JSObject item(int index);

  /// The **`length`** read-only property indicates the number of
  /// items in a given list.
  external int get length;
}


/// A wrapper to present a JS immutable list of type T as a `List<U>` where U
/// is the list item type.
class JSImmutableListWrapper<T extends JSObject, U extends JSObject> extends Object
    with ListMixin<U>
    implements List<U> {
  final T _original;
  JSImmutableListWrapper(this._original);

  @override
  int get length => _original.length;

  @override
  U operator [](int index) {
    if (index > length) {
      throw IndexError.withLength(index, length, indexable: this);
    }
    return _original.item(index) as  U;
  }

  @override
  void operator []=(int index, U value) {
    throw UnsupportedError('Cannot assign element of immutable List.');
  }

  @override
  set length(int value) {
    throw UnsupportedError('Cannot resize immutable List.');
  }

  @override
  U get first {
    if (length > 0) return _original.item(0) as  U;
    throw StateError('No elements');
  }

  @override
  U get last {
    final len = length;
    if (len > 0) return _original.item(len - 1) as  U;
    throw StateError('No elements');
  }

  @override
   U get single {
    if (length > 1) throw StateError('More than one element');
    return first;
  }

  @override
   U elementAt(int index) => this[index];
}
