// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'html.dart';

typedef GenerateAssertionCallback = JSFunction;
typedef ValidateAssertionCallback = JSFunction;
typedef RTCErrorDetailTypeIdp = String;
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

  external set generateAssertion(GenerateAssertionCallback value);
  external GenerateAssertionCallback get generateAssertion;
  external set validateAssertion(ValidateAssertionCallback value);
  external ValidateAssertionCallback get validateAssertion;
}
extension type RTCIdentityAssertionResult._(JSObject _) implements JSObject {
  external factory RTCIdentityAssertionResult({
    required RTCIdentityProviderDetails idp,
    required String assertion,
  });

  external set idp(RTCIdentityProviderDetails value);
  external RTCIdentityProviderDetails get idp;
  external set assertion(String value);
  external String get assertion;
}
extension type RTCIdentityProviderDetails._(JSObject _) implements JSObject {
  external factory RTCIdentityProviderDetails({
    required String domain,
    String protocol,
  });

  external set domain(String value);
  external String get domain;
  external set protocol(String value);
  external String get protocol;
}
extension type RTCIdentityValidationResult._(JSObject _) implements JSObject {
  external factory RTCIdentityValidationResult({
    required String identity,
    required String contents,
  });

  external set identity(String value);
  external String get identity;
  external set contents(String value);
  external String get contents;
}
extension type RTCIdentityProviderOptions._(JSObject _) implements JSObject {
  external factory RTCIdentityProviderOptions({
    String protocol,
    String usernameHint,
    String peerIdentity,
  });

  external set protocol(String value);
  external String get protocol;
  external set usernameHint(String value);
  external String get usernameHint;
  external set peerIdentity(String value);
  external String get peerIdentity;
}
extension type RTCIdentityAssertion._(JSObject _) implements JSObject {
  external factory RTCIdentityAssertion(
    String idp,
    String name,
  );

  external set idp(String value);
  external String get idp;
  external set name(String value);
  external String get name;
}
