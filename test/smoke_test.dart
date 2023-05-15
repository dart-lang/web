// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'dart:js_interop';
import 'package:test/test.dart';
import 'package:web/web.dart';

void main() {
  test('Basic method', () {
    final div = document.createElement('div'.toJS) as HTMLDivElement;
    div.innerText = 'Hello World!'.toJS;
    div.id = 'foo'.toJS;
    document.body!.appendChild(div);
    final found = document.getElementById('foo'.toJS) as HTMLDivElement;
    expect(found.innerText.toDart, equals('Hello World!'));
    document.body!.removeChild(div);
    expect(document.getElementById('foo'.toJS), equals(null));
  });

  test('Objects inherit from JSObject', () {
    final div = document.createElement('div'.toJS) as HTMLDivElement;
    div.innerText = 'Hello World!'.toJS;
    div.id = 'foo'.toJS;
    document.body!.append(div);
    final found = document.getElementById('foo'.toJS) as HTMLDivElement;
    expect(found.innerText.toDart, equals('Hello World!'));
    document.body!.removeChild(div);
  });
}
