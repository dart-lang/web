// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('node')
library;

import 'package:js_interop_gen/src/interop_gen/transform/utils.dart';
import 'package:test/test.dart';

void main() {
  group('toCamelCase tests', () {
    final testCases = {
      'webkit-appearance': 'webkitAppearance',
      '-webkit-appearance': 'webkitAppearance',
      'accept-charset': 'acceptCharset',
      'accept-=charset': 'acceptCharset',
      'accept': 'accept',
      '-accept': 'accept',
      '': '',
      '-': '',
      '--': '',
      'a-b': 'aB',
      '-a-b': 'aB',
      'Webkit-Appearance': 'webkitAppearance',
      'accept-charset-': 'acceptCharset',
    };

    for (final MapEntry(key: input, value: expected) in testCases.entries) {
      test('"$input" -> "$expected"', () {
        expect(toCamelCase(input), equals(expected));
      });
    }
  });
}
