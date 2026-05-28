// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('node')
library;

import 'package:js_interop_gen/src/ast/types.dart';
import 'package:test/test.dart';

void main() {
  group('Identifier Sanitization Tests', () {
    test('UnionType name sanitization', () {
      final union = UnionType(types: [], name: 'AnyRestOrJSAny|JSAny');
      expect(union.declarationName, equals('AnyRestOrJSAnyOrJSAny'));

      final unionComplex = UnionType(
        types: [],
        name: 'String|JSSymbolOrK@(anonymous)&String',
      );
      expect(
        unionComplex.declarationName,
        equals('StringOrJSSymbolOrK_anonymous_AndString'),
      );
    });

    test('IntersectionType name sanitization', () {
      final intersection = IntersectionType(
        types: [],
        name: 'AnyRestOrJSAny|JSAny',
      );
      expect(intersection.declarationName, equals('AnyRestOrJSAnyOrJSAny'));
    });
  });
}
