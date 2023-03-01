// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webidl.dart';

typedef AlgorithmIdentifier = JSAny;
typedef HashAlgorithmIdentifier = AlgorithmIdentifier;
typedef BigInteger = JSUint8Array;
typedef NamedCurve = JSString;
typedef KeyType = JSString;
typedef KeyUsage = JSString;
typedef KeyFormat = JSString;

@JS('Crypto')
@staticInterop
class Crypto {}

extension CryptoExtension on Crypto {
  external ArrayBufferView getRandomValues(ArrayBufferView array);
  external JSString randomUUID();
  external SubtleCrypto get subtle;
}

@JS()
@staticInterop
@anonymous
class Algorithm {
  external factory Algorithm({required JSString name});
}

extension AlgorithmExtension on Algorithm {
  external set name(JSString value);
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class KeyAlgorithm {
  external factory KeyAlgorithm({required JSString name});
}

extension KeyAlgorithmExtension on KeyAlgorithm {
  external set name(JSString value);
  external JSString get name;
}

@JS('CryptoKey')
@staticInterop
class CryptoKey {}

extension CryptoKeyExtension on CryptoKey {
  external KeyType get type;
  external JSBoolean get extractable;
  external JSObject get algorithm;
  external JSObject get usages;
}

@JS('SubtleCrypto')
@staticInterop
class SubtleCrypto {}

extension SubtleCryptoExtension on SubtleCrypto {
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
    JSBoolean extractable,
    JSArray keyUsages,
  );
  external JSPromise deriveKey(
    AlgorithmIdentifier algorithm,
    CryptoKey baseKey,
    AlgorithmIdentifier derivedKeyType,
    JSBoolean extractable,
    JSArray keyUsages,
  );
  external JSPromise deriveBits(
    AlgorithmIdentifier algorithm,
    CryptoKey baseKey,
    JSNumber length,
  );
  external JSPromise importKey(
    KeyFormat format,
    JSAny keyData,
    AlgorithmIdentifier algorithm,
    JSBoolean extractable,
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
    JSBoolean extractable,
    JSArray keyUsages,
  );
}

@JS()
@staticInterop
@anonymous
class RsaOtherPrimesInfo {
  external factory RsaOtherPrimesInfo({
    JSString r,
    JSString d,
    JSString t,
  });
}

extension RsaOtherPrimesInfoExtension on RsaOtherPrimesInfo {
  external set r(JSString value);
  external JSString get r;
  external set d(JSString value);
  external JSString get d;
  external set t(JSString value);
  external JSString get t;
}

@JS()
@staticInterop
@anonymous
class JsonWebKey {
  external factory JsonWebKey({
    JSString kty,
    JSString use,
    JSArray key_ops,
    JSString alg,
    JSBoolean ext,
    JSString crv,
    JSString x,
    JSString y,
    JSString d,
    JSString n,
    JSString e,
    JSString p,
    JSString q,
    JSString dp,
    JSString dq,
    JSString qi,
    JSArray oth,
    JSString k,
  });
}

extension JsonWebKeyExtension on JsonWebKey {
  external set kty(JSString value);
  external JSString get kty;
  external set use(JSString value);
  external JSString get use;
  external set key_ops(JSArray value);
  external JSArray get key_ops;
  external set alg(JSString value);
  external JSString get alg;
  external set ext(JSBoolean value);
  external JSBoolean get ext;
  external set crv(JSString value);
  external JSString get crv;
  external set x(JSString value);
  external JSString get x;
  external set y(JSString value);
  external JSString get y;
  external set d(JSString value);
  external JSString get d;
  external set n(JSString value);
  external JSString get n;
  external set e(JSString value);
  external JSString get e;
  external set p(JSString value);
  external JSString get p;
  external set q(JSString value);
  external JSString get q;
  external set dp(JSString value);
  external JSString get dp;
  external set dq(JSString value);
  external JSString get dq;
  external set qi(JSString value);
  external JSString get qi;
  external set oth(JSArray value);
  external JSArray get oth;
  external set k(JSString value);
  external JSString get k;
}

