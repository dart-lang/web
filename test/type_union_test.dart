// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';

import '../tool/generator/type_union.dart';

void main() {
  test('Non-JS types', () {
    expect(computeJsTypeUnion('Window', 'Document'), null);
    expect(computeJsTypeUnion('JSAny', 'Document'), null);
    expect(computeJsTypeUnion('Window', 'JSAny'), null);
  });
  test('Types are equal', () {
    expect(computeJsTypeUnion('JSAny', 'JSAny'), 'JSAny');
    expect(computeJsTypeUnion('JSFloat32Array', 'JSFloat32Array'),
        'JSFloat32Array');
  });
  test('One type is a supertype of the other', () {
    expect(computeJsTypeUnion('JSAny', 'JSString'), 'JSAny');
    expect(computeJsTypeUnion('JSUint8Array', 'JSObject'), 'JSObject');
  });
  test('Direct sibling types', () {
    expect(computeJsTypeUnion('JSNumber', 'JSString'), 'JSAny');
    expect(
        computeJsTypeUnion('JSFloat32Array', 'JSUint8Array'), 'JSTypedArray');
  });
  test('Indirect sibling types', () {
    expect(computeJsTypeUnion('JSInt8Array', 'JSArrayBuffer'), 'JSObject');
    expect(computeJsTypeUnion('JSBoolean', 'JSFunction'), 'JSAny');
    expect(computeJsTypeUnion('JSExportedDartFunction', 'JSUint32Array'),
        'JSObject');
  });
}
