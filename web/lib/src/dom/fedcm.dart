// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
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

import 'credential_management.dart';
import 'webidl.dart';

typedef IdentityCredentialRequestOptionsContext = String;
typedef IdentityCredentialRequestOptionsMode = String;
extension type IdentityCredentialDisconnectOptions._(JSObject _)
    implements IdentityProviderConfig, JSObject {
  external factory IdentityCredentialDisconnectOptions({
    required String configURL,
    required String clientId,
    required String accountHint,
  });

  external String get accountHint;
  external set accountHint(String value);
}

/// The **`IdentityCredential`** interface of the [Federated Credential
/// Management API
/// (FedCM)](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
/// represents a user identity credential arising from a successful federated
/// sign-in.
///
/// A successful [CredentialsContainer.get] call that includes an `identity`
/// option fulfills with an `IdentityCredential` instance.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IdentityCredential).
extension type IdentityCredential._(JSObject _)
    implements Credential, JSObject {
  external static JSPromise<JSAny?> disconnect(
      IdentityCredentialDisconnectOptions options);

  /// The **`token`** read-only property of the [IdentityCredential] interface
  /// returns the token used to validate the associated sign-in.
  ///
  /// The token includes user identity information that has been signed with the
  /// identity provider (IdP)'s .
  ///
  /// The relying party (RP) sends the token to its server to validate the
  /// certificate, and on success can use the (now trusted) identity information
  /// in the token to sign them into their service (starting a new session),
  /// sign them up to their service if they are a new user, etc.
  ///
  /// If the user has never signed into the IdP or is logged out, the associated
  /// [CredentialsContainer.get] call rejects with an error and the RP can
  /// direct the user to the IdP login page to sign in or create an account.
  ///
  /// > [!NOTE]
  /// > The exact structure and content of the validation token is opaque to the
  /// > FedCM API, and to the browser. The IdP decides on the syntax and usage
  /// > of it, and the RP needs to follow the instructions provided by the IdP
  /// > (see
  /// > [Verify the Google ID token on your server side](https://developers.google.com/identity/gsi/web/guides/verify-google-id-token),
  /// > for example) to make sure they are using it correctly.
  external JSAny? get token;

  /// The **`isAutoSelected`** read-only property of the [IdentityCredential]
  /// interface indicates whether the federated sign-in flow was carried out
  /// using
  /// [auto-reauthentication](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API/RP_sign-in#auto-reauthentication)
  /// (i.e. without user mediation) or not.
  ///
  /// Automatic reauthentication can occur when a [CredentialsContainer.get]
  /// call is issued with a
  /// [`mediation`](https://developer.mozilla.org/en-US/docs/Web/API/CredentialsContainer/get#mediation)
  /// option value of `"optional"` or `"silent"`. It is useful for a relying
  /// party (RP) to know whether auto reauthentication occurred for
  /// analytics/performance evaluation and for UX purposes — automatic sign-in
  /// may warrant a different UI flow to non-automatic sign-in.
  external bool get isAutoSelected;
  external String get configURL;
}
extension type DisconnectedAccount._(JSObject _) implements JSObject {
  external factory DisconnectedAccount({required String account_id});

  external String get account_id;
  external set account_id(String value);
}
extension type IdentityCredentialErrorInit._(JSObject _) implements JSObject {
  external factory IdentityCredentialErrorInit({
    String error,
    String url,
  });

  external String get error;
  external set error(String value);
  external String get url;
  external set url(String value);
}
extension type IdentityCredentialError._(JSObject _)
    implements DOMException, JSObject {
  external factory IdentityCredentialError([
    String message,
    IdentityCredentialErrorInit options,
  ]);

  external String get error;
  external String get url;
}

