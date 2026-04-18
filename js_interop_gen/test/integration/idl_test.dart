@TestOn('vm')
library;

import 'dart:io';

import 'package:js_interop_gen/src/cli.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import '../test_shared.dart';

/// Actual test output can be found in `.dart_tool/idl`
void main() {
  group('IDL Integration Test', () {
    final testGenFolder = p.join('test', 'integration', 'idl');
    final inputDir = Directory(testGenFolder);
    final outputDir = p.join('.dart_tool', 'js_interop_gen');

    setUpAll(() async {
      await compileBindingsGen();

      if (!(await Directory(outputDir).exists())) {
        await Directory(outputDir).create(recursive: true);
      }

      final dummyBcd = File(p.join(outputDir, 'dummy_bcd.json'));
      await dummyBcd.writeAsString('{"api": {}, "webassembly": {"api": {}}}');
    });

    final inputFiles =
        inputDir
            .listSync()
            .whereType<File>()
            .where((f) => p.basenameWithoutExtension(f.path).endsWith('_input'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

    for (final inputFile in inputFiles) {
      final inputFileName = p.basenameWithoutExtension(inputFile.path);
      final inputName = inputFileName.replaceFirst('_input', '');

      final outputActualPath = p.join(outputDir, '${inputName}_actual.dart');
      final outputExpectedPath = p.join(
        testGenFolder,
        '${inputName}_expected.dart',
      );

      test(inputName, () async {
        final inputFilePath = p.relative(inputFile.path, from: bindingsGenPath);
        final outFilePath = p.relative(outputActualPath, from: bindingsGenPath);

        // TODO(kevmoo): Do a more complete cleanup to remove dependency on BCD
        // and webref bits entirely from js_interop_gen tests.
        // run the entrypoint
        final dummyBcdPath = p.relative(
          p.join(outputDir, 'dummy_bcd.json'),
          from: bindingsGenPath,
        );

        await runProc('node', [
          'main.mjs',
          '--input=$inputFilePath',
          '--output=${p.dirname(outFilePath)}',
          '--idl',
          '--bcd-json=$dummyBcdPath',
        ], workingDirectory: bindingsGenPath);

        await File(
          p.join(p.dirname(outputActualPath), '${inputName}_input.dart'),
        ).rename(outputActualPath);

        expectFilesEqual(outputExpectedPath, outputActualPath);
      });

      tearDownAll(() {
        inputDir
            .listSync()
            .whereType<File>()
            .where(
              (f) => p.basenameWithoutExtension(f.path).endsWith('_actual'),
            )
            .forEach((f) => f.deleteSync());
      });
    }
  });
}
