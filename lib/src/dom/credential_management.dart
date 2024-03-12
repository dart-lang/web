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

import 'dom.dart';
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
  external static JSPromise<JSBoolean> isConditionalMediationAvailable();

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
  /// `Promise` that fulfills with a single credential instance that matches the
  /// provided parameters, which the browser can then use to authenticate with a
  /// relying party. This is used by several different credential-related APIs
  /// with significantly different purposes:
  ///
  /// - The
  ///   [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
  ///   uses `get()` to authenticate using basic federated credentials or
  ///   username/password credentials.
  /// - The
  ///   [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
  ///   uses `get()` to authenticate or provide additional factors during MFA
  ///   with public key credentials (based on asymmetric cryptography).
  /// - The [Federated Credential Management (FedCM)
  ///   API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API) uses
  ///   `get()` to authenticate with federated identity providers (IdPs).
  /// - The
  ///   [WebOTP API](https://developer.mozilla.org/en-US/docs/Web/API/WebOTP_API)
  ///   uses `get()` to request retrieval of a one-time password (OTP) from a
  ///   specially-formatted SMS message sent by an app server.
  ///
  /// The below reference page starts with a syntax section that explains the
  /// general method call structure and parameters that apply to all the
  /// different APIs. After that, it is split into separate sections providing
  /// parameters, return values, and examples specific to each API.
  external JSPromise<Credential?> get([CredentialRequestOptions options]);

  /// The **`store()`** method of the
  /// [CredentialsContainer] stores a set of credentials for the user inside a
  /// [Credential] instance, returning this in a `Promise`.
  ///
  /// > **Note:** This method is restricted to top-level contexts. Calls to it
  /// > within an
  /// > `<iframe>` element will resolve without effect.
  external JSPromise<JSAny?> store(Credential credential);

  /// The **`create()`** method of the [CredentialsContainer] interface returns
  /// a `Promise` that resolves with a new credential instance based on the
  /// provided options, the information from which can then be stored and later
  /// used to authenticate users via [CredentialsContainer.get].
  ///
  /// This is used by multiple different credential-related APIs with
  /// significantly different purposes:
  ///
  /// - The
  ///   [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
  ///   uses `create()` to create basic federated credentials or
  ///   username/password credentials.
  /// - The
  ///   [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API)
  ///   uses `create()` to create public key credentials (based on asymmetric
  ///   cryptography).
  ///
  /// The below reference page starts with a syntax section that explains the
  /// general method call structure and parameters that apply to all the
  /// different APIs. After that, it is split into separate sections providing
  /// parameters, return values, and examples specific to each API.
  ///
  /// > **Note:** This method is restricted to top-level  (i.e., a document
  /// > running directly inside a browser tab, and not embedded inside another
  /// > document). Calls to it from within an `<iframe>` element will resolve
  /// > without effect.
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
  external PublicKeyCredentialRequestOptions get publicKey;
  external set publicKey(PublicKeyCredentialRequestOptions value);
}
extension type CredentialCreationOptions._(JSObject _) implements JSObject {
  external factory CredentialCreationOptions({
    AbortSignal signal,
    PasswordCredentialInit password,
    FederatedCredentialInit federated,
    PublicKeyCredentialCreationOptions publicKey,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external PasswordCredentialInit get password;
  external set password(PasswordCredentialInit value);
  external FederatedCredentialInit get federated;
  external set federated(FederatedCredentialInit value);
  external PublicKeyCredentialCreationOptions get publicKey;
  external set publicKey(PublicKeyCredentialCreationOptions value);
}

/// The **`PasswordCredential`** interface of the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
/// provides information about a username/password pair. In supporting browsers
/// an instance of this class may be passed in the `credential` member of the
/// `init` object for global [fetch].
///
/// > **Note:** This interface is restricted to top-level contexts and cannot be
/// > used from an `iframe`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential).
extension type PasswordCredential._(JSObject _)
    implements Credential, JSObject {
  external factory PasswordCredential(JSObject dataOrForm);

  /// The **`password`** read-only property
  /// of the [PasswordCredential] interface returns a string
  /// containing the password of the credential.
  external String get password;

  /// The **`name`** read-only property of
  /// the [PasswordCredential] interface returns a string
  /// containing a human-readable public name for display in a credential
  /// chooser.
  external String get name;

  /// The **`iconURL`** read-only property
  /// of the [PasswordCredential] interface returns a string
  /// containing a URL pointing to an image for an icon. This image is intended
  /// for display
  /// in a credential chooser. The URL must be accessible without
  /// authentication.
  external String get iconURL;
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

/// The **`FederatedCredential`** interface of the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
/// provides information about credentials from a federated identity provider. A
/// federated identity provider is an entity that a website trusts to correctly
/// authenticate a user, and that provides an API for that purpose.
/// [OpenID Connect](https://openid.net/developers/specs/) is an example of a
/// federated identity provider framework.
///
/// > **Note:** The [Federated Credential Management API
/// > (FedCM)](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
/// > provides a more complete solution for handling identity federation in the
/// > browser, and uses the [IdentityCredential] type.
///
/// In browsers that support it, an instance of this interface may be passed in
/// the `credential` member of the `init` object for global [fetch].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FederatedCredential).
extension type FederatedCredential._(JSObject _)
    implements Credential, JSObject {
  external factory FederatedCredential(FederatedCredentialInit data);

  /// The **`provider`** property of the
  /// [FederatedCredential] interface returns a string
  /// containing a credential's federated identity provider.
  external String get provider;

  /// The **`protocol`** property of the
  /// [FederatedCredential] interface returns a read-only
  /// string containing a credential's federated identity protocol. If this
  /// property is
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null),
  /// the protocol may be inferred from the
  /// [FederatedCredential.provider] property.
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

  external JSArray<JSString> get providers;
  external set providers(JSArray<JSString> value);
  external JSArray<JSString> get protocols;
  external set protocols(JSArray<JSString> value);
}
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
