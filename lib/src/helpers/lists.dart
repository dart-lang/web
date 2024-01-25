// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import '../../web.dart' show Touch, TouchList;

/// A wrapper to present a [TouchList] as a `List<Touch>`.
class TouchListWrapper extends Object
    with ListMixin<Touch>
    implements List<Touch> {
  final TouchList _original;
  TouchListWrapper(this._original);

  @override
  int get length => _original.length;

  @override
  Touch operator [](int index) {
    if (index > length) {
      throw IndexError.withLength(index, length, indexable: this);
    }
    return _original.item(index)!;
  }

  @override
  void operator []=(int index, Touch value) {
    throw UnsupportedError('Cannot assign element of immutable List.');
  }

  @override
  set length(int value) {
    throw UnsupportedError('Cannot resize immutable List.');
  }

  @override
  Touch get first {
    if (length > 0) return _original.item(0)!;
    throw StateError('No elements');
  }

  @override
  Touch get last {
    final len = length;
    if (len > 0) return _original.item(len - 1)!;
    throw StateError('No elements');
  }

  @override
  Touch get single {
    if (length > 1) throw StateError('More than one element');
    return first;
  }

  @override
  Touch elementAt(int index) => this[index];
}
