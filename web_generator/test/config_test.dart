@TestOn('vm')
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/config.dart';
import 'package:yaml/yaml.dart';

final configurationTests = {
  'basic': {
    'name': 'IDL Demo Gen',
    'single': true,
    'input': ['intro.d.ts'],
    'valid': true
  },
  'multi_file': {
    'name': 'Nanoid and Lodash',
    'single': false,
    'input': ['nanoid.d.ts', 'lodash.d.ts'],
    'valid': true
  },
  'invalid': {'valid': false},
  'invalid_output': {'valid': false}
};

void main() {
  group('Configuration Test', () {
    group('YAML Config Test', () {
      final assetsDir = p.join('test', 'assets');

      final assets = Directory(assetsDir);

      for (final file in assets.listSync().whereType<File>().where((f) =>
          p.basenameWithoutExtension(f.path).endsWith('_config') &&
          p.extension(f.path) == '.yaml')) {
        final fileName =
            p.basenameWithoutExtension(file.path).replaceFirst('_config', '');
        final fileContents = file.readAsStringSync();
        final configTest = configurationTests[fileName];

        if (configTest == null) continue;

        test(fileName, () {
          final yaml = loadYamlDocument(fileContents);

          if (configTest.containsKey('valid') && configTest['valid'] == false) {
            expect(
                () => YamlConfig.fromYaml(yaml.contents as YamlMap,
                    filename: p.basename(file.path)),
                throwsA(isA<TypeError>()));
          } else {
            // validate
            final config = YamlConfig.fromYaml(yaml.contents as YamlMap,
                filename: p.basename(file.path));

            expect(config.name, equals(configTest['name']));
            expect(config.input, equals(configTest['input']));
            expect(config.singleFileOutput, equals(configTest['single']));
          }
        });
      }
    });
  });
}
