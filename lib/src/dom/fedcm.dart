// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'credential_management.dart';

@JS('IdentityProviderWellKnown')
@staticInterop
class IdentityProviderWellKnown {
  external factory IdentityProviderWellKnown();
}

extension IdentityProviderWellKnownExtension on IdentityProviderWellKnown {}

@JS('IdentityProviderIcon')
@staticInterop
class IdentityProviderIcon {
  external factory IdentityProviderIcon();
}

extension IdentityProviderIconExtension on IdentityProviderIcon {}

@JS('IdentityProviderBranding')
@staticInterop
class IdentityProviderBranding {
  external factory IdentityProviderBranding();
}

extension IdentityProviderBrandingExtension on IdentityProviderBranding {}

@JS('IdentityProviderAPIConfig')
@staticInterop
class IdentityProviderAPIConfig {
  external factory IdentityProviderAPIConfig();
}

extension IdentityProviderAPIConfigExtension on IdentityProviderAPIConfig {}

@JS('IdentityProviderAccount')
@staticInterop
class IdentityProviderAccount {
  external factory IdentityProviderAccount();
}

extension IdentityProviderAccountExtension on IdentityProviderAccount {}

@JS('IdentityProviderAccountList')
@staticInterop
class IdentityProviderAccountList {
  external factory IdentityProviderAccountList();
}

extension IdentityProviderAccountListExtension on IdentityProviderAccountList {}

@JS('IdentityProviderClientMetadata')
@staticInterop
class IdentityProviderClientMetadata {
  external factory IdentityProviderClientMetadata();
}

extension IdentityProviderClientMetadataExtension
    on IdentityProviderClientMetadata {}

@JS('IdentityProviderToken')
@staticInterop
class IdentityProviderToken {
  external factory IdentityProviderToken();
}

extension IdentityProviderTokenExtension on IdentityProviderToken {}

@JS('IdentityCredential')
@staticInterop
class IdentityCredential extends Credential {
  external factory IdentityCredential();
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
    on IdentityCredentialRequestOptions {}

@JS('IdentityProviderConfig')
@staticInterop
class IdentityProviderConfig {
  external factory IdentityProviderConfig();
}

extension IdentityProviderConfigExtension on IdentityProviderConfig {}
