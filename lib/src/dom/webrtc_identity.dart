// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'html.dart';

typedef GenerateAssertionCallback = JSFunction;
typedef ValidateAssertionCallback = JSFunction;
typedef RTCErrorDetailTypeIdp = JSString;

@JS('RTCIdentityProviderGlobalScope')
@staticInterop
class RTCIdentityProviderGlobalScope implements WorkerGlobalScope {}

extension RTCIdentityProviderGlobalScopeExtension
    on RTCIdentityProviderGlobalScope {
  external RTCIdentityProviderRegistrar get rtcIdentityProvider;
}

@JS('RTCIdentityProviderRegistrar')
@staticInterop
class RTCIdentityProviderRegistrar {}

extension RTCIdentityProviderRegistrarExtension
    on RTCIdentityProviderRegistrar {
  external JSVoid register(RTCIdentityProvider idp);
}

@JS()
@staticInterop
@anonymous
class RTCIdentityProvider {
  external factory RTCIdentityProvider({
    required GenerateAssertionCallback generateAssertion,
    required ValidateAssertionCallback validateAssertion,
  });
}

extension RTCIdentityProviderExtension on RTCIdentityProvider {
  external set generateAssertion(GenerateAssertionCallback value);
  external GenerateAssertionCallback get generateAssertion;
  external set validateAssertion(ValidateAssertionCallback value);
  external ValidateAssertionCallback get validateAssertion;
}

@JS()
@staticInterop
@anonymous
class RTCIdentityAssertionResult {
  external factory RTCIdentityAssertionResult({
    required RTCIdentityProviderDetails idp,
    required JSString assertion,
  });
}

extension RTCIdentityAssertionResultExtension on RTCIdentityAssertionResult {
  external set idp(RTCIdentityProviderDetails value);
  external RTCIdentityProviderDetails get idp;
  external set assertion(JSString value);
  external JSString get assertion;
}

@JS()
@staticInterop
@anonymous
class RTCIdentityProviderDetails {
  external factory RTCIdentityProviderDetails({
    required JSString domain,
    JSString protocol = 'default',
  });
}

extension RTCIdentityProviderDetailsExtension on RTCIdentityProviderDetails {
  external set domain(JSString value);
  external JSString get domain;
  external set protocol(JSString value);
  external JSString get protocol;
}

@JS()
@staticInterop
@anonymous
class RTCIdentityValidationResult {
  external factory RTCIdentityValidationResult({
    required JSString identity,
    required JSString contents,
  });
}

extension RTCIdentityValidationResultExtension on RTCIdentityValidationResult {
  external set identity(JSString value);
  external JSString get identity;
  external set contents(JSString value);
  external JSString get contents;
}

@JS()
@staticInterop
@anonymous
class RTCIdentityProviderOptions {
  external factory RTCIdentityProviderOptions({
    JSString protocol = 'default',
    JSString usernameHint,
    JSString peerIdentity,
  });
}

extension RTCIdentityProviderOptionsExtension on RTCIdentityProviderOptions {
  external set protocol(JSString value);
  external JSString get protocol;
  external set usernameHint(JSString value);
  external JSString get usernameHint;
  external set peerIdentity(JSString value);
  external JSString get peerIdentity;
}

@JS('RTCIdentityAssertion')
@staticInterop
class RTCIdentityAssertion {
  external factory RTCIdentityAssertion(
    JSString idp,
    JSString name,
  );
}

extension RTCIdentityAssertionExtension on RTCIdentityAssertion {
  external set idp(JSString value);
  external JSString get idp;
  external set name(JSString value);
  external JSString get name;
}
