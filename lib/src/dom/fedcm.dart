// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'credential_management.dart';

typedef IdentityCredentialRequestOptionsContext = String;
extension type IdentityCredential._(JSObject _)
    implements Credential, JSObject {
  external String? get token;
}
extension type IdentityCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory IdentityCredentialRequestOptions({
    required JSArray providers,
    IdentityCredentialRequestOptionsContext context,
  });

  external set providers(JSArray value);
  external JSArray get providers;
  external set context(IdentityCredentialRequestOptionsContext value);
  external IdentityCredentialRequestOptionsContext get context;
}
extension type IdentityProviderConfig._(JSObject _) implements JSObject {
  external factory IdentityProviderConfig({
    required String configURL,
    required String clientId,
    String nonce,
    String loginHint,
  });

  external set configURL(String value);
  external String get configURL;
  external set clientId(String value);
  external String get clientId;
  external set nonce(String value);
  external String get nonce;
  external set loginHint(String value);
  external String get loginHint;
}
extension type IdentityProviderWellKnown._(JSObject _) implements JSObject {
  external factory IdentityProviderWellKnown({required JSArray provider_urls});

  external set provider_urls(JSArray value);
  external JSArray get provider_urls;
}
extension type IdentityProviderIcon._(JSObject _) implements JSObject {
  external factory IdentityProviderIcon({
    required String url,
    int size,
  });

  external set url(String value);
  external String get url;
  external set size(int value);
  external int get size;
}
extension type IdentityProviderBranding._(JSObject _) implements JSObject {
  external factory IdentityProviderBranding({
    String background_color,
    String color,
    JSArray icons,
    String name,
  });

  external set background_color(String value);
  external String get background_color;
  external set color(String value);
  external String get color;
  external set icons(JSArray value);
  external JSArray get icons;
  external set name(String value);
  external String get name;
}
extension type IdentityProviderAPIConfig._(JSObject _) implements JSObject {
  external factory IdentityProviderAPIConfig({
    required String accounts_endpoint,
    required String client_metadata_endpoint,
    required String id_assertion_endpoint,
    IdentityProviderBranding branding,
  });

  external set accounts_endpoint(String value);
  external String get accounts_endpoint;
  external set client_metadata_endpoint(String value);
  external String get client_metadata_endpoint;
  external set id_assertion_endpoint(String value);
  external String get id_assertion_endpoint;
  external set branding(IdentityProviderBranding value);
  external IdentityProviderBranding get branding;
}
extension type IdentityProviderAccount._(JSObject _) implements JSObject {
  external factory IdentityProviderAccount({
    required String id,
    required String name,
    required String email,
    String given_name,
    String picture,
    JSArray approved_clients,
    JSArray login_hints,
  });

  external set id(String value);
  external String get id;
  external set name(String value);
  external String get name;
  external set email(String value);
  external String get email;
  external set given_name(String value);
  external String get given_name;
  external set picture(String value);
  external String get picture;
  external set approved_clients(JSArray value);
  external JSArray get approved_clients;
  external set login_hints(JSArray value);
  external JSArray get login_hints;
}
extension type IdentityProviderAccountList._(JSObject _) implements JSObject {
  external factory IdentityProviderAccountList({JSArray accounts});

  external set accounts(JSArray value);
  external JSArray get accounts;
}
extension type IdentityProviderToken._(JSObject _) implements JSObject {
  external factory IdentityProviderToken({required String token});

  external set token(String value);
  external String get token;
}
extension type IdentityProviderClientMetadata._(JSObject _)
    implements JSObject {
  external factory IdentityProviderClientMetadata({
    String privacy_policy_url,
    String terms_of_service_url,
  });

  external set privacy_policy_url(String value);
  external String get privacy_policy_url;
  external set terms_of_service_url(String value);
  external String get terms_of_service_url;
}
extension type IdentityUserInfo._(JSObject _) implements JSObject {
  external factory IdentityUserInfo({
    String email,
    String name,
    String givenName,
    String picture,
  });

  external set email(String value);
  external String get email;
  external set name(String value);
  external String get name;
  external set givenName(String value);
  external String get givenName;
  external set picture(String value);
  external String get picture;
}
extension type IdentityProvider._(JSObject _) implements JSObject {
  external static JSPromise getUserInfo(IdentityProviderConfig config);
}
