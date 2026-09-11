// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

void main() {
  late JSSet<JSNumber> set;
  setUp(() {
    set = JSSet([1.toJS, 2.toJS].toJS);
  });

  test("constructor with no arguments returns an empty set", () {
    var set = JSSet();
    expect(set.size, equals(0));
    expect(set.values.toDartIterable, isEmpty);
  });

  test("size returns the size of the set", () => expect(set.size, equals(2)));

  test("has returns whether the set has a value", () {
    expect(set.has(1.toJS), isTrue);
    expect(set.has(3.toJS), isFalse);
  });

  test("clear empties a set", () {
    set.clear();
    expect(set.size, equals(0));
    expect(set.values.toDartIterable, isEmpty);
  });

  group("delete", () {
    test("removes a matching element from the set", () {
      expect(set.delete(1.toJS), isTrue);
      expect(set.has(1.toJS), isFalse);
      expect(set.size, equals(1));
    });

    test("ignores a non-matching element", () {
      expect(set.delete(3.toJS), isFalse);
      expect(set.size, equals(2));
    });
  });

  test("keys and values both return the set's values", () {
    expect(set.keys.toDartIterable, equals([1.toJS, 2.toJS]));
    expect(set.values.toDartIterable, equals([1.toJS, 2.toJS]));
  });

  test("JSSet.toDart contains the expected values", () {
    var set = JSSet([1.toJS, double.nan.toJS].toJS).toDart;
    expect(set.length, equals(2));
    expect(set, contains(1.toJS));
    expect(set, contains(double.nan.toJS));
  });

  group("Set.toJS", () {
    test("contains the expected values", () {
      var set = {1.toJS, 1.5.toJS}.toJS;
      expect(set.size, equals(2));
      expect(set.has(1.toJS), isTrue);
      expect(set.has(1.5.toJS), isTrue);
    });
  });
}
