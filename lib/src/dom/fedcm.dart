// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef IdentityCredentialRequestOptionsContext = String;
extension type IdentityCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory IdentityCredentialRequestOptions({
    required JSArray<IdentityProviderRequestOptions> providers,
    IdentityCredentialRequestOptionsContext context,
  });

  external JSArray<IdentityProviderRequestOptions> get providers;
  external set providers(JSArray<IdentityProviderRequestOptions> value);
  external IdentityCredentialRequestOptionsContext get context;
  external set context(IdentityCredentialRequestOptionsContext value);
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
    String nonce,
    String loginHint,
    String domainHint,
  });

  external String get nonce;
  external set nonce(String value);
  external String get loginHint;
  external set loginHint(String value);
  external String get domainHint;
  external set domainHint(String value);
}
