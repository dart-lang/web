// ignore_for_file: avoid_dynamic_calls
@TestOn('node')
library;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'package:test/test.dart';
import 'api_kitchen_sink.dart';

@JS('eval')
external JSPromise jsEvalAndReturnPromise(String code);

@JS('commands')
external JSObject get commandsObj;

void main() {
  setUpAll(() async {
    // Load the compiled JS module dynamically and bind exports to globalThis.
    final promise = jsEvalAndReturnPromise('''
      (async () => {
        const path = 'file://' + process.cwd() + '/test/integration/e2e/api_kitchen_sink.js';
        const m = await import(path);
        globalThis.greet = m.greet;
        globalThis.Vector = m.Vector;
        globalThis.Notifier = m.Notifier;
        globalThis.Logger = m.Logger;
        globalThis.AsyncCalculator = m.AsyncCalculator;
        globalThis.commands = m.commands;
        globalThis.Layout = m.Layout;
        globalThis.Severity = m.Severity;
        globalThis.Alignment = m.Alignment;
        globalThis.Component = m.Component;
        globalThis.Response = m.Response;
        globalThis.EventEmitter = m.EventEmitter;
      })()
    ''');
    await promise.toDart;
  });

  group('Dart E2E Kitchen Sink Tests (Phase 2)', () {
    test('Vector Constructor & Method Overloads', () {
      // Standard constructor
      final v1 = Vector(2, 3);

      // Scale with factor
      final v2 = v1.scale(2);
      expect(v2.x, equals(4));
      expect(v2.y, equals(6));
      expect(v2.toString$(), equals('Vector(4, 6)'));

      // Overloaded constructor taking anonymous type coordinate struct
      final coord = AnonymousType_2712334(x: 10.0, y: 20.0);
      final vOverload1 = Vector.$1(coord);
      expect(vOverload1.x, equals(10));
      expect(vOverload1.y, equals(20));

      // Overloaded scale method
      final vOverload2 = vOverload1.scale$1(2, 3);
      expect(vOverload2.x, equals(20));
      expect(vOverload2.y, equals(60));
    });

    test('Callback and Notifier', () {
      final notifier = Notifier();
      String? received;

      final callback =
          ((JSString msg) {
                received = msg.toDart;
              }).toJS
              as Callback;

      notifier.subscribe(callback);
      notifier.notify('Hello Dart E2E!');
      expect(received, equals('Hello Dart E2E!'));
    });

    test('Logger and Union Types', () {
      final logger = Logger();
      final v1 = Vector(2, 3);

      final log1 = logger.log('string_msg'.toJS as LogInput);
      expect(log1, equals('Log: string_msg'));
      expect(logger.lastLog, equals('Log: string_msg'));

      final log2 = logger.log(v1 as LogInput);
      expect(log2, equals('Log: Vector(2, 3)'));
      expect(logger.lastLog, equals('Log: Vector(2, 3)'));
    });

    test('Async calculator delay', () async {
      final calc = AsyncCalculator();
      final start = DateTime.now();
      final resPromise = calc.delay(50);
      final res = await resPromise.toDart;
      expect(res.toDart, equals('Done'));
      final elapsed = DateTime.now().difference(start).inMilliseconds;
      expect(elapsed, greaterThanOrEqualTo(40));
    });

    test('Namespace / Sub-module Nesting (commands)', () {
      var triggered = false;
      final cb = (() {
        triggered = true;
      }).toJS;

      // Use callMethod from dart:js_interop_unsafe on the global commandsObj
      // to invoke 'register' dynamically, bypassing the private type
      // signature checks.
      commandsObj.callMethod('register'.toJS, 'test.cmd'.toJS, cb);
      commands.execute('test.cmd');
      expect(triggered, isTrue);
    });

    test('Size Union Types & Layout configs', () {
      final layoutNum = Layout(100.toJS as Size);
      expect(layoutNum.size.asDouble, equals(100));
      expect(layoutNum.getPixelValue(), equals(100));
      expect(layoutNum.isAuto(), isFalse);

      final layoutAuto = Layout('auto'.toJS as Size);
      expect(layoutAuto.size.asString, equals('auto'));
      expect(layoutAuto.getPixelValue(), equals(0));
      expect(layoutAuto.isAuto(), isTrue);

      final layoutFull = Layout('full'.toJS as Size);
      expect(layoutFull.size.asString, equals('full'));
      expect(layoutFull.isFull(), isTrue);
    });

    test('Enums mapping (Severity & Alignment)', () {
      final comp = Component(Severity.Error, Alignment.Right);
      expect(comp.severity, equals(Severity.Error));
      expect(comp.alignment, equals(Alignment.Right));

      expect(comp.getSeverityString(), equals('ERROR'));
      expect(comp.getAlignmentNumber(), equals(2));
    });

    test('Bounded Generics (Response)', () {
      final v1 = Vector(2, 3);
      final resp = Response(v1);
      expect(resp.data.x, equals(2));
      expect(resp.data.y, equals(3));

      final vData = resp.getData();
      expect(vData.x, equals(2));
      expect(vData.y, equals(3));
    });

    test('Events & Disposables lifecycle', () {
      final emitter = EventEmitter<JSString>();
      String? eventReceived;

      final listener = ((JSString e) {
        eventReceived = e.toDart;
      }).toJS;

      // Cast emitter.event to dynamic to invoke it as a direct
      // JS function call, bypassing Function.prototype.call issues.
      final sub = (emitter.event as dynamic)(listener as dynamic) as Disposable;

      emitter.fire('Event triggered'.toJS);
      expect(eventReceived, equals('Event triggered'));

      sub.dispose();
      emitter.fire('Another trigger'.toJS);
      expect(eventReceived, equals('Event triggered')); // does not change
    });

    test('Optional Parameters (greet)', () {
      expect(greet('John'), equals('Hello John'));
      expect(greet('John', 'Welcome'), equals('Welcome John'));
    });
  });
}
