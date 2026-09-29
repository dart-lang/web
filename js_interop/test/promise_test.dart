// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:async';
import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

void main() {
  group('catchError', () {
    test(
      'resolved',
      () => expect(
        Future.value('oh yeah'.toJS).toJS
            .catchError(
              expectAsync1((JSAny? _) => 'aw beans'.toJS, count: 0).toJS,
            )
            .toDart,
        completion(equals('oh yeah'.toJS)),
      ),
    );

    test(
      'rejected',
      () => expect(
        Future.error('oh no').toJS
            .catchError(expectAsync1((JSAny? _) => 'aw beans'.toJS).toJS)
            .toDart,
        completion(equals('aw beans'.toJS)),
      ),
    );
  });

  group('finallyCall', () {
    test(
      'resolved',
      () => expect(
        Future.value('oh yeah'.toJS).toJS
            .finallyCall(expectAsync0(() {}).toJS)
            .toDart,
        completion(equals('oh yeah'.toJS)),
      ),
    );

    test(
      'rejected',
      () => expect(
        Future.error('oh no').toJS.finallyCall(expectAsync0(() {}).toJS).toDart,
        throwsA(anything),
      ),
    );
  });

  group('then', () {
    test(
      'resolved',
      () => expect(
        Future.value('oh yeah'.toJS).toJS
            .then(
              expectAsync1(
                Zone.current.bindUnaryCallback((JSString value) {
                  expect(value, equals('oh yeah'.toJS));
                  return 1.toJS;
                }),
              ).toJS,
            )
            .toDart,
        completion(equals(1.toJS)),
      ),
    );

    group('rejected', () {
      test(
        'without onRejected',
        () => expect(
          Future.error('oh no').toJS
              .then(expectAsync1((JSAny? _) => 1.toJS, count: 0).toJS)
              .toDart,
          throwsA(anything),
        ),
      );

      test(
        'with onRejected',
        () => expect(
          Future.error('oh no').toJS
              .then(
                expectAsync1((JSAny? _) => 1.toJS, count: 0).toJS,
                expectAsync1((JSAny? _) => 2.toJS).toJS,
              )
              .toDart,
          completion(equals(2.toJS)),
        ),
      );
    });
  });
}
