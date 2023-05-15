// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'credential_management.dart';
import 'fido.dart';
import 'secure_payment_confirmation.dart';
import 'webidl.dart';

typedef Base64URLString = JSString;
typedef PublicKeyCredentialJSON = JSAny;
typedef COSEAlgorithmIdentifier = JSNumber;
typedef UvmEntry = JSArray;
typedef UvmEntries = JSArray;
typedef AuthenticatorAttachment = JSString;
typedef ResidentKeyRequirement = JSString;
typedef AttestationConveyancePreference = JSString;
typedef TokenBindingStatus = JSString;
typedef PublicKeyCredentialType = JSString;
typedef AuthenticatorTransport = JSString;
typedef UserVerificationRequirement = JSString;
typedef LargeBlobSupport = JSString;

@JS('PublicKeyCredential')
@staticInterop
class PublicKeyCredential implements Credential {
  external static JSPromise isConditionalMediationAvailable();
  external static JSPromise isUserVerifyingPlatformAuthenticatorAvailable();
  external static PublicKeyCredentialCreationOptions
      parseCreationOptionsFromJSON(
          PublicKeyCredentialCreationOptionsJSON options);
  external static PublicKeyCredentialRequestOptions parseRequestOptionsFromJSON(
      PublicKeyCredentialRequestOptionsJSON options);
}

extension PublicKeyCredentialExtension on PublicKeyCredential {
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();
  external PublicKeyCredentialJSON toJSON();
  external JSArrayBuffer get rawId;
  external AuthenticatorResponse get response;
  external JSString? get authenticatorAttachment;
}

@JS()
@staticInterop
@anonymous
class RegistrationResponseJSON implements JSObject {
  external factory RegistrationResponseJSON({
    Base64URLString id,
    Base64URLString rawId,
    AuthenticatorAttestationResponseJSON response,
    JSString? authenticatorAttachment,
    AuthenticationExtensionsClientOutputsJSON clientExtensionResults,
    JSString type,
  });
}

extension RegistrationResponseJSONExtension on RegistrationResponseJSON {
  external set id(Base64URLString value);
  external Base64URLString get id;
  external set rawId(Base64URLString value);
  external Base64URLString get rawId;
  external set response(AuthenticatorAttestationResponseJSON value);
  external AuthenticatorAttestationResponseJSON get response;
  external set authenticatorAttachment(JSString? value);
  external JSString? get authenticatorAttachment;
  external set clientExtensionResults(
      AuthenticationExtensionsClientOutputsJSON value);
  external AuthenticationExtensionsClientOutputsJSON get clientExtensionResults;
  external set type(JSString value);
  external JSString get type;
}

@JS()
@staticInterop
@anonymous
class AuthenticatorAttestationResponseJSON implements JSObject {
  external factory AuthenticatorAttestationResponseJSON({
    Base64URLString clientDataJSON,
    Base64URLString attestationObject,
    JSArray transports,
  });
}

extension AuthenticatorAttestationResponseJSONExtension
    on AuthenticatorAttestationResponseJSON {
  external set clientDataJSON(Base64URLString value);
  external Base64URLString get clientDataJSON;
  external set attestationObject(Base64URLString value);
  external Base64URLString get attestationObject;
  external set transports(JSArray value);
  external JSArray get transports;
}

@JS()
@staticInterop
@anonymous
class AuthenticationResponseJSON implements JSObject {
  external factory AuthenticationResponseJSON({
    Base64URLString id,
    Base64URLString rawId,
    AuthenticatorAssertionResponseJSON response,
    JSString? authenticatorAttachment,
    AuthenticationExtensionsClientOutputsJSON clientExtensionResults,
    JSString type,
  });
}

