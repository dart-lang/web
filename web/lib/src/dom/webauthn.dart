// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'credential_management.dart';
import 'fido.dart';
import 'secure_payment_confirmation.dart';
import 'webidl.dart';

typedef COSEAlgorithmIdentifier = int;
typedef UvmEntry = JSArray<JSNumber>;
typedef UvmEntries = JSArray<UvmEntry>;

/// The **`PublicKeyCredential`** interface provides information about a public
/// key / private key pair, which is a credential for logging in to a service
/// using an un-phishable and data-breach resistant asymmetric key pair instead
/// of a password. It inherits from [Credential], and is part of the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
/// extension to the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API).
///
/// > **Note:** This API is restricted to top-level contexts. Use from within an
/// > `iframe` element will not have any effect.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PublicKeyCredential).
extension type PublicKeyCredential._(JSObject _)
    implements Credential, JSObject {
  external static JSPromise<JSBoolean> isConditionalMediationAvailable();

  /// The **`isUserVerifyingPlatformAuthenticatorAvailable()`** static method of
  /// the [PublicKeyCredential] interface returns a `Promise` which resolves to
  /// `true` if a user-verifying platform authenticator is present.
  ///
  /// A user-verifying platform authenticator is a kind of multi-factor
  /// authenticator that is part of the client device (it is generally not
  /// removable) and that involves an action from the user in order to identify
  /// them. Common user-verifying platform authenticators include:
  ///
  /// - Touch ID or Face ID (macOS and iOS)
  /// - Windows Hello (Windows)
  /// - Device unlock (fingerprint, face, PIN, etc.) on Android
  ///
  /// > **Note:** This method may only be used in top-level contexts and will
  /// > not be available in an `iframe` for example.
  external static JSPromise<JSBoolean>
      isUserVerifyingPlatformAuthenticatorAvailable();

  /// The **`getClientExtensionResults()`** method of the
  /// [PublicKeyCredential] interface returns a map between the identifiers of
  /// extensions requested during credential creation or authentication, and
  /// their results after processing by the user agent.
  ///
  /// During the creation or fetching of a `PublicKeyCredential` (via
  /// [CredentialsContainer.create] and
  /// [CredentialsContainer.get] respectively), it is possible
  /// to request "custom" processing by the client for different extensions,
  /// specified in the `publicKey` option's `extensions` property. You can find
  /// more information about requesting the different extensions in
  /// [Web Authentication extensions](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API/WebAuthn_extensions).
  ///
  /// > **Note:** `getClientExtensionResults()` only returns the results from
  /// > extensions processed by the user agent (client). The results from
  /// > extensions processed by the authenticator can be found in the
  /// > [authenticator data](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API/Authenticator_data)
  /// > available in [AuthenticatorAssertionResponse.authenticatorData].
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();

  /// The **`rawId`** read-only property of the
  /// [PublicKeyCredential] interface is an `ArrayBuffer` object
  /// containing the identifier of the credentials.
  ///
  /// The [PublicKeyCredential.id] property is a
  /// [base64url encoded](https://developer.mozilla.org/en-US/docs/Glossary/Base64)
  /// version of this identifier.
  ///
  /// > **Note:** This property may only be used in top-level contexts and will
  /// > not be available in an `iframe` for example.
  external JSArrayBuffer get rawId;

  /// The **`response`** read-only property of the
  /// [PublicKeyCredential] interface is an [AuthenticatorResponse]
  /// object which is sent from the authenticator to the user agent for the
  /// creation/fetching
  /// of credentials. The information contained in this response will be used by
  /// the relying
  /// party's server to verify the demand is legitimate.
  ///
  /// An `AuthenticatorResponse` is either:
  ///
  /// - an [AuthenticatorAttestationResponse] (when the
  /// `PublicKeyCredential` is created via
  /// [CredentialsContainer.create])
  /// - an [AuthenticatorAssertionResponse] (when the
  /// `PublicKeyCredential` is obtained via
  /// [CredentialsContainer.get]).
  ///
  /// In order to validate the _creation_ of credentials, a relying party's
  /// server
  /// needs both:
  ///
  /// - this response
  /// - the extensions of the client (given by
  /// [PublicKeyCredential.getClientExtensionResults]) to validate the
  /// demand.
  ///
  /// > **Note:** When validating the fetching of existing credentials, the
  /// > whole `PublicKeyCredential` object and the client extensions are
  /// > necessary
  /// > for the relying party's server.
  ///
  /// > **Note:** This property may only be used in top-level contexts and will
  /// > not be available in an `iframe` for example.
  external AuthenticatorResponse get response;

  /// The **`authenticatorAttachment`** read-only property of the
  /// [PublicKeyCredential] interface is a string that indicates the general
  /// category of authenticator used during the associated
  /// [CredentialsContainer.create] or [CredentialsContainer.get] call.
  external String? get authenticatorAttachment;
}

