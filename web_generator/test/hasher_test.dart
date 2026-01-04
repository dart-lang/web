import 'dart:math';

import 'package:test/test.dart';
import 'package:web_generator/src/interop_gen/hasher.dart';

void main() {
  test('mul32 fuzz', () {
    final rng = Random();
    const max = 1 << 32 - 1;
    for (var i = 0; i < 1000; i++) {
      // rng.nextInt(max) supports max up to 2^32 on VM.
      // We want full 32-bit range.

      final a = rng.nextInt(max);
      final b = rng.nextInt(max);

      // Use BigInt to be the source of truth for 64-bit+ multiplication
      _validate(a, b);
    }

    _validate(max, max);
    _validate(0, max);
    _validate(max, 0);
    _validate(1, max);
    _validate(max, 1);
  });

  test('mul32 with FNV prime', () {
    const fnvPrime = 16777619;

    expect(1.mul32(fnvPrime), fnvPrime);
    expect(0.mul32(fnvPrime), 0);
  });
}

void _validate(int a, int b) {
  // Use BigInt to be the source of truth for 64-bit+ multiplication
  final expected = (BigInt.from(a) * BigInt.from(b) & BigInt.from(0xFFFFFFFF))
      .toInt();

  expect(a.mul32(b), expected, reason: '$a * $b');
}
