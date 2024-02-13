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

import 'credential_management.dart';
import 'webidl.dart';

typedef Base64URLString = String;
typedef PublicKeyCredentialJSON = JSObject;
typedef PublicKeyCredentialClientCapabilities = JSObject;
typedef COSEAlgorithmIdentifier = int;
typedef UvmEntry = JSArray<JSNumber>;
typedef UvmEntries = JSArray<UvmEntry>;
typedef AuthenticatorAttachment = String;
typedef ResidentKeyRequirement = String;
typedef AttestationConveyancePreference = String;
typedef TokenBindingStatus = String;
typedef PublicKeyCredentialType = String;
typedef AuthenticatorTransport = String;
typedef UserVerificationRequirement = String;
typedef ClientCapability = String;
typedef PublicKeyCredentialHints = String;
typedef LargeBlobSupport = String;

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
extension type PublicKeyCredential._(JSObject _)
    implements Credential, JSObject {
  /// The **`isConditionalMediationAvailable()`** static method of the
  /// [PublicKeyCredential] interface returns a `Promise` which resolves to
  /// `true` if conditional mediation is available.
  ///
  /// Conditional mediation, if available, results in any discovered credentials
  /// being presented to the user in a non-modal dialog box along with an
  /// indication of the origin requesting credentials. This is requested by
  /// including `mediation: 'conditional'` in your `get()` call. In practice,
  /// this means autofilling available credentials; you need to include
  /// `autocomplete="webauthn"` on your form fields so that they will show the
  /// WebAuthn sign-in options.
  ///
  /// A conditional `get()` call does not show the browser UI and remains
  /// pending until the user picks an account to sign-in with from available
  /// autofill suggestions:
  ///
  /// - If the user makes a gesture outside of the dialog, it closes without
  ///   resolving or rejecting the Promise and without causing a user-visible
  ///   error condition.
  /// - If the user selects a credential, that credential is returned to the
  ///   caller.
  ///
  /// The prevent silent access flag (see
  /// [CredentialsContainer.preventSilentAccess]) is treated as being `true`
  /// regardless of its actual value: the conditional behavior always involves
  /// user mediation of some sort if applicable credentials are discovered.
  ///
  /// > **Note:** If no credentials are discovered, the non-modal dialog will
  /// > not be visible, and the user agent can prompt the user to take action in
  /// > a way that depends on the type of credential (for example, to insert a
  /// > device containing credentials).
  external static JSPromise<JSBoolean> isConditionalMediationAvailable();
  external static JSPromise<JSBoolean>
      isUserVerifyingPlatformAuthenticatorAvailable();
  external static JSPromise<PublicKeyCredentialClientCapabilities>
      getClientCapabilities();
  external static PublicKeyCredentialCreationOptions
      parseCreationOptionsFromJSON(
          PublicKeyCredentialCreationOptionsJSON options);
  external static PublicKeyCredentialRequestOptions parseRequestOptionsFromJSON(
      PublicKeyCredentialRequestOptionsJSON options);

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

  /// The **`toJSON()`** method of the [PublicKeyCredential] interface returns a
  /// of a [PublicKeyCredential].
  ///
  /// The properties of the returned object depend on whether the credential is
  /// returned by
  /// [`navigator.credentials.create()`](/en-US/docs/Web/API/CredentialsContainer/create)
  /// when
  /// [creating a key pair and registering a user](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API#creating_a_key_pair_and_registering_a_user),
  /// or
  /// [`navigator.credentials.get()`](/en-US/docs/Web/API/CredentialsContainer/get)
  /// when
  /// [authenticating a user](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API#authenticating_a_user).
  ///
  /// This method is automatically invoked when web app code calls
  /// [`JSON.stringify()`](/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify)
  /// to serialize a [PublicKeyCredential] so that it can be sent to relying
  /// party server when registering or authenticating a user.
  /// It not intended to be called directly in web app code.
  external PublicKeyCredentialJSON toJSON();
  external JSArrayBuffer get rawId;
  external AuthenticatorResponse get response;
  external String? get authenticatorAttachment;
}
extension type RegistrationResponseJSON._(JSObject _) implements JSObject {
  external factory RegistrationResponseJSON({
    required Base64URLString id,
    required Base64URLString rawId,
    required AuthenticatorAttestationResponseJSON response,
    String authenticatorAttachment,
    required AuthenticationExtensionsClientOutputsJSON clientExtensionResults,
    required String type,
  });

