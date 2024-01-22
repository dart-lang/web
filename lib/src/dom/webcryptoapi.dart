// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webidl.dart';

typedef AlgorithmIdentifier = JSAny;
typedef HashAlgorithmIdentifier = AlgorithmIdentifier;
typedef BigInteger = JSUint8Array;
typedef NamedCurve = String;
typedef KeyType = String;
typedef KeyUsage = String;
typedef KeyFormat = String;
extension type Crypto._(JSObject _) implements JSObject {
  external ArrayBufferView getRandomValues(ArrayBufferView array);
  external String randomUUID();
  external SubtleCrypto get subtle;
}
extension type Algorithm._(JSObject _) implements JSObject {
  external factory Algorithm({required String name});

  external set name(String value);
  external String get name;
}
extension type KeyAlgorithm._(JSObject _) implements JSObject {
  external factory KeyAlgorithm({required String name});

  external set name(String value);
  external String get name;
}
extension type CryptoKey._(JSObject _) implements JSObject {
  external KeyType get type;
  external bool get extractable;
  external JSObject get algorithm;
  external JSObject get usages;
}
extension type SubtleCrypto._(JSObject _) implements JSObject {
  external JSPromise encrypt(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource data,
  );
  external JSPromise decrypt(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource data,
  );
  external JSPromise sign(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource data,
  );
  external JSPromise verify(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource signature,
    BufferSource data,
  );
  external JSPromise digest(
    AlgorithmIdentifier algorithm,
    BufferSource data,
  );
  external JSPromise generateKey(
    AlgorithmIdentifier algorithm,
    bool extractable,
    JSArray keyUsages,
  );
  external JSPromise deriveKey(
    AlgorithmIdentifier algorithm,
    CryptoKey baseKey,
    AlgorithmIdentifier derivedKeyType,
    bool extractable,
    JSArray keyUsages,
  );
  external JSPromise deriveBits(
    AlgorithmIdentifier algorithm,
    CryptoKey baseKey,
    int length,
  );
  external JSPromise importKey(
    KeyFormat format,
    JSObject keyData,
    AlgorithmIdentifier algorithm,
    bool extractable,
    JSArray keyUsages,
  );
  external JSPromise exportKey(
    KeyFormat format,
    CryptoKey key,
  );
  external JSPromise wrapKey(
    KeyFormat format,
    CryptoKey key,
    CryptoKey wrappingKey,
    AlgorithmIdentifier wrapAlgorithm,
  );
  external JSPromise unwrapKey(
    KeyFormat format,
    BufferSource wrappedKey,
    CryptoKey unwrappingKey,
    AlgorithmIdentifier unwrapAlgorithm,
    AlgorithmIdentifier unwrappedKeyAlgorithm,
    bool extractable,
    JSArray keyUsages,
  );
}
extension type RsaOtherPrimesInfo._(JSObject _) implements JSObject {
  external factory RsaOtherPrimesInfo({
    String r,
    String d,
    String t,
  });

  external set r(String value);
  external String get r;
  external set d(String value);
  external String get d;
  external set t(String value);
  external String get t;
}
extension type JsonWebKey._(JSObject _) implements JSObject {
  external factory JsonWebKey({
    String kty,
    String use,
    JSArray key_ops,
    String alg,
    bool ext,
    String crv,
    String x,
    String y,
    String d,
    String n,
    String e,
    String p,
    String q,
    String dp,
    String dq,
    String qi,
    JSArray oth,
    String k,
  });

  external set kty(String value);
  external String get kty;
  external set use(String value);
  external String get use;
  external set key_ops(JSArray value);
  external JSArray get key_ops;
  external set alg(String value);
  external String get alg;
  external set ext(bool value);
  external bool get ext;
  external set crv(String value);
  external String get crv;
  external set x(String value);
  external String get x;
  external set y(String value);
  external String get y;
  external set d(String value);
  external String get d;
  external set n(String value);
  external String get n;
  external set e(String value);
  external String get e;
  external set p(String value);
  external String get p;
  external set q(String value);
  external String get q;
  external set dp(String value);
  external String get dp;
  external set dq(String value);
  external String get dq;
  external set qi(String value);
  external String get qi;
  external set oth(JSArray value);
  external JSArray get oth;
  external set k(String value);
  external String get k;
}
extension type CryptoKeyPair._(JSObject _) implements JSObject {
  external factory CryptoKeyPair({
    CryptoKey publicKey,
    CryptoKey privateKey,
  });

  external set publicKey(CryptoKey value);
  external CryptoKey get publicKey;
  external set privateKey(CryptoKey value);
  external CryptoKey get privateKey;
}
extension type RsaKeyGenParams._(JSObject _) implements Algorithm, JSObject {
  external factory RsaKeyGenParams({
    required int modulusLength,
    required BigInteger publicExponent,
  });

  external set modulusLength(int value);
  external int get modulusLength;
  external set publicExponent(BigInteger value);
  external BigInteger get publicExponent;
}
extension type RsaHashedKeyGenParams._(JSObject _)
    implements RsaKeyGenParams, JSObject {
  external factory RsaHashedKeyGenParams(
      {required HashAlgorithmIdentifier hash});

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}
extension type RsaKeyAlgorithm._(JSObject _) implements KeyAlgorithm, JSObject {
  external factory RsaKeyAlgorithm({
    required int modulusLength,
    required BigInteger publicExponent,
  });

