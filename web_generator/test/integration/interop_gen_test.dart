// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/cli.dart';

/// Actual test output can be found in `.dart_tool/idl`
void main() {
  final bindingsGenPath = p.join('lib', 'src');
  group('Interop Gen Integration Test', () {
    final testGenFolder = p.join('test', 'integration', 'interop_gen');
    final inputDir = Directory(testGenFolder);
    final outputDir = Directory(p.join('.dart_tool', 'interop_gen'));

    setUpAll(() async {
      // set up npm
      await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

      // compile file
      await compileDartMain(dir: bindingsGenPath);

      await outputDir.create(recursive: true);
    });

    for (final inputFile in inputDir
        .listSync()
        .whereType<File>()
        .where((f) => p.basenameWithoutExtension(f.path).contains('_input'))) {
      final inputFileName = p.basenameWithoutExtension(inputFile.path);
      final inputName = inputFileName.replaceFirst('_input.d', '');

      final outputActualPath =
          p.join('.dart_tool', 'interop_gen', '${inputName}_actual.dart');
      final outputExpectedPath =
          p.join(testGenFolder, '${inputName}_expected.dart');

      test(inputName, () async {
        final inputFilePath = p.relative(inputFile.path, from: bindingsGenPath);
        final outFilePath = p.relative(outputActualPath, from: bindingsGenPath);
        // run the entrypoint
        await runProc(
            'node',
            [
              'main.mjs',
              '--input=$inputFilePath',
              '--output=$outFilePath',
              '--declaration'
            ],
            workingDirectory: bindingsGenPath);

        // read files
        final expectedOutput = await File(outputExpectedPath).readAsString();
        final actualOutput = await File(outputActualPath).readAsString();

        expect(actualOutput, expectedOutput);
      });
    }
  });

  group('Interop Gen Integration Test (with config)', () {
    final testGenFolder =
        p.join('test', 'integration', 'interop_gen', 'project');
    final inputConfig = File(p.join(testGenFolder, 'config.yaml'));
    final outputDir = Directory(p.join('.dart_tool', 'interop_gen_project'));
    final outputExpectedPath = p.join(testGenFolder, 'output');

    setUpAll(() async {
      // set up npm
      await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

      // compile file
      await compileDartMain(dir: bindingsGenPath);

      await outputDir.create(recursive: true);
    });

    test('Project Test', () async {
      final inputConfigPath =
          p.relative(inputConfig.path, from: bindingsGenPath);
      // run the entrypoint
      await runProc(
          'node', ['main.mjs', '--config=$inputConfigPath', '--declaration'],
          workingDirectory: bindingsGenPath);

      // read files
      for (final output in outputDir.listSync().whereType<File>()) {
        final outputContents = output.readAsStringSync();

        final expectedOutput =
            File(p.join(outputExpectedPath, p.basename(output.path)));
        final expectedContents = expectedOutput.readAsStringSync();

        expect(outputContents, expectedContents);
      }
    });
  });
}
