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

import 'html.dart';

typedef GenerateAssertionCallback = JSFunction;
typedef ValidateAssertionCallback = JSFunction;
extension type RTCIdentityProviderGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  external RTCIdentityProviderRegistrar get rtcIdentityProvider;
}
extension type RTCIdentityProviderRegistrar._(JSObject _) implements JSObject {
  external void register(RTCIdentityProvider idp);
}
extension type RTCIdentityProvider._(JSObject _) implements JSObject {
  external factory RTCIdentityProvider({
    required GenerateAssertionCallback generateAssertion,
    required ValidateAssertionCallback validateAssertion,
  });

  external GenerateAssertionCallback get generateAssertion;
  external set generateAssertion(GenerateAssertionCallback value);
  external ValidateAssertionCallback get validateAssertion;
  external set validateAssertion(ValidateAssertionCallback value);
}
extension type RTCIdentityAssertionResult._(JSObject _) implements JSObject {
  external factory RTCIdentityAssertionResult({
    required RTCIdentityProviderDetails idp,
    required String assertion,
  });

  external RTCIdentityProviderDetails get idp;
  external set idp(RTCIdentityProviderDetails value);
  external String get assertion;
  external set assertion(String value);
}
extension type RTCIdentityProviderDetails._(JSObject _) implements JSObject {
  external factory RTCIdentityProviderDetails({
    required String domain,
    String protocol,
  });

  external String get domain;
  external set domain(String value);
  external String get protocol;
  external set protocol(String value);
}
extension type RTCIdentityValidationResult._(JSObject _) implements JSObject {
  external factory RTCIdentityValidationResult({
    required String identity,
    required String contents,
  });

  external String get identity;
  external set identity(String value);
  external String get contents;
  external set contents(String value);
}
extension type RTCIdentityProviderOptions._(JSObject _) implements JSObject {
  external factory RTCIdentityProviderOptions({
    String protocol,
    String usernameHint,
    String peerIdentity,
  });

  external String get protocol;
  external set protocol(String value);
  external String get usernameHint;
  external set usernameHint(String value);
  external String get peerIdentity;
  external set peerIdentity(String value);
}

/// The **`RTCIdentityAssertion`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// represents the identity of a remote peer of the current connection. If no
/// peer has yet been set and verified, then this interface returns `null`. Once
/// set it can't be changed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCIdentityAssertion).
extension type RTCIdentityAssertion._(JSObject _) implements JSObject {
  external factory RTCIdentityAssertion(
    String idp,
    String name,
  );

  external String get idp;
  external set idp(String value);
  external String get name;
  external set name(String value);
}
