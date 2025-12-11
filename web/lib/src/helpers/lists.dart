// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';
import '../dom/dom.dart';

/// `_JSList` acts as a wrapper around a JS list object providing an interface to
/// access the list items and list length while also allowing us to specify the
/// list item type from outside.
extension type _JSList<T extends JSObject>(JSObject _) implements JSObject {
  /// The **`item()`** method returns the [JSObject]
  /// at the specified index in the list.
  external T item(int index);

  /// The **`length`** read-only property indicates the number of
  /// items in a given list.
  external int get length;
}

/// A wrapper to present a JS immutable list of type `T` and list item type `U` as
/// a `List<U>`.
class JSImmutableListWrapper<T extends JSObject, U extends JSObject>
    with ListMixin<U> {
  final _JSList<U> _jsList;

  JSImmutableListWrapper(T original) : _jsList = _JSList<U>(original);

  @override
  int get length => _jsList.length;

  @override
  U operator [](int index) {
    if (index > length) {
      throw IndexError.withLength(index, length, indexable: this);
    }
    return _jsList.item(index);
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
    if (length > 0) return _jsList.item(0);
    throw StateError('No elements');
  }

  @override
  U get last {
    final len = length;
    if (len > 0) return _jsList.item(len - 1);
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

/// A wrapper for live node lists. `NodeList` and `HTMLCollection` that are
/// [live](https://developer.mozilla.org/en-US/docs/Web/API/NodeList#live_vs._static_nodelists)
/// can be safely modified at runtime. This requires an instance of `P`, a
/// container that elements would be added to or removed from.
class JSLiveNodeListWrapper<P extends Node, T extends JSObject, U extends Node>
    extends JSImmutableListWrapper<T, U> {
  final P parentNode;

  JSLiveNodeListWrapper(this.parentNode, super.original);

  @override
  set length(int value) {
    if (value > length) {
      throw UnsupportedError('Cannot add null to live node List.');
    }
    for (var i = length - 1; i >= value; i--) {
      parentNode.removeChild(_jsList.item(i));
    }
  }

  @override
  void operator []=(int index, U value) {
    RangeError.checkValidRange(index, null, length);
    parentNode.replaceChild(value, _jsList.item(index));
  }

  @override
  void add(U element) {
    // `ListMixin` implementation only works for lists that allow `null`.
    parentNode.appendChild(element);
  }

  @override
  void removeRange(int start, int end) {
    RangeError.checkValidRange(start, end, length);
    for (var i = 0; i < end - start + 1; i++) {
      parentNode.removeChild(this[start]);
    }
  }
}
