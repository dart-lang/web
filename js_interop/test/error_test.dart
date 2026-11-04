// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

const isJSBackend = const bool.fromEnvironment('dart.library.html');

void main() {
  group("can construct a", () {
    test(
      "JSEvalError",
      () => expect(JSEvalError("oh no").isA<JSError>(), isTrue),
    );

    test(
      "JSRangeError",
      () => expect(JSRangeError("oh no").isA<JSError>(), isTrue),
    );

    test(
      "JSReferenceError",
      () => expect(JSReferenceError("oh no").isA<JSError>(), isTrue),
    );

    test(
      "JSSyntaxError",
      () => expect(JSSyntaxError("oh no").isA<JSError>(), isTrue),
    );

    test(
      "JSTypeError",
      () => expect(JSTypeError("oh no").isA<JSError>(), isTrue),
    );

    test(
      "JSURIError",
      () => expect(JSURIError("oh no").isA<JSError>(), isTrue),
    );

    test(
      "JSAggregateError",
      () => expect(JSAggregateError(["oh no"].toJS).isA<JSError>(), isTrue),
    );
  });

  group("toDart", () {
    late JSError jsError;
    late WrappedJSError error;
    setUp(() {
      jsError = JSError('foo');
      JSError.captureStackTrace(jsError);
      error = jsError.toDart;
    });

    test("is an Error", () => expect(error, isA<Error>()));

    test(
      "has a useful toString()",
      () => expect(error.toString(), equals('foo')),
    );

    test(
      "has a useful stack trace",
      () => expect(error.stackTrace.toString(), equals(jsError.stack)),
    );
  });

  test("throwLikeDart() throws a Dart error with a useful stack", () {
    var jsError = JSError('foo');
    JSError.captureStackTrace(jsError);
    try {
      jsError.throwLikeDart();
      fail("Expected an error");
    } catch (error, stack) {
      expect(error, isA<Error>());
      expect(stack.toString(), equals(jsError.stack));
    }
  });

  group("toJS", () {
    test("for WrappedJSError returns the original error", () {
      var jsError = JSError('foo');
      expect(jsError.toDart.toJS, equals(jsError));
    });

    test("for a Dart Error returns a wrapper", () {
      var dartError = ArgumentError('foo');
      var jsError = dartError.toJS;
      expect(jsError.toString(), contains('foo'));
      expect((jsError.cause as JSBoxedDartObject).toDart, equals(dartError));
    });

    test("for a Dart Exception returns a wrapper", () {
      var dartError = Exception('foo');
      var jsError = dartError.toJS;
      expect(jsError.toString(), contains('foo'));
      expect((jsError.cause as JSBoxedDartObject).toDart, equals(dartError));
    });
  });
}
