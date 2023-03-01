// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'package:test/test.dart';
import 'package:web/web.dart';

void main() {
  test('Hello World!', () {
    final div = document.createElement('div') as HTMLDivElement;
    div.innerText = 'Hello World!';
    div.id = 'foo';
    document.body!.appendChild(div);
    final found = document.getElementById('foo') as HTMLDivElement;
    expect(found.innerText, equals('Hello World!'));
  });
}
