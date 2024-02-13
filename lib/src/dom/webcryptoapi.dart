// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webidl.dart';

typedef AlgorithmIdentifier = JSAny;
typedef HashAlgorithmIdentifier = AlgorithmIdentifier;
typedef BigInteger = JSUint8Array;
typedef NamedCurve = String;
typedef KeyType = String;
typedef KeyUsage = String;
typedef KeyFormat = String;

/// The **`Crypto`** interface represents basic cryptography features available
/// in the current context.
/// It allows access to a cryptographically strong random number generator and
/// to cryptographic primitives.
///
/// The
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// is accessed through the global [crypto_property] property, which is a
/// `Crypto` object.
extension type Crypto._(JSObject _) implements JSObject {
  /// The **`Crypto.getRandomValues()`** method lets you get cryptographically
  /// strong random values.
  /// The array given as the parameter is filled with random numbers (random in
  /// its cryptographic meaning).
  ///
  /// To guarantee enough performance, implementations are not using a truly
  /// random number generator, but they are using a pseudo-random number
  /// generator _seeded_ with a value with enough entropy.
  /// The pseudo-random number generator algorithm (PRNG) may vary across , but
  /// is suitable for cryptographic purposes.
  ///
  /// `getRandomValues()` is the only member of the `Crypto` interface which can
  /// be used from an insecure context.
  external ArrayBufferView getRandomValues(ArrayBufferView array);

  /// The **`randomUUID()`** method of the [Crypto] interface is used to
  /// generate a v4  using a cryptographically secure random number generator.
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

/// The **`CryptoKey`** interface of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents a cryptographic  obtained from one of the [SubtleCrypto] methods
/// [SubtleCrypto.generateKey], [SubtleCrypto.deriveKey],
/// [SubtleCrypto.importKey], or [SubtleCrypto.unwrapKey].
///
/// For security reasons, the `CryptoKey` interface can only be used in a
/// [secure context](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts).
extension type CryptoKey._(JSObject _) implements JSObject {
  external KeyType get type;
  external bool get extractable;
  external JSObject get algorithm;
  external JSObject get usages;
}

/// The **`SubtleCrypto`** interface of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// provides a number of low-level cryptographic functions. Access to the
/// features of `SubtleCrypto` is obtained through the [Crypto.subtle] property
/// of the [Crypto] object you get from the [crypto_property] property.
///
/// > **Warning:** This API provides a number of low-level cryptographic
/// > primitives. It's very easy to misuse them, and the pitfalls involved can
/// > be very subtle.
/// >
/// > Even assuming you use the basic cryptographic functions correctly, secure
/// > key management and overall security system design are extremely hard to
/// > get right, and are generally the domain of specialist security experts.
/// >
/// > Errors in security system design and implementation can make the security
/// > of the system completely ineffective.
/// >
/// > Please learn and experiment, but don't guarantee or imply the security of
/// > your work before an individual knowledgeable in this subject matter
/// > thoroughly reviews it. The [Crypto 101 Course](https://www.crypto101.io/)
/// > can be a great place to start learning about the design and implementation
/// > of secure systems.
extension type SubtleCrypto._(JSObject _) implements JSObject {
  /// The **`encrypt()`** method of the [SubtleCrypto] interface encrypts data.
  ///
  /// It takes as its arguments a  to encrypt with, some algorithm-specific
  /// parameters, and the data to encrypt (also known as "plaintext").
  /// It returns a `Promise` which will be fulfilled with the encrypted data
  /// (also known as "ciphertext").
  external JSPromise<JSAny?> encrypt(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource data,
  );

  /// The **`decrypt()`** method of the [SubtleCrypto] interface decrypts some
  /// encrypted data.
  /// It takes as arguments a  to decrypt with, some optional extra parameters,
  /// and the data to decrypt (also known as "ciphertext").
  /// It returns a `Promise` which will be fulfilled with the decrypted data
  /// (also known as "plaintext").
  external JSPromise<JSAny?> decrypt(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource data,
  );

