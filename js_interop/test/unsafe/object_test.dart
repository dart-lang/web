// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:test/test.dart';

import 'package:js_interop/unsafe.dart';

void main() {
  late JSObject object;
  setUp(() => object = {"foo": 1, "bar": 2}.jsify() as JSObject);

  test(
    "entries",
    () => expect(object.entries, equals([("foo", 1.toJS), ("bar", 2.toJS)])),
  );

  test(
    "ownKeys",
    () => expect(object.ownKeys, equals(["foo".toJS, "bar".toJS])),
  );

  test(
    "ownPropertyNames",
    () => expect(object.ownPropertyNames, equals(["foo".toJS, "bar".toJS])),
  );

  test("keys", () => expect(object.keys, equals(["foo".toJS, "bar".toJS])));

  test("values", () => expect(object.values, equals([1.toJS, 2.toJS])));

  test("assign", () {
    object.assign({"bar": 3, "baz": 4}.jsify() as JSObject);
    expect(object.dartify(), equals({"foo": 1, "bar": 3, "baz": 4}));
  });

  test("freeze", () {
    object.freeze();

    try {
      object.setProperty("foo".toJS, 3.toJS);
    } catch (e) {
      // This throws a JavaScriptError on WASM but does not throw in JS. Either
      // way, it shouldn't modify the object.
    }

    expect(object.dartify(), equals({"foo": 1, "bar": 2}));
  });

  test(
    "getPropertyWithThis",
    () =>
        expect(object.getPropertyWithThis("foo".toJS, object), equals(1.toJS)),
  );

  test(
    "isPrototypeOf",
    () => expect(object.isPrototypeOf(JSObject()), isFalse),
  );

  test(
    "propertyIsEnumerable",
    () => expect(object.propertyIsEnumerable("foo".toJS), isTrue),
  );
}
