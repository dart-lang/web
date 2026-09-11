// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';
import 'dart:collection';

import 'set_like.dart';
import 'utils.dart';

/// The JavaScript `Set` type.
///
/// **Note:** unlike Dart sets, JavaScript sets do not support customizable
/// equality comparisons. Elements will always be compared using
/// [same-value-zero equality].
///
/// [same-value-zero equality]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Equality_comparisons_and_sameness#same-value-zero_equality
@JS('Set')
extension type JSSet<E extends JSAny?>._(JSObject _)
    implements JSObject, JSIterable<E>, JSSetLike<E> {
  /// Returns a copy of this map as a Dart [LinkedHashSet].
  ///
  /// This map's equality relation is identical to the JS Set's, meaning that it
  /// considers `NaN` to be equivalent to `NaN`.
  Set<E> get toDart {
    var set = LinkedHashSet<E>(equals: sameValueZeroEquals);
    set.addAll(this.values.toDartIterable);
    return set;
  }

  /// See [`new Set()`].
  ///
  /// [`new Set()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/Set
  external JSSet([JSArray<E> array]);

  /// See [`new Set()`].
  ///
  /// [`new Set()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/Set
  external JSSet.fromIterable([JSIterableProtocol<E> iterable]);

  /// See [`Set.add()`].
  ///
  /// [`Set.add()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/add
  external void add(E element);

  /// See [`Set.clear()`].
  ///
  /// [`Set.clear()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/clear
  external void clear();

  /// See [`Set.delete()`].
  ///
  /// [`Set.delete()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/delete
  external bool delete(JSAny? element);

  /// See [`Set.difference()`].
  ///
  /// [`Set.difference()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/difference
  external JSSet<E> difference(JSSetLike<E> setLike);

  /// See [`Set.intersection()`].
  ///
  /// [`Set.intersection()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/intersection
  external JSSet<E> intersection(JSSetLike<E> setLike);

  /// See [`Set.isDisjointFrom()`].
  ///
  /// [`Set.isDisjointFrom()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isDisjointFrom
  external bool isDisjointFrom(JSSetLike<E> setLike);

  /// See [`Set.isSubsetOf()`].
  ///
  /// [`Set.isSubsetOf()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSubsetOf
  external bool isSubsetOf(JSSetLike<E> setLike);

  /// See [`Set.isSupersetOf()`].
  ///
  /// [`Set.isSupersetOf()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSupersetOf
  external bool isSupersetOf(JSSetLike<E> setLike);

  /// See [`Set.keys()`].
  ///
  /// This returns the same value as [values].
  ///
  /// [`Set.keys()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/keys
  JSIterable<E> get keys => _keys();
  @JS('keys')
  external JSIterable<E> _keys();

  /// See [`Set.symmetricDifference()`].
  ///
  /// [`Set.symmetricDifference()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/symmetricDifference
  external JSSet<E> symmetricDifference(JSSetLike<E> setLike);

  /// See [`Set.union()`].
  ///
  /// [`Set.union()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/union
  external JSSet<E> union(JSSetLike<E> setLike);

  /// See [`Set.values()`].
  ///
  /// This returns the same value as [keys].
  ///
  /// [`Set.values()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/values
  JSIterable<E> get values => _keys();
}