  /// The **`sign()`** method of the [SubtleCrypto]
  /// interface generates a digital .
  ///
  /// It takes as its arguments a  to sign with, some algorithm-specific
  /// parameters, and the data to sign. It returns a `Promise` which will be
  /// fulfilled with the signature.
  ///
  /// You can use the corresponding [SubtleCrypto.verify] method to verify the
  /// signature.
  external JSPromise<JSAny?> sign(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource data,
  );

  /// The **`verify()`** method of the [SubtleCrypto]
  /// interface verifies a digital .
  ///
  /// It takes as its arguments a  to verify the signature with, some
  /// algorithm-specific parameters, the signature, and the original signed
  /// data. It returns a
  /// `Promise` which will be fulfilled with a boolean value
  /// indicating whether the signature is valid.
  external JSPromise<JSAny?> verify(
    AlgorithmIdentifier algorithm,
    CryptoKey key,
    BufferSource signature,
    BufferSource data,
  );

  /// The **`digest()`** method of the [SubtleCrypto]
  /// interface generates a  of the given data. A digest is a short
  /// fixed-length value derived from some variable-length input. Cryptographic
  /// digests should
  /// exhibit collision-resistance, meaning that it's hard to come up with two
  /// different
  /// inputs that have the same digest value.
  ///
  /// It takes as its arguments an identifier for the digest algorithm to use
  /// and the data to
  /// digest. It returns a `Promise` which will be fulfilled with the digest.
  ///
  /// Note that this API does not support streaming input: you must read the
  /// entire input into memory before passing it into the digest function.
  external JSPromise<JSAny?> digest(
    AlgorithmIdentifier algorithm,
    BufferSource data,
  );

  /// Use the **`generateKey()`** method of the
  /// [SubtleCrypto] interface to generate a new key (for symmetric algorithms)
  /// or key pair (for public-key algorithms).
  external JSPromise<JSAny?> generateKey(
    AlgorithmIdentifier algorithm,
    bool extractable,
    JSArray<JSString> keyUsages,
  );

  /// The **`deriveKey()`** method of the [SubtleCrypto]
  /// interface can be used to derive a secret key from a master key.
  ///
  /// It takes as arguments some initial key material, the derivation algorithm
  /// to use, and
  /// the desired properties for the key to derive. It returns a
  /// [`Promise`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)
  /// which will be fulfilled with a [CryptoKey] object representing the new
  /// key.
  ///
  /// It's worth noting that the three key derivation algorithms you can use
  /// have quite
  /// different characteristics and are appropriate in quite different
  /// situations. See [Supported algorithms](#supported_algorithms) for some
  /// more detail on this.
  external JSPromise<JSAny?> deriveKey(
    AlgorithmIdentifier algorithm,
    CryptoKey baseKey,
    AlgorithmIdentifier derivedKeyType,
    bool extractable,
    JSArray<JSString> keyUsages,
  );

  /// The **`deriveBits()`** method of the
  /// [SubtleCrypto] interface can be used to derive an array of bits from a
  /// base
  /// key.
  ///
  /// It takes as its arguments the base key, the derivation algorithm to use,
  /// and the length
  /// of the bits to derive. It returns a
  /// [`Promise`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)
  /// which will be fulfilled with an
  /// [`ArrayBuffer`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer)
  /// containing the derived bits.
  ///
  /// This method is very similar to
  /// [`SubtleCrypto.deriveKey()`](/en-US/docs/Web/API/SubtleCrypto/deriveKey),
  /// except that `deriveKey()` returns a
  /// [`CryptoKey`](https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey)
  /// object rather than an
  /// `ArrayBuffer`. Essentially `deriveKey()` is composed of
  /// `deriveBits()` followed by
  /// [`importKey()`](/en-US/docs/Web/API/SubtleCrypto/importKey).
  ///
  /// This function supports the same derivation algorithms as `deriveKey()`:
  /// ECDH, HKDF, and PBKDF2. See
  /// [Supported algorithms](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/deriveKey#supported_algorithms)
  /// for some more detail on these algorithms.
  external JSPromise<JSArrayBuffer> deriveBits(
    AlgorithmIdentifier algorithm,
    CryptoKey baseKey,
    int length,
  );

