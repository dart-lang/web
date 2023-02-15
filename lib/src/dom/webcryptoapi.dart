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
class Crypto {
  external factory Crypto();
}

extension CryptoExtension on Crypto {
  external SubtleCrypto get subtle;
  external ArrayBufferView getRandomValues(ArrayBufferView array);
  external JSString randomUUID();
}

@JS('Algorithm')
@staticInterop
class Algorithm {
  external factory Algorithm();
}

extension AlgorithmExtension on Algorithm {}

@JS('KeyAlgorithm')
@staticInterop
class KeyAlgorithm {
  external factory KeyAlgorithm();
}

extension KeyAlgorithmExtension on KeyAlgorithm {}

@JS('CryptoKey')
@staticInterop
class CryptoKey {
  external factory CryptoKey();
}

extension CryptoKeyExtension on CryptoKey {
  external KeyType get type;
  external JSBoolean get extractable;
  external JSObject get algorithm;
  external JSObject get usages;
}

@JS('SubtleCrypto')
@staticInterop
class SubtleCrypto {
  external factory SubtleCrypto();
}

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

@JS('RsaOtherPrimesInfo')
@staticInterop
class RsaOtherPrimesInfo {
  external factory RsaOtherPrimesInfo();
}

extension RsaOtherPrimesInfoExtension on RsaOtherPrimesInfo {}

@JS('JsonWebKey')
@staticInterop
class JsonWebKey {
  external factory JsonWebKey();
}

extension JsonWebKeyExtension on JsonWebKey {}

@JS('CryptoKeyPair')
@staticInterop
class CryptoKeyPair {
  external factory CryptoKeyPair();
}

extension CryptoKeyPairExtension on CryptoKeyPair {}

@JS('RsaKeyGenParams')
@staticInterop
class RsaKeyGenParams extends Algorithm {
  external factory RsaKeyGenParams();
}

extension RsaKeyGenParamsExtension on RsaKeyGenParams {}

@JS('RsaHashedKeyGenParams')
@staticInterop
class RsaHashedKeyGenParams extends RsaKeyGenParams {
  external factory RsaHashedKeyGenParams();
}

extension RsaHashedKeyGenParamsExtension on RsaHashedKeyGenParams {}

@JS('RsaKeyAlgorithm')
@staticInterop
class RsaKeyAlgorithm extends KeyAlgorithm {
  external factory RsaKeyAlgorithm();
}

extension RsaKeyAlgorithmExtension on RsaKeyAlgorithm {}

@JS('RsaHashedKeyAlgorithm')
@staticInterop
class RsaHashedKeyAlgorithm extends RsaKeyAlgorithm {
  external factory RsaHashedKeyAlgorithm();
}

extension RsaHashedKeyAlgorithmExtension on RsaHashedKeyAlgorithm {}

@JS('RsaHashedImportParams')
@staticInterop
class RsaHashedImportParams extends Algorithm {
  external factory RsaHashedImportParams();
}

extension RsaHashedImportParamsExtension on RsaHashedImportParams {}

@JS('RsaPssParams')
@staticInterop
class RsaPssParams extends Algorithm {
  external factory RsaPssParams();
}

extension RsaPssParamsExtension on RsaPssParams {}

@JS('RsaOaepParams')
@staticInterop
class RsaOaepParams extends Algorithm {
  external factory RsaOaepParams();
}

extension RsaOaepParamsExtension on RsaOaepParams {}

@JS('EcdsaParams')
@staticInterop
class EcdsaParams extends Algorithm {
  external factory EcdsaParams();
}

extension EcdsaParamsExtension on EcdsaParams {}

@JS('EcKeyGenParams')
@staticInterop
class EcKeyGenParams extends Algorithm {
  external factory EcKeyGenParams();
}

extension EcKeyGenParamsExtension on EcKeyGenParams {}

@JS('EcKeyAlgorithm')
@staticInterop
class EcKeyAlgorithm extends KeyAlgorithm {
  external factory EcKeyAlgorithm();
}

extension EcKeyAlgorithmExtension on EcKeyAlgorithm {}

@JS('EcKeyImportParams')
@staticInterop
class EcKeyImportParams extends Algorithm {
  external factory EcKeyImportParams();
}

extension EcKeyImportParamsExtension on EcKeyImportParams {}

@JS('EcdhKeyDeriveParams')
@staticInterop
class EcdhKeyDeriveParams extends Algorithm {
  external factory EcdhKeyDeriveParams();
}

extension EcdhKeyDeriveParamsExtension on EcdhKeyDeriveParams {}

@JS('AesCtrParams')
@staticInterop
class AesCtrParams extends Algorithm {
  external factory AesCtrParams();
}

extension AesCtrParamsExtension on AesCtrParams {}

@JS('AesKeyAlgorithm')
@staticInterop
class AesKeyAlgorithm extends KeyAlgorithm {
  external factory AesKeyAlgorithm();
}

extension AesKeyAlgorithmExtension on AesKeyAlgorithm {}

@JS('AesKeyGenParams')
@staticInterop
class AesKeyGenParams extends Algorithm {
  external factory AesKeyGenParams();
}

extension AesKeyGenParamsExtension on AesKeyGenParams {}

@JS('AesDerivedKeyParams')
@staticInterop
class AesDerivedKeyParams extends Algorithm {
  external factory AesDerivedKeyParams();
}

extension AesDerivedKeyParamsExtension on AesDerivedKeyParams {}

@JS('AesCbcParams')
@staticInterop
class AesCbcParams extends Algorithm {
  external factory AesCbcParams();
}

extension AesCbcParamsExtension on AesCbcParams {}

@JS('AesGcmParams')
@staticInterop
class AesGcmParams extends Algorithm {
  external factory AesGcmParams();
}

extension AesGcmParamsExtension on AesGcmParams {}

@JS('HmacImportParams')
@staticInterop
class HmacImportParams extends Algorithm {
  external factory HmacImportParams();
}

extension HmacImportParamsExtension on HmacImportParams {}

@JS('HmacKeyAlgorithm')
@staticInterop
class HmacKeyAlgorithm extends KeyAlgorithm {
  external factory HmacKeyAlgorithm();
}

extension HmacKeyAlgorithmExtension on HmacKeyAlgorithm {}

@JS('HmacKeyGenParams')
@staticInterop
class HmacKeyGenParams extends Algorithm {
  external factory HmacKeyGenParams();
}

extension HmacKeyGenParamsExtension on HmacKeyGenParams {}

@JS('HkdfParams')
@staticInterop
class HkdfParams extends Algorithm {
  external factory HkdfParams();
}

extension HkdfParamsExtension on HkdfParams {}

@JS('Pbkdf2Params')
@staticInterop
class Pbkdf2Params extends Algorithm {
  external factory Pbkdf2Params();
}

extension Pbkdf2ParamsExtension on Pbkdf2Params {}