/// The **`AuthenticatorResponse`** interface of the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
/// is the base interface for interfaces that provide a cryptographic root of
/// trust for a key pair. The child interfaces include information from the
/// browser such as the challenge origin and either may be returned from
/// [PublicKeyCredential.response].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AuthenticatorResponse).
extension type AuthenticatorResponse._(JSObject _) implements JSObject {
  /// The **`clientDataJSON`** property of the [AuthenticatorResponse] interface
  /// stores a
  /// [JSON](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/JSON)
  /// string in an
  /// `ArrayBuffer`, representing the client data that was passed to
  /// [CredentialsContainer.create] or [CredentialsContainer.get]. This property
  /// is only accessed on one of the child objects of `AuthenticatorResponse`,
  /// specifically [AuthenticatorAttestationResponse] or
  /// [AuthenticatorAssertionResponse].
  external JSArrayBuffer get clientDataJSON;
}

/// The **`AuthenticatorAttestationResponse`** interface of the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
/// is the result of a WebAuthn credential registration. It contains information
/// about the credential that the server needs to perform WebAuthn assertions,
/// such as its credential ID and public key.
///
/// An `AuthenticatorAttestationResponse` object instance is available in the
/// [PublicKeyCredential.response] property of a [PublicKeyCredential] object
/// returned by a successful [CredentialsContainer.create] call.
///
/// This interface inherits from [AuthenticatorResponse].
///
/// > **Note:** This interface is restricted to top-level contexts. Use of its
/// > features from within an `iframe` element will not have any effect.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AuthenticatorAttestationResponse).
extension type AuthenticatorAttestationResponse._(JSObject _)
    implements AuthenticatorResponse, JSObject {
  /// The **`getTransports()`** method of the [AuthenticatorAttestationResponse]
  /// interface returns an array of strings describing the different transports
  /// which may be used by the authenticator.
  ///
  /// Such transports may be USB, NFC, BLE, internal (applicable when the
  /// authenticator is not removable from the device), or a hybrid approach.
  /// Sites should not interpret this array but instead store it along with the
  /// rest of the credential information. In a subsequent
  /// [CredentialsContainer.get] call, the `transports` value(s) specified
  /// inside `publicKey.allowCredentials` should be set to the stored array
  /// value. This provides a hint to the browser as to which types of
  /// authenticators to try when making an assertion for this credential.
  external JSArray<JSString> getTransports();

  /// The **`getAuthenticatorData()`** method of the
  /// [AuthenticatorAttestationResponse] interface returns an `ArrayBuffer`
  /// containing the authenticator data contained within the
  /// [AuthenticatorAttestationResponse.attestationObject] property.
  ///
  /// This is a convenience function, created to allow easy access to the
  /// authenticator data without having to write extra parsing code to extract
  /// it from the `attestationObject`.
  external JSArrayBuffer getAuthenticatorData();

  /// The **`getPublicKey()`** method of the [AuthenticatorAttestationResponse]
  /// interface returns an `ArrayBuffer` containing the DER
  /// `SubjectPublicKeyInfo` of the new credential (see
  /// [Subject Public Key Info](https://www.rfc-editor.org/rfc/rfc5280#section-4.1.2.7)),
  /// or `null` if this is not available.
  ///
  /// This is a convenience function, created to allow easy access to the public
  /// key. This key will need to be stored in order to verify future
  /// authentication operations (i.e., using [CredentialsContainer.get]).
  external JSArrayBuffer? getPublicKey();

  /// The **`getPublicKeyAlgorithm()`** method of the
  /// [AuthenticatorAttestationResponse] interface returns a number that is
  /// equal to a
  /// [COSE Algorithm Identifier](https://www.iana.org/assignments/cose/cose.xhtml#algorithms),
  /// representing the cryptographic algorithm used for the new credential.
  ///
  /// This is a convenience function created to allow easy access to the
  /// algorithm type. This information will need to be stored in order to verify
  /// future authentication operations (i.e., using [CredentialsContainer.get]).
  external COSEAlgorithmIdentifier getPublicKeyAlgorithm();

  /// The **`attestationObject`** property of the
  /// [AuthenticatorAttestationResponse] interface returns an
  /// `ArrayBuffer` containing the new public key, as well as signature over the
  /// entire `attestationObject` with a private key that is stored in the
  /// authenticator when it is manufactured.
  ///
  /// As part of the [CredentialsContainer.create] call, an authenticator will
  /// create a new keypair as well as an `attestationObject` for that keypair.
  /// The public key
  /// that corresponds to the private key that has created the attestation
  /// signature is well
  /// known; however, there are various well known attestation public key chains
  /// for different
  /// ecosystems (for example, Android or TPM attestations).
  external JSArrayBuffer get attestationObject;
}

