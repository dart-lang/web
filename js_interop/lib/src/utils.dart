// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:meta/meta.dart';

/// Runs [callback] on each element of [iterable].
///
/// This is mildly faster than converting the iterable to Dart and using
/// `for`/`in`.
void iterate<E extends JSAny?>(
  JSIterableProtocol<E> iterable,
  void Function(E value) callback,
) {
  var iterator = iterable.iterator;
  while (true) {
    var result = iterator.next();
    if (!result.isDone) {
      callback(result.value!);
    } else {
      break;
    }
  }
}

/// Returns whether [key] and [value] are equal using the [same-value-zero]
/// equality algorithm.
///
/// [same-value-zero]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Equality_comparisons_and_sameness#same-value-zero_equality
///
/// For JavaScript values, this is the same as Javascript's `===` operator and
/// Dart's `operator ==`, except that it considers `NaN` to be equal to itself.
@internal
bool sameValueZeroEquals(JSAny? key, JSAny? value) {
  if (key.strictEquals(value).toDart) return true;
  return key != null &&
      value != null &&
      key.isA<JSNumber>() &&
      value.isA<JSNumber>() &&
      (key as JSNumber).toDartDouble.isNaN &&
      (value as JSNumber).toDartDouble.isNaN;
}
