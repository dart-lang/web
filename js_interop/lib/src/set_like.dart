// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

/// The JS interface for a [set-like object].
///
/// Any object that implements this interface can be passed into [set
/// composition methods].
///
/// [set-like object]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set#set-like_objects
/// [set composition methods]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set#set_composition
extension type JSSetLike<E extends JSAny?>._(JSObject _) implements JSObject {
  /// The number of elements this set-like object contains.
  external int get size;

  /// Whether this object contains the given [element].
  external bool has(JSAny? element);

  /// An iterator over all the elements contained within this object.
  ///
  /// This is a method in JS, but it's exposed as a getter in Dart for
  /// consistency with Dart API conventions.
  JSIteratorProtocol<E> get keys => _keys();
  @JS('keys')
  external JSIteratorProtocol<E> _keys();
}