/// The **`IdentityCredentialRequestOptions`** dictionary represents the object
/// passed to [CredentialsContainer.get] as the value of the `identity` option.
///
/// It is used to request an [IdentityCredential] provided by a  that supports
/// the [Federated Credential Management (FedCM)
/// API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IdentityCredentialRequestOptions).
extension type IdentityCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory IdentityCredentialRequestOptions({
    required JSArray<IdentityProviderRequestOptions> providers,
    IdentityCredentialRequestOptionsContext context,
    IdentityCredentialRequestOptionsMode mode,
  });

  external JSArray<IdentityProviderRequestOptions> get providers;
  external set providers(JSArray<IdentityProviderRequestOptions> value);
  external IdentityCredentialRequestOptionsContext get context;
  external set context(IdentityCredentialRequestOptionsContext value);
  external IdentityCredentialRequestOptionsMode get mode;
  external set mode(IdentityCredentialRequestOptionsMode value);
}
extension type IdentityProviderConfig._(JSObject _) implements JSObject {
  external factory IdentityProviderConfig({
    required String configURL,
    required String clientId,
  });

  external String get configURL;
  external set configURL(String value);
  external String get clientId;
  external set clientId(String value);
}
extension type IdentityProviderRequestOptions._(JSObject _)
    implements IdentityProviderConfig, JSObject {
  external factory IdentityProviderRequestOptions({
    required String configURL,
    required String clientId,
    String loginHint,
    String domainHint,
    JSArray<JSString> fields,
    JSAny? params,
  });

  external String get loginHint;
  external set loginHint(String value);
  external String get domainHint;
  external set domainHint(String value);
  external JSArray<JSString> get fields;
  external set fields(JSArray<JSString> value);
  external JSAny? get params;
  external set params(JSAny? value);
}
extension type IdentityProviderWellKnown._(JSObject _) implements JSObject {
  external factory IdentityProviderWellKnown({
    JSArray<JSString> provider_urls,
    String accounts_endpoint,
    String login_url,
  });

  external JSArray<JSString> get provider_urls;
  external set provider_urls(JSArray<JSString> value);
  external String get accounts_endpoint;
  external set accounts_endpoint(String value);
  external String get login_url;
  external set login_url(String value);
}
extension type IdentityProviderIcon._(JSObject _) implements JSObject {
  external factory IdentityProviderIcon({
    required String url,
    int size,
  });

  external String get url;
  external set url(String value);
  external int get size;
  external set size(int value);
}
extension type IdentityProviderBranding._(JSObject _) implements JSObject {
  external factory IdentityProviderBranding({
    String background_color,
    String color,
    JSArray<IdentityProviderIcon> icons,
    String name,
  });

  external String get background_color;
  external set background_color(String value);
  external String get color;
  external set color(String value);
  external JSArray<IdentityProviderIcon> get icons;
  external set icons(JSArray<IdentityProviderIcon> value);
  external String get name;
  external set name(String value);
}
extension type IdentityProviderAPIConfig._(JSObject _) implements JSObject {
  external factory IdentityProviderAPIConfig({
    required String accounts_endpoint,
    String client_metadata_endpoint,
    required String id_assertion_endpoint,
    required String login_url,
    String disconnect_endpoint,
    IdentityProviderBranding branding,
    bool supports_use_other_account,
    String account_label,
  });

  external String get accounts_endpoint;
  external set accounts_endpoint(String value);
  external String get client_metadata_endpoint;
  external set client_metadata_endpoint(String value);
  external String get id_assertion_endpoint;
  external set id_assertion_endpoint(String value);
  external String get login_url;
  external set login_url(String value);
  external String get disconnect_endpoint;
  external set disconnect_endpoint(String value);
  external IdentityProviderBranding get branding;
  external set branding(IdentityProviderBranding value);
  external bool get supports_use_other_account;
  external set supports_use_other_account(bool value);
  external String get account_label;
  external set account_label(String value);
}
extension type IdentityProviderAccount._(JSObject _) implements JSObject {
  external factory IdentityProviderAccount({
    required String id,
    String name,
    String email,
    String tel,
    String username,
    String given_name,
    String picture,
    JSArray<JSString> approved_clients,
    JSArray<JSString> login_hints,
    JSArray<JSString> domain_hints,
    JSArray<JSString> label_hints,
  });