  /// The **`importKey()`** method of the [SubtleCrypto]
  /// interface imports a key: that is, it takes as input a key in an external,
  /// portable
  /// format and gives you a [CryptoKey] object that you can use in the
  /// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API).
  ///
  /// The function accepts several import formats: see
  /// [Supported formats](#supported_formats) for details.
  external JSPromise<CryptoKey> importKey(
    KeyFormat format,
    JSObject keyData,
    AlgorithmIdentifier algorithm,
    bool extractable,
    JSArray<JSString> keyUsages,
  );

  /// The **`exportKey()`** method of the [SubtleCrypto]
  /// interface exports a key: that is, it takes as input a [CryptoKey] object
  /// and gives you the key in an external, portable format.
  ///
  /// To export a key, the key must have [CryptoKey.extractable] set to
  /// `true`.
  ///
  /// Keys can be exported in several formats: see
  /// [Supported formats](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#supported_formats)
  /// in the
  /// [`SubtleCrypto.importKey()`](/en-US/docs/Web/API/SubtleCrypto/importKey)
  /// page for details.
  ///
  /// Keys are not exported in an encrypted format: to encrypt keys when
  /// exporting them use
  /// the
  /// [`SubtleCrypto.wrapKey()`](/en-US/docs/Web/API/SubtleCrypto/wrapKey)
  /// API instead.
  external JSPromise<JSAny?> exportKey(
    KeyFormat format,
    CryptoKey key,
  );

  /// The **`wrapKey()`** method of the [SubtleCrypto] interface "wraps" a key.
  /// This means that it exports the key in an external, portable format, then
  /// encrypts the exported key.
  /// Wrapping a key helps protect it in untrusted environments, such as inside
  /// an otherwise unprotected data store or in transmission over an unprotected
  /// network.
  ///
  /// As with [SubtleCrypto.exportKey], you specify an
  /// [export format](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#supported_formats)
  /// for the key.
  /// To export a key, it must have [CryptoKey.extractable] set to `true`.
  ///
  /// But because `wrapKey()` also encrypts the key to be exported, you also
  /// need to pass in the key that must be used to encrypt it.
  /// This is sometimes called the "wrapping key".
  ///
  /// The inverse of `wrapKey()` is [SubtleCrypto.unwrapKey]: while `wrapKey` is
  /// composed of export + encrypt, `unwrapKey` is composed of import + decrypt.
  external JSPromise<JSAny?> wrapKey(
    KeyFormat format,
    CryptoKey key,
    CryptoKey wrappingKey,
    AlgorithmIdentifier wrapAlgorithm,
  );

  /// The **`unwrapKey()`** method of the [SubtleCrypto] interface "unwraps" a
  /// key.
  /// This means that it takes as its input a key that has been exported and
  /// then encrypted (also called "wrapped").
  /// It decrypts the key and then imports it, returning a [CryptoKey] object
  /// that can be used in the
  /// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API).
  ///
  /// As with
  /// [`SubtleCrypto.importKey()`](/en-US/docs/Web/API/SubtleCrypto/importKey),
  /// you specify the key's
  /// [import format](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#supported_formats)
  /// and other attributes of the key to import details such as whether it is
  /// extractable, and which operations it can be used for.
  ///
  /// But because `unwrapKey()` also decrypts the key to be imported, you also
  /// need to pass in the key that must be used to decrypt it.
  /// This is sometimes called the "unwrapping key".
  ///
  /// The inverse of `unwrapKey()` is [SubtleCrypto.wrapKey]: while `unwrapKey`
  /// is composed of decrypt + import, `wrapKey` is composed of encrypt +
  /// export.
  external JSPromise<CryptoKey> unwrapKey(
    KeyFormat format,
    BufferSource wrappedKey,
    CryptoKey unwrappingKey,
    AlgorithmIdentifier unwrapAlgorithm,
    AlgorithmIdentifier unwrappedKeyAlgorithm,
    bool extractable,
    JSArray<JSString> keyUsages,
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
    JSArray<JSString> key_ops,
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
    JSArray<RsaOtherPrimesInfo> oth,
    String k,
  });

