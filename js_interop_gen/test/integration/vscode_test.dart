// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:io';

import 'package:js_interop_gen/src/cli.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import '../test_shared.dart';

void main() {
  group('VS Code Interop Gen Integration Test', () {
    final testGenFolder = p.join('test', 'integration');
    final inputConfig = File(p.join(testGenFolder, 'vscode_config.yaml'));
    final outputActualPath = p.join(testGenFolder, 'vscode_actual.dart');
    final outputExpectedPath = p.join(testGenFolder, 'vscode_expected.dart');

    setUpAll(() async {
      await compileBindingsGen();
    });

    test('Generate and verify VS Code library', () async {
      final inputConfigPath = p.relative(
        inputConfig.path,
        from: bindingsGenPath,
      );
      final inputFilePath = p.relative(
        p.join(testGenFolder, 'vscode_input.d.ts'),
        from: bindingsGenPath,
      );

      // Run the generator using the config file
      await runNode([
        'main.mjs',
        '--config=$inputConfigPath',
        '--declaration',
        inputFilePath,
      ], workingDirectory: bindingsGenPath);

      expectFilesEqual(outputExpectedPath, outputActualPath);
    }, timeout: const Timeout(Duration(minutes: 3)));
  });
}