@JS()
@staticInterop
@anonymous
class CryptoKeyPair {
  external factory CryptoKeyPair({
    CryptoKey publicKey,
    CryptoKey privateKey,
  });
}

extension CryptoKeyPairExtension on CryptoKeyPair {
  external set publicKey(CryptoKey value);
  external CryptoKey get publicKey;
  external set privateKey(CryptoKey value);
  external CryptoKey get privateKey;
}

@JS()
@staticInterop
@anonymous
class RsaKeyGenParams implements Algorithm {
  external factory RsaKeyGenParams({
    required JSNumber modulusLength,
    required BigInteger publicExponent,
  });
}

extension RsaKeyGenParamsExtension on RsaKeyGenParams {
  external set modulusLength(JSNumber value);
  external JSNumber get modulusLength;
  external set publicExponent(BigInteger value);
  external BigInteger get publicExponent;
}

@JS()
@staticInterop
@anonymous
class RsaHashedKeyGenParams implements RsaKeyGenParams {
  external factory RsaHashedKeyGenParams(
      {required HashAlgorithmIdentifier hash});
}

extension RsaHashedKeyGenParamsExtension on RsaHashedKeyGenParams {
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}

@JS()
@staticInterop
@anonymous
class RsaKeyAlgorithm implements KeyAlgorithm {
  external factory RsaKeyAlgorithm({
    required JSNumber modulusLength,
    required BigInteger publicExponent,
  });
}

extension RsaKeyAlgorithmExtension on RsaKeyAlgorithm {
  external set modulusLength(JSNumber value);
  external JSNumber get modulusLength;
  external set publicExponent(BigInteger value);
  external BigInteger get publicExponent;
}

@JS()
@staticInterop
@anonymous
class RsaHashedKeyAlgorithm implements RsaKeyAlgorithm {
  external factory RsaHashedKeyAlgorithm({required KeyAlgorithm hash});
}

extension RsaHashedKeyAlgorithmExtension on RsaHashedKeyAlgorithm {
  external set hash(KeyAlgorithm value);
  external KeyAlgorithm get hash;
}

@JS()
@staticInterop
@anonymous
class RsaHashedImportParams implements Algorithm {
  external factory RsaHashedImportParams(
      {required HashAlgorithmIdentifier hash});
}

extension RsaHashedImportParamsExtension on RsaHashedImportParams {
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}

@JS()
@staticInterop
@anonymous
class RsaPssParams implements Algorithm {
  external factory RsaPssParams({required JSNumber saltLength});
}

extension RsaPssParamsExtension on RsaPssParams {
  external set saltLength(JSNumber value);
  external JSNumber get saltLength;
}

@JS()
@staticInterop
@anonymous
class RsaOaepParams implements Algorithm {
  external factory RsaOaepParams({BufferSource label});
}

extension RsaOaepParamsExtension on RsaOaepParams {
  external set label(BufferSource value);
  external BufferSource get label;
}

@JS()
@staticInterop
@anonymous
class EcdsaParams implements Algorithm {
  external factory EcdsaParams({required HashAlgorithmIdentifier hash});
}

extension EcdsaParamsExtension on EcdsaParams {
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}

@JS()
@staticInterop
@anonymous
class EcKeyGenParams implements Algorithm {
  external factory EcKeyGenParams({required NamedCurve namedCurve});
}

extension EcKeyGenParamsExtension on EcKeyGenParams {
  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}

@JS()
@staticInterop
@anonymous
class EcKeyAlgorithm implements KeyAlgorithm {
  external factory EcKeyAlgorithm({required NamedCurve namedCurve});
}

extension EcKeyAlgorithmExtension on EcKeyAlgorithm {
  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}

