// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
class PublicKeyCredential extends Credential {
  external factory PublicKeyCredential();
  external static JSPromise isConditionalMediationAvailable();
  external static JSPromise isUserVerifyingPlatformAuthenticatorAvailable();
  external static PublicKeyCredentialCreationOptions
      parseCreationOptionsFromJSON(
          PublicKeyCredentialCreationOptionsJSON options);
  external static PublicKeyCredentialRequestOptions parseRequestOptionsFromJSON(
      PublicKeyCredentialRequestOptionsJSON options);
}

extension PublicKeyCredentialExtension on PublicKeyCredential {
  external JSArrayBuffer get rawId;
  external AuthenticatorResponse get response;
  external JSString? get authenticatorAttachment;
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();
  external PublicKeyCredentialJSON toJSON();
}

@JS('RegistrationResponseJSON')
@staticInterop
class RegistrationResponseJSON {
  external factory RegistrationResponseJSON();
}

extension RegistrationResponseJSONExtension on RegistrationResponseJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticatorAttestationResponseJSON')
@staticInterop
class AuthenticatorAttestationResponseJSON {
  external factory AuthenticatorAttestationResponseJSON();
}

extension AuthenticatorAttestationResponseJSONExtension
    on AuthenticatorAttestationResponseJSON {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationResponseJSON')
@staticInterop
class AuthenticationResponseJSON {
  external factory AuthenticationResponseJSON();
}

extension AuthenticationResponseJSONExtension on AuthenticationResponseJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticatorAssertionResponseJSON')
@staticInterop
class AuthenticatorAssertionResponseJSON {
  external factory AuthenticatorAssertionResponseJSON();
}

extension AuthenticatorAssertionResponseJSONExtension
    on AuthenticatorAssertionResponseJSON {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientOutputsJSON')
@staticInterop
class AuthenticationExtensionsClientOutputsJSON {
  external factory AuthenticationExtensionsClientOutputsJSON();
}

@JS('PublicKeyCredentialCreationOptionsJSON')
@staticInterop
class PublicKeyCredentialCreationOptionsJSON {
  external factory PublicKeyCredentialCreationOptionsJSON();
}

extension PublicKeyCredentialCreationOptionsJSONExtension
    on PublicKeyCredentialCreationOptionsJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialUserEntityJSON')
@staticInterop
class PublicKeyCredentialUserEntityJSON {
  external factory PublicKeyCredentialUserEntityJSON();
}

extension PublicKeyCredentialUserEntityJSONExtension
    on PublicKeyCredentialUserEntityJSON {
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialDescriptorJSON')
@staticInterop
class PublicKeyCredentialDescriptorJSON {
  external factory PublicKeyCredentialDescriptorJSON();
}

extension PublicKeyCredentialDescriptorJSONExtension
    on PublicKeyCredentialDescriptorJSON {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientInputsJSON')
@staticInterop
class AuthenticationExtensionsClientInputsJSON {
  external factory AuthenticationExtensionsClientInputsJSON();
}

@JS('PublicKeyCredentialRequestOptionsJSON')
@staticInterop
class PublicKeyCredentialRequestOptionsJSON {
  external factory PublicKeyCredentialRequestOptionsJSON();
}

extension PublicKeyCredentialRequestOptionsJSONExtension
    on PublicKeyCredentialRequestOptionsJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticatorResponse')
@staticInterop
class AuthenticatorResponse {
  external factory AuthenticatorResponse();
}

extension AuthenticatorResponseExtension on AuthenticatorResponse {
  external JSArrayBuffer get clientDataJSON;
}

@JS('AuthenticatorAttestationResponse')
@staticInterop
class AuthenticatorAttestationResponse extends AuthenticatorResponse {
  external factory AuthenticatorAttestationResponse();
}

extension AuthenticatorAttestationResponseExtension
    on AuthenticatorAttestationResponse {
  external JSArrayBuffer get attestationObject;
  external JSArray getTransports();
  external JSArrayBuffer getAuthenticatorData();
  external JSArrayBuffer? getPublicKey();
  external COSEAlgorithmIdentifier getPublicKeyAlgorithm();
}

@JS('AuthenticatorAssertionResponse')
@staticInterop
class AuthenticatorAssertionResponse extends AuthenticatorResponse {
  external factory AuthenticatorAssertionResponse();
}

extension AuthenticatorAssertionResponseExtension
    on AuthenticatorAssertionResponse {
  external JSArrayBuffer get authenticatorData;
  external JSArrayBuffer get signature;
  external JSArrayBuffer? get userHandle;
  external JSArrayBuffer? get attestationObject;
}

@JS('PublicKeyCredentialParameters')
@staticInterop
class PublicKeyCredentialParameters {
  external factory PublicKeyCredentialParameters();
}

extension PublicKeyCredentialParametersExtension
    on PublicKeyCredentialParameters {
  // TODO
  // TODO
}

@JS('PublicKeyCredentialCreationOptions')
@staticInterop
class PublicKeyCredentialCreationOptions {
  external factory PublicKeyCredentialCreationOptions();
}

extension PublicKeyCredentialCreationOptionsExtension
    on PublicKeyCredentialCreationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialEntity')
@staticInterop
class PublicKeyCredentialEntity {
  external factory PublicKeyCredentialEntity();
}

extension PublicKeyCredentialEntityExtension on PublicKeyCredentialEntity {
  // TODO
}

@JS('PublicKeyCredentialRpEntity')
@staticInterop
class PublicKeyCredentialRpEntity extends PublicKeyCredentialEntity {
  external factory PublicKeyCredentialRpEntity();
}

extension PublicKeyCredentialRpEntityExtension on PublicKeyCredentialRpEntity {
  // TODO
}

@JS('PublicKeyCredentialUserEntity')
@staticInterop
class PublicKeyCredentialUserEntity extends PublicKeyCredentialEntity {
  external factory PublicKeyCredentialUserEntity();
}

extension PublicKeyCredentialUserEntityExtension
    on PublicKeyCredentialUserEntity {
  // TODO
  // TODO
}

@JS('AuthenticatorSelectionCriteria')
@staticInterop
class AuthenticatorSelectionCriteria {
  external factory AuthenticatorSelectionCriteria();
}

extension AuthenticatorSelectionCriteriaExtension
    on AuthenticatorSelectionCriteria {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialRequestOptions')
@staticInterop
class PublicKeyCredentialRequestOptions {
  external factory PublicKeyCredentialRequestOptions();
}

extension PublicKeyCredentialRequestOptionsExtension
    on PublicKeyCredentialRequestOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientInputs')
@staticInterop
class AuthenticationExtensionsClientInputs {
  external factory AuthenticationExtensionsClientInputs();
}

extension AuthenticationExtensionsClientInputsExtension
    on AuthenticationExtensionsClientInputs {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientOutputs')
@staticInterop
class AuthenticationExtensionsClientOutputs {
  external factory AuthenticationExtensionsClientOutputs();
}

extension AuthenticationExtensionsClientOutputsExtension
    on AuthenticationExtensionsClientOutputs {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CollectedClientData')
@staticInterop
class CollectedClientData {
  external factory CollectedClientData();
}

extension CollectedClientDataExtension on CollectedClientData {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TokenBinding')
@staticInterop
class TokenBinding {
  external factory TokenBinding();
}

extension TokenBindingExtension on TokenBinding {
  // TODO
  // TODO
}

@JS('PublicKeyCredentialDescriptor')
@staticInterop
class PublicKeyCredentialDescriptor {
  external factory PublicKeyCredentialDescriptor();
}

extension PublicKeyCredentialDescriptorExtension
    on PublicKeyCredentialDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('CredentialPropertiesOutput')
@staticInterop
class CredentialPropertiesOutput {
  external factory CredentialPropertiesOutput();
}

extension CredentialPropertiesOutputExtension on CredentialPropertiesOutput {
  // TODO
}

@JS('AuthenticationExtensionsPRFValues')
@staticInterop
class AuthenticationExtensionsPRFValues {
  external factory AuthenticationExtensionsPRFValues();
}

extension AuthenticationExtensionsPRFValuesExtension
    on AuthenticationExtensionsPRFValues {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsPRFInputs')
@staticInterop
class AuthenticationExtensionsPRFInputs {
  external factory AuthenticationExtensionsPRFInputs();
}

extension AuthenticationExtensionsPRFInputsExtension
    on AuthenticationExtensionsPRFInputs {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsPRFOutputs')
@staticInterop
class AuthenticationExtensionsPRFOutputs {
  external factory AuthenticationExtensionsPRFOutputs();
}

extension AuthenticationExtensionsPRFOutputsExtension
    on AuthenticationExtensionsPRFOutputs {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsLargeBlobInputs')
@staticInterop
class AuthenticationExtensionsLargeBlobInputs {
  external factory AuthenticationExtensionsLargeBlobInputs();
}

extension AuthenticationExtensionsLargeBlobInputsExtension
    on AuthenticationExtensionsLargeBlobInputs {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsLargeBlobOutputs')
@staticInterop
class AuthenticationExtensionsLargeBlobOutputs {
  external factory AuthenticationExtensionsLargeBlobOutputs();
}

extension AuthenticationExtensionsLargeBlobOutputsExtension
    on AuthenticationExtensionsLargeBlobOutputs {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsDevicePublicKeyInputs')
@staticInterop
class AuthenticationExtensionsDevicePublicKeyInputs {
  external factory AuthenticationExtensionsDevicePublicKeyInputs();
}

extension AuthenticationExtensionsDevicePublicKeyInputsExtension
    on AuthenticationExtensionsDevicePublicKeyInputs {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsDevicePublicKeyOutputs')
@staticInterop
class AuthenticationExtensionsDevicePublicKeyOutputs {
  external factory AuthenticationExtensionsDevicePublicKeyOutputs();
}

extension AuthenticationExtensionsDevicePublicKeyOutputsExtension
    on AuthenticationExtensionsDevicePublicKeyOutputs {
  // TODO
  // TODO
}