/// The **`AuthenticatorAssertionResponse`** interface of the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
/// contains a
/// [digital signature](https://developer.mozilla.org/en-US/docs/Glossary/Signature/Security)
/// from the private key of a particular WebAuthn credential. The relying
/// party's server can verify this signature to authenticate a user, for example
/// when they sign in.
///
/// An `AuthenticatorAssertionResponse` object instance is available in the
/// [PublicKeyCredential.response] property of a [PublicKeyCredential] object
/// returned by a successful [CredentialsContainer.get] call.
///
/// This interface inherits from [AuthenticatorResponse].
///
/// > **Note:** This interface is restricted to top-level contexts. Use from
/// > within an `iframe` element will not have any effect.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AuthenticatorAssertionResponse).
extension type AuthenticatorAssertionResponse._(JSObject _)
    implements AuthenticatorResponse, JSObject {
  /// The **`authenticatorData`** property of the
  /// [AuthenticatorAssertionResponse] interface returns an `ArrayBuffer`
  /// containing information from the authenticator such as the Relying Party ID
  /// Hash (rpIdHash), a signature counter, test of user presence, user
  /// verification flags, and any extensions processed by the authenticator.
  external JSArrayBuffer get authenticatorData;

  /// The **`signature`** read-only property of the
  /// [AuthenticatorAssertionResponse] interface is an `ArrayBuffer`
  /// object which is the signature of the authenticator for both
  /// [AuthenticatorAssertionResponse.authenticatorData] and a SHA-256 hash of
  /// the client data
  /// ([AuthenticatorResponse.clientDataJSON]).
  ///
  /// This signature will be sent to the server for control, as part of the
  /// response. It
  /// provides the proof that an authenticator does possess the private key
  /// which was used for
  /// the credential's generation.
  external JSArrayBuffer get signature;

  /// The **`userHandle`** read-only property of the
  /// [AuthenticatorAssertionResponse] interface is an `ArrayBuffer` object
  /// providing an opaque identifier for the given user. Such an identifier can
  /// be used by the relying party's server to link the user account with its
  /// corresponding credentials and other data.
  ///
  /// This value is specified as `user.id` in the options passed to the
  /// originating [CredentialsContainer.create] call.
  external JSArrayBuffer? get userHandle;
}
extension type PublicKeyCredentialParameters._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialParameters({
    required String type,
    required COSEAlgorithmIdentifier alg,
  });

  external String get type;
  external set type(String value);
  external COSEAlgorithmIdentifier get alg;
  external set alg(COSEAlgorithmIdentifier value);
}

