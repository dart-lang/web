@TestOn('vm')
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/cli.dart';

/// Actual test output can be found in `.dart_tool/idl`
void main() {
  final bindingsGenPath = p.join('lib', 'src');
  group('IDL Integration Test', () {
    final testGenFolder = p.join('test', 'integration', 'idl');
    final inputDir = Directory(testGenFolder);

    setUpAll(() async {
      // set up npm
      await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

      // compile file
      await compileDartMain(dir: bindingsGenPath);
    });

    for (final inputFile in inputDir
        .listSync()
        .whereType<File>()
        .where((f) => p.basenameWithoutExtension(f.path).endsWith('_input'))) {
      final inputFileName = p.basenameWithoutExtension(inputFile.path);
      final inputName = inputFileName.replaceFirst('_input', '');

      final outputActualPath =
          p.join('.dart_tool', 'idl', '${inputName}_actual.dart');
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
              '--output=${p.dirname(outFilePath)}',
              '--idl'
            ],
            workingDirectory: bindingsGenPath);

        await File(
                p.join(p.dirname(outputActualPath), '${inputName}_input.dart'))
            .rename(outputActualPath);

        // read files
        final expectedOutput = await File(outputExpectedPath).readAsString();
        final actualOutput = await File(outputActualPath).readAsString();

        expect(actualOutput, expectedOutput);
      });

      tearDownAll(() {
        inputDir
            .listSync()
            .whereType<File>()
            .where(
                (f) => p.basenameWithoutExtension(f.path).endsWith('_actual'))
            .forEach((f) => f.deleteSync());
      });
    }
  });
}