  external set kty(String value);
  external String get kty;
  external set use(String value);
  external String get use;
  external set key_ops(JSArray<JSString> value);
  external JSArray<JSString> get key_ops;
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
  external set oth(JSArray<RsaOtherPrimesInfo> value);
  external JSArray<RsaOtherPrimesInfo> get oth;
  external set k(String value);
  external String get k;
}

/// The **`CryptoKeyPair`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents a key pair for an asymmetric cryptography algorithm, also known
/// as a public-key algorithm.
///
/// A `CryptoKeyPair` object can be obtained using [SubtleCrypto.generateKey],
/// when the selected algorithm is one of the asymmetric algorithms:
/// RSASSA-PKCS1-v1_5, RSA-PSS, RSA-OAEP, ECDSA, or ECDH.
///
/// It contains two properties, which are both
/// [`CryptoKey`](https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey)
/// objects: a `privateKey` property containing the private key and a
/// `publicKey` property containing the public key.
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

/// The **`RsaHashedKeyGenParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.generateKey], when generating any RSA-based key pair:
/// that is, when the algorithm is identified as any of
/// [RSASSA-PKCS1-v1_5](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#rsassa-pkcs1-v1_5),
/// [RSA-PSS](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#rsa-pss),
/// or
/// [RSA-OAEP](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#rsa-oaep).
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

/// The **`RsaHashedImportParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.importKey] or [SubtleCrypto.unwrapKey], when importing
/// any RSA-based key pair: that is, when the algorithm is identified as any of
/// [RSASSA-PKCS1-v1_5](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#rsassa-pkcs1-v1_5),
/// [RSA-PSS](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#rsa-pss),
/// or
/// [RSA-OAEP](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#rsa-oaep).
extension type RsaHashedImportParams._(JSObject _)
    implements Algorithm, JSObject {
  external factory RsaHashedImportParams(
      {required HashAlgorithmIdentifier hash});

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}

/// The **`RsaPssParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.sign] or [SubtleCrypto.verify], when using the
/// [RSA-PSS](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#rsa-pss)
/// algorithm.
extension type RsaPssParams._(JSObject _) implements Algorithm, JSObject {
  external factory RsaPssParams({required int saltLength});

  external set saltLength(int value);
  external int get saltLength;
}

/// The **`RsaOaepParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.encrypt], [SubtleCrypto.decrypt], [SubtleCrypto.wrapKey],
/// or [SubtleCrypto.unwrapKey], when using the
/// [RSA_OAEP](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#rsa-oaep)
/// algorithm.
extension type RsaOaepParams._(JSObject _) implements Algorithm, JSObject {
  external factory RsaOaepParams({BufferSource label});

  external set label(BufferSource value);
  external BufferSource get label;
}

/// The **`EcdsaParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.sign] or [SubtleCrypto.verify] when using the
/// [ECDSA](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#ecdsa)
/// algorithm.
extension type EcdsaParams._(JSObject _) implements Algorithm, JSObject {
  external factory EcdsaParams({required HashAlgorithmIdentifier hash});

  external set hash(HashAlgorithmIdentifier value);
  external HashAlgorithmIdentifier get hash;
}

/// The **`EcKeyGenParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.generateKey], when generating any elliptic-curve-based
/// key pair: that is, when the algorithm is identified as either of
/// [ECDSA](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#ecdsa)
/// or
/// [ECDH](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/deriveKey#ecdh).
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

/// The **`EcKeyImportParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.importKey] or [SubtleCrypto.unwrapKey], when generating
/// any elliptic-curve-based key pair: that is, when the algorithm is identified
/// as either of
/// [ECDSA](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#ecdsa)
/// or
/// [ECDH](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/deriveKey#ecdh).
extension type EcKeyImportParams._(JSObject _) implements Algorithm, JSObject {
  external factory EcKeyImportParams({required NamedCurve namedCurve});

  external set namedCurve(NamedCurve value);
  external NamedCurve get namedCurve;
}