/// The **`PublicKeyCredentialCreationOptions`** dictionary represents the
/// object passed to [CredentialsContainer.create] as the value of the
/// `publicKey` option: that is, when using `create()` to create a public key
/// credential using the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PublicKeyCredentialCreationOptions).
extension type PublicKeyCredentialCreationOptions._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialCreationOptions({
    required PublicKeyCredentialRpEntity rp,
    required PublicKeyCredentialUserEntity user,
    required BufferSource challenge,
    required JSArray<PublicKeyCredentialParameters> pubKeyCredParams,
    int timeout,
    JSArray<PublicKeyCredentialDescriptor> excludeCredentials,
    AuthenticatorSelectionCriteria authenticatorSelection,
    JSArray<JSString> hints,
    String attestation,
    JSArray<JSString> attestationFormats,
    AuthenticationExtensionsClientInputs extensions,
  });

  external PublicKeyCredentialRpEntity get rp;
  external set rp(PublicKeyCredentialRpEntity value);
  external PublicKeyCredentialUserEntity get user;
  external set user(PublicKeyCredentialUserEntity value);
  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external JSArray<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set pubKeyCredParams(JSArray<PublicKeyCredentialParameters> value);
  external int get timeout;
  external set timeout(int value);
  external JSArray<PublicKeyCredentialDescriptor> get excludeCredentials;
  external set excludeCredentials(JSArray<PublicKeyCredentialDescriptor> value);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set authenticatorSelection(AuthenticatorSelectionCriteria value);
  external JSArray<JSString> get hints;
  external set hints(JSArray<JSString> value);
  external String get attestation;
  external set attestation(String value);
  external JSArray<JSString> get attestationFormats;
  external set attestationFormats(JSArray<JSString> value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs value);
}
extension type PublicKeyCredentialEntity._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialEntity({required String name});

  external String get name;
  external set name(String value);
}
extension type PublicKeyCredentialRpEntity._(JSObject _)
    implements PublicKeyCredentialEntity, JSObject {
  external factory PublicKeyCredentialRpEntity({
    required String name,
    String id,
  });

  external String get id;
  external set id(String value);
}
extension type PublicKeyCredentialUserEntity._(JSObject _)
    implements PublicKeyCredentialEntity, JSObject {
  external factory PublicKeyCredentialUserEntity({
    required String name,
    required BufferSource id,
    required String displayName,
  });

  external BufferSource get id;
  external set id(BufferSource value);
  external String get displayName;
  external set displayName(String value);
}
extension type AuthenticatorSelectionCriteria._(JSObject _)
    implements JSObject {
  external factory AuthenticatorSelectionCriteria({
    String authenticatorAttachment,
    String residentKey,
    bool requireResidentKey,
    String userVerification,
  });

  external String get authenticatorAttachment;
  external set authenticatorAttachment(String value);
  external String get residentKey;
  external set residentKey(String value);
  external bool get requireResidentKey;
  external set requireResidentKey(bool value);
  external String get userVerification;
  external set userVerification(String value);
}
extension type PublicKeyCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialRequestOptions({
    required BufferSource challenge,
    int timeout,
    String rpId,
    JSArray<PublicKeyCredentialDescriptor> allowCredentials,
    String userVerification,
    JSArray<JSString> hints,
    AuthenticationExtensionsClientInputs extensions,
  });

  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external int get timeout;
  external set timeout(int value);
  external String get rpId;
  external set rpId(String value);
  external JSArray<PublicKeyCredentialDescriptor> get allowCredentials;
  external set allowCredentials(JSArray<PublicKeyCredentialDescriptor> value);
  external String get userVerification;
  external set userVerification(String value);
  external JSArray<JSString> get hints;
  external set hints(JSArray<JSString> value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs value);
}
extension type AuthenticationExtensionsClientInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientInputs({
    String credentialProtectionPolicy,
    bool enforceCredentialProtectionPolicy,
    JSArrayBuffer credBlob,
    bool getCredBlob,
    bool minPinLength,
    bool hmacCreateSecret,
    HMACGetSecretInput hmacGetSecret,
    AuthenticationExtensionsPaymentInputs payment,
    String appid,
    String appidExclude,
    bool credProps,
    AuthenticationExtensionsPRFInputs prf,
    AuthenticationExtensionsLargeBlobInputs largeBlob,
    bool uvm,
    AuthenticationExtensionsSupplementalPubKeysInputs supplementalPubKeys,
  });

  external String get credentialProtectionPolicy;
  external set credentialProtectionPolicy(String value);
  external bool get enforceCredentialProtectionPolicy;
  external set enforceCredentialProtectionPolicy(bool value);
  external JSArrayBuffer get credBlob;
  external set credBlob(JSArrayBuffer value);
  external bool get getCredBlob;
  external set getCredBlob(bool value);
  external bool get minPinLength;
  external set minPinLength(bool value);
  external bool get hmacCreateSecret;
  external set hmacCreateSecret(bool value);
  external HMACGetSecretInput get hmacGetSecret;
  external set hmacGetSecret(HMACGetSecretInput value);
  external AuthenticationExtensionsPaymentInputs get payment;
  external set payment(AuthenticationExtensionsPaymentInputs value);
  external String get appid;
  external set appid(String value);
  external String get appidExclude;
  external set appidExclude(String value);
  external bool get credProps;
  external set credProps(bool value);
  external AuthenticationExtensionsPRFInputs get prf;
  external set prf(AuthenticationExtensionsPRFInputs value);
  external AuthenticationExtensionsLargeBlobInputs get largeBlob;
  external set largeBlob(AuthenticationExtensionsLargeBlobInputs value);
  external bool get uvm;
  external set uvm(bool value);
  external AuthenticationExtensionsSupplementalPubKeysInputs
      get supplementalPubKeys;
  external set supplementalPubKeys(
      AuthenticationExtensionsSupplementalPubKeysInputs value);
}
extension type AuthenticationExtensionsClientOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientOutputs({
    bool hmacCreateSecret,
    HMACGetSecretOutput hmacGetSecret,
    bool appid,
    bool appidExclude,
    CredentialPropertiesOutput credProps,
    AuthenticationExtensionsPRFOutputs prf,
    AuthenticationExtensionsLargeBlobOutputs largeBlob,
    UvmEntries uvm,
    AuthenticationExtensionsSupplementalPubKeysOutputs supplementalPubKeys,
  });

  external bool get hmacCreateSecret;
  external set hmacCreateSecret(bool value);
  external HMACGetSecretOutput get hmacGetSecret;
  external set hmacGetSecret(HMACGetSecretOutput value);
  external bool get appid;
  external set appid(bool value);
  external bool get appidExclude;
  external set appidExclude(bool value);
  external CredentialPropertiesOutput get credProps;
  external set credProps(CredentialPropertiesOutput value);
  external AuthenticationExtensionsPRFOutputs get prf;
  external set prf(AuthenticationExtensionsPRFOutputs value);
  external AuthenticationExtensionsLargeBlobOutputs get largeBlob;
  external set largeBlob(AuthenticationExtensionsLargeBlobOutputs value);
  external UvmEntries get uvm;
  external set uvm(UvmEntries value);
  external AuthenticationExtensionsSupplementalPubKeysOutputs
      get supplementalPubKeys;
  external set supplementalPubKeys(
      AuthenticationExtensionsSupplementalPubKeysOutputs value);
}
extension type PublicKeyCredentialDescriptor._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialDescriptor({
    required String type,
    required BufferSource id,
    JSArray<JSString> transports,
  });

  external String get type;
  external set type(String value);
  external BufferSource get id;
  external set id(BufferSource value);
  external JSArray<JSString> get transports;
  external set transports(JSArray<JSString> value);
}
extension type CredentialPropertiesOutput._(JSObject _) implements JSObject {
  external factory CredentialPropertiesOutput({
    bool rk,
    String authenticatorDisplayName,
  });

