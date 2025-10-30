// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'digital_credentials.dart';
import 'dom.dart';
import 'fedcm.dart';
import 'web_otp.dart';
import 'webauthn.dart';

typedef PasswordCredentialInit = JSObject;
typedef CredentialMediationRequirement = String;

/// The **`Credential`** interface of the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
/// provides information about an entity (usually a user) normally as a
/// prerequisite to a trust decision.
///
/// `Credential` objects may be of the following types:
///
/// - [FederatedCredential]
/// - [IdentityCredential]
/// - [PasswordCredential]
/// - [PublicKeyCredential]
/// - [OTPCredential]
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Credential).
extension type Credential._(JSObject _) implements JSObject {
  /// The **`id`** read-only property of the [Credential] interface returns a
  /// string containing the credential's identifier. This might be a GUID,
  /// username, or email address, or some other value, depending on the type of
  /// credential.
  external String get id;

  /// The **`type`** read-only property of the [Credential] interface returns a
  /// string containing the credential's type. Valid values are `password`,
  /// `federated`, `public-key`, `identity` and `otp`.
  external String get type;
}

/// The **`CredentialsContainer`** interface of the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
/// exposes methods to request credentials and notify the user agent when events
/// such as successful sign in or sign out happen. This interface is accessible
/// from [Navigator.credentials].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CredentialsContainer).
extension type CredentialsContainer._(JSObject _) implements JSObject {
  /// The **`get()`** method of the [CredentialsContainer] interface returns a
  /// `Promise` that fulfills with a single , which can then be used to
  /// authenticate a user to a website.
  ///
  /// The method accepts a single optional `options` argument, which may
  /// include:
  ///
  /// - A `mediation` property indicating how and whether the user should be
  ///   asked to participate in the operation.
  /// This controls, for example, whether the site can silently sign a user in
  /// using a stored credential.
  /// - A `signal` property enabling the operation to be cancelled using an
  ///   [AbortController].
  /// - One or more properties — `password`, `federated`, `identity`, `otp`,
  ///   `publicKey` — which indicate the
  ///   [types of credential](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API/Credential_types)
  ///   being requested. If set, the values of these properties include any
  ///   parameters that the browser needs in order to find an appropriate
  ///   credential of the requested type.
  ///
  /// The API always fulfills with a single credential or `null`. If multiple
  /// credentials are available and user mediation is allowed, then the browser
  /// will ask the user to select a single credential.
  external JSPromise<Credential?> get([CredentialRequestOptions options]);

  /// The **`store()`** method of the
  /// [CredentialsContainer] stores a set of credentials for the user inside a
  /// [Credential] instance, returning this in a `Promise`.
  ///
  /// > [!NOTE]
  /// > This method is restricted to top-level contexts. Calls to it within an
  /// > `<iframe>` element will resolve without effect.
  external JSPromise<JSAny?> store(Credential credential);

  /// The **`create()`** method of the [CredentialsContainer] interface creates
  /// a new , which can then be stored and later retrieved using the
  /// [CredentialsContainer.get] method. The retrieved credential can then be
  /// used by a website to authenticate a user.
  ///
  /// This method supports three different types of credential:
  ///
  /// - A password credential, which enables a user to sign in using a password.
  /// - A federated credential, which enables a user to sign in using a
  ///   federated identity provider.
  /// - A public key credential, which enables a user to sign in with an
  ///   authenticator such as a biometric reader built into the platform or a
  ///   removable hardware token.
  ///
  /// Note that the [Federated Credential Management API
  /// (FedCM)](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
  /// supersedes the federated credential type.
  external JSPromise<Credential?> create([CredentialCreationOptions options]);

  /// The **`preventSilentAccess()`** method of the [CredentialsContainer]
  /// interface sets a flag that specifies whether automatic log in is allowed
  /// for future visits to the current origin, then returns a `Promise` that
  /// resolves to `undefined`.
  /// For example, you might call this, after a user signs out of a website to
  /// ensure that they aren't automatically signed in on the next site visit.
  /// Mediation varies by origin, and is an added check point of browser stored
  /// credentials, informing a user of an account login status. This method is
  /// typically called after a user signs out of a website, ensuring this user's
  /// login information is not automatically passed on the next site visit.
  ///
  /// This method
  /// [generally has no effect](https://www.w3.org/TR/webauthn-2/#sctn-preventSilentAccessCredential)
  /// when using a [PublicKeyCredential]; such authenticators typically require
  /// user interaction. However, it _is possible_ that certain authenticators
  /// may be excluded, which could otherwise have operated silently.
  ///
  /// Earlier versions of the spec called this method `requireUserMediation()`.
  /// The
  /// [Browser compatibility](https://developer.mozilla.org/en-US/docs/Web/API/CredentialsContainer#browser_compatibility)
  /// section has support details.
  external JSPromise<JSAny?> preventSilentAccess();
}
extension type CredentialData._(JSObject _) implements JSObject {
  external factory CredentialData({required String id});

