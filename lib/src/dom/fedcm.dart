// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'credential_management.dart';

typedef LoginStatus = String;
typedef IdentityCredentialRequestOptionsContext = String;
extension type NavigatorLogin._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> setStatus(LoginStatus status);
}
extension type IdentityCredentialDisconnectOptions._(JSObject _)
    implements IdentityProviderConfig, JSObject {
  external factory IdentityCredentialDisconnectOptions(
      {required String accountHint});

  external set accountHint(String value);
  external String get accountHint;
}
extension type IdentityCredential._(JSObject _)
    implements Credential, JSObject {
  external static JSPromise<JSAny?> disconnect(
      [IdentityCredentialDisconnectOptions options]);
  external String? get token;
  external bool get isAutoSelected;
}
extension type DisconnectedAccount._(JSObject _) implements JSObject {
  external factory DisconnectedAccount({required String account_id});

  external set account_id(String value);
  external String get account_id;
}
extension type IdentityCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory IdentityCredentialRequestOptions({
    required JSArray<IdentityProviderRequestOptions> providers,
    IdentityCredentialRequestOptionsContext context,
  });

  external set providers(JSArray<IdentityProviderRequestOptions> value);
  external JSArray<IdentityProviderRequestOptions> get providers;
  external set context(IdentityCredentialRequestOptionsContext value);
  external IdentityCredentialRequestOptionsContext get context;
}
extension type IdentityProviderConfig._(JSObject _) implements JSObject {
  external factory IdentityProviderConfig({
    required String configURL,
    required String clientId,
  });

  external set configURL(String value);
  external String get configURL;
  external set clientId(String value);
  external String get clientId;
}
extension type IdentityProviderRequestOptions._(JSObject _)
    implements IdentityProviderConfig, JSObject {
  external factory IdentityProviderRequestOptions({
    String nonce,
    String loginHint,
    String domainHint,
  });

  external set nonce(String value);
  external String get nonce;
  external set loginHint(String value);
  external String get loginHint;
  external set domainHint(String value);
  external String get domainHint;
}
extension type IdentityProviderWellKnown._(JSObject _) implements JSObject {
  external factory IdentityProviderWellKnown(
      {required JSArray<JSString> provider_urls});

  external set provider_urls(JSArray<JSString> value);
  external JSArray<JSString> get provider_urls;
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
    JSArray<IdentityProviderIcon> icons,
    String name,
  });

  external set background_color(String value);
  external String get background_color;
  external set color(String value);
  external String get color;
  external set icons(JSArray<IdentityProviderIcon> value);
  external JSArray<IdentityProviderIcon> get icons;
  external set name(String value);
  external String get name;
}
extension type IdentityProviderAPIConfig._(JSObject _) implements JSObject {
  external factory IdentityProviderAPIConfig({
    required String accounts_endpoint,
    required String client_metadata_endpoint,
    required String id_assertion_endpoint,
    required String login_url,
    String disconnect_endpoint,
    IdentityProviderBranding branding,
  });

  external set accounts_endpoint(String value);
  external String get accounts_endpoint;
  external set client_metadata_endpoint(String value);
  external String get client_metadata_endpoint;
  external set id_assertion_endpoint(String value);
  external String get id_assertion_endpoint;
  external set login_url(String value);
  external String get login_url;
  external set disconnect_endpoint(String value);
  external String get disconnect_endpoint;
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
    JSArray<JSString> approved_clients,
    JSArray<JSString> login_hints,
    JSArray<JSString> domain_hints,
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
  external set approved_clients(JSArray<JSString> value);
  external JSArray<JSString> get approved_clients;
  external set login_hints(JSArray<JSString> value);
  external JSArray<JSString> get login_hints;
  external set domain_hints(JSArray<JSString> value);
  external JSArray<JSString> get domain_hints;
}
extension type IdentityProviderAccountList._(JSObject _) implements JSObject {
  external factory IdentityProviderAccountList(
      {JSArray<IdentityProviderAccount> accounts});

  external set accounts(JSArray<IdentityProviderAccount> value);
  external JSArray<IdentityProviderAccount> get accounts;
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
  external static void close();
  external static JSPromise<JSArray<IdentityUserInfo>> getUserInfo(
      IdentityProviderConfig config);
}
