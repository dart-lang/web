// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

/// A hasher is used to give a unique hash to a given anonymous declaration
class AnonymousHasher {
  static String hashUnion(List<String> parts) {
    final cloneParts = parts;
    cloneParts.sort((a, b) => a.compareTo(b));

    return _hashValues(cloneParts).toString().substring(0, 7);
  }

  static String hashTuple(List<String> parts) {
    return _hashValues(parts).toString().substring(0, 7);
  }

  static String hashObject(List<(String, String)> parts) {
    final cloneParts = parts;
    cloneParts.sort((a, b) => a.$1.compareTo(b.$1));

    final hashes = cloneParts.map((v) {
      return _hashValues([v.$1, v.$2]).toString();
    });

    return _hashValues(hashes).toString().substring(0, 7);
  }

  static String hashFun(
    List<(String, String)> params,
    String returnType, [
    bool constructor = false,
  ]) {
    final hashes = params.map((v) {
      return _hashValues([v.$1, v.$2]).toString();
    });
    final paramHash = _hashValues(hashes);
    return _hashValues([
      constructor.toString(),
      paramHash.toString(),
      returnType,
    ]).toString().substring(0, 7);
  }
}

// TODO: A better way for hashing values
int _hashValues(Iterable<String> values) {
  final output = AccumulatorSink<Digest>();
  final input = sha512.startChunkedConversion(output);

  for (final v in values) {
    final encoded = jsonEncode(v);
    input.add(utf8.encode(encoded));
  }

  input.close();
  final digest = output.events.single.bytes;

  return BigInt.parse(
    digest.sublist(0, 8).map((b) => b.toRadixString(16).padLeft(2, '0')).join(),
    radix: 16,
  ).toInt();
}
