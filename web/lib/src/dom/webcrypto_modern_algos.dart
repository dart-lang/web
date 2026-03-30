// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'webcrypto.dart';
import 'webidl.dart';

typedef KeyFormat = String;
typedef KeyUsage = String;
extension type EncapsulatedKey._(JSObject _) implements JSObject {
  external factory EncapsulatedKey({
    CryptoKey sharedKey,
    JSArrayBuffer ciphertext,
  });

  external CryptoKey get sharedKey;
  external set sharedKey(CryptoKey value);
  external JSArrayBuffer get ciphertext;
  external set ciphertext(JSArrayBuffer value);
}
extension type EncapsulatedBits._(JSObject _) implements JSObject {
  external factory EncapsulatedBits({
    JSArrayBuffer sharedKey,
    JSArrayBuffer ciphertext,
  });

  external JSArrayBuffer get sharedKey;
  external set sharedKey(JSArrayBuffer value);
  external JSArrayBuffer get ciphertext;
  external set ciphertext(JSArrayBuffer value);
}
extension type ContextParams._(JSObject _) implements Algorithm, JSObject {
  external factory ContextParams({
    required String name,
    BufferSource context,
  });

  external BufferSource get context;
  external set context(BufferSource value);
}
extension type AeadParams._(JSObject _) implements Algorithm, JSObject {
  external factory AeadParams({
    required String name,
    required BufferSource iv,
    BufferSource additionalData,
    int tagLength,
  });

  external BufferSource get iv;
  external set iv(BufferSource value);
  external BufferSource get additionalData;
  external set additionalData(BufferSource value);
  external int get tagLength;
  external set tagLength(int value);
}
extension type CShakeParams._(JSObject _) implements Algorithm, JSObject {
  external factory CShakeParams({
    required String name,
    required int outputLength,
    BufferSource functionName,
    BufferSource customization,
  });

  external int get outputLength;
  external set outputLength(int value);
  external BufferSource get functionName;
  external set functionName(BufferSource value);
  external BufferSource get customization;
  external set customization(BufferSource value);
}
extension type KmacKeyGenParams._(JSObject _) implements Algorithm, JSObject {
  external factory KmacKeyGenParams({
    required String name,
    int length,
  });

  external int get length;
  external set length(int value);
}
extension type KmacImportParams._(JSObject _) implements Algorithm, JSObject {
  external factory KmacImportParams({
    required String name,
    int length,
  });

  external int get length;
  external set length(int value);
}
extension type KmacKeyAlgorithm._(JSObject _)
    implements KeyAlgorithm, JSObject {
  external factory KmacKeyAlgorithm({
    required String name,
    required int length,
  });

  external int get length;
  external set length(int value);
}
extension type KmacParams._(JSObject _) implements Algorithm, JSObject {
  external factory KmacParams({
    required String name,
    required int outputLength,
    BufferSource customization,
  });

  external int get outputLength;
  external set outputLength(int value);
  external BufferSource get customization;
  external set customization(BufferSource value);
}
extension type Argon2Params._(JSObject _) implements Algorithm, JSObject {
  external factory Argon2Params({
    required String name,
    required BufferSource nonce,
    required int parallelism,
    required int memory,
    required int passes,
    int version,
    BufferSource secretValue,
    BufferSource associatedData,
  });

  external BufferSource get nonce;
  external set nonce(BufferSource value);
  external int get parallelism;
  external set parallelism(int value);
  external int get memory;
  external set memory(int value);
  external int get passes;
  external set passes(int value);
  external int get version;
  external set version(int value);
  external BufferSource get secretValue;
  external set secretValue(BufferSource value);
  external BufferSource get associatedData;
  external set associatedData(BufferSource value);
}
