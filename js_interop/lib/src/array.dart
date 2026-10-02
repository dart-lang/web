// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'pair.dart';

/// Additional instance methods for the `dart:js_interop` [interop.JSArray]
/// type.
extension JSArrayExtension<T extends JSAny?> on JSArray<T> {
  /// Returns a Dart iterable of index/value pairs in this array.
  Iterable<(int, T)> get pairs =>
      _entries().toDartIterable.map((entry) => (entry.$1.toDartInt, entry.$2));

  /// See [`Array.at()`].
  ///
  /// [`Array.at()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/at
  external T? at(int index);

  /// See [`Array.concat()`].
  ///
  /// [`Array.concat()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/concat
  external JSArray<T> concat(JSArray<T> concat);

  /// See [`Array.copyWithin()`].
  ///
  /// [`Array.copyWithin()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/copyWithin
  external void copyWithin(int target, int start, [int? end]);

  @JS('entries')
  external JSIterator<JSPair<JSNumber, T>> _entries();

  /// See [`Array.every()`].
  ///
  /// [`Array.every()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every
  bool every(bool Function(T element) callback) => _every(callback.toJS);

  /// See [`Array.every()`].
  ///
  /// [`Array.every()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every
  bool everyWithIndex(bool Function(T element, int index) callback) =>
      _every(callback.toJS);

  @JS('every')
  external bool _every(JSFunction callback);

  /// See [`Array.fill()`].
  ///
  /// [`Array.fill()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/fill
  external void fill(T value, [int? start, int? end]);

  /// See [`Array.filter()`].
  ///
  /// [`Array.filter()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
  JSArray<T> filter(bool Function(T element) callback) =>
      _filter(callback.toJS);

  /// See [`Array.filter()`].
  ///
  /// [`Array.filter()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
  JSArray<T> filterWithIndex(bool Function(T element, int index) callback) =>
      _filter(callback.toJS);

  @JS('filter')
  external JSArray<T> _filter(JSFunction callback);

  /// See [`Array.find()`].
  ///
  /// [`Array.find()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find
  T? find(bool Function(T element) callback) => _find(callback.toJS);

  /// See [`Array.find()`].
  ///
  /// [`Array.find()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find
  T? findWithIndex(bool Function(T element, int index) callback) =>
      _find(callback.toJS);

  @JS('find')
  external T? _find(JSFunction callback);

  /// See [`Array.findIndex()`].
  ///
  /// [`Array.findIndex()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex
  int findIndex(bool Function(T element) callback) => _findIndex(callback.toJS);

  /// See [`Array.findIndex()`].
  ///
  /// [`Array.findIndex()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex
  int findIndexWithIndex(bool Function(T element, int index) callback) =>
      _findIndex(callback.toJS);

  @JS('findIndex')
  external int _findIndex(JSFunction callback);

  /// See [`Array.findLast()`].
  ///
  /// [`Array.findLast()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast
  T? findLast(bool Function(T element) callback) => _findLast(callback.toJS);

  /// See [`Array.findLast()`].
  ///
  /// [`Array.findLast()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast
  T? findLastWithIndex(bool Function(T element, int index) callback) =>
      _findLast(callback.toJS);

  @JS('findLast')
  external T? _findLast(JSFunction callback);

  /// See [`Array.findLastIndex()`].
  ///
  /// [`Array.findLastIndex()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLastIndex
  int findLastIndex(bool Function(T element) callback) =>
      _findLastIndex(callback.toJS);

  /// See [`Array.findLastIndex()`].
  ///
  /// [`Array.findLastIndex()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLastIndex
  int findLastIndexWithIndex(bool Function(T element, int index) callback) =>
      _findLastIndex(callback.toJS);

  @JS('findLastIndex')
  external int _findLastIndex(JSFunction callback);

  /// See [`Array.flat()`].
  ///
  /// [`Array.flat()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flat
  external JSArray<JSAny?> flat([int? depth]);

  /// See [`Array.flatMap()`].
  ///
  /// [`Array.flatMap()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap
  JSArray<S> flatMap<S extends JSAny?>(
    JSArray<S> Function(T element) callback,
  ) => _flatMap(callback.toJS) as JSArray<S>;