/// The **`EcdhKeyDeriveParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.deriveKey], when using the
/// [ECDH](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/deriveKey#ecdh)
/// algorithm.
///
/// ECDH enables two people who each have a key pair consisting of a public and
/// a private key to derive a shared secret. They exchange public keys and use
/// the combination of their private key and the other entity's public key to
/// derive a secret key that they — and no one else — share.
///
/// The parameters for ECDH `deriveKey()` therefore include the other entity's
/// public key, which is combined with this entity's private key to derive the
/// shared secret.
extension type EcdhKeyDeriveParams._(JSObject _)
    implements Algorithm, JSObject {
  external factory EcdhKeyDeriveParams({required CryptoKey public});

  external set public(CryptoKey value);
  external CryptoKey get public;
}

/// The **`AesCtrParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.encrypt], [SubtleCrypto.decrypt], [SubtleCrypto.wrapKey],
/// or [SubtleCrypto.unwrapKey], when using the
/// [AES-CTR](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#aes-ctr)
/// algorithm.
///
/// AES is a block cipher, meaning that it splits the message into blocks and
/// encrypts it a block at a time. In CTR mode, every time a block of the
/// message is encrypted, an extra block of data is mixed in. This extra block
/// is called the "counter block".
///
/// A given counter block value must never be used more than once with the same
/// key:
///
/// - Given a message _n_ blocks long, a different counter block must be used
///   for every block.
/// - If the same key is used to encrypt more than one message, a different
///   counter block must be used for all blocks across all messages.
///
/// Typically this is achieved by splitting the initial counter block value into
/// two concatenated parts:
///
/// - A [nonce](https://en.wikipedia.org/wiki/Cryptographic_nonce) (that is, a
///   number that may only be used once). The nonce part of the block stays the
///   same for every block in the message. Each time a new message is to be
///   encrypted, a new nonce is chosen. Nonces don't have to be secret, but they
///   must not be reused with the same key.
/// - A counter. This part of the block gets incremented each time a block is
///   encrypted.
///
/// Essentially: the nonce should ensure that counter blocks are not reused from
/// one message to the next, while the counter should ensure that counter blocks
/// are not reused within a single message.
///
/// > **Note:** See
/// > [Appendix B of the NIST SP800-38A standard](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-38a.pdf#%5B%7B%22num%22%3A70%2C%22gen%22%3A0%7D%2C%7B%22name%22%3A%22Fit%22%7D%5D)
/// > for more information.
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

/// The **`AesKeyGenParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.generateKey], when generating an AES key: that is, when
/// the algorithm is identified as any of
/// [AES-CBC](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#aes-cbc),
/// [AES-CTR](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#aes-ctr),
/// [AES-GCM](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#aes-gcm),
/// or
/// [AES-KW](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/wrapKey#aes-kw).
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

/// The **`AesCbcParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.encrypt], [SubtleCrypto.decrypt], [SubtleCrypto.wrapKey],
/// or [SubtleCrypto.unwrapKey], when using the
/// [AES-CBC](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#aes-cbc)
/// algorithm.
extension type AesCbcParams._(JSObject _) implements Algorithm, JSObject {
  external factory AesCbcParams({required BufferSource iv});

  external set iv(BufferSource value);
  external BufferSource get iv;
}

/// The **`AesGcmParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.encrypt], [SubtleCrypto.decrypt], [SubtleCrypto.wrapKey],
/// or [SubtleCrypto.unwrapKey], when using the
/// [AES-GCM](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt#aes-gcm)
/// algorithm.
///
/// For details of how to supply appropriate values for this parameter, see the
/// specification for AES-GCM:
/// [NIST SP800-38D](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-38d.pdf),
/// in particular section 5.2.1.1 on Input Data.
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

/// The **`HmacImportParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.importKey] or [SubtleCrypto.unwrapKey], when generating a
/// key for the
/// [HMAC](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#hmac)
/// algorithm.
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

/// The **`HmacKeyGenParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.generateKey], when generating a key for the
/// [HMAC](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/sign#hmac)
/// algorithm.
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

/// The **`HkdfParams`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.deriveKey], when using the
/// [HKDF](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/deriveKey#hkdf)
/// algorithm.
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

/// The **`Pbkdf2Params`** dictionary of the
/// [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
/// represents the object that should be passed as the `algorithm` parameter
/// into [SubtleCrypto.deriveKey], when using the
/// [PBKDF2](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/deriveKey#pbkdf2)
/// algorithm.
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
