// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/cli.dart';

void main() {
  final bindingsGenPath = p.join('lib', 'src');

  group('Config Gen Test', () {
    final assetsPath = p.join('test', 'assets');
    final inputDir = Directory(assetsPath);
    final outputPath = p.join('.dart_tool');

    setUpAll(() async {
      // set up npm
      await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

      // compile file
      await compileDartMain(dir: bindingsGenPath);
    });

    final inputFile = p.join(assetsPath, 'test.d.ts');


    test('Generate Code for test.d.ts with no config', () async {
      final outputFile = p.join(outputPath, 'test_no_config.dart');
      final expectedFile = p.join(assetsPath, 'test_no_config.dart');

      final inputFilePath = p.relative(inputFile, from: bindingsGenPath);
      final outFilePath = p.relative(outputFile, from: bindingsGenPath);

      await runProc(
            'node',
            [
              'main.mjs',
              '--input=$inputFilePath',
              '--output=$outFilePath',
              '--declaration'
            ],
            workingDirectory: bindingsGenPath);

      final expectedOutput = await File(expectedFile).readAsString();
      final actualOutput = await File(outputFile).readAsString();

      expect(actualOutput, expectedOutput);
    });

    test('Generate Code for test.d.ts with config config.yaml', () async {
      final outputFile = p.join(outputPath, 'test_config.dart');
      final expectedFile = p.join(assetsPath, 'test_config.dart');
      final configFile = p.join(assetsPath, 'config.yaml');

      final inputFilePath = p.relative(inputFile, from: bindingsGenPath);
      final outFilePath = p.relative(outputFile, from: bindingsGenPath);
      final configFilePath = p.relative(configFile, from: bindingsGenPath);

      await runProc(
            'node',
            [
              'main.mjs',
              '--input=$inputFilePath',
              '--output=$outFilePath',
              '--config=$configFilePath',
              '--declaration'
            ],
            workingDirectory: bindingsGenPath);

      final expectedOutput = await File(expectedFile).readAsString();
      final actualOutput = await File(outputFile).readAsString();

      expect(actualOutput, expectedOutput);
    });
  });
  
}