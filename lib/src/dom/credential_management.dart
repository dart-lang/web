// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

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
/// `Credential` objects may be of four different types:
///
/// - [FederatedCredential]
/// - [IdentityCredential]
/// - [PasswordCredential]
/// - [PublicKeyCredential]
@JS('Credential')
@staticInterop
class Credential {
  external static JSPromise isConditionalMediationAvailable();
}

extension CredentialExtension on Credential {
  external String get id;
  external String get type;
}

/// The **`CredentialsContainer`** interface of the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
/// exposes methods to request credentials and notify the user agent when events
/// such as successful sign in or sign out happen. This interface is accessible
/// from [Navigator.credentials].
@JS('CredentialsContainer')
@staticInterop
class CredentialsContainer {}

extension CredentialsContainerExtension on CredentialsContainer {
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
  ///   API](/en-US/docs/Web/API/FedCM_API) uses `get()` to authenticate with
  ///   federated identity providers (IdPs).
  /// - The
  ///   [WebOTP API](https://developer.mozilla.org/en-US/docs/Web/API/WebOTP_API)
  ///   uses `get()` to request retrieval of a one-time password (OTP) from a
  ///   specially-formatted SMS message sent by an app server.
  ///
  /// The below reference page starts with a syntax section that explains the
  /// general method call structure and parameters that apply to all the
  /// different APIs. After that, it is split into separate sections providing
  /// parameters, return values, and examples specific to each API.
  external JSPromise get([CredentialRequestOptions options]);

  /// The **`store()`** method of the
  /// [CredentialsContainer] stores a set of credentials for the user inside a
  /// [Credential] instance, returning this in a `Promise`.
  ///
  /// > **Note:** This method is restricted to top-level contexts. Calls to it
  /// > within an
  /// > `<iframe>` element will resolve without effect.
  external JSPromise store(Credential credential);

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
  external JSPromise create([CredentialCreationOptions options]);

  /// The **`preventSilentAccess()`** method
  /// of the [CredentialsContainer] interface sets a flag that specifies
  /// whether automatic log in is allowed for future visits to the current
  /// origin, then
  /// returns an empty
  /// [`Promise`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise).
  /// For
  /// example, you might call this, after a user signs out of a website to
  /// ensure that
  /// they aren't automatically signed in on the next site visit. Mediation
  /// varies by origin,
  /// and is an added check point of browser stored credentials, informing a
  /// user of an
  /// account login status. This method is typically called after a user signs
  /// out of a
  /// website, ensuring this user's login information is not automatically
  /// passed on the next
  /// site visit.
  ///
  /// Earlier versions of the spec called this method `requireUserMediation()`.
  /// The
  /// [Browser compatibility](https://developer.mozilla.org/en-US/docs/Web/API/CredentialsContainer#browser_compatibility)
  /// section has support details.
  external JSPromise preventSilentAccess();
}

@JS()
@staticInterop
@anonymous
class CredentialData {
  external factory CredentialData({required String id});
}

extension CredentialDataExtension on CredentialData {
  external set id(String value);
  external String get id;
}

@JS()
@staticInterop
@anonymous
class CredentialRequestOptions {
  external factory CredentialRequestOptions({
    IdentityCredentialRequestOptions identity,
    CredentialMediationRequirement mediation,
    AbortSignal signal,
    bool password,
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
  external set password(bool value);
  external bool get password;
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

/// The interface of the
/// [Credential Management API](https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API)
/// provides information about a username/password pair. In supporting browsers
/// an instance of this class may be passed in the `credential` member of the
/// `init` object for global [fetch].
///
/// > **Note:** This interface is restricted to top-level contexts and cannot be
/// > used from an `iframe`.
@JS('PasswordCredential')
@staticInterop
class PasswordCredential implements Credential {
  external factory PasswordCredential(JSObject dataOrForm);
}

extension PasswordCredentialExtension on PasswordCredential {
  external String get password;
  external String get name;
  external String get iconURL;
}

@JS()
@staticInterop
@anonymous
class PasswordCredentialData implements CredentialData {
  external factory PasswordCredentialData({
    String name,
    String iconURL,
    required String origin,
    required String password,
  });
}

extension PasswordCredentialDataExtension on PasswordCredentialData {
  external set name(String value);
  external String get name;
  external set iconURL(String value);
  external String get iconURL;
  external set origin(String value);
  external String get origin;
  external set password(String value);
  external String get password;
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
/// > (FedCM)](/en-US/docs/Web/API/FedCM_API) provides a more complete solution
/// > for handling identity federation in the browser, and uses the
/// > [IdentityCredential] type.
///
/// In browsers that support it, an instance of this interface may be passed in
/// the `credential` member of the `init` object for global [fetch].
@JS('FederatedCredential')
@staticInterop
class FederatedCredential implements Credential {
  external factory FederatedCredential(FederatedCredentialInit data);
}

extension FederatedCredentialExtension on FederatedCredential {
  external String get provider;
  external String? get protocol;
  external String get name;
  external String get iconURL;
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
    String name,
    String iconURL,
    required String origin,
    required String provider,
    String protocol,
  });
}

extension FederatedCredentialInitExtension on FederatedCredentialInit {
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
