// ignore_for_file: avoid_dynamic_calls
@TestOn('node')
library;

import 'dart:js_interop';
import 'package:test/test.dart';
import 'api_kitchen_sink.dart';

@JS('eval')
external JSPromise jsEvalAndReturnPromise(String code);

void main() {
  setUpAll(() async {
    // Load the compiled JS module dynamically and bind exports to globalThis.
    // We resolve the absolute path dynamically using process.cwd().
    final promise = jsEvalAndReturnPromise('''
      (async () => {
        const path = 'file://' + process.cwd() + '/test/integration/e2e/api_kitchen_sink.js';
        const m = await import(path);
        globalThis.Vector = m.Vector;
        globalThis.Notifier = m.Notifier;
        globalThis.Logger = m.Logger;
        globalThis.AsyncCalculator = m.AsyncCalculator;
      })()
    ''');
    await promise.toDart;
  });

  group('Dart E2E Kitchen Sink Tests', () {
    test('Vector Scale and Add', () {
      final v1 = Vector(2, 3);
      final v2 = v1.scale(2);
      expect(v2.x, equals(4));
      expect(v2.y, equals(6));
      expect(v2.toString$(), equals('Vector(4, 6)'));

      final v3 = v1.add(v2);
      expect(v3.x, equals(6));
      expect(v3.y, equals(9));
    });

    test('Callback and Notifier', () {
      final notifier = Notifier();
      String? received;
      
      // We use a standard JS interop function wrapper
      final callback = ((JSString msg) {
        received = msg.toDart;
      }).toJS as Callback;

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
  });
}
