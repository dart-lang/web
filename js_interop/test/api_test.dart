// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'package:api_summary/api_summary.dart';
import 'package:test/test.dart';

void main() {
  // Regenerate with `dart run api_summary --output tool/api.txt`.
  test(
    'api_summary',
    () => expectApiSummaryClean(goldenFilePath: 'tool/api.txt'),
  );
}
