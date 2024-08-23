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

  test('Converts a JS list to a dart list using JSImmutableListWrapper', () {
    final div = (document.createElement('div'))
      ..append(document.createElement('div')..text = '1')
      ..append(document.createElement('div')..text = '2')
      ..append(document.createElement('div')..text = '3');

    final List<Node> dartList =
        JSImmutableListWrapper<NodeList, Node>(div.querySelectorAll('div'));

    // Ensure accessing length does not throw.
    expect(() => dartList.length, returnsNormally);

    // Ensure list length is correct.
    expect(dartList.length, 3);

    // Ensure accessing any arbitrary item in the list does not throw.
    expect(() => dartList[0], returnsNormally);
  });
}
