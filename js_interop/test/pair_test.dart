// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

void main() {
  late JSPair<JSNumber, JSString> pair;
  setUp(() {
    pair = JSPair(1.toJS, "foo".toJS);
  });

  test("\$1 returns the first element", () => expect(pair.$1, equals(1.toJS)));

  test("\$1= sets the first element", () {
    pair.$1 = 2.toJS;
    expect(pair.$1, equals(2.toJS));
  });

  test(
    "\$2 returns the second element",
    () => expect(pair.$2, equals("foo".toJS)),
  );

  test("\$2= sets the second element", () {
    pair.$2 = "bar".toJS;
    expect(pair.$2, equals("bar".toJS));
  });

  test(
    "toDart returns a Dart record",
    () => expect(pair.toDart, equals((1.toJS, "foo".toJS))),
  );

  test("toArray returns a JS array", () {
    var array = pair.toArray;
    expect(array[0], equals(1.toJS));
    expect(array[1], equals("foo".toJS));
    expect(array.length, equals(2));

    // Array should be a copy
    array[0] = 2.toJS;
    expect(pair.$1, equals(1.toJS));
  });

  test("Record.toJS returns a JSPair", () {
    var pair = (2.toJS, "bar".toJS).toJS;
    expect(pair.$1, equals(2.toJS));
    expect(pair.$2, equals("bar".toJS));
  });
}