extension AuthenticationResponseJSONExtension on AuthenticationResponseJSON {
  external set id(Base64URLString value);
  external Base64URLString get id;
  external set rawId(Base64URLString value);
  external Base64URLString get rawId;
  external set response(AuthenticatorAssertionResponseJSON value);
  external AuthenticatorAssertionResponseJSON get response;
  external set authenticatorAttachment(JSString? value);
  external JSString? get authenticatorAttachment;
  external set clientExtensionResults(
      AuthenticationExtensionsClientOutputsJSON value);
  external AuthenticationExtensionsClientOutputsJSON get clientExtensionResults;
  external set type(JSString value);
  external JSString get type;
}

@JS()
@staticInterop
@anonymous
class AuthenticatorAssertionResponseJSON implements JSObject {
  external factory AuthenticatorAssertionResponseJSON({
    Base64URLString clientDataJSON,
    Base64URLString authenticatorData,
    Base64URLString signature,
    Base64URLString? userHandle,
  });
}

extension AuthenticatorAssertionResponseJSONExtension
    on AuthenticatorAssertionResponseJSON {
  external set clientDataJSON(Base64URLString value);
  external Base64URLString get clientDataJSON;
  external set authenticatorData(Base64URLString value);
  external Base64URLString get authenticatorData;
  external set signature(Base64URLString value);
  external Base64URLString get signature;
  external set userHandle(Base64URLString? value);
  external Base64URLString? get userHandle;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsClientOutputsJSON implements JSObject {
  external factory AuthenticationExtensionsClientOutputsJSON();
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialCreationOptionsJSON implements JSObject {
  external factory PublicKeyCredentialCreationOptionsJSON({
    required PublicKeyCredentialRpEntity rp,
    required PublicKeyCredentialUserEntityJSON user,
    required Base64URLString challenge,
    required JSArray pubKeyCredParams,
    JSNumber timeout,
    JSArray excludeCredentials,
    AuthenticatorSelectionCriteria authenticatorSelection,
    JSString attestation,
    AuthenticationExtensionsClientInputsJSON extensions,
  });
}

extension PublicKeyCredentialCreationOptionsJSONExtension
    on PublicKeyCredentialCreationOptionsJSON {
  external set rp(PublicKeyCredentialRpEntity value);
  external PublicKeyCredentialRpEntity get rp;
  external set user(PublicKeyCredentialUserEntityJSON value);
  external PublicKeyCredentialUserEntityJSON get user;
  external set challenge(Base64URLString value);
  external Base64URLString get challenge;
  external set pubKeyCredParams(JSArray value);
  external JSArray get pubKeyCredParams;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set excludeCredentials(JSArray value);
  external JSArray get excludeCredentials;
  external set authenticatorSelection(AuthenticatorSelectionCriteria value);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set attestation(JSString value);
  external JSString get attestation;
  external set extensions(AuthenticationExtensionsClientInputsJSON value);
  external AuthenticationExtensionsClientInputsJSON get extensions;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialUserEntityJSON implements JSObject {
  external factory PublicKeyCredentialUserEntityJSON({
    required Base64URLString id,
    required JSString name,
    required JSString displayName,
  });
}

extension PublicKeyCredentialUserEntityJSONExtension
    on PublicKeyCredentialUserEntityJSON {
  external set id(Base64URLString value);
  external Base64URLString get id;
  external set name(JSString value);
  external JSString get name;
  external set displayName(JSString value);
  external JSString get displayName;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialDescriptorJSON implements JSObject {
  external factory PublicKeyCredentialDescriptorJSON({
    required Base64URLString id,
    required JSString type,
    JSArray transports,
  });
}

extension PublicKeyCredentialDescriptorJSONExtension
    on PublicKeyCredentialDescriptorJSON {
  external set id(Base64URLString value);
  external Base64URLString get id;
  external set type(JSString value);
  external JSString get type;
  external set transports(JSArray value);
  external JSArray get transports;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsClientInputsJSON implements JSObject {
  external factory AuthenticationExtensionsClientInputsJSON();
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialRequestOptionsJSON implements JSObject {
  external factory PublicKeyCredentialRequestOptionsJSON({
    required Base64URLString challenge,
    JSNumber timeout,
    JSString rpId,
    JSArray allowCredentials,
    JSString userVerification,
    AuthenticationExtensionsClientInputsJSON extensions,
  });
}

extension PublicKeyCredentialRequestOptionsJSONExtension
    on PublicKeyCredentialRequestOptionsJSON {
  external set challenge(Base64URLString value);
  external Base64URLString get challenge;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set rpId(JSString value);
  external JSString get rpId;
  external set allowCredentials(JSArray value);
  external JSArray get allowCredentials;
  external set userVerification(JSString value);
  external JSString get userVerification;
  external set extensions(AuthenticationExtensionsClientInputsJSON value);
  external AuthenticationExtensionsClientInputsJSON get extensions;
}

@JS('AuthenticatorResponse')
@staticInterop
class AuthenticatorResponse implements JSObject {}

extension AuthenticatorResponseExtension on AuthenticatorResponse {
  external JSArrayBuffer get clientDataJSON;
}

@JS('AuthenticatorAttestationResponse')
@staticInterop
class AuthenticatorAttestationResponse implements AuthenticatorResponse {}

extension AuthenticatorAttestationResponseExtension
    on AuthenticatorAttestationResponse {
  external JSArray getTransports();
  external JSArrayBuffer getAuthenticatorData();
  external JSArrayBuffer? getPublicKey();
  external COSEAlgorithmIdentifier getPublicKeyAlgorithm();
  external JSArrayBuffer get attestationObject;
}

@JS('AuthenticatorAssertionResponse')
@staticInterop
class AuthenticatorAssertionResponse implements AuthenticatorResponse {}

extension AuthenticatorAssertionResponseExtension
    on AuthenticatorAssertionResponse {
  external JSArrayBuffer get authenticatorData;
  external JSArrayBuffer get signature;
  external JSArrayBuffer? get userHandle;
  external JSArrayBuffer? get attestationObject;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialParameters implements JSObject {
  external factory PublicKeyCredentialParameters({
    required JSString type,
    required COSEAlgorithmIdentifier alg,
  });
}

extension PublicKeyCredentialParametersExtension
    on PublicKeyCredentialParameters {
  external set type(JSString value);
  external JSString get type;
  external set alg(COSEAlgorithmIdentifier value);
  external COSEAlgorithmIdentifier get alg;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialCreationOptions implements JSObject {
  external factory PublicKeyCredentialCreationOptions({
    required PublicKeyCredentialRpEntity rp,
    required PublicKeyCredentialUserEntity user,
    required BufferSource challenge,
    required JSArray pubKeyCredParams,
    JSNumber timeout,
    JSArray excludeCredentials,
    AuthenticatorSelectionCriteria authenticatorSelection,
    JSString attestation,
    JSArray attestationFormats,
    AuthenticationExtensionsClientInputs extensions,
  });
}

extension PublicKeyCredentialCreationOptionsExtension
    on PublicKeyCredentialCreationOptions {
  external set rp(PublicKeyCredentialRpEntity value);
  external PublicKeyCredentialRpEntity get rp;
  external set user(PublicKeyCredentialUserEntity value);
  external PublicKeyCredentialUserEntity get user;
  external set challenge(BufferSource value);
  external BufferSource get challenge;
  external set pubKeyCredParams(JSArray value);
  external JSArray get pubKeyCredParams;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set excludeCredentials(JSArray value);
  external JSArray get excludeCredentials;
  external set authenticatorSelection(AuthenticatorSelectionCriteria value);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set attestation(JSString value);
  external JSString get attestation;
  external set attestationFormats(JSArray value);
  external JSArray get attestationFormats;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external AuthenticationExtensionsClientInputs get extensions;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialEntity implements JSObject {
  external factory PublicKeyCredentialEntity({required JSString name});
}

extension PublicKeyCredentialEntityExtension on PublicKeyCredentialEntity {
  external set name(JSString value);
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialRpEntity implements PublicKeyCredentialEntity {
  external factory PublicKeyCredentialRpEntity({JSString id});
}

extension PublicKeyCredentialRpEntityExtension on PublicKeyCredentialRpEntity {
  external set id(JSString value);
  external JSString get id;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialUserEntity implements PublicKeyCredentialEntity {
  external factory PublicKeyCredentialUserEntity({
    required BufferSource id,
    required JSString displayName,
  });
}

extension PublicKeyCredentialUserEntityExtension
    on PublicKeyCredentialUserEntity {
  external set id(BufferSource value);
  external BufferSource get id;
  external set displayName(JSString value);
  external JSString get displayName;
}

@JS()
@staticInterop
@anonymous
class AuthenticatorSelectionCriteria implements JSObject {
  external factory AuthenticatorSelectionCriteria({
    JSString authenticatorAttachment,
    JSString residentKey,
    JSBoolean requireResidentKey,
    JSString userVerification,
  });
}

extension AuthenticatorSelectionCriteriaExtension
    on AuthenticatorSelectionCriteria {
  external set authenticatorAttachment(JSString value);
  external JSString get authenticatorAttachment;
  external set residentKey(JSString value);
  external JSString get residentKey;
  external set requireResidentKey(JSBoolean value);
  external JSBoolean get requireResidentKey;
  external set userVerification(JSString value);
  external JSString get userVerification;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialRequestOptions implements JSObject {
  external factory PublicKeyCredentialRequestOptions({
    required BufferSource challenge,
    JSNumber timeout,
    JSString rpId,
    JSArray allowCredentials,
    JSString userVerification,
    JSString attestation,
    JSArray attestationFormats,
    AuthenticationExtensionsClientInputs extensions,
  });
}

extension PublicKeyCredentialRequestOptionsExtension
    on PublicKeyCredentialRequestOptions {
  external set challenge(BufferSource value);
  external BufferSource get challenge;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set rpId(JSString value);
  external JSString get rpId;
  external set allowCredentials(JSArray value);
  external JSArray get allowCredentials;
  external set userVerification(JSString value);
  external JSString get userVerification;
  external set attestation(JSString value);
  external JSString get attestation;
  external set attestationFormats(JSArray value);
  external JSArray get attestationFormats;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external AuthenticationExtensionsClientInputs get extensions;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsClientInputs implements JSObject {
  external factory AuthenticationExtensionsClientInputs({
    JSString credentialProtectionPolicy,
    JSBoolean enforceCredentialProtectionPolicy,
    JSArrayBuffer credBlob,
    JSBoolean getCredBlob,
    JSBoolean minPinLength,
    JSBoolean hmacCreateSecret,
    HMACGetSecretInput hmacGetSecret,
    AuthenticationExtensionsPaymentInputs payment,
    JSString appid,
    JSString appidExclude,
    JSBoolean credProps,
    AuthenticationExtensionsPRFInputs prf,
    AuthenticationExtensionsLargeBlobInputs largeBlob,
    JSBoolean uvm,
    AuthenticationExtensionsDevicePublicKeyInputs devicePubKey,
  });
}

extension AuthenticationExtensionsClientInputsExtension
    on AuthenticationExtensionsClientInputs {
  external set credentialProtectionPolicy(JSString value);
  external JSString get credentialProtectionPolicy;
  external set enforceCredentialProtectionPolicy(JSBoolean value);
  external JSBoolean get enforceCredentialProtectionPolicy;
  external set credBlob(JSArrayBuffer value);
  external JSArrayBuffer get credBlob;
  external set getCredBlob(JSBoolean value);
  external JSBoolean get getCredBlob;
  external set minPinLength(JSBoolean value);
  external JSBoolean get minPinLength;
  external set hmacCreateSecret(JSBoolean value);
  external JSBoolean get hmacCreateSecret;
  external set hmacGetSecret(HMACGetSecretInput value);
  external HMACGetSecretInput get hmacGetSecret;
  external set payment(AuthenticationExtensionsPaymentInputs value);
  external AuthenticationExtensionsPaymentInputs get payment;
  external set appid(JSString value);
  external JSString get appid;
  external set appidExclude(JSString value);
  external JSString get appidExclude;
  external set credProps(JSBoolean value);
  external JSBoolean get credProps;
  external set prf(AuthenticationExtensionsPRFInputs value);
  external AuthenticationExtensionsPRFInputs get prf;
  external set largeBlob(AuthenticationExtensionsLargeBlobInputs value);
  external AuthenticationExtensionsLargeBlobInputs get largeBlob;
  external set uvm(JSBoolean value);
  external JSBoolean get uvm;
  external set devicePubKey(
      AuthenticationExtensionsDevicePublicKeyInputs value);
  external AuthenticationExtensionsDevicePublicKeyInputs get devicePubKey;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsClientOutputs implements JSObject {
  external factory AuthenticationExtensionsClientOutputs({
    JSBoolean hmacCreateSecret,
    HMACGetSecretOutput hmacGetSecret,
    JSBoolean appid,
    JSBoolean appidExclude,
    CredentialPropertiesOutput credProps,
    AuthenticationExtensionsPRFOutputs prf,
    AuthenticationExtensionsLargeBlobOutputs largeBlob,
    UvmEntries uvm,
    AuthenticationExtensionsDevicePublicKeyOutputs devicePubKey,
  });
}

extension AuthenticationExtensionsClientOutputsExtension
    on AuthenticationExtensionsClientOutputs {
  external set hmacCreateSecret(JSBoolean value);
  external JSBoolean get hmacCreateSecret;
  external set hmacGetSecret(HMACGetSecretOutput value);
  external HMACGetSecretOutput get hmacGetSecret;
  external set appid(JSBoolean value);
  external JSBoolean get appid;
  external set appidExclude(JSBoolean value);
  external JSBoolean get appidExclude;
  external set credProps(CredentialPropertiesOutput value);
  external CredentialPropertiesOutput get credProps;
  external set prf(AuthenticationExtensionsPRFOutputs value);
  external AuthenticationExtensionsPRFOutputs get prf;
  external set largeBlob(AuthenticationExtensionsLargeBlobOutputs value);
  external AuthenticationExtensionsLargeBlobOutputs get largeBlob;
  external set uvm(UvmEntries value);
  external UvmEntries get uvm;
  external set devicePubKey(
      AuthenticationExtensionsDevicePublicKeyOutputs value);
  external AuthenticationExtensionsDevicePublicKeyOutputs get devicePubKey;
}

@JS()
@staticInterop
@anonymous
class CollectedClientData implements JSObject {
  external factory CollectedClientData({
    required JSString type,
    required JSString challenge,
    required JSString origin,
    JSString topOrigin,
    JSBoolean crossOrigin,
  });
}

extension CollectedClientDataExtension on CollectedClientData {
  external set type(JSString value);
  external JSString get type;
  external set challenge(JSString value);
  external JSString get challenge;
  external set origin(JSString value);
  external JSString get origin;
  external set topOrigin(JSString value);
  external JSString get topOrigin;
  external set crossOrigin(JSBoolean value);
  external JSBoolean get crossOrigin;
}

@JS()
@staticInterop
@anonymous
class TokenBinding implements JSObject {
  external factory TokenBinding({
    required JSString status,
    JSString id,
  });
}

extension TokenBindingExtension on TokenBinding {
  external set status(JSString value);
  external JSString get status;
  external set id(JSString value);
  external JSString get id;
}

@JS()
@staticInterop
@anonymous
class PublicKeyCredentialDescriptor implements JSObject {
  external factory PublicKeyCredentialDescriptor({
    required JSString type,
    required BufferSource id,
    JSArray transports,
  });
}

extension PublicKeyCredentialDescriptorExtension
    on PublicKeyCredentialDescriptor {
  external set type(JSString value);
  external JSString get type;
  external set id(BufferSource value);
  external BufferSource get id;
  external set transports(JSArray value);
  external JSArray get transports;
}

@JS()
@staticInterop
@anonymous
class CredentialPropertiesOutput implements JSObject {
  external factory CredentialPropertiesOutput({JSBoolean rk});
}

extension CredentialPropertiesOutputExtension on CredentialPropertiesOutput {
  external set rk(JSBoolean value);
  external JSBoolean get rk;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsPRFValues implements JSObject {
  external factory AuthenticationExtensionsPRFValues({
    required BufferSource first,
    BufferSource second,
  });
}

extension AuthenticationExtensionsPRFValuesExtension
    on AuthenticationExtensionsPRFValues {
  external set first(BufferSource value);
  external BufferSource get first;
  external set second(BufferSource value);
  external BufferSource get second;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsPRFInputs implements JSObject {
  external factory AuthenticationExtensionsPRFInputs({
    AuthenticationExtensionsPRFValues eval,
    JSAny evalByCredential,
  });
}

extension AuthenticationExtensionsPRFInputsExtension
    on AuthenticationExtensionsPRFInputs {
  external set eval(AuthenticationExtensionsPRFValues value);
  external AuthenticationExtensionsPRFValues get eval;
  external set evalByCredential(JSAny value);
  external JSAny get evalByCredential;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsPRFOutputs implements JSObject {
  external factory AuthenticationExtensionsPRFOutputs({
    JSBoolean enabled,
    AuthenticationExtensionsPRFValues results,
  });
}

extension AuthenticationExtensionsPRFOutputsExtension
    on AuthenticationExtensionsPRFOutputs {
  external set enabled(JSBoolean value);
  external JSBoolean get enabled;
  external set results(AuthenticationExtensionsPRFValues value);
  external AuthenticationExtensionsPRFValues get results;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsLargeBlobInputs implements JSObject {
  external factory AuthenticationExtensionsLargeBlobInputs({
    JSString support,
    JSBoolean read,
    BufferSource write,
  });
}

extension AuthenticationExtensionsLargeBlobInputsExtension
    on AuthenticationExtensionsLargeBlobInputs {
  external set support(JSString value);
  external JSString get support;
  external set read(JSBoolean value);
  external JSBoolean get read;
  external set write(BufferSource value);
  external BufferSource get write;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsLargeBlobOutputs implements JSObject {
  external factory AuthenticationExtensionsLargeBlobOutputs({
    JSBoolean supported,
    JSArrayBuffer blob,
    JSBoolean written,
  });
}

extension AuthenticationExtensionsLargeBlobOutputsExtension
    on AuthenticationExtensionsLargeBlobOutputs {
  external set supported(JSBoolean value);
  external JSBoolean get supported;
  external set blob(JSArrayBuffer value);
  external JSArrayBuffer get blob;
  external set written(JSBoolean value);
  external JSBoolean get written;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsDevicePublicKeyInputs implements JSObject {
  external factory AuthenticationExtensionsDevicePublicKeyInputs({
    JSString attestation,
    JSArray attestationFormats,
  });
}

extension AuthenticationExtensionsDevicePublicKeyInputsExtension
    on AuthenticationExtensionsDevicePublicKeyInputs {
  external set attestation(JSString value);
  external JSString get attestation;
  external set attestationFormats(JSArray value);
  external JSArray get attestationFormats;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsDevicePublicKeyOutputs implements JSObject {
  external factory AuthenticationExtensionsDevicePublicKeyOutputs(
      {JSArrayBuffer signature});
}

extension AuthenticationExtensionsDevicePublicKeyOutputsExtension
    on AuthenticationExtensionsDevicePublicKeyOutputs {
  external set signature(JSArrayBuffer value);
  external JSArrayBuffer get signature;
}
