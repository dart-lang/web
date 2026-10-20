// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:web_generator/src/engine_census.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('engine_census', () {
    test(
      'evalCExpr evaluates C preprocessor boolean and relational expressions',
      () {
        expect(evalCExpr('1 && (0 || 1)'), isTrue);
        expect(evalCExpr('!0 && 260000 >= 140000'), isTrue);
        expect(evalCExpr('260000 < 140000 || 0'), isFalse);
        expect(evalCExpr('(1 | 0) & 1'), isTrue);
        expect(evalCExpr('100000U == 100000L'), isTrue);
      },
    );

    test('preprocessIdl handles #ifdef, #ifndef, #if, #elif, and #else', () {
      const src = '''
#ifdef FOO
interface Foo {};
#elif defined(BAR) && !defined(BAZ)
interface Bar {};
#else
interface Fallback {};
#endif
''';
      expect(preprocessIdl(src, {'FOO'}).trim(), equals('interface Foo {};'));
      expect(preprocessIdl(src, {'BAR'}).trim(), equals('interface Bar {};'));
      expect(
        preprocessIdl(src, {'BAR', 'BAZ'}).trim(),
        equals('interface Fallback {};'),
      );
    });

    test(
      'dedupeYamlListKeys strips duplicate keys within a YAML list item',
      () {
        const rawYaml = '''
- name: network.lna.address_space.public.override
  type: String
  type: String
  value: ""
- name: dom.webaudio.enabled
  type: bool
  value: true
''';
        final cleaned = dedupeYamlListKeys(rawYaml);
        final parsed = loadYaml(cleaned) as YamlList;
        expect(parsed, hasLength(2));
        expect(
          (parsed[0] as YamlMap)['name'],
          'network.lna.address_space.public.override',
        );
        expect((parsed[1] as YamlMap)['value'], isTrue);
      },
    );
  });
}