  /// See [`Array.flatMap()`].
  ///
  /// [`Array.flatMap()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap
  JSArray<S> flatMapWithIndex<S extends JSAny?>(
    JSArray<S> Function(T element, int index) callback,
  ) => _flatMap(callback.toJS) as JSArray<S>;

  /// See [`Array.flatMap()`].
  ///
  /// This overload allows the callback to return either arrays or individual
  /// values at the expense of type safety.
  ///
  /// [`Array.flatMap()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap
  JSArray flatMapHeterogeneous(JSAny? Function(T element) callback) =>
      _flatMap(callback.toJS);

  /// See [`Array.flatMap()`].
  ///
  /// This overload allows the callback to return either arrays or individual
  /// values at the expense of type safety.
  ///
  /// [`Array.flatMap()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap
  JSArray flatMapHeterogeneousWithIndex(
    JSAny? Function(T element, int index) callback,
  ) => _flatMap(callback.toJS);

  @JS('flatMap')
  external JSArray _flatMap(JSFunction callback);

  /// See [`Array.forEach()`].
  ///
  /// [`Array.forEach()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach
  void forEach(void Function(T element) callback) => _forEach(callback.toJS);

  /// See [`Array.forEach()`].
  ///
  /// [`Array.forEach()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach
  void forEachWithIndex(void Function(T element, int index) callback) =>
      _forEach(callback.toJS);

  @JS('forEach')
  external void _forEach(JSFunction callback);

  /// See [`Array.includes()`].
  ///
  /// [`Array.includes()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes
  external bool includes(JSAny? searchElement, [int? fromIndex]);

  /// See [`Array.indexOf()`].
  ///
  /// [`Array.indexOf()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf
  external int indexOf(JSAny? searchElement, [int? fromIndex]);

  /// See [`Array.join()`].
  ///
  /// [`Array.join()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join
  external String join([String? separator]);

  /// See [`Array.keys()`].
  ///
  /// [`Array.keys()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/keys
  JSIterable<JSNumber> get keys => _keys();
  @JS('keys')
  external JSIterable<JSNumber> _keys();

  /// See [`Array.map()`].
  ///
  /// [`Array.map()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
  JSArray<S> map<S extends JSAny?>(S Function(T element) callback) =>
      _map(callback.toJS) as JSArray<S>;

  /// See [`Array.map()`].
  ///
  /// [`Array.map()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
  JSArray<S> mapWithIndex<S extends JSAny?>(
    S Function(T element, int index) callback,
  ) => _map(callback.toJS) as JSArray<S>;

  @JS('map')
  external JSArray _map(JSFunction callback);

  /// See [`Array.pop()`].
  ///
  /// [`Array.pop()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/pop
  external T? pop();

  /// See [`Array.push()`].
  ///
  /// [`Array.push()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push
  external int push([T? arg1, T? arg2, T? arg3, T? arg4]);

  /// See [`Array.reduce()`].
  ///
  /// [`Array.reduce()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
  T reduce(T Function(T accumulator, T currentValue) callback) =>
      _reduce(callback.toJS) as T;

  /// See [`Array.reduce()`].
  ///
  /// [`Array.reduce()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
  T reduceWithIndex(
    T Function(T accumulator, T currentValue, int index) callback,
  ) => _reduce(callback.toJS) as T;

  /// See [`Array.reduce()`].
  ///
  /// [`Array.reduce()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
  S reduceWithInitial<S extends JSAny?>(
    S Function(S accumulator, T currentValue) callback,
    S initialValue,
  ) => _reduce(callback.toJS, initialValue) as S;

  /// See [`Array.reduce()`].
  ///
  /// [`Array.reduce()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
  S reduceWithInitialAndIndex<S extends JSAny?>(
    S Function(S accumulator, T currentValue, int index) callback,
    S initialValue,
  ) => _reduce(callback.toJS, initialValue) as S;

  @JS('reduce')
  external JSAny? _reduce(JSFunction callback, [JSAny? initialValue]);

