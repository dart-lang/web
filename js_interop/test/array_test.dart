// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import 'package:test/test.dart';

import 'package:js_interop/js_interop.dart';

void main() {
  late JSArray<JSNumber> array;

  setUp(() {
    array = [1.toJS, 2.toJS, 3.toJS, 4.toJS, 5.toJS].toJS;
  });

  test('at', () {
    expect(array.at(0), equals(1.toJS));
    expect(array.at(-1), equals(5.toJS));
  });

  test(
    'concat',
    () => expect(
      _toDart(array.concat([6.toJS].toJS)),
      equals([1, 2, 3, 4, 5, 6]),
    ),
  );

  group('copyWithin', () {
    test('without end', () {
      array.copyWithin(3, 0);
      expect(_toDart(array), equals([1, 2, 3, 1, 2]));
    });

    test('with end', () {
      array.copyWithin(2, 0, 2);
      expect(_toDart(array), equals([1, 2, 1, 2, 5]));
    });
  });

  test('every', () {
    expect(array.every((i) => i.toDartInt < 6), isTrue);
    expect(array.every((i) => i.toDartInt < 5), isFalse);
  });

  test(
    'everyWithIndex',
    () => expect(
      array.everyWithIndex((i, index) => i.toDartInt == index + 1),
      isTrue,
    ),
  );

  group('fill', () {
    test('with value only', () {
      array.fill(6.toJS);
      expect(_toDart(array), [6, 6, 6, 6, 6]);
    });

    test('with start', () {
      array.fill(6.toJS, 3);
      expect(_toDart(array), [1, 2, 3, 6, 6]);
    });

    test('with start and end', () {
      array.fill(6.toJS, 3, 4);
      expect(_toDart(array), [1, 2, 3, 6, 5]);
    });
  });

  test(
    'filter',
    () => expect(_toDart(array.filter((i) => i.toDartInt > 3)), equals([4, 5])),
  );

  test(
    'filterWithIndex',
    () => expect(
      _toDart(array.filterWithIndex((_, index) => index > 3)),
      equals([5]),
    ),
  );

  test(
    'find',
    () => expect(array.find((i) => i.toDartInt > 3), equals(4.toJS)),
  );

  test(
    'findWithIndex',
    () => expect(array.findWithIndex((_, index) => index > 3), equals(5.toJS)),
  );

  test(
    'findIndex',
    () => expect(array.findIndex((i) => i.toDartInt > 3), equals(3)),
  );

  test(
    'findIndexWithIndex',
    () => expect(array.findIndexWithIndex((_, index) => index > 3), equals(4)),
  );

  test(
    'findLast',
    () => expect(array.findLast((i) => i.toDartInt < 3), equals(2.toJS)),
  );

  test(
    'findLastWithIndex',
    () => expect(
      array.findLastWithIndex((_, index) => index < 3),
      equals(3.toJS),
    ),
  );

  test(
    'findLastIndex',
    () => expect(array.findLastIndex((i) => i.toDartInt < 3), equals(1)),
  );

  test(
    'findLastIndexWithIndex',
    () => expect(
      array.findLastIndexWithIndex((_, index) => index < 3),
      equals(2),
    ),
  );

  group('flat', () {
    test('without depth', () {
      var result =
          [
                [
                  [1.toJS].toJS,
                ].toJS,
              ].toJS.flat()
              as JSArray<JSArray<JSNumber>>;
      expect(result[0].toDart, equals([1.toJS]));
    });

    test(
      'with depth',
      () => expect(
        [
          [
            [1.toJS].toJS,
          ].toJS,
        ].toJS.flat(2).toDart,
        equals([1.toJS]),
      ),
    );

    test('flatOnce', () {
      var result = [
        [
          [1.toJS].toJS,
        ].toJS,
      ].toJS.flatOnce();
      expect(result[0].toDart, equals([1.toJS]));
    });
  });

  test(
    'flatMap',
    () => expect(
      _toDart(array.flatMap((i) => [i, i].toJS)),
      equals([1, 1, 2, 2, 3, 3, 4, 4, 5, 5]),
    ),
  );

  test(
    'flatMapWithIndex',
    () => expect(
      _toDart(array.flatMapWithIndex((i, index) => [index.toJS, i].toJS)),
      equals([0, 1, 1, 2, 2, 3, 3, 4, 4, 5]),
    ),
  );

  test(
    'flatMapHeterogeneous',
    () => expect(
      _toDart(
        array.flatMapHeterogeneous(
              (i) => i.toDartInt % 2 == 1 ? i : [i, i].toJS,
            )
            as JSArray<JSNumber>,
      ),
      equals([1, 2, 2, 3, 4, 4, 5]),
    ),
  );

  test(
    'flatMapHeterogeneousWithIndex',
    () => expect(
      _toDart(
        array.flatMapHeterogeneousWithIndex(
              (i, index) => i.toDartInt % 2 == 1 ? i : [index.toJS, i].toJS,
            )
            as JSArray<JSNumber>,
      ),
      equals([1, 1, 2, 3, 3, 4, 5]),
    ),
  );

  test('forEach', () {
    var next = 1;
    array.forEach(
      expectAsync1((i) => expect(i.toDartInt, equals(next++)), count: 5),
    );
  });

  test('forEachWithIndex', () {
    var next = 1;
    array.forEachWithIndex(
      expectAsync2((i, index) {
        expect(index, equals(next - 1));
        expect(i.toDartInt, equals(next++));
      }, count: 5),
    );
  });

  test('includes', () {
    expect(array.includes(1.toJS), isTrue);
    expect(array.includes(0.toJS), isFalse);
  });

  test('indexOf', () => expect(array.indexOf(3.toJS), equals(2)));

  test('join', () => expect(array.join(','), equals('1,2,3,4,5')));

  test(
    'keys',
    () => expect(
      array.keys.toDartIterable.map((i) => i.toDartInt).toList(),
      equals([0, 1, 2, 3, 4]),
    ),
  );

  test(
    'map',
    () => expect(
      _toDart(array.map((i) => (i.toDartInt + 1).toJS)),
      equals([2, 3, 4, 5, 6]),
    ),
  );

  test(
    'mapWithIndex',
    () => expect(
      _toDart(array.mapWithIndex((i, index) => (i.toDartInt + index).toJS)),
      equals([1, 3, 5, 7, 9]),
    ),
  );

  test('pop', () {
    expect(array.pop(), equals(5.toJS));
    expect(_toDart(array), equals([1, 2, 3, 4]));
  });

  test('push', () {
    expect(array.push((-1).toJS), equals(6));
    expect(_toDart(array), equals([1, 2, 3, 4, 5, -1]));
  });

  test(
    'reduce',
    () => expect(
      array.reduce((a, i) => a.add(i) as JSNumber).toDartInt,
      equals(15),
    ),
  );

  test(
    'reduceWithIndex',
    () => expect(
      array
          .reduceWithIndex(
            (a, i, index) => (a.toDartInt + i.toDartInt + index).toJS,
          )
          .toDartInt,
      equals(25),
    ),
  );

  test(
    'reduceWithInitial',
    () => expect(
      _toDart(
        array.reduceWithInitial(
          (a, i) => a.concat([i].toJS),
          <JSNumber>[].toJS,
        ),
      ),
      equals([1, 2, 3, 4, 5]),
    ),
  );

  test(
    'reduceWithInitialAndIndex',
    () => expect(
      _toDart(
        array.reduceWithInitialAndIndex(
          (a, i, index) => a.concat([index.toJS, i].toJS),
          <JSNumber>[].toJS,
        ),
      ),
      equals([0, 1, 1, 2, 2, 3, 3, 4, 4, 5]),
    ),
  );

  test(
    'reduceRight',
    () => expect(
      array.reduceRight((a, i) => a.add(i) as JSNumber).toDartInt,
      equals(15),
    ),
  );

  test(
    'reduceRightWithIndex',
    () => expect(
      array
          .reduceRightWithIndex(
            (a, i, index) => (a.toDartInt + i.toDartInt + index).toJS,
          )
          .toDartInt,
      equals(21),
    ),
  );

  test(
    'reduceRightWithInitial',
    () => expect(
      _toDart(
        array.reduceRightWithInitial(
          (a, i) => a.concat([i].toJS),
          <JSNumber>[].toJS,
        ),
      ),
      equals([5, 4, 3, 2, 1]),
    ),
  );

  test(
    'reduceRightWithInitialAndIndex',
    () => expect(
      _toDart(
        array.reduceRightWithInitialAndIndex(
          (a, i, index) => a.concat([index.toJS, i].toJS),
          <JSNumber>[].toJS,
        ),
      ),
      equals([4, 5, 3, 4, 2, 3, 1, 2, 0, 1]),
    ),
  );

  test('reverse', () {
    array.reverse();
    expect(_toDart(array), equals([5, 4, 3, 2, 1]));
  });

  test('shift', () {
    expect(array.shift(), equals(1.toJS));
    expect(_toDart(array), equals([2, 3, 4, 5]));
  });

  group('slice', () {
    test('with no arguments', () {
      var copy = array.slice();
      copy[0] = (-1).toJS;
      expect(_toDart(copy), equals([-1, 2, 3, 4, 5]));
      expect(_toDart(array), equals([1, 2, 3, 4, 5]));
    });

    test(
      'with start',
      () => expect(_toDart(array.slice(2)), equals([3, 4, 5])),
    );

    test(
      'with start and end',
      () => expect(_toDart(array.slice(2, 3)), equals([3])),
    );
  });

  test('some', () {
    expect(array.some((i) => i.toDartInt < 2), isTrue);
    expect(array.some((i) => i.toDartInt < 1), isFalse);
  });

  test(
    'someWithIndex',
    () => expect(array.someWithIndex((_, index) => index == 0), isTrue),
  );

  group('sort', () {
    test("with no argument", () {
      array.reverse();
      array.sort();
      expect(_toDart(array), equals([1, 2, 3, 4, 5]));
    });

    test("with an argument", () {
      array.sort((i1, i2) => i2.toDartInt - i1.toDartInt);
      expect(_toDart(array), equals([5, 4, 3, 2, 1]));
    });
  });

  group('splice', () {
    test("with one argument", () {
      expect(_toDart(array.splice(3)), equals([4, 5]));
      expect(_toDart(array), equals([1, 2, 3]));
    });

    test("with two arguments", () {
      expect(_toDart(array.splice(3, 1)), equals([4]));
      expect(_toDart(array), equals([1, 2, 3, 5]));
    });

    test("with three arguments", () {
      expect(_toDart(array.splice(3, 1, (-1).toJS)), equals([4]));
      expect(_toDart(array), equals([1, 2, 3, -1, 5]));
    });
  });

  test(
    'reversed',
    () => expect(_toDart(array.reversed), equals([5, 4, 3, 2, 1])),
  );

  group('toSorted', () {
    test("with no argument", () {
      array.reverse();
      expect(_toDart(array.toSorted()), equals([1, 2, 3, 4, 5]));
      expect(_toDart(array), equals([5, 4, 3, 2, 1]));
    });

    test("with an argument", () {
      expect(
        _toDart(array.toSorted((i1, i2) => i2.toDartInt - i1.toDartInt)),
        equals([5, 4, 3, 2, 1]),
      );
      expect(_toDart(array), equals([1, 2, 3, 4, 5]));
    });
  });

  group('toSpliced', () {
    test(
      "with one argument",
      () => expect(_toDart(array.toSpliced(3)), equals([1, 2, 3])),
    );

    test(
      "with two arguments",
      () => expect(_toDart(array.toSpliced(3, 1)), equals([1, 2, 3, 5])),
    );

    test(
      "with three arguments",
      () => expect(
        _toDart(array.toSpliced(3, 1, (-1).toJS)),
        equals([1, 2, 3, -1, 5]),
      ),
    );
  });

  test('unshift', () {
    expect(array.unshift((-1).toJS), equals(6));
    expect(_toDart(array), [-1, 1, 2, 3, 4, 5]);
  });

  test(
    'values',
    () => expect(
      array.values.toDartIterable.map((v) => v.toDartInt).toList(),
      equals([1, 2, 3, 4, 5]),
    ),
  );

  test(
    'withValue',
    () => expect(
      _toDart(array.withValue(2, (-1).toJS)),
      equals([1, 2, -1, 4, 5]),
    ),
  );
}

// TODO: Use array.toDartIntList once it's available in Dart 3.14.0.
List<int> _toDart(JSArray<JSNumber> array) => [
  for (var i in array.toDart) i.toDartInt,
];
