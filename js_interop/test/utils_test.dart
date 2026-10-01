// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/src/utils.dart';

void main() {
  group('sameValueZeroEquals', () {
    group('considers equal', () {
      test('identical real numbers', () {
        expect(sameValueZeroEquals(1.toJS, 1.toJS), isTrue);
        expect(sameValueZeroEquals((-1.5).toJS, (-1.5).toJS), isTrue);
      });

      test('zero and negative zero', () {
        expect(sameValueZeroEquals(0.0.toJS, (-0.0).toJS), isTrue);
      });

      test('NaN and NaN', () {
        expect(sameValueZeroEquals(double.nan.toJS, double.nan.toJS), isTrue);
      });

      test('identical objects', () {
        var obj = JSObject();
        expect(sameValueZeroEquals(obj, obj), isTrue);
      });
    });

    group('considers inequal', () {
      test('different real numbers', () {
        expect(sameValueZeroEquals(1.toJS, 2.toJS), isFalse);
      });

      test('distinct objects', () {
        expect(sameValueZeroEquals(JSObject(), JSObject()), isFalse);
      });
    });
  });
}