  external set id(Base64URLString value);
  external Base64URLString get id;
  external set rawId(Base64URLString value);
  external Base64URLString get rawId;
  external set response(AuthenticatorAttestationResponseJSON value);
  external AuthenticatorAttestationResponseJSON get response;
  external set authenticatorAttachment(String value);
  external String get authenticatorAttachment;
  external set clientExtensionResults(
      AuthenticationExtensionsClientOutputsJSON value);
  external AuthenticationExtensionsClientOutputsJSON get clientExtensionResults;
  external set type(String value);
  external String get type;
}
extension type AuthenticatorAttestationResponseJSON._(JSObject _)
    implements JSObject {
  external factory AuthenticatorAttestationResponseJSON({
    required Base64URLString clientDataJSON,
    required Base64URLString authenticatorData,
    required JSArray<JSString> transports,
    Base64URLString publicKey,
    required int publicKeyAlgorithm,
    required Base64URLString attestationObject,
  });

  external set clientDataJSON(Base64URLString value);
  external Base64URLString get clientDataJSON;
  external set authenticatorData(Base64URLString value);
  external Base64URLString get authenticatorData;
  external set transports(JSArray<JSString> value);
  external JSArray<JSString> get transports;
  external set publicKey(Base64URLString value);
  external Base64URLString get publicKey;
  external set publicKeyAlgorithm(int value);
  external int get publicKeyAlgorithm;
  external set attestationObject(Base64URLString value);
  external Base64URLString get attestationObject;
}
extension type AuthenticationResponseJSON._(JSObject _) implements JSObject {
  external factory AuthenticationResponseJSON({
    required Base64URLString id,
    required Base64URLString rawId,
    required AuthenticatorAssertionResponseJSON response,
    String authenticatorAttachment,
    required AuthenticationExtensionsClientOutputsJSON clientExtensionResults,
    required String type,
  });

