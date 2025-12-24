// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/cli.dart';

import 'test_shared.dart';

/// Actual test output can be found in `.dart_tool/idl`
void main() {
  final bindingsGenPath = p.join('lib', 'src');
  group('Interop Gen Unsupported Test', () {
    final testFile = p.join('test', 'assets', 'unsupported_test.d.ts');
    final outputFile = p.join('.dart_tool', 'unsupported_test.dart');
    final expectedFile = p.join(
      'test',
      'assets',
      'unsupported_test_expected.dart',
    );

    setUpAll(() async {
      // set up npm
      await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

      // compile file
      await compileDartMain(dir: bindingsGenPath);
    });

    test('Strict Unsupported', () async {
      final inputFilePath = p.relative(testFile, from: bindingsGenPath);
      final outputFilePath = p.relative(outputFile, from: bindingsGenPath);

      final process = await runProcWithResult('node', [
        'main.mjs',
        '--input=$inputFilePath',
        '--output=$outputFilePath',
        '--strict-unsupported',
        '--declaration',
      ], workingDirectory: bindingsGenPath);

      final stderr = await process.stderr.transform(utf8.decoder).toList();

      expect(stderr, isNotEmpty);
      expect(await process.exitCode, isNot(0));
    });

    test('Not Strict Unsupported', () async {
      final inputFilePath = p.relative(testFile, from: bindingsGenPath);
      final outputFilePath = p.relative(outputFile, from: bindingsGenPath);

      await runProc('node', [
        'main.mjs',
        '--input=$inputFilePath',
        '--output=$outputFilePath',
        '--declaration',
      ], workingDirectory: bindingsGenPath);

      expectFilesEqual(expectedFile, outputFile);
    });
  });
}