  external String get id;
  external set id(String value);
  external String get name;
  external set name(String value);
  external String get email;
  external set email(String value);
  external String get tel;
  external set tel(String value);
  external String get username;
  external set username(String value);
  external String get given_name;
  external set given_name(String value);
  external String get picture;
  external set picture(String value);
  external JSArray<JSString> get approved_clients;
  external set approved_clients(JSArray<JSString> value);
  external JSArray<JSString> get login_hints;
  external set login_hints(JSArray<JSString> value);
  external JSArray<JSString> get domain_hints;
  external set domain_hints(JSArray<JSString> value);
  external JSArray<JSString> get label_hints;
  external set label_hints(JSArray<JSString> value);
}
extension type IdentityProviderAccountList._(JSObject _) implements JSObject {
  external factory IdentityProviderAccountList(
      {JSArray<IdentityProviderAccount> accounts});

  external JSArray<IdentityProviderAccount> get accounts;
  external set accounts(JSArray<IdentityProviderAccount> value);
}
extension type IdentityAssertionResponse._(JSObject _) implements JSObject {
  external factory IdentityAssertionResponse({
    JSAny? token,
    String continue_on,
    IdentityCredentialErrorInit error,
  });

  external JSAny? get token;
  external set token(JSAny? value);
  external String get continue_on;
  external set continue_on(String value);
  external IdentityCredentialErrorInit get error;
  external set error(IdentityCredentialErrorInit value);
}
extension type IdentityProviderClientMetadata._(JSObject _)
    implements JSObject {
  external factory IdentityProviderClientMetadata({
    String privacy_policy_url,
    String terms_of_service_url,
    bool client_is_third_party_to_top_frame_origin,
  });

  external String get privacy_policy_url;
  external set privacy_policy_url(String value);
  external String get terms_of_service_url;
  external set terms_of_service_url(String value);
  external bool get client_is_third_party_to_top_frame_origin;
  external set client_is_third_party_to_top_frame_origin(bool value);
}
extension type IdentityUserInfo._(JSObject _) implements JSObject {
  external factory IdentityUserInfo({
    String email,
    String name,
    String givenName,
    String picture,
  });

  external String get email;
  external set email(String value);
  external String get name;
  external set name(String value);
  external String get givenName;
  external set givenName(String value);
  external String get picture;
  external set picture(String value);
}
extension type IdentityResolveOptions._(JSObject _) implements JSObject {
  external factory IdentityResolveOptions({String accountId});

  external String get accountId;
  external set accountId(String value);
}

/// The **`IdentityProvider`** interface of the [Federated Credential Management
/// (FedCM) API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
/// represents an identity provider (IdP) and provides access to related
/// information and functionality.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IdentityProvider).
extension type IdentityProvider._(JSObject _) implements JSObject {
  /// The **`close()`** static method of the [IdentityProvider] interface
  /// provides a manual signal to the browser that an IdP sign-in flow is
  /// finished.
  external static void close();
  external static JSPromise<JSAny?> resolve(
    JSAny? token, [
    IdentityResolveOptions options,
  ]);

  /// The **`getUserInfo()`** static method of the [IdentityProvider] interface
  /// returns information about a user that has signed in, which can be used to
  /// provide a personalized welcome message and sign-in button. This method has
  /// to be called from within an identity provider (IdP)-origin `iframe` so
  /// that RP scripts cannot access the data. This must occur after a user has
  /// been signed in to a relying party (RP) site.
  ///
  /// This pattern is already common on sites that use identity federation for
  /// sign-in, but `getUserInfo()` provides a way to achieve it without relying
  /// on
  /// [third-party cookies](https://developer.mozilla.org/en-US/docs/Web/Privacy/Guides/Third-party_cookies).
  external static JSPromise<JSArray<IdentityUserInfo>> getUserInfo(
      IdentityProviderConfig config);
}