@JS()
@staticInterop
@anonymous
class EcKeyImportParams implements Algorithm {
  external factory EcKeyImportParams({required NamedCurve namedCurve});
}

extension EcKeyImportParamsExtension on EcKeyImportParams {
  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}

@JS()
@staticInterop
@anonymous
class EcdhKeyDeriveParams implements Algorithm {
  external factory EcdhKeyDeriveParams({required CryptoKey public});
}

extension EcdhKeyDeriveParamsExtension on EcdhKeyDeriveParams {
  external set public(CryptoKey value);
  external CryptoKey get public;
}

@JS()
@staticInterop
@anonymous
class AesCtrParams implements Algorithm {
  external factory AesCtrParams({
    required BufferSource counter,
    required JSNumber length,
  });
}

extension AesCtrParamsExtension on AesCtrParams {
  external set counter(BufferSource value);
  external BufferSource get counter;
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class AesKeyAlgorithm implements KeyAlgorithm {
  external factory AesKeyAlgorithm({required JSNumber length});
}

extension AesKeyAlgorithmExtension on AesKeyAlgorithm {
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class AesKeyGenParams implements Algorithm {
  external factory AesKeyGenParams({required JSNumber length});
}

extension AesKeyGenParamsExtension on AesKeyGenParams {
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class AesDerivedKeyParams implements Algorithm {
  external factory AesDerivedKeyParams({required JSNumber length});
}

extension AesDerivedKeyParamsExtension on AesDerivedKeyParams {
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class AesCbcParams implements Algorithm {
  external factory AesCbcParams({required BufferSource iv});
}

extension AesCbcParamsExtension on AesCbcParams {
  external set iv(BufferSource value);
  external BufferSource get iv;
}

@JS()
@staticInterop
@anonymous
class AesGcmParams implements Algorithm {
  external factory AesGcmParams({
    required BufferSource iv,
    BufferSource additionalData,
    JSNumber tagLength,
  });
}

extension AesGcmParamsExtension on AesGcmParams {
  external set iv(BufferSource value);
  external BufferSource get iv;
  external set additionalData(BufferSource value);
  external BufferSource get additionalData;
  external set tagLength(JSNumber value);
  external JSNumber get tagLength;
}

@JS()
@staticInterop
@anonymous
class HmacImportParams implements Algorithm {
  external factory HmacImportParams({
    required HashAlgorithmIdentifier hash,
    JSNumber length,
  });
}

extension HmacImportParamsExtension on HmacImportParams {
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class HmacKeyAlgorithm implements KeyAlgorithm {
  external factory HmacKeyAlgorithm({
    required KeyAlgorithm hash,
    required JSNumber length,
  });
}

extension HmacKeyAlgorithmExtension on HmacKeyAlgorithm {
  external set hash(KeyAlgorithm value);
  external KeyAlgorithm get hash;
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class HmacKeyGenParams implements Algorithm {
  external factory HmacKeyGenParams({
    required HashAlgorithmIdentifier hash,
    JSNumber length,
  });
}

extension HmacKeyGenParamsExtension on HmacKeyGenParams {
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
  external set length(JSNumber value);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class HkdfParams implements Algorithm {
  external factory HkdfParams({
    required HashAlgorithmIdentifier hash,
    required BufferSource salt,
    required BufferSource info,
  });
}

extension HkdfParamsExtension on HkdfParams {
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
  external set salt(BufferSource value);
  external BufferSource get salt;
  external set info(BufferSource value);
  external BufferSource get info;
}

@JS()
@staticInterop
@anonymous
class Pbkdf2Params implements Algorithm {
  external factory Pbkdf2Params({
    required BufferSource salt,
    required JSNumber iterations,
    required HashAlgorithmIdentifier hash,
  });
}

extension Pbkdf2ParamsExtension on Pbkdf2Params {
  external set salt(BufferSource value);
  external BufferSource get salt;
  external set iterations(JSNumber value);
  external JSNumber get iterations;
  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}
