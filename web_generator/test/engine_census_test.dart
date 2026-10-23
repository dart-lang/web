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

    test('Corpus enum classifies webref vs shipping engines', () {
      expect(Corpus.webref.isEngine, isFalse);
      expect(Corpus.engines, [Corpus.blink, Corpus.gecko, Corpus.webkit]);
      for (final engine in Corpus.engines) {
        expect(engine.isEngine, isTrue);
        expect(Corpus.fromName(engine.name), same(engine));
      }
      expect(() => Corpus.fromName('servo'), throwsArgumentError);
    });

    test(
      'GateState and GateRecord combine monotonically (on < unknown < off)',
      () {
        expect(GateState.fromBool(true), GateState.on);
        expect(GateState.fromBool(false), GateState.off);
        expect(GateState.fromBool(null), GateState.unknown);
        expect(GateState.fromName('unknown'), GateState.unknown);
        expect(() => GateState.fromName('experimental'), throwsArgumentError);

        expect(GateState.on.isLive, isTrue);
        expect(GateState.unknown.isLive, isTrue);
        expect(GateState.off.isLive, isFalse);

        expect(GateState.on.combine(GateState.on), GateState.on);
        expect(GateState.on.combine(GateState.unknown), GateState.unknown);
        expect(GateState.unknown.combine(GateState.on), GateState.unknown);
        expect(GateState.unknown.combine(GateState.off), GateState.off);
        expect(GateState.off.combine(GateState.on), GateState.off);

        final ifaceGate = GateRecord.create(
          state: GateState.unknown,
          why: ['Conditional=ENABLE(FOO)'],
        );
        final memberGate = GateRecord.create(
          state: GateState.off,
          why: ['RuntimeEnabled=Bar(test)'],
        );
        final combined = ifaceGate.combine(memberGate);
        expect(combined.state, GateState.off);
        expect(combined.why, [
          'Conditional=ENABLE(FOO)',
          'RuntimeEnabled=Bar(test)',
        ]);
        expect(ifaceGate.state, GateState.unknown);
      },
    );

    test(
      'MemberRecord.copyForMixin deep-copies overloads and merges mixin gating',
      () {
        final orig =
            MemberRecord.operation(
                special: '',
                overloads: [
                  OverloadRecord.create(
                    ret: 'undefined',
                    retRaw: 'undefined',
                    args: [
                      ArgRecord.create(
                        name: 'node',
                        t: 'Node',
                        raw: 'Node',
                        opt: false,
                        varg: false,
                      ),
                    ],
                    gating: GateRecord.on(),
                  ),
                ],
              )
              ..gating = GateRecord.create(
                state: GateState.unknown,
                why: ['Pref=dom.foo'],
              )
              ..file = 'ParentNode.idl';

        final mixinGate = GateRecord.create(
          state: GateState.off,
          why: ['RuntimeEnabled=MixinOff'],
        );
        final copied = orig.copyForMixin('ParentNode', mixinGate);

        expect(copied.viaMixin, 'ParentNode');
        expect(copied.gating.state, GateState.off);
        expect(copied.gating.why, ['RuntimeEnabled=MixinOff', 'Pref=dom.foo']);
        expect(copied.overloads!.single.gating.state, GateState.off);

        // Original remains unmutated.
        expect(orig.viaMixin, isNull);
        expect(orig.gating.state, GateState.unknown);
        expect(orig.overloads!.single.gating.state, GateState.on);
      },
    );

    test(
      'CorpusDoc.lookupMember walks inheritance and combines interface gating',
      () {
        final baseDef = DefRecord.create('interface')
          ..gating = GateRecord.create(
            state: GateState.unknown,
            why: ['Exposed=Window'],
          )
          ..members['animate()'] =
              (MemberRecord.operation(
                  special: '',
                  overloads: [
                    OverloadRecord.create(
                      ret: 'Animation',
                      retRaw: 'Animation',
                      args: [],
                      gating: GateRecord.on(),
                    ),
                  ],
                )
                ..gating = GateRecord.create(
                  state: GateState.off,
                  why: ['Pref=web-animations'],
                ));
        final subDef = DefRecord.create('interface')
          ..inherits = 'Element'
          ..members['focus()'] = (MemberRecord.operation(
            special: '',
            overloads: [],
          )..gating = GateRecord.on());

        final doc = CorpusDoc.create(
          corpus: 'gecko',
          root: '/tmp',
          stats: ParseStats(const {
            'files': 2,
            'filesOk': 2,
            'filesRecovered': 0,
            'defs': 2,
            'defsFailed': 0,
            'errors': <Object?>[],
          }),
          defs: {'Element': baseDef, 'HTMLElement': subDef},
          typedefsRaw: const {},
          notes: const {},
        );

        final direct = doc.lookupMember('HTMLElement', 'focus()')!;
        expect(direct.definingIface, 'HTMLElement');
        expect(direct.inheritedFrom, isNull);
        expect(direct.gate.state, GateState.on);

        expect(
          doc.lookupMember(
            'HTMLElement',
            'animate',
            allowOperationFallback: false,
          ),
          isNull,
        );
        final inherited = doc.lookupMember(
          'HTMLElement',
          'animate',
          allowOperationFallback: true,
        )!;
        expect(inherited.definingIface, 'Element');
        expect(inherited.inheritedFrom, 'Element');
        expect(inherited.gate.state, GateState.off);
        expect(inherited.gate.why, ['Exposed=Window', 'Pref=web-animations']);
      },
    );

    test('normalizeBufferType, looseType, splitUnionType, and memberSignature normalize IDL signatures', () {
      expect(
        normalizeBufferType('(ArrayBuffer or ArrayBufferView)'),
        'BufferSource',
      );
      expect(
        normalizeBufferType('(Uint8Array or DOMString)'),
        '(BufferSource or DOMString)',
      );
      expect(looseType('unrestricted double'), 'double');
      expect(looseType('Promise<USVString>'), 'Promise<DOMString>');
      expect(looseType('void'), 'undefined');
      expect(splitUnionType('(DOMString or sequence<(long or boolean)>)?'), [
        'DOMString',
        'sequence<(long or boolean)>',
        'null',
      ]);

      final attr = MemberRecord.attribute(
        type: 'USVString',
        raw: 'USVString',
        readonly: true,
        special: '',
      )..gating = GateRecord.on();
      expect(memberSignature(attr), 'readonly DOMString');
      expect(memberSignature(attr, strict: true), 'readonly USVString');

      final op = MemberRecord.operation(
        special: '',
        overloads: [
          OverloadRecord.create(
            ret: 'void',
            retRaw: 'void',
            args: [
              ArgRecord.create(
                name: 'x',
                t: '(DOMString or long)',
                raw: '(DOMString or long)',
                opt: false,
                varg: false,
              ),
              ArgRecord.create(
                name: 'y',
                t: 'USVString',
                raw: 'USVString',
                opt: true,
                varg: false,
              ),
            ],
            gating: GateRecord.on(),
          ),
          OverloadRecord.create(
            ret: 'void',
            retRaw: 'void',
            args: [],
            gating: GateRecord.create(state: GateState.off),
          ),
        ],
      )..gating = GateRecord.on();

      expect(
        memberSignature(op),
        'undefined(DOMString) | undefined(DOMString, DOMString) | '
        'undefined(long) | undefined(long, DOMString)',
      );
      expect(
        memberSignature(op, strict: true),
        'void((DOMString or long), optional USVString)',
      );
    });
  });
}
