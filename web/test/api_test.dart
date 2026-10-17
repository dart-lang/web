// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:isolate';

import 'package:api_summary/api_summary.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

void main() {
  test('api_summary', () async {
    // Resolve the package root independently of the working directory.
    final packagePath = p.dirname(
      p.fromUri(Isolate.resolvePackageUriSync(Uri.parse('package:web/'))),
    );
    // Regenerate with `dart run api_summary --output tool/api.txt`.
    await expectApiSummaryClean(
      packagePath: packagePath,
      goldenFilePath: 'tool/api.txt',
    );
  });
}
