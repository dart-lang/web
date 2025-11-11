// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

final Matcher _isDate = predicate(
  (jsDate) => jsDate is JSObject && jsDate.isA<JSDate>(),
  "is a JSDate",
);

void main() {
  group('constructors', () {
    test('nowAsDate', () => expect(JSDate.nowAsDate(), _isDate));

    test(
      'fromMillisecondsSinceEpoch',
      () => expect(JSDate.fromMillisecondsSinceEpoch(1234567890), _isDate),
    );

    test(
      'parseAsDate',
      () => expect(JSDate.parseAsDate("11 Nov 2025"), _isDate),
    );

    test('from', () => expect(JSDate.from(JSDate.nowAsDate()), _isDate));

    group('localDate', () {
      test(
        'with no optional args',
        () => expect(JSDate.localDate(2025, 11), _isDate),
      );

      test(
        'with all optional args',
        () => expect(JSDate.localDate(2025, 11, 11, 12, 2, 15, 120), _isDate),
      );
    });

    group('utcDate', () {
      test(
        'with no optional args',
        () => expect(JSDate.utcDate(2025, 11), _isDate),
      );

      test(
        'with one optional arg',
        () => expect(JSDate.utcDate(2025, 11, 11), _isDate),
      );

      test(
        'with two optional args',
        () => expect(JSDate.utcDate(2025, 11, 11, 12), _isDate),
      );

      test(
        'with three optional args',
        () => expect(JSDate.utcDate(2025, 11, 11, 12, 2), _isDate),
      );

      test(
        'with four optional arg',
        () => expect(JSDate.utcDate(2025, 11, 11, 12, 2, 15), _isDate),
      );

      test(
        'with all optional args',
        () => expect(JSDate.utcDate(2025, 11, 11, 12, 2, 15, 120), _isDate),
      );
    });
  });

  group('static', () {
    test(
      'nowAsMillisecondsSinceEpoch',
      () => expect(JSDate.nowAsMillisecondsSinceEpoch(), isA<int>()),
    );

    test(
      'parseAsMillisecondsSinceEpoch',
      () => expect(
        JSDate.parseAsMillisecondsSinceEpoch("11 Nov 2025"),
        isA<int>(),
      ),
    );

    group('utcAsMillisecondsSinceEpoch', () {
      test(
        'with no optional args',
        () => expect(JSDate.utcAsMillisecondsSinceEpoch(2025, 11), isA<int>()),
      );

      test(
        'with all optional args',
        () => expect(
          JSDate.utcAsMillisecondsSinceEpoch(2025, 11, 11, 12, 2, 15, 120),
          isA<int>(),
        ),
      );
    });
  });

  group('instance', () {
    late JSDate date;
    setUp(() => date = JSDate.nowAsDate());

    test('date', () {
      date.date = 12;
      expect(date.date, equals(12));
    });

    test('day', () => expect(date.day, isA<int>()));

    test('fullYear', () {
      date.fullYear = 2026;
      expect(date.fullYear, equals(2026));
    });

    test('hours', () {
      date.hours = 13;
      expect(date.hours, equals(13));
    });

    test('milliseconds', () {
      date.milliseconds = 123;
      expect(date.milliseconds, equals(123));
    });

    test('minutes', () {
      date.minutes = 5;
      expect(date.minutes, equals(5));
    });

    test('month', () {
      date.month = 1;
      expect(date.month, equals(1));
    });

    test('seconds', () {
      date.seconds = 5;
      expect(date.seconds, equals(5));
    });

    test('time', () {
      date.time = 1234567890;
      expect(date.time, equals(1234567890));
    });

    test('timezoneOffset', () => expect(date.timezoneOffset, isA<int>()));

    test('utcDate', () {
      date.utcDate = 12;
      expect(date.utcDate, equals(12));
    });

    test('utcFullYear', () {
      date.utcFullYear = 2026;
      expect(date.utcFullYear, equals(2026));
    });

    test('utcHours', () {
      date.utcHours = 13;
      expect(date.utcHours, equals(13));
    });

    test('utcMilliseconds', () {
      date.utcMilliseconds = 123;
      expect(date.utcMilliseconds, equals(123));
    });

    test('utcMinutes', () {
      date.utcMinutes = 5;
      expect(date.utcMinutes, equals(5));
    });

    test('utcMonth', () {
      date.utcMonth = 1;
      expect(date.utcMonth, equals(1));
    });

    test('utcSeconds', () {
      date.utcSeconds = 5;
      expect(date.utcSeconds, equals(5));
    });

    test('toDateString', () => expect(date.toDateString(), isA<String>()));

    test('toIsoString:', () => expect(date.toIsoString(), isA<String>()));

    test('toTimeString:', () => expect(date.toTimeString(), isA<String>()));

    test('toUtcString:', () => expect(date.toUtcString(), isA<String>()));

    test('toDart', () {
      var dartDate = date.toDart;
      expect(dartDate, isA<DateTime>());
      expect(dartDate.timeZoneName, equals(DateTime.now().timeZoneName));
    });

    test('toDartUtc', () {
      var dartDate = date.toDartUtc;
      expect(dartDate, isA<DateTime>());
      expect(dartDate.timeZoneName, equals("UTC"));
    });

    test('from Dart', () => expect(DateTime.now().toJS, _isDate));
  });
}
