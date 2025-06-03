@TestOn('vm')
@Tags(['node'])

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'utils/run_process.dart';

void main() {
  final testGenFolder = p.join('test', 'gen');
  final testGenDTSFiles = p.join(testGenFolder, 'input');

  final bindingsGenPath = p.join('lib', 'src');

  group('Web Generator TS Bindings Integration Test', () {
    final inputDir = Directory(testGenDTSFiles);

    setUp(() async {
      // set up npm
      await runProcess(
        'npm',
        ['install'],
        workingDirectory: bindingsGenPath,
      );

      // compile file
      await runProcess(
        Platform.executable,
        [
          'compile',
          'js',
          '--enable-asserts',
          '--server-mode',
          'dart_main.dart',
          '-o',
          'dart_main.js',
        ],
        workingDirectory: bindingsGenPath,
      );
    });

    for (final inputFile in inputDir.listSync().whereType<File>()) {
      final inputFileName = p.basenameWithoutExtension(inputFile.path);

      final outputActualPath =
          p.join('test', 'gen', 'expected', '${inputFileName}_actual.dart');
      final outputExpectedPath =
          p.join('test', 'gen', 'expected', '${inputFileName}_expected.dart');

      test(inputFileName, () async {
        final inputFilePath = p.relative(inputFile.path, from: bindingsGenPath);
        final outFilePath = p.relative(outputActualPath, from: bindingsGenPath);
        // run the entrypoint
        await runProcess(
          'node',
          [
            'main.mjs',
            '--input=$inputFilePath',
            '--output=$outFilePath',
            '--declaration'
          ],
          workingDirectory: bindingsGenPath,
        );

        // read files
        final expectedOutput = await File(outputExpectedPath).readAsString();
        final actualOutput = await File(outputActualPath).readAsString();

        expect(actualOutput, expectedOutput);
      });
    }
  });
}
