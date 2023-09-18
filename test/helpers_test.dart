// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'package:test/test.dart';
import 'package:web/helpers.dart';

void main() {
  test('isInstanceOfDomType', () {
    final div = document.createElement('div');

    expect(isInstanceOfDomType(div, 'bob'), false);
    expect(isInstanceOfDomType(div, 'HTMLDivElement'), true);
  });
}
