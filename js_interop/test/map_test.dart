// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

void main() {
  late JSMap<JSNumber, JSString> map;
  setUp(() {
    map = JSMap(
      [
        [1.toJS, "one".toJS].toJS,
        [2.toJS, "two".toJS].toJS,
      ].toJS,
    );
  });

  test("constructor with no arguments returns an empty map", () {
    var map = JSMap();
    expect(map.size, equals(0));
    expect(map.keys.toDartIterable, isEmpty);
    expect(map.values.toDartIterable, isEmpty);
  });

  test("size returns the size of the map", () => expect(map.size, equals(2)));

  test("has returns whether the map has a key", () {
    expect(map.has(1.toJS), isTrue);
    expect(map.has(3.toJS), isFalse);
  });

  test("clear empties a map", () {
    map.clear();
    expect(map.size, equals(0));
    expect(map.keys.toDartIterable, isEmpty);
    expect(map.values.toDartIterable, isEmpty);
  });

  group("delete", () {
    test("removes a matching element from the map", () {
      expect(map.delete(1.toJS), isTrue);
      expect(map.has(1.toJS), isFalse);
      expect(map.size, equals(1));
    });

    test("ignores a non-matching element", () {
      expect(map.delete(3.toJS), isFalse);
      expect(map.size, equals(2));
    });
  });

  test("[] returns an element if the map contains it", () {
    expect(map[1.toJS], equals("one".toJS));
    expect(map[3.toJS], isNull);
  });

  test("[]= adds an element to the map", () {
    map[3.toJS] = "three".toJS;
    expect(map.size, equals(3));
    expect(map[3.toJS], equals("three".toJS));
  });

  test("keys returns the map's keys", () {
    expect(map.keys.toDartIterable, equals([1.toJS, 2.toJS]));
  });

  test("values returns the map's values", () {
    expect(map.values.toDartIterable, equals(["one".toJS, "two".toJS]));
  });

  test("JSMap.toDart contains the expected values", () {
    var map = JSMap(
      [
        [1.toJS, "one".toJS].toJS,
        [double.nan.toJS, "NaN".toJS].toJS,
      ].toJS,
    ).toDart;
    expect(map.length, equals(2));
    expect(map, containsPair(1.toJS, "one".toJS));
    expect(map, containsPair(double.nan.toJS, "NaN".toJS));
  });

  group("Map.toJS", () {
    test("contains the expected values", () {
      var map = {1.toJS: "one".toJS, 1.5.toJS: "one and a half".toJS}.toJS;
      expect(map.size, equals(2));
      expect(map[1.toJS], equals("one".toJS));
      expect(map[1.5.toJS], equals("one and a half".toJS));
    });

    test("uses later values for collisions", () {
      var dartMap = {
        double.nan.toJS: "NaN 1".toJS,
        double.nan.toJS: "NaN 2".toJS,
        double.nan.toJS: "NaN 3".toJS,
      };
      expect(dartMap.length, equals(3));
      var map = dartMap.toJS;
      expect(map.size, equals(1));
      expect(map[double.nan.toJS], equals("NaN 3".toJS));
    });
  });
}