  /// See [`Array.reduceRight()`].
  ///
  /// [`Array.reduceRight()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight
  T reduceRight(T Function(T accumulator, T currentValue) callback) =>
      _reduceRight(callback.toJS) as T;

  /// See [`Array.reduceRight()`].
  ///
  /// [`Array.reduceRight()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight
  T reduceRightWithIndex(
    T Function(T accumulator, T currentValue, int index) callback,
  ) => _reduceRight(callback.toJS) as T;

  /// See [`Array.reduceRight()`].
  ///
  /// [`Array.reduceRight()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight
  S reduceRightWithInitial<S extends JSAny?>(
    S Function(S accumulator, T currentValue) callback,
    S initialValue,
  ) => _reduceRight(callback.toJS, initialValue) as S;

  /// See [`Array.reduceRight()`].
  ///
  /// [`Array.reduceRight()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight
  S reduceRightWithInitialAndIndex<S extends JSAny?>(
    S Function(S accumulator, T currentValue, int index) callback,
    S initialValue,
  ) => _reduceRight(callback.toJS, initialValue) as S;

  @JS('reduceRight')
  external JSAny? _reduceRight(JSFunction callback, [JSAny? initialValue]);

  /// See [`Array.reverse()`].
  ///
  /// [`Array.reverse()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse
  external void reverse();

  /// See [`Array.shift()`].
  ///
  /// [`Array.shift()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
  external T? shift();

  /// See [`Array.slice()`].
  ///
  /// [`Array.slice()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice
  external JSArray<T> slice([int? start, int? end]);

  /// See [`Array.some()`].
  ///
  /// [`Array.some()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
  bool some(bool Function(T element) callback) => _some(callback.toJS);

  /// See [`Array.some()`].
  ///
  /// [`Array.some()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
  bool someWithIndex(bool Function(T element, int index) callback) =>
      _some(callback.toJS);

  @JS('some')
  external bool _some(JSFunction callback);

  /// See [`Array.sort()`].
  ///
  /// [`Array.sort()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort
  void sort([int Function(T a, T b)? compare]) =>
      compare == null ? _sort() : _sort(compare.toJS);

  @JS('sort')
  external void _sort([JSFunction compare]);

  /// See [`Array.splice()`].
  ///
  /// [`Array.splice()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice
  external JSArray<T> splice(
    int start, [
    int? deleteCount,
    T? item1,
    T? item2,
    T? item3,
    T? item4,
  ]);

  /// See [`Array.toReversed()`].
  ///
  /// [`Array.toReversed()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toReversed
  JSArray<T> get reversed => _toReversed();
  @JS('toReversed')
  external JSArray<T> _toReversed();

  /// See [`Array.toSorted()`].
  ///
  /// [`Array.toSorted()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSorted
  JSArray<T> toSorted([int Function(T a, T b)? compare]) =>
      compare == null ? _toSorted() : _toSorted(compare.toJS);

  @JS('toSorted')
  external JSArray<T> _toSorted([JSFunction compare]);

  /// See [`Array.toSpliced()`].
  ///
  /// [`Array.toSpliced()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSpliced
  external JSArray<T> toSpliced(
    int start, [
    int? deleteCount,
    T? item1,
    T? item2,
    T? item3,
    T? item4,
  ]);

  /// See [`Array.unshift()`].
  ///
  /// [`Array.unshift()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/unshift
  external int unshift([T? arg1, T? arg2, T? arg3, T? arg4]);

  /// See [`Array.values()`].
  ///
  /// [`Array.values()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/values
  JSIterable<T> get values => _values();
  @JS('values')
  external JSIterable<T> _values();

  /// See [`Array.with()`].
  ///
  /// [`Array.with()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/with
  @JS('with')
  external JSArray<T> withValue(int index, T value);
}

extension JSArrayOfArrayExtension<T extends JSAny?> on JSArray<JSArray<T>> {
  /// Flattens a single layer of this array with [JSArray.flat].
  ///
  /// This is exposed as a separate method in order to provide a type-safe API
  /// for the most common case of flattening only one layer of nested arrays.
  JSArray<T> flatOnce() => flat() as JSArray<T>;
}
