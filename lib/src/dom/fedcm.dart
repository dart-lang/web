// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('IdentityProviderWellKnown')
@staticInterop
class IdentityProviderWellKnown {
  external factory IdentityProviderWellKnown();
}

extension IdentityProviderWellKnownExtension on IdentityProviderWellKnown {
  // TODO
}

@JS('IdentityProviderIcon')
@staticInterop
class IdentityProviderIcon {
  external factory IdentityProviderIcon();
}

extension IdentityProviderIconExtension on IdentityProviderIcon {
  // TODO
  // TODO
}

@JS('IdentityProviderBranding')
@staticInterop
class IdentityProviderBranding {
  external factory IdentityProviderBranding();
}

extension IdentityProviderBrandingExtension on IdentityProviderBranding {
  // TODO
  // TODO
  // TODO
}

@JS('IdentityProviderAPIConfig')
@staticInterop
class IdentityProviderAPIConfig {
  external factory IdentityProviderAPIConfig();
}

extension IdentityProviderAPIConfigExtension on IdentityProviderAPIConfig {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('IdentityProviderAccount')
@staticInterop
class IdentityProviderAccount {
  external factory IdentityProviderAccount();
}

extension IdentityProviderAccountExtension on IdentityProviderAccount {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('IdentityProviderAccountList')
@staticInterop
class IdentityProviderAccountList {
  external factory IdentityProviderAccountList();
}

extension IdentityProviderAccountListExtension on IdentityProviderAccountList {
  // TODO
}

@JS('IdentityProviderClientMetadata')
@staticInterop
class IdentityProviderClientMetadata {
  external factory IdentityProviderClientMetadata();
}

extension IdentityProviderClientMetadataExtension
    on IdentityProviderClientMetadata {
  // TODO
  // TODO
}

@JS('IdentityProviderToken')
@staticInterop
class IdentityProviderToken {
  external factory IdentityProviderToken();
}

extension IdentityProviderTokenExtension on IdentityProviderToken {
  // TODO
}

@JS('IdentityCredential')
@staticInterop
class IdentityCredential extends Credential {
  external factory IdentityCredential();
  external static JSPromise logoutRPs(JSArray logoutRequests);
}

extension IdentityCredentialExtension on IdentityCredential {
  external JSString? get token;
}

@JS('IdentityCredentialRequestOptions')
@staticInterop
class IdentityCredentialRequestOptions {
  external factory IdentityCredentialRequestOptions();
}

extension IdentityCredentialRequestOptionsExtension
    on IdentityCredentialRequestOptions {
  // TODO
}

@JS('IdentityProviderConfig')
@staticInterop
class IdentityProviderConfig {
  external factory IdentityProviderConfig();
}

extension IdentityProviderConfigExtension on IdentityProviderConfig {
  // TODO
  // TODO
  // TODO
}

@JS('IdentityCredentialLogoutRPsRequest')
@staticInterop
class IdentityCredentialLogoutRPsRequest {
  external factory IdentityCredentialLogoutRPsRequest();
}

extension IdentityCredentialLogoutRPsRequestExtension
    on IdentityCredentialLogoutRPsRequest {
  // TODO
  // TODO
}

@JS('IdentityProvider')
@staticInterop
class IdentityProvider {
  external factory IdentityProvider();
  external static JSUndefined login();
  external static JSUndefined logout();
}
