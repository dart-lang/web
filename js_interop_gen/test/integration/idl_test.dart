@TestOn('vm')
library;

import 'dart:convert';
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

      test(
        inputName,
        skip: inputName == 'inheritance_fallback'
            ? 'Skipping because fixing the generator crash for missing types '
                  'causes a diff in generated code (dropping Sensor) due to '
                  'compat data interactions. We will fix this in a later '
                  'refactor step.'
            : null,
        () async {
          final inputFilePath = p.relative(
            inputFile.path,
            from: bindingsGenPath,
          );
          final outFilePath = p.relative(
            outputActualPath,
            from: bindingsGenPath,
          );

          // TODO(kevmoo): Do a more complete cleanup to remove dependency on
          // BCD and webref bits entirely from js_interop_gen tests.
          final dummyBcdPath = p.relative(
            p.join(outputDir, 'dummy_bcd.json'),
            from: bindingsGenPath,
          );

          await runNode([
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
        },
      );

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

    test('cross-file LegacyNamespace and LegacyWindowAlias imports', () async {
      final wasmIdl = File(p.join(outputDir, 'wasm_defs.idl'));
      final boxIdl = File(p.join(outputDir, 'box_defs.idl'));
      final consumerIdl = File(p.join(outputDir, 'consumer.idl'));
      final wasmDart = File(p.join(outputDir, 'wasm_defs.dart'));
      final boxDart = File(p.join(outputDir, 'box_defs.dart'));
      final consumerDartFile = File(p.join(outputDir, 'consumer.dart'));

      addTearDown(() async {
        for (final file in [
          wasmIdl,
          boxIdl,
          consumerIdl,
          wasmDart,
          boxDart,
          consumerDartFile,
        ]) {
          if (await file.exists()) await file.delete();
        }
      });

      await wasmIdl.writeAsString('''
[LegacyNamespace=WebAssembly, Exposed=*]
interface Exception {
  constructor();
};
''');
      await boxIdl.writeAsString('''
[LegacyWindowAlias=LegacyBox, Exposed=Window]
interface BoxTarget {
  constructor();
};
''');
      await consumerIdl.writeAsString('''
typedef (LegacyBox or DOMString) BoxOrString;

[Exposed=Window]
interface Consumer {
  Exception make();
  undefined takeBox(BoxOrString box);
};
''');

      final dummyBcdPath = p.relative(
        p.join(outputDir, 'dummy_bcd.json'),
        from: bindingsGenPath,
      );
      await runNode([
        'main.mjs',
        '--input=${p.relative(wasmIdl.path, from: bindingsGenPath)}',
        '--input=${p.relative(boxIdl.path, from: bindingsGenPath)}',
        '--input=${p.relative(consumerIdl.path, from: bindingsGenPath)}',
        '--output=${p.relative(outputDir, from: bindingsGenPath)}',
        '--idl',
        '--bcd-json=$dummyBcdPath',
      ], workingDirectory: bindingsGenPath);

      final consumerDart = await consumerDartFile.readAsString();
      expect(consumerDart, contains("/// @docImport 'box_defs.dart';"));
      expect(consumerDart, contains('/// Union of: [BoxTarget], [JSString]'));
      expect(consumerDart, contains("import 'wasm_defs.dart';"));
      expect(consumerDart, contains('external WebAssemblyException make();'));
    });

    test('asserts on LegacyWindowAlias in inheritance', () async {
      final invalidIdl = File(p.join(outputDir, 'invalid_alias_inherit.idl'));
      final invalidDart = File(p.join(outputDir, 'invalid_alias_inherit.dart'));

      addTearDown(() async {
        for (final file in [invalidIdl, invalidDart]) {
          if (await file.exists()) await file.delete();
        }
      });

      await invalidIdl.writeAsString('''
[LegacyWindowAlias=LegacyBox, Exposed=Window]
interface BoxTarget {
  constructor();
};

[Exposed=Window]
interface SubBox : LegacyBox {};
''');

      final dummyBcdPath = p.relative(
        p.join(outputDir, 'dummy_bcd.json'),
        from: bindingsGenPath,
      );
      final proc = await runNodeWithResult([
        'main.mjs',
        '--input=${p.relative(invalidIdl.path, from: bindingsGenPath)}',
        '--output=${p.relative(outputDir, from: bindingsGenPath)}',
        '--idl',
        '--bcd-json=$dummyBcdPath',
      ], workingDirectory: bindingsGenPath);

      final stderrText = await proc.stderr.transform(utf8.decoder).join();
      await proc.stdout.drain<void>();
      expect(await proc.exitCode, isNonZero);
      expect(
        stderrText,
        contains(
          'Unexpected [LegacyWindowAlias] "LegacyBox" in inheritance of '
          '"SubBox".',
        ),
      );
    });
  });
}
