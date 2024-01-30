// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'fedcm.dart';
import 'web_otp.dart';
import 'webauthn.dart';

typedef PasswordCredentialInit = JSObject;
typedef CredentialMediationRequirement = String;
extension type Credential._(JSObject _) implements JSObject {
  external static JSPromise<JSBoolean> isConditionalMediationAvailable();
  external String get id;
  external String get type;
}
extension type CredentialsContainer._(JSObject _) implements JSObject {
  external JSPromise<Credential?> get([CredentialRequestOptions options]);
  external JSPromise<JSAny?> store(Credential credential);
  external JSPromise<Credential?> create([CredentialCreationOptions options]);
  external JSPromise<JSAny?> preventSilentAccess();
}
extension type CredentialData._(JSObject _) implements JSObject {
  external factory CredentialData({required String id});

  external set id(String value);
  external String get id;
}
extension type CredentialRequestOptions._(JSObject _) implements JSObject {
  external factory CredentialRequestOptions({
    IdentityCredentialRequestOptions identity,
    CredentialMediationRequirement mediation,
    AbortSignal signal,
    bool password,
    FederatedCredentialRequestOptions federated,
    OTPCredentialRequestOptions otp,
    PublicKeyCredentialRequestOptions publicKey,
  });

  external set identity(IdentityCredentialRequestOptions value);
  external IdentityCredentialRequestOptions get identity;
  external set mediation(CredentialMediationRequirement value);
  external CredentialMediationRequirement get mediation;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set password(bool value);
  external bool get password;
  external set federated(FederatedCredentialRequestOptions value);
  external FederatedCredentialRequestOptions get federated;
  external set otp(OTPCredentialRequestOptions value);
  external OTPCredentialRequestOptions get otp;
  external set publicKey(PublicKeyCredentialRequestOptions value);
  external PublicKeyCredentialRequestOptions get publicKey;
}
extension type CredentialCreationOptions._(JSObject _) implements JSObject {
  external factory CredentialCreationOptions({
    AbortSignal signal,
    PasswordCredentialInit password,
    FederatedCredentialInit federated,
    PublicKeyCredentialCreationOptions publicKey,
  });

  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set password(PasswordCredentialInit value);
  external PasswordCredentialInit get password;
  external set federated(FederatedCredentialInit value);
  external FederatedCredentialInit get federated;
  external set publicKey(PublicKeyCredentialCreationOptions value);
  external PublicKeyCredentialCreationOptions get publicKey;
}
extension type PasswordCredential._(JSObject _)
    implements Credential, JSObject {
  external factory PasswordCredential(JSObject dataOrForm);

  external String get password;
  external String get name;
  external String get iconURL;
}
extension type PasswordCredentialData._(JSObject _)
    implements CredentialData, JSObject {
  external factory PasswordCredentialData({
    String name,
    String iconURL,
    required String origin,
    required String password,
  });

  external set name(String value);
  external String get name;
  external set iconURL(String value);
  external String get iconURL;
  external set origin(String value);
  external String get origin;
  external set password(String value);
  external String get password;
}
extension type FederatedCredential._(JSObject _)
    implements Credential, JSObject {
  external factory FederatedCredential(FederatedCredentialInit data);

  external String get provider;
  external String? get protocol;
  external String get name;
  external String get iconURL;
}
extension type FederatedCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory FederatedCredentialRequestOptions({
    JSArray<JSString> providers,
    JSArray<JSString> protocols,
  });

  external set providers(JSArray<JSString> value);
  external JSArray<JSString> get providers;
  external set protocols(JSArray<JSString> value);
  external JSArray<JSString> get protocols;
}
extension type FederatedCredentialInit._(JSObject _)
    implements CredentialData, JSObject {
  external factory FederatedCredentialInit({
    String name,
    String iconURL,
    required String origin,
    required String provider,
    String protocol,
  });

  external set name(String value);
  external String get name;
  external set iconURL(String value);
  external String get iconURL;
  external set origin(String value);
  external String get origin;
  external set provider(String value);
  external String get provider;
  external set protocol(String value);
  external String get protocol;
}
