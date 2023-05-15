// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'credential_management.dart';

@JS('IdentityCredential')
@staticInterop
class IdentityCredential implements Credential {}

extension IdentityCredentialExtension on IdentityCredential {
  external JSString? get token;
}

@JS()
@staticInterop
@anonymous
class IdentityCredentialRequestOptions implements JSObject {
  external factory IdentityCredentialRequestOptions({JSArray providers});
}

extension IdentityCredentialRequestOptionsExtension
    on IdentityCredentialRequestOptions {
  external set providers(JSArray value);
  external JSArray get providers;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderConfig implements JSObject {
  external factory IdentityProviderConfig({
    required JSString configURL,
    required JSString clientId,
    JSString nonce,
  });
}

extension IdentityProviderConfigExtension on IdentityProviderConfig {
  external set configURL(JSString value);
  external JSString get configURL;
  external set clientId(JSString value);
  external JSString get clientId;
  external set nonce(JSString value);
  external JSString get nonce;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderWellKnown implements JSObject {
  external factory IdentityProviderWellKnown({required JSArray provider_urls});
}

extension IdentityProviderWellKnownExtension on IdentityProviderWellKnown {
  external set provider_urls(JSArray value);
  external JSArray get provider_urls;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderIcon implements JSObject {
  external factory IdentityProviderIcon({
    required JSString url,
    JSNumber size,
  });
}

extension IdentityProviderIconExtension on IdentityProviderIcon {
  external set url(JSString value);
  external JSString get url;
  external set size(JSNumber value);
  external JSNumber get size;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderBranding implements JSObject {
  external factory IdentityProviderBranding({
    JSString background_color,
    JSString color,
    JSArray icons,
    JSString name,
  });
}

extension IdentityProviderBrandingExtension on IdentityProviderBranding {
  external set background_color(JSString value);
  external JSString get background_color;
  external set color(JSString value);
  external JSString get color;
  external set icons(JSArray value);
  external JSArray get icons;
  external set name(JSString value);
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderAPIConfig implements JSObject {
  external factory IdentityProviderAPIConfig({
    required JSString accounts_endpoint,
    required JSString client_metadata_endpoint,
    required JSString id_assertion_endpoint,
    IdentityProviderBranding branding,
  });
}

extension IdentityProviderAPIConfigExtension on IdentityProviderAPIConfig {
  external set accounts_endpoint(JSString value);
  external JSString get accounts_endpoint;
  external set client_metadata_endpoint(JSString value);
  external JSString get client_metadata_endpoint;
  external set id_assertion_endpoint(JSString value);
  external JSString get id_assertion_endpoint;
  external set branding(IdentityProviderBranding value);
  external IdentityProviderBranding get branding;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderAccount implements JSObject {
  external factory IdentityProviderAccount({
    required JSString id,
    required JSString name,
    required JSString email,
    JSString given_name,
    JSString picture,
    JSArray approved_clients,
  });
}

extension IdentityProviderAccountExtension on IdentityProviderAccount {
  external set id(JSString value);
  external JSString get id;
  external set name(JSString value);
  external JSString get name;
  external set email(JSString value);
  external JSString get email;
  external set given_name(JSString value);
  external JSString get given_name;
  external set picture(JSString value);
  external JSString get picture;
  external set approved_clients(JSArray value);
  external JSArray get approved_clients;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderAccountList implements JSObject {
  external factory IdentityProviderAccountList({JSArray accounts});
}

extension IdentityProviderAccountListExtension on IdentityProviderAccountList {
  external set accounts(JSArray value);
  external JSArray get accounts;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderToken implements JSObject {
  external factory IdentityProviderToken({required JSString token});
}

extension IdentityProviderTokenExtension on IdentityProviderToken {
  external set token(JSString value);
  external JSString get token;
}

@JS()
@staticInterop
@anonymous
class IdentityProviderClientMetadata implements JSObject {
  external factory IdentityProviderClientMetadata({
    JSString privacy_policy_url,
    JSString terms_of_service_url,
  });
}

extension IdentityProviderClientMetadataExtension
    on IdentityProviderClientMetadata {
  external set privacy_policy_url(JSString value);
  external JSString get privacy_policy_url;
  external set terms_of_service_url(JSString value);
  external JSString get terms_of_service_url;
}