  external String get id;
  external set id(String value);
}
extension type CredentialRequestOptions._(JSObject _) implements JSObject {
  external factory CredentialRequestOptions({
    CredentialMediationRequirement mediation,
    AbortSignal signal,
    bool password,
    FederatedCredentialRequestOptions federated,
    DigitalCredentialRequestOptions digital,
    IdentityCredentialRequestOptions identity,
    OTPCredentialRequestOptions otp,
    PublicKeyCredentialRequestOptions publicKey,
  });

  external CredentialMediationRequirement get mediation;
  external set mediation(CredentialMediationRequirement value);
  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external bool get password;
  external set password(bool value);
  external FederatedCredentialRequestOptions get federated;
  external set federated(FederatedCredentialRequestOptions value);
  external DigitalCredentialRequestOptions get digital;
  external set digital(DigitalCredentialRequestOptions value);
  external IdentityCredentialRequestOptions get identity;
  external set identity(IdentityCredentialRequestOptions value);
  external OTPCredentialRequestOptions get otp;
  external set otp(OTPCredentialRequestOptions value);
  external PublicKeyCredentialRequestOptions get publicKey;
  external set publicKey(PublicKeyCredentialRequestOptions value);
}
extension type CredentialCreationOptions._(JSObject _) implements JSObject {
  external factory CredentialCreationOptions({
    CredentialMediationRequirement mediation,
    AbortSignal signal,
    PasswordCredentialInit password,
    FederatedCredentialInit federated,
    PublicKeyCredentialCreationOptions publicKey,
  });

  external CredentialMediationRequirement get mediation;
  external set mediation(CredentialMediationRequirement value);
  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external PasswordCredentialInit get password;
  external set password(PasswordCredentialInit value);
  external FederatedCredentialInit get federated;
  external set federated(FederatedCredentialInit value);
  external PublicKeyCredentialCreationOptions get publicKey;
  external set publicKey(PublicKeyCredentialCreationOptions value);
}
extension type PasswordCredentialData._(JSObject _)
    implements CredentialData, JSObject {
  external factory PasswordCredentialData({
    required String id,
    String name,
    String iconURL,
    required String origin,
    required String password,
  });

  external String get name;
  external set name(String value);
  external String get iconURL;
  external set iconURL(String value);
  external String get origin;
  external set origin(String value);
  external String get password;
  external set password(String value);
}
extension type FederatedCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory FederatedCredentialRequestOptions({
    JSArray<JSString> providers,
    JSArray<JSString> protocols,
  });

  external JSArray<JSString> get providers;
  external set providers(JSArray<JSString> value);
  external JSArray<JSString> get protocols;
  external set protocols(JSArray<JSString> value);
}

/// The **`FederatedCredentialInit`** dictionary represents the object passed to
/// [CredentialsContainer.create] as the value of the `federated` option: that
/// is, when creating a [FederatedCredential] object representing a credential
/// associated with a federated identify provider.
///
/// > [!NOTE]
/// > The [Federated Credential Management API
/// > (FedCM)](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
/// > supersedes the [FederatedCredential] interface in favor of the
/// > [IdentityCredential] interface.
/// >
/// > The `FederatedCredentialInit` dictionary is not used when working with the
/// > `IdentityCredential` interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FederatedCredentialInit).
extension type FederatedCredentialInit._(JSObject _)
    implements CredentialData, JSObject {
  external factory FederatedCredentialInit({
    required String id,
    String name,
    String iconURL,
    required String origin,
    required String provider,
    String protocol,
  });

  external String get name;
  external set name(String value);
  external String get iconURL;
  external set iconURL(String value);
  external String get origin;
  external set origin(String value);
  external String get provider;
  external set provider(String value);
  external String get protocol;
  external set protocol(String value);
}