  external set id(Base64URLString value);
  external Base64URLString get id;
  external set rawId(Base64URLString value);
  external Base64URLString get rawId;
  external set response(AuthenticatorAssertionResponseJSON value);
  external AuthenticatorAssertionResponseJSON get response;
  external set authenticatorAttachment(String value);
  external String get authenticatorAttachment;
  external set clientExtensionResults(
      AuthenticationExtensionsClientOutputsJSON value);
  external AuthenticationExtensionsClientOutputsJSON get clientExtensionResults;
  external set type(String value);
  external String get type;
}
extension type AuthenticatorAssertionResponseJSON._(JSObject _)
    implements JSObject {
  external factory AuthenticatorAssertionResponseJSON({
    required Base64URLString clientDataJSON,
    required Base64URLString authenticatorData,
    required Base64URLString signature,
    Base64URLString userHandle,
  });

  external set clientDataJSON(Base64URLString value);
  external Base64URLString get clientDataJSON;
  external set authenticatorData(Base64URLString value);
  external Base64URLString get authenticatorData;
  external set signature(Base64URLString value);
  external Base64URLString get signature;
  external set userHandle(Base64URLString value);
  external Base64URLString get userHandle;
}
extension type AuthenticationExtensionsClientOutputsJSON._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientOutputsJSON();
}
extension type PublicKeyCredentialCreationOptionsJSON._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialCreationOptionsJSON({
    required PublicKeyCredentialRpEntity rp,
    required PublicKeyCredentialUserEntityJSON user,
    required Base64URLString challenge,
    required JSArray<PublicKeyCredentialParameters> pubKeyCredParams,
    int timeout,
    JSArray<PublicKeyCredentialDescriptorJSON> excludeCredentials,
    AuthenticatorSelectionCriteria authenticatorSelection,
    JSArray<JSString> hints,
    String attestation,
    JSArray<JSString> attestationFormats,
    AuthenticationExtensionsClientInputsJSON extensions,
  });

  external set rp(PublicKeyCredentialRpEntity value);
  external PublicKeyCredentialRpEntity get rp;
  external set user(PublicKeyCredentialUserEntityJSON value);
  external PublicKeyCredentialUserEntityJSON get user;
  external set challenge(Base64URLString value);
  external Base64URLString get challenge;
  external set pubKeyCredParams(JSArray<PublicKeyCredentialParameters> value);
  external JSArray<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set timeout(int value);
  external int get timeout;
  external set excludeCredentials(
      JSArray<PublicKeyCredentialDescriptorJSON> value);
  external JSArray<PublicKeyCredentialDescriptorJSON> get excludeCredentials;
  external set authenticatorSelection(AuthenticatorSelectionCriteria value);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set hints(JSArray<JSString> value);
  external JSArray<JSString> get hints;
  external set attestation(String value);
  external String get attestation;
  external set attestationFormats(JSArray<JSString> value);
  external JSArray<JSString> get attestationFormats;
  external set extensions(AuthenticationExtensionsClientInputsJSON value);
  external AuthenticationExtensionsClientInputsJSON get extensions;
}
extension type PublicKeyCredentialUserEntityJSON._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialUserEntityJSON({
    required Base64URLString id,
    required String name,
    required String displayName,
  });

  external set id(Base64URLString value);
  external Base64URLString get id;
  external set name(String value);
  external String get name;
  external set displayName(String value);
  external String get displayName;
}
extension type PublicKeyCredentialDescriptorJSON._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialDescriptorJSON({
    required Base64URLString id,
    required String type,
    JSArray<JSString> transports,
  });

  external set id(Base64URLString value);
  external Base64URLString get id;
  external set type(String value);
  external String get type;
  external set transports(JSArray<JSString> value);
  external JSArray<JSString> get transports;
}
extension type AuthenticationExtensionsClientInputsJSON._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientInputsJSON();
}
extension type PublicKeyCredentialRequestOptionsJSON._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialRequestOptionsJSON({
    required Base64URLString challenge,
    int timeout,
    String rpId,
    JSArray<PublicKeyCredentialDescriptorJSON> allowCredentials,
    String userVerification,
    JSArray<JSString> hints,
    AuthenticationExtensionsClientInputsJSON extensions,
  });

  external set challenge(Base64URLString value);
  external Base64URLString get challenge;
  external set timeout(int value);
  external int get timeout;
  external set rpId(String value);
  external String get rpId;
  external set allowCredentials(
      JSArray<PublicKeyCredentialDescriptorJSON> value);
  external JSArray<PublicKeyCredentialDescriptorJSON> get allowCredentials;
  external set userVerification(String value);
  external String get userVerification;
  external set hints(JSArray<JSString> value);
  external JSArray<JSString> get hints;
  external set extensions(AuthenticationExtensionsClientInputsJSON value);
  external AuthenticationExtensionsClientInputsJSON get extensions;
}

/// The **`AuthenticatorResponse`** interface of the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
/// is the base interface for interfaces that provide a cryptographic root of
/// trust for a key pair. The child interfaces include information from the
/// browser such as the challenge origin and either may be returned from
/// [PublicKeyCredential.response].
extension type AuthenticatorResponse._(JSObject _) implements JSObject {
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
extension type AuthenticatorAssertionResponse._(JSObject _)
    implements AuthenticatorResponse, JSObject {
  external JSArrayBuffer get authenticatorData;
  external JSArrayBuffer get signature;
  external JSArrayBuffer? get userHandle;
}
extension type PublicKeyCredentialParameters._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialParameters({
    required String type,
    required COSEAlgorithmIdentifier alg,
  });

