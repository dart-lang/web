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

  group("defineProperty", () {
    test("getter", () {
      object.defineProperty(
        "baz".toJS,
        JSPropertyDescriptor.getter(
          expectAsync1((objectArg) {
            expect(objectArg, equals(object));
            return 3.toJS;
          }),
        ),
      );
      expect(object.getProperty("baz".toJS), equals(3.toJS));
    });

    test("setter", () {
      object.defineProperty(
        "baz".toJS,
        JSPropertyDescriptor.setter(
          expectAsync2((objectArg, value) {
            expect(objectArg, equals(object));
            expect(value, equals(3.toJS));
          }),
        ),
      );
      expect(object.getProperty("baz".toJS), isNull);
      object.setProperty("baz".toJS, 3.toJS);
    });

    test("accessor", () {
      object.defineProperty(
        "baz".toJS,
        JSPropertyDescriptor.accessor(
          expectAsync1((objectArg) {
            expect(objectArg, equals(object));
            return 3.toJS;
          }),
          expectAsync2((objectArg, value) {
            expect(objectArg, equals(object));
            expect(value, equals(3.toJS));
          }),
        ),
      );
      expect(object.getProperty("baz".toJS), 3.toJS);
      object.setProperty("baz".toJS, 3.toJS);
    });

    test("getValue", () {
      var descriptor = JSPropertyDescriptor.getValue(3.toJS);
      expect(descriptor.value, equals(3.toJS));
      object.defineProperty("baz".toJS, descriptor);
      expect(object.getProperty("baz".toJS), 3.toJS);
    });

    group("configurable", () {
      test("true", () {
        var descriptor = JSPropertyDescriptor.getValue(
          3.toJS,
          configurable: true,
        );
        expect(descriptor.configurable, isTrue);
        object.defineProperty("baz".toJS, descriptor);
        object.defineProperty(
          "baz".toJS,
          JSPropertyDescriptor.getValue(4.toJS, configurable: true),
        );
        expect(object.getProperty("baz".toJS), 4.toJS);
      });

      test("false", () {
        var descriptor = JSPropertyDescriptor.getValue(
          3.toJS,
          configurable: false,
        );
        expect(descriptor.configurable, isFalse);
        object.defineProperty("baz".toJS, descriptor);
        object.defineProperty(
          "baz".toJS,
          JSPropertyDescriptor.getValue(4.toJS, configurable: false),
        );
        expect(object.getProperty("baz".toJS), 3.toJS);
      });
    });

    group("enumerable", () {
      test("true", () {
        var descriptor = JSPropertyDescriptor.getValue(
          3.toJS,
          enumerable: true,
        );
        expect(descriptor.enumerable, isTrue);
        object.defineProperty("baz".toJS, descriptor);
        expect(object.keys, contains("baz".toJS));
      });

      test("false", () {
        var descriptor = JSPropertyDescriptor.getValue(
          3.toJS,
          enumerable: false,
        );
        expect(descriptor.enumerable, isFalse);
        object.defineProperty("baz".toJS, descriptor);
        expect(object.keys, isNot(contains("baz".toJS)));
      });
    });

    group("writable", () {
      test("true", () {
        var descriptor = JSPropertyDescriptor.getValue(3.toJS, writable: true);
        expect(descriptor.writable, isTrue);
        object.defineProperty("baz".toJS, descriptor);
        object.setProperty("baz".toJS, 4.toJS);
        expect(object.getProperty("baz".toJS), 4.toJS);
      });

      test("false", () {
        var descriptor = JSPropertyDescriptor.getValue(3.toJS, writable: false);
        expect(descriptor.writable, isFalse);
        object.defineProperty("baz".toJS, descriptor);

        try {
          object.setProperty("baz".toJS, 4.toJS);
        } catch (_) {
          // This throws an error in WASM.
        }

        expect(object.getProperty("baz".toJS), 3.toJS);
      });
    });
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

  test("getOwnPropertyDescriptor", () {
    var descriptor = object.getOwnPropertyDescriptor("foo".toJS)!;
    expect(descriptor.configurable, isTrue);
    expect(descriptor.enumerable, isTrue);
    expect(descriptor.writable, isTrue);
    expect(descriptor.value, equals(1.toJS));
    expect(descriptor.get, isNull);
    expect(descriptor.set, isNull);
  });

  test(
    "getPropertyWithThis",
    () =>
        expect(object.getPropertyWithThis("foo".toJS, object), equals(1.toJS)),
  );

  test("hasOwnProperty", () {
    expect(object.hasOwnProperty("foo".toJS), isTrue);
    expect(object.hasOwnProperty("toString".toJS), isFalse);
  });

  test("setPropertyWithThis", () {
    expect(object.setPropertyWithThis("baz".toJS, object, 3.toJS), isTrue);
    expect(object.getProperty("baz".toJS), equals(3.toJS));
  });

  test(
    "isPrototypeOf",
    () => expect(object.isPrototypeOf(JSObject()), isFalse),
  );

  test(
    "propertyIsEnumerable",
    () => expect(object.propertyIsEnumerable("foo".toJS), isTrue),
  );
}
