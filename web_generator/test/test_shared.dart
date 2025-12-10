// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:test/test.dart';

const _rewriteFiles = false;

void expectFilesEqual(String expectedPath, String actualPath) {
  final expectedFile = File(expectedPath);
  final actual = File(actualPath).readAsStringSync();

  if (_rewriteFiles) {
    expectedFile.writeAsStringSync(actual);
    addTearDown(() {
      fail('Rewrote $expectedPath');
    });
  } else {
    expect(actual, expectedFile.readAsStringSync());
  }
}
