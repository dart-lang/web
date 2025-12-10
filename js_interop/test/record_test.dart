// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

void main() {
  late JSRecord<JSNumber> record;
  setUp(() => record = {"foo": 1.toJS, "bar": 2.toJS}.toJSRecord);

  test(
    "pairs",
    () => expect(record.pairs, equals([("foo", 1.toJS), ("bar", 2.toJS)])),
  );

  test("entries", () {
    var entries = record.entries.toList();
    expect(entries.length, equals(2));
    expect(entries[0].key, equals("foo"));
    expect(entries[0].value, equals(1.toJS));
    expect(entries[1].key, equals("bar"));
    expect(entries[1].value, equals(2.toJS));
  });

  test("isEmpty", () {
    expect(record.isEmpty, isFalse);
    expect(JSRecord().isEmpty, isTrue);
  });

  test("isNotEmpty", () {
    expect(record.isNotEmpty, isTrue);
    expect(JSRecord().isNotEmpty, isFalse);
  });

  test("keys", () => expect(record.keys, equals(["foo", "bar"])));

  test("length", () => expect(record.length, equals(2)));

  test("values", () => expect(record.values, equals([1.toJS, 2.toJS])));

  test(
    "toDart",
    () => expect(record.toDart, equals({"foo": 1.toJS, "bar": 2.toJS})),
  );

  test("JSRecord()", () => expect(JSRecord().toDart, equals({})));

  test(
    "JSRecord.ofRecord()",
    () => expect(
      JSRecord.ofRecord(record).toDart,
      equals({"foo": 1.toJS, "bar": 2.toJS}),
    ),
  );

  test(
    "JSRecord.ofMap()",
    () => expect(
      JSRecord.ofMap({"foo": 1.toJS, "bar": 2.toJS}).toDart,
      equals({"foo": 1.toJS, "bar": 2.toJS}),
    ),
  );

  test(
    "JSRecord.fromEntries()",
    () => expect(
      JSRecord.fromEntries([
        MapEntry("foo", 1.toJS),
        MapEntry("bar", 2.toJS),
      ]).toDart,
      equals({"foo": 1.toJS, "bar": 2.toJS}),
    ),
  );

  test(
    "JSRecord.fromPairs()",
    () => expect(
      JSRecord.fromPairs([("foo", 1.toJS), ("bar", 2.toJS)]).toDart,
      equals({"foo": 1.toJS, "bar": 2.toJS}),
    ),
  );

  test("addAll()", () {
    record.addAll({"bar": 3.toJS, "baz": 4.toJS});
    expect(
      record.toDart,
      equals({"foo": 1.toJS, "bar": 3.toJS, "baz": 4.toJS}),
    );
  });

  test("addAllRecord()", () {
    record.addAllRecord({"bar": 3.toJS, "baz": 4.toJS}.toJSRecord);
    expect(
      record.toDart,
      equals({"foo": 1.toJS, "bar": 3.toJS, "baz": 4.toJS}),
    );
  });

  test("addEntries()", () {
    record.addEntries([MapEntry("bar", 3.toJS), MapEntry("baz", 4.toJS)]);
    expect(
      record.toDart,
      equals({"foo": 1.toJS, "bar": 3.toJS, "baz": 4.toJS}),
    );
  });

  test("addPairs()", () {
    record.addPairs([("bar", 3.toJS), ("baz", 4.toJS)]);
    expect(
      record.toDart,
      equals({"foo": 1.toJS, "bar": 3.toJS, "baz": 4.toJS}),
    );
  });

  test("addPairs()", () {
    record.clear();
    expect(record.toDart, equals({}));
  });

  test("containsKey()", () {
    expect(record.containsKey("foo"), isTrue);
    expect(record.containsKey("baz"), isFalse);
  });

  test("forEach()", () {
    var args = <(String, JSNumber)>[];
    record.forEach(
      expectAsync2((key, value) {
        args.add((key, value));
      }, count: 2),
    );
    expect(args, equals([("foo", 1.toJS), ("bar", 2.toJS)]));
  });

  test(
    "map()",
    () => expect(
      record.map((key, value) => MapEntry("_$key", (value.toDartInt + 1).toJS)),
      equals({"_foo": 2.toJS, "_bar": 3.toJS}),
    ),
  );

  group("putIfAbsent()", () {
    test("present key", () {
      expect(
        record.putIfAbsent("foo", expectAsync0(() => 0.toJS, count: 0)),
        equals(1.toJS),
      );
      expect(record.toDart, equals({"foo": 1.toJS, "bar": 2.toJS}));
    });

    test("absent key", () {
      expect(
        record.putIfAbsent("baz", expectAsync0(() => 0.toJS)),
        equals(0.toJS),
      );
      expect(
        record.toDart,
        equals({"foo": 1.toJS, "bar": 2.toJS, "baz": 0.toJS}),
      );
    });
  });

  group("remove()", () {
    test("present key", () {
      expect(record.remove("foo"), equals(1.toJS));
      expect(record.toDart, equals({"bar": 2.toJS}));
    });

    test("absent key", () {
      expect(record.remove("baz"), isNull);
      expect(record.toDart, equals({"foo": 1.toJS, "bar": 2.toJS}));
    });
  });

  test("removeWhere()", () {
    record.removeWhere((key, _) => key.startsWith("f"));
    expect(record.toDart, equals({"bar": 2.toJS}));
  });

  group("update()", () {
    group("no ifAbsent()", () {
      test("present key", () {
        expect(
          record.update(
            "foo",
            expectAsync1((value) => (value.toDartInt + 1).toJS),
          ),
          equals(2.toJS),
        );
        expect(record.toDart, equals({"foo": 2.toJS, "bar": 2.toJS}));
      });

      test(
        "absent key",
        () => expect(
          () => record.update("baz", expectAsync1((_) => 0.toJS, count: 0)),
          throwsArgumentError,
        ),
      );
    });

    group("with ifAbsent()", () {
      test("present key", () {
        expect(
          record.update(
            "foo",
            expectAsync1((value) => (value.toDartInt + 1).toJS),
            ifAbsent: expectAsync0(() => 0.toJS, count: 0),
          ),
          equals(2.toJS),
        );
        expect(record.toDart, equals({"foo": 2.toJS, "bar": 2.toJS}));
      });

      test("absent key", () {
        expect(
          record.update(
            "baz",
            expectAsync1((_) => 0.toJS, count: 0),
            ifAbsent: expectAsync0(() => 0.toJS),
          ),
          equals(0.toJS),
        );
        expect(
          record.toDart,
          equals({"foo": 1.toJS, "bar": 2.toJS, "baz": 0.toJS}),
        );
      });
    });
  });

  test("updateAll()", () {
    record.updateAll(
      expectAsync2((_, value) => (value.toDartInt + 1).toJS, count: 2),
    );
    expect(record.toDart, equals({"foo": 2.toJS, "bar": 3.toJS}));
  });

  test("[]", () {
    expect(record["foo"], equals(1.toJS));
    expect(record["baz"], isNull);
  });

  test("[]=", () {
    record["foo"] = 3.toJS;
    record["baz"] = 4.toJS;
    expect(
      record.toDart,
      equals({"foo": 3.toJS, "bar": 2.toJS, "baz": 4.toJS}),
    );
  });
}
