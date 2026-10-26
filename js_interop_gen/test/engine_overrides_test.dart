// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';

import 'package:js_interop_gen/src/cli.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'test_shared.dart';

void main() {
  group('EngineOverrides AST pre-pass', () {
    late Directory tempDir;
    late String idlPath;
    late String bcdPath;

    const sampleIdl = '''
interface DroppedInterface {
  attribute DOMString ignored;
};

interface mixin SharedScrollMixin {
  readonly attribute long mixinOffset;
  Promise<undefined> mixinAction(long step);
};

dictionary ReportBodyDict {
  USVString documentURL;
  unsigned short statusCode;
};

typedef (unsigned long or bigint) AddressValue;

dictionary SampleInit {
  long clientX = 0;
  unsigned long? length;
};

interface SampleElement {
  readonly attribute DroppedInterface? dropped;
  readonly attribute long clientX;
  attribute AddressValue address;
  Promise<undefined> scroll();
  Promise<undefined> scroll(long x, optional boolean extra);
  Promise<undefined> generateKeyFrame();
};
SampleElement includes SharedScrollMixin;

interface MixinPeer {
};
MixinPeer includes SharedScrollMixin;
''';

    setUpAll(() async {
      await compileBindingsGen();
      tempDir = await Directory.systemTemp.createTemp('engine_overrides_test_');
      idlPath = p.join(tempDir.path, 'sample.idl');
      bcdPath = p.join(tempDir.path, 'dummy_bcd.json');
      await File(idlPath).writeAsString(sampleIdl);
      await File(bcdPath)
          .writeAsString('{"api": {}, "webassembly": {"api": {}}}');
    });

    tearDownAll(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test(
      'applies interface, typedef, property, and operation overrides',
      () async {
        final overridesPath = p.join(tempDir.path, 'valid_overrides.json');
        await File(overridesPath).writeAsString(
          jsonEncode({
            'interfaces': {
              'DroppedInterface': {
                'generate': false,
                'reason': 'Not shipped in >=2 engines.',
              },
              'ReportBodyDict': {
                'generate': true,
                'kind': 'interface',
                'reason': 'Shipped as read-only interface in all 3 engines.',
              },
            },
            'typedefs': {
              'AddressValue': {'type': 'unsigned long', 'nullable': false},
            },
            'properties': {
              'SampleInit.clientX': {'type': 'double', 'nullable': false},
              'SampleInit.length': {
                'type': 'unsigned long',
                'nullable': false,
                'required': true,
              },
              'SampleElement.clientX': {'type': 'double', 'nullable': false},
              'SampleElement.mixinOffset': {
                'type': 'double',
                'nullable': false,
              },
            },
            'operations': {
              'SampleElement.scroll': {
                'returnType': {'type': 'undefined', 'nullable': false},
                'maxParameters': 1,
                'parameters': {
                  '0': {'name': 'coord', 'type': 'double', 'nullable': false},
                },
              },
              'SampleElement.mixinAction': {
                'returnType': {'type': 'undefined', 'nullable': false},
                'parameters': {
                  '0': {'type': 'double', 'nullable': false},
                },
              },
              'SampleElement.generateKeyFrame': {
                'returnType': {
                  'type': 'Promise',
                  'nullable': false,
                  'typeParameter': {
                    'type': 'unsigned long long',
                    'nullable': false,
                  },
                },
              },
            },
          }),
        );

        final outDir = p.join(tempDir.path, 'out_valid');
        await Directory(outDir).create(recursive: true);

        final relOverrides = p.relative(overridesPath, from: bindingsGenPath);
        await runNode([
          'main.mjs',
          '--idl',
          '--input=${p.relative(idlPath, from: bindingsGenPath)}',
          '--output=${p.relative(outDir, from: bindingsGenPath)}',
          '--bcd-json=${p.relative(bcdPath, from: bindingsGenPath)}',
          '--engine-overrides=$relOverrides',
        ], workingDirectory: bindingsGenPath);

        final generated = await File(p.join(outDir, 'sample.dart'))
            .readAsString();
        expect(generated, isNot(contains('DroppedInterface')));
        expect(generated, contains('external JSObject? get dropped;'));
        expect(
          generated,
          contains('extension type ReportBodyDict._(JSObject _)'),
        );
        expect(generated, contains('external String get documentURL;'));
        expect(generated, contains('external int get statusCode;'));
        expect(generated, isNot(contains('set documentURL')));
        expect(generated, isNot(contains('factory ReportBodyDict')));
        expect(generated, contains('typedef AddressValue = int;'));
        expect(
          generated,
          contains(
            'external factory SampleInit({num clientX, required int length});',
          ),
        );
        expect(generated, contains('external double get clientX;'));
        expect(generated, contains('external void scroll([num coord]);'));
        expect(
          generated,
          contains('external JSPromise<JSNumber> generateKeyFrame();'),
        );
        expect(generated, contains('external double get mixinOffset;'));
        expect(generated, contains('external void mixinAction(num step);'));
        // MixinPeer includes the same SharedScrollMixin without overrides, so
        // its mixed-in members must retain their original WebIDL signatures.
        expect(generated, contains('external int get mixinOffset;'));
        expect(
          generated,
          contains('external JSPromise<JSAny?> mixinAction(int step);'),
        );
      },
    );

    test(
      'throws StateError when override targets an interface mixin',
      () async {
        final overridesPath = p.join(tempDir.path, 'mixin_overrides.json');
        await File(overridesPath).writeAsString(
          jsonEncode({
            'properties': {
              'SharedScrollMixin.mixinOffset': {
                'type': 'double',
                'nullable': false,
              },
            },
          }),
        );

        final outDir = p.join(tempDir.path, 'out_mixin_target');
        await Directory(outDir).create(recursive: true);

        final relOverrides = p.relative(overridesPath, from: bindingsGenPath);
        final process = await runNodeWithResult([
          'main.mjs',
          '--idl',
          '--input=${p.relative(idlPath, from: bindingsGenPath)}',
          '--output=${p.relative(outDir, from: bindingsGenPath)}',
          '--bcd-json=${p.relative(bcdPath, from: bindingsGenPath)}',
          '--engine-overrides=$relOverrides',
        ], workingDirectory: bindingsGenPath);

        final stderr = (await process.stderr.transform(utf8.decoder).toList())
            .join();
        expect(await process.exitCode, isNot(0));
        expect(
          stderr,
          contains('cannot target interface mixin "SharedScrollMixin"'),
        );
      },
    );

    test('throws StateError on stale override', () async {
      final overridesPath = p.join(tempDir.path, 'stale_overrides.json');
      await File(overridesPath).writeAsString(
        jsonEncode({
          'properties': {
            'SampleElement.nonExistent': {'type': 'double', 'nullable': false},
          },
        }),
      );

      final outDir = p.join(tempDir.path, 'out_stale');
      await Directory(outDir).create(recursive: true);

      final relOverrides = p.relative(overridesPath, from: bindingsGenPath);
      final process = await runNodeWithResult([
        'main.mjs',
        '--idl',
        '--input=${p.relative(idlPath, from: bindingsGenPath)}',
        '--output=${p.relative(outDir, from: bindingsGenPath)}',
        '--bcd-json=${p.relative(bcdPath, from: bindingsGenPath)}',
        '--engine-overrides=$relOverrides',
      ], workingDirectory: bindingsGenPath);

      final stderr = (await process.stderr.transform(utf8.decoder).toList())
          .join();
      expect(await process.exitCode, isNot(0));
      expect(
        stderr,
        contains('Stale engine overrides in engine_overrides.json'),
      );
      expect(stderr, contains('properties.SampleElement.nonExistent'));
    });

    test('throws StateError on redundant override', () async {
      final overridesPath = p.join(tempDir.path, 'redundant_overrides.json');
      await File(overridesPath).writeAsString(
        jsonEncode({
          'interfaces': {
            'SampleElement': {'generate': true, 'kind': 'interface'},
          },
          'properties': {
            'SampleElement.clientX': {'type': 'long', 'nullable': false},
          },
          'operations': {
            'SampleElement.generateKeyFrame': {'maxParameters': 0},
          },
        }),
      );

      final outDir = p.join(tempDir.path, 'out_redundant');
      await Directory(outDir).create(recursive: true);

      final relOverrides = p.relative(overridesPath, from: bindingsGenPath);
      final process = await runNodeWithResult([
        'main.mjs',
        '--idl',
        '--input=${p.relative(idlPath, from: bindingsGenPath)}',
        '--output=${p.relative(outDir, from: bindingsGenPath)}',
        '--bcd-json=${p.relative(bcdPath, from: bindingsGenPath)}',
        '--engine-overrides=$relOverrides',
      ], workingDirectory: bindingsGenPath);

      final stderr = (await process.stderr.transform(utf8.decoder).toList())
          .join();
      expect(await process.exitCode, isNot(0));
      expect(
        stderr,
        contains('Redundant engine overrides in engine_overrides.json'),
      );
      expect(stderr, contains('interfaces.SampleElement'));
      expect(stderr, contains('properties.SampleElement.clientX'));
      expect(stderr, contains('operations.SampleElement.generateKeyFrame'));
    });

    test('throws StateError on unknown override type', () async {
      final overridesPath = p.join(tempDir.path, 'unknown_type_overrides.json');
      await File(overridesPath).writeAsString(
        jsonEncode({
          'properties': {
            'SampleElement.clientX': {
              'type': 'UnknownIdlType',
              'nullable': false,
            },
          },
        }),
      );

      final outDir = p.join(tempDir.path, 'out_unknown_type');
      await Directory(outDir).create(recursive: true);

      final relOverrides = p.relative(overridesPath, from: bindingsGenPath);
      final process = await runNodeWithResult([
        'main.mjs',
        '--idl',
        '--input=${p.relative(idlPath, from: bindingsGenPath)}',
        '--output=${p.relative(outDir, from: bindingsGenPath)}',
        '--bcd-json=${p.relative(bcdPath, from: bindingsGenPath)}',
        '--engine-overrides=$relOverrides',
      ], workingDirectory: bindingsGenPath);

      final stderr = (await process.stderr.transform(utf8.decoder).toList())
          .join();
      expect(await process.exitCode, isNot(0));
      expect(stderr, contains('Unknown IDL override type: UnknownIdlType'));
    });
  });
}
