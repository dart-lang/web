// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'fedcm.dart';
import 'web_otp.dart';
import 'webauthn.dart';

typedef PasswordCredentialInit = JSAny;
typedef CredentialMediationRequirement = JSString;

@JS('Credential')
@staticInterop
class Credential {
  external static JSPromise isConditionalMediationAvailable();
}

extension CredentialExtension on Credential {
  external JSString get id;
  external JSString get type;
}

@JS('CredentialUserData')
@staticInterop
class CredentialUserData {}

extension CredentialUserDataExtension on CredentialUserData {
  external JSString get name;
  external JSString get iconURL;
}

@JS('CredentialsContainer')
@staticInterop
class CredentialsContainer {}

extension CredentialsContainerExtension on CredentialsContainer {
  external JSPromise get([CredentialRequestOptions options]);
  external JSPromise store(Credential credential);
  external JSPromise create([CredentialCreationOptions options]);
  external JSPromise preventSilentAccess();
}

@JS()
@staticInterop
@anonymous
class CredentialData {
  external factory CredentialData({required JSString id});
}

extension CredentialDataExtension on CredentialData {
  external set id(JSString value);
  external JSString get id;
}

@JS()
@staticInterop
@anonymous
class CredentialRequestOptions {
  external factory CredentialRequestOptions({
    IdentityCredentialRequestOptions identity,
    CredentialMediationRequirement mediation,
    AbortSignal signal,
    JSBoolean password,
    FederatedCredentialRequestOptions federated,
    OTPCredentialRequestOptions otp,
    PublicKeyCredentialRequestOptions publicKey,
  });
}

extension CredentialRequestOptionsExtension on CredentialRequestOptions {
  external set identity(IdentityCredentialRequestOptions value);
  external IdentityCredentialRequestOptions get identity;
  external set mediation(CredentialMediationRequirement value);
  external CredentialMediationRequirement get mediation;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set password(JSBoolean value);
  external JSBoolean get password;
  external set federated(FederatedCredentialRequestOptions value);
  external FederatedCredentialRequestOptions get federated;
  external set otp(OTPCredentialRequestOptions value);
  external OTPCredentialRequestOptions get otp;
  external set publicKey(PublicKeyCredentialRequestOptions value);
  external PublicKeyCredentialRequestOptions get publicKey;
}

@JS()
@staticInterop
@anonymous
class CredentialCreationOptions {
  external factory CredentialCreationOptions({
    AbortSignal signal,
    PasswordCredentialInit password,
    FederatedCredentialInit federated,
    PublicKeyCredentialCreationOptions publicKey,
  });
}

extension CredentialCreationOptionsExtension on CredentialCreationOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set password(PasswordCredentialInit value);
  external PasswordCredentialInit get password;
  external set federated(FederatedCredentialInit value);
  external FederatedCredentialInit get federated;
  external set publicKey(PublicKeyCredentialCreationOptions value);
  external PublicKeyCredentialCreationOptions get publicKey;
}

@JS('PasswordCredential')
@staticInterop
class PasswordCredential implements Credential, CredentialUserData {
  external factory PasswordCredential(JSAny dataOrForm);
}

extension PasswordCredentialExtension on PasswordCredential {
  external JSString get password;
}

@JS()
@staticInterop
@anonymous
class PasswordCredentialData implements CredentialData {
  external factory PasswordCredentialData({
    JSString name,
    JSString iconURL,
    required JSString origin,
    required JSString password,
  });
}

extension PasswordCredentialDataExtension on PasswordCredentialData {
  external set name(JSString value);
  external JSString get name;
  external set iconURL(JSString value);
  external JSString get iconURL;
  external set origin(JSString value);
  external JSString get origin;
  external set password(JSString value);
  external JSString get password;
}

@JS('FederatedCredential')
@staticInterop
class FederatedCredential implements Credential, CredentialUserData {
  external factory FederatedCredential(FederatedCredentialInit data);
}

extension FederatedCredentialExtension on FederatedCredential {
  external JSString get provider;
  external JSString? get protocol;
}

@JS()
@staticInterop
@anonymous
class FederatedCredentialRequestOptions {
  external factory FederatedCredentialRequestOptions({
    JSArray providers,
    JSArray protocols,
  });
}

extension FederatedCredentialRequestOptionsExtension
    on FederatedCredentialRequestOptions {
  external set providers(JSArray value);
  external JSArray get providers;
  external set protocols(JSArray value);
  external JSArray get protocols;
}

@JS()
@staticInterop
@anonymous
class FederatedCredentialInit implements CredentialData {
  external factory FederatedCredentialInit({
    JSString name,
    JSString iconURL,
    required JSString origin,
    required JSString provider,
    JSString protocol,
  });
}

extension FederatedCredentialInitExtension on FederatedCredentialInit {
  external set name(JSString value);
  external JSString get name;
  external set iconURL(JSString value);
  external JSString get iconURL;
  external set origin(JSString value);
  external JSString get origin;
  external set provider(JSString value);
  external JSString get provider;
  external set protocol(JSString value);
  external JSString get protocol;
}
