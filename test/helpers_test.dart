// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'dart:js_interop';

import 'package:test/test.dart';
import 'package:web/web.dart';

void main() {
  test('instanceOfString works with package:web types', () {
    final div = document.createElement('div') as JSObject;

    expect(div.instanceOfString('bob'), false);
    expect(div.instanceOfString('HTMLDivElement'), true);
  });
}
