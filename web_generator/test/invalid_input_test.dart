// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/cli.dart';

/// Actual test output can be found in `.dart_tool/idl`
void main() {
  final bindingsGenPath = p.join('lib', 'src');
  group('Interop Gen Integration Test', () {
    final testFile = p.join('test', 'assets', 'invalid.d.ts');
    final outputFile = p.join('.dart_tool', 'interop_gen', 'invalid.dart');

    setUp(() async {
      // set up npm
      await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

      // compile file
      await compileDartMain(dir: bindingsGenPath);
    });

    test('Expect Parsing to Fail', () async {
      final inputFilePath = p.relative(testFile, from: bindingsGenPath);
      final outputFilePath = p.relative(outputFile, from: bindingsGenPath);

      final process = await runProcWithResult(
          'node',
          [
            'main.mjs',
            '--input=$inputFilePath',
            '--output=$outputFilePath',
            '--declaration',
          ],
          workingDirectory: bindingsGenPath);

      final stderr = await process.stderr.transform(utf8.decoder).toList();

      expect(stderr, isNotEmpty);
      expect(await process.exitCode, isNot(0));
    });
  });
}