  external bool get rk;
  external set rk(bool value);
  external String get authenticatorDisplayName;
  external set authenticatorDisplayName(String value);
}
extension type AuthenticationExtensionsPRFValues._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFValues({
    required BufferSource first,
    BufferSource second,
  });

  external BufferSource get first;
  external set first(BufferSource value);
  external BufferSource get second;
  external set second(BufferSource value);
}
extension type AuthenticationExtensionsPRFInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFInputs({
    AuthenticationExtensionsPRFValues eval,
    JSObject evalByCredential,
  });

  external AuthenticationExtensionsPRFValues get eval;
  external set eval(AuthenticationExtensionsPRFValues value);
  external JSObject get evalByCredential;
  external set evalByCredential(JSObject value);
}
extension type AuthenticationExtensionsPRFOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFOutputs({
    bool enabled,
    AuthenticationExtensionsPRFValues results,
  });

  external bool get enabled;
  external set enabled(bool value);
  external AuthenticationExtensionsPRFValues get results;
  external set results(AuthenticationExtensionsPRFValues value);
}
extension type AuthenticationExtensionsLargeBlobInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsLargeBlobInputs({
    String support,
    bool read,
    BufferSource write,
  });

  external String get support;
  external set support(String value);
  external bool get read;
  external set read(bool value);
  external BufferSource get write;
  external set write(BufferSource value);
}
extension type AuthenticationExtensionsLargeBlobOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsLargeBlobOutputs({
    bool supported,
    JSArrayBuffer blob,
    bool written,
  });

  external bool get supported;
  external set supported(bool value);
  external JSArrayBuffer get blob;
  external set blob(JSArrayBuffer value);
  external bool get written;
  external set written(bool value);
}
extension type AuthenticationExtensionsSupplementalPubKeysInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsSupplementalPubKeysInputs({
    required JSArray<JSString> scopes,
    String attestation,
    JSArray<JSString> attestationFormats,
  });

  external JSArray<JSString> get scopes;
  external set scopes(JSArray<JSString> value);
  external String get attestation;
  external set attestation(String value);
  external JSArray<JSString> get attestationFormats;
  external set attestationFormats(JSArray<JSString> value);
}
extension type AuthenticationExtensionsSupplementalPubKeysOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsSupplementalPubKeysOutputs(
      {required JSArray<JSArrayBuffer> signatures});

  external JSArray<JSArrayBuffer> get signatures;
  external set signatures(JSArray<JSArrayBuffer> value);
}