  external set modulusLength(int value);
  external int get modulusLength;
  external set publicExponent(BigInteger value);
  external BigInteger get publicExponent;
}
extension type RsaHashedKeyAlgorithm._(JSObject _)
    implements RsaKeyAlgorithm, JSObject {
  external factory RsaHashedKeyAlgorithm({required KeyAlgorithm hash});

  external set hash(KeyAlgorithm value);
  external KeyAlgorithm get hash;
}
extension type RsaHashedImportParams._(JSObject _)
    implements Algorithm, JSObject {
  external factory RsaHashedImportParams(
      {required HashAlgorithmIdentifier hash});

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}
extension type RsaPssParams._(JSObject _) implements Algorithm, JSObject {
  external factory RsaPssParams({required int saltLength});

  external set saltLength(int value);
  external int get saltLength;
}
extension type RsaOaepParams._(JSObject _) implements Algorithm, JSObject {
  external factory RsaOaepParams({BufferSource label});

  external set label(BufferSource value);
  external BufferSource get label;
}
extension type EcdsaParams._(JSObject _) implements Algorithm, JSObject {
  external factory EcdsaParams({required HashAlgorithmIdentifier hash});

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}
extension type EcKeyGenParams._(JSObject _) implements Algorithm, JSObject {
  external factory EcKeyGenParams({required NamedCurve namedCurve});

  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}
extension type EcKeyAlgorithm._(JSObject _) implements KeyAlgorithm, JSObject {
  external factory EcKeyAlgorithm({required NamedCurve namedCurve});

  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}
extension type EcKeyImportParams._(JSObject _) implements Algorithm, JSObject {
  external factory EcKeyImportParams({required NamedCurve namedCurve});

  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}
extension type EcdhKeyDeriveParams._(JSObject _)
    implements Algorithm, JSObject {
  external factory EcdhKeyDeriveParams({required CryptoKey public});

  external set public(CryptoKey value);
  external CryptoKey get public;
}
extension type AesCtrParams._(JSObject _) implements Algorithm, JSObject {
  external factory AesCtrParams({
    required BufferSource counter,
    required int length,
  });

  external set counter(BufferSource value);
  external BufferSource get counter;
  external set length(int value);
  external int get length;
}
extension type AesKeyAlgorithm._(JSObject _) implements KeyAlgorithm, JSObject {
  external factory AesKeyAlgorithm({required int length});

  external set length(int value);
  external int get length;
}
extension type AesKeyGenParams._(JSObject _) implements Algorithm, JSObject {
  external factory AesKeyGenParams({required int length});

  external set length(int value);
  external int get length;
}
extension type AesDerivedKeyParams._(JSObject _)
    implements Algorithm, JSObject {
  external factory AesDerivedKeyParams({required int length});

  external set length(int value);
  external int get length;
}
extension type AesCbcParams._(JSObject _) implements Algorithm, JSObject {
  external factory AesCbcParams({required BufferSource iv});

  external set iv(BufferSource value);
  external BufferSource get iv;
}
extension type AesGcmParams._(JSObject _) implements Algorithm, JSObject {
  external factory AesGcmParams({
    required BufferSource iv,
    BufferSource additionalData,
    int tagLength,
  });

  external set iv(BufferSource value);
  external BufferSource get iv;
  external set additionalData(BufferSource value);
  external BufferSource get additionalData;
  external set tagLength(int value);
  external int get tagLength;
}
extension type HmacImportParams._(JSObject _) implements Algorithm, JSObject {
  external factory HmacImportParams({
    required HashAlgorithmIdentifier hash,
    int length,
  });

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
  external set length(int value);
  external int get length;
}
extension type HmacKeyAlgorithm._(JSObject _)
    implements KeyAlgorithm, JSObject {
  external factory HmacKeyAlgorithm({
    required KeyAlgorithm hash,
    required int length,
  });

  external set hash(KeyAlgorithm value);
  external KeyAlgorithm get hash;
  external set length(int value);
  external int get length;
}
extension type HmacKeyGenParams._(JSObject _) implements Algorithm, JSObject {
  external factory HmacKeyGenParams({
    required HashAlgorithmIdentifier hash,
    int length,
  });

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
  external set length(int value);
  external int get length;
}
extension type HkdfParams._(JSObject _) implements Algorithm, JSObject {
  external factory HkdfParams({
    required HashAlgorithmIdentifier hash,
    required BufferSource salt,
    required BufferSource info,
  });

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
  external set salt(BufferSource value);
  external BufferSource get salt;
  external set info(BufferSource value);
  external BufferSource get info;
}
extension type Pbkdf2Params._(JSObject _) implements Algorithm, JSObject {
  external factory Pbkdf2Params({
    required BufferSource salt,
    required int iterations,
    required HashAlgorithmIdentifier hash,
  });

  external set salt(BufferSource value);
  external BufferSource get salt;
  external set iterations(int value);
  external int get iterations;
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}
