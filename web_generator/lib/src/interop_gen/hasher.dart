// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// A hasher is used to give a unique hash to a given anonymous declaration
abstract final class AnonymousHasher {
  /// Warning: [parts] is sorted by this function.
  static String hashUnion(List<String> parts) {
    parts.sort((a, b) => a.compareTo(b));

    return parts.hashValues().to7DigitString();
  }

  static String hashTuple(List<String> parts) {
    return parts.hashValues().to7DigitString();
  }

  /// Warning: [parts] is sorted by this function.
  static String hashObject(List<(String, String)> parts) {
    parts.sort((a, b) => a.$1.compareTo(b.$1));

    return parts.hashes.hashValues().to7DigitString();
  }

  static String hashFun(
    List<(String, String)> params,
    String returnType, [
    bool constructor = false,
  ]) {
    final paramHash = params.hashes.hashValues();
    return [
      constructor.toString(),
      paramHash.toString(),
      returnType,
    ].hashValues().to7DigitString();
  }
}

extension on Iterable<(String, String)> {
  Iterable<String> get hashes => map((v) => v.$1 + v.$2);
}

extension on int {
  String to7DigitString() => toString().padLeft(7, '0').substring(0, 7);
}

extension on Iterable<String> {
  /// A hash function based on FNV-1a.
  ///
  /// Ensures consistency across platforms vs [Object.hashValues].
  int hashValues() {
    var hash = 2166136261;
    for (final v in this) {
      for (final codeUnit in v.runes) {
        hash ^= codeUnit;
        hash = hash.mul32();
      }
      // A "virtual" byte to separate the values in `this`.
      hash ^= 0;
      hash = hash.mul32();
    }
    return hash.abs();
  }
}

extension on int {
  /// Multiplying by `16777619` for the FNV-1a algorithm.
  ///
  /// 32-bit wraparound multiplication safe for web/JS (53-bit limit).
  int mul32() {
    // Split into 16-bit parts
    final aLo = this & 0xFFFF;
    final aHi = this >>> 16;

    // Constant parts of 16777619 (0x01000193)
    // bLo = 403, bHi = 256

    // p0 = aLo * bLo
    final p0 = aLo * 403;

    // p1 = (aHi * bLo) & 0xFFFF
    final p1 = (aHi * 403) & 0xFFFF;

    // p2 = (aLo * bHi) & 0xFFFF
    final p2 = (aLo * 256) & 0xFFFF;

    // Combine
    return (p0 + ((p1 + p2) << 16)) & 0xFFFFFFFF;
  }
}