  external set type(String value);
  external String get type;
  external set alg(COSEAlgorithmIdentifier value);
  external COSEAlgorithmIdentifier get alg;
}
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

  external set rp(PublicKeyCredentialRpEntity value);
  external PublicKeyCredentialRpEntity get rp;
  external set user(PublicKeyCredentialUserEntity value);
  external PublicKeyCredentialUserEntity get user;
  external set challenge(BufferSource value);
  external BufferSource get challenge;
  external set pubKeyCredParams(JSArray<PublicKeyCredentialParameters> value);
  external JSArray<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set timeout(int value);
  external int get timeout;
  external set excludeCredentials(JSArray<PublicKeyCredentialDescriptor> value);
  external JSArray<PublicKeyCredentialDescriptor> get excludeCredentials;
  external set authenticatorSelection(AuthenticatorSelectionCriteria value);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set hints(JSArray<JSString> value);
  external JSArray<JSString> get hints;
  external set attestation(String value);
  external String get attestation;
  external set attestationFormats(JSArray<JSString> value);
  external JSArray<JSString> get attestationFormats;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external AuthenticationExtensionsClientInputs get extensions;
}
extension type PublicKeyCredentialEntity._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialEntity({required String name});

  external set name(String value);
  external String get name;
}
extension type PublicKeyCredentialRpEntity._(JSObject _)
    implements PublicKeyCredentialEntity, JSObject {
  external factory PublicKeyCredentialRpEntity({String id});

  external set id(String value);
  external String get id;
}
extension type PublicKeyCredentialUserEntity._(JSObject _)
    implements PublicKeyCredentialEntity, JSObject {
  external factory PublicKeyCredentialUserEntity({
    required BufferSource id,
    required String displayName,
  });

  external set id(BufferSource value);
  external BufferSource get id;
  external set displayName(String value);
  external String get displayName;
}
extension type AuthenticatorSelectionCriteria._(JSObject _)
    implements JSObject {
  external factory AuthenticatorSelectionCriteria({
    String authenticatorAttachment,
    String residentKey,
    bool requireResidentKey,
    String userVerification,
  });

  external set authenticatorAttachment(String value);
  external String get authenticatorAttachment;
  external set residentKey(String value);
  external String get residentKey;
  external set requireResidentKey(bool value);
  external bool get requireResidentKey;
  external set userVerification(String value);
  external String get userVerification;
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

  external set challenge(BufferSource value);
  external BufferSource get challenge;
  external set timeout(int value);
  external int get timeout;
  external set rpId(String value);
  external String get rpId;
  external set allowCredentials(JSArray<PublicKeyCredentialDescriptor> value);
  external JSArray<PublicKeyCredentialDescriptor> get allowCredentials;
  external set userVerification(String value);
  external String get userVerification;
  external set hints(JSArray<JSString> value);
  external JSArray<JSString> get hints;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external AuthenticationExtensionsClientInputs get extensions;
}
extension type AuthenticationExtensionsClientInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientInputs({
    String appid,
    String appidExclude,
    bool credProps,
    AuthenticationExtensionsPRFInputs prf,
    AuthenticationExtensionsLargeBlobInputs largeBlob,
    bool uvm,
    AuthenticationExtensionsSupplementalPubKeysInputs supplementalPubKeys,
  });

  external set appid(String value);
  external String get appid;
  external set appidExclude(String value);
  external String get appidExclude;
  external set credProps(bool value);
  external bool get credProps;
  external set prf(AuthenticationExtensionsPRFInputs value);
  external AuthenticationExtensionsPRFInputs get prf;
  external set largeBlob(AuthenticationExtensionsLargeBlobInputs value);
  external AuthenticationExtensionsLargeBlobInputs get largeBlob;
  external set uvm(bool value);
  external bool get uvm;
  external set supplementalPubKeys(
      AuthenticationExtensionsSupplementalPubKeysInputs value);
  external AuthenticationExtensionsSupplementalPubKeysInputs
      get supplementalPubKeys;
}
extension type AuthenticationExtensionsClientOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientOutputs({
    bool appid,
    bool appidExclude,
    CredentialPropertiesOutput credProps,
    AuthenticationExtensionsPRFOutputs prf,
    AuthenticationExtensionsLargeBlobOutputs largeBlob,
    UvmEntries uvm,
    AuthenticationExtensionsSupplementalPubKeysOutputs supplementalPubKeys,
  });

  external set appid(bool value);
  external bool get appid;
  external set appidExclude(bool value);
  external bool get appidExclude;
  external set credProps(CredentialPropertiesOutput value);
  external CredentialPropertiesOutput get credProps;
  external set prf(AuthenticationExtensionsPRFOutputs value);
  external AuthenticationExtensionsPRFOutputs get prf;
  external set largeBlob(AuthenticationExtensionsLargeBlobOutputs value);
  external AuthenticationExtensionsLargeBlobOutputs get largeBlob;
  external set uvm(UvmEntries value);
  external UvmEntries get uvm;
  external set supplementalPubKeys(
      AuthenticationExtensionsSupplementalPubKeysOutputs value);
  external AuthenticationExtensionsSupplementalPubKeysOutputs
      get supplementalPubKeys;
}
extension type CollectedClientData._(JSObject _) implements JSObject {
  external factory CollectedClientData({
    required String type,
    required String challenge,
    required String origin,
    String topOrigin,
    bool crossOrigin,
  });

  external set type(String value);
  external String get type;
  external set challenge(String value);
  external String get challenge;
  external set origin(String value);
  external String get origin;
  external set topOrigin(String value);
  external String get topOrigin;
  external set crossOrigin(bool value);
  external bool get crossOrigin;
}
extension type TokenBinding._(JSObject _) implements JSObject {
  external factory TokenBinding({
    required String status,
    String id,
  });

  external set status(String value);
  external String get status;
  external set id(String value);
  external String get id;
}
extension type PublicKeyCredentialDescriptor._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialDescriptor({
    required String type,
    required BufferSource id,
    JSArray<JSString> transports,
  });

  external set type(String value);
  external String get type;
  external set id(BufferSource value);
  external BufferSource get id;
  external set transports(JSArray<JSString> value);
  external JSArray<JSString> get transports;
}
extension type CredentialPropertiesOutput._(JSObject _) implements JSObject {
  external factory CredentialPropertiesOutput({
    bool rk,
    String authenticatorDisplayName,
  });

  external set rk(bool value);
  external bool get rk;
  external set authenticatorDisplayName(String value);
  external String get authenticatorDisplayName;
}
extension type AuthenticationExtensionsPRFValues._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFValues({
    required BufferSource first,
    BufferSource second,
  });

  external set first(BufferSource value);
  external BufferSource get first;
  external set second(BufferSource value);
  external BufferSource get second;
}
extension type AuthenticationExtensionsPRFInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFInputs({
    AuthenticationExtensionsPRFValues eval,
    JSObject evalByCredential,
  });

  external set eval(AuthenticationExtensionsPRFValues value);
  external AuthenticationExtensionsPRFValues get eval;
  external set evalByCredential(JSObject value);
  external JSObject get evalByCredential;
}
extension type AuthenticationExtensionsPRFOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFOutputs({
    bool enabled,
    AuthenticationExtensionsPRFValues results,
  });

  external set enabled(bool value);
  external bool get enabled;
  external set results(AuthenticationExtensionsPRFValues value);
  external AuthenticationExtensionsPRFValues get results;
}
extension type AuthenticationExtensionsLargeBlobInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsLargeBlobInputs({
    String support,
    bool read,
    BufferSource write,
  });

  external set support(String value);
  external String get support;
  external set read(bool value);
  external bool get read;
  external set write(BufferSource value);
  external BufferSource get write;
}
extension type AuthenticationExtensionsLargeBlobOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsLargeBlobOutputs({
    bool supported,
    JSArrayBuffer blob,
    bool written,
  });

  external set supported(bool value);
  external bool get supported;
  external set blob(JSArrayBuffer value);
  external JSArrayBuffer get blob;
  external set written(bool value);
  external bool get written;
}
extension type AuthenticationExtensionsSupplementalPubKeysInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsSupplementalPubKeysInputs({
    required JSArray<JSString> scopes,
    String attestation,
    JSArray<JSString> attestationFormats,
  });

  external set scopes(JSArray<JSString> value);
  external JSArray<JSString> get scopes;
  external set attestation(String value);
  external String get attestation;
  external set attestationFormats(JSArray<JSString> value);
  external JSArray<JSString> get attestationFormats;
}
extension type AuthenticationExtensionsSupplementalPubKeysOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsSupplementalPubKeysOutputs(
      {required JSArray<JSArrayBuffer> signatures});

  external set signatures(JSArray<JSArrayBuffer> value);
  external JSArray<JSArrayBuffer> get signatures;
}
