// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef GenerateAssertionCallback = JSFunction;
typedef ValidateAssertionCallback = JSFunction;
typedef RTCErrorDetailTypeIdp = JSString;

@JS('RTCIdentityProviderGlobalScope')
@staticInterop
class RTCIdentityProviderGlobalScope extends WorkerGlobalScope {
  external factory RTCIdentityProviderGlobalScope();
}

extension RTCIdentityProviderGlobalScopeExtension
    on RTCIdentityProviderGlobalScope {
  external RTCIdentityProviderRegistrar get rtcIdentityProvider;
}

@JS('RTCIdentityProviderRegistrar')
@staticInterop
class RTCIdentityProviderRegistrar {
  external factory RTCIdentityProviderRegistrar();
}

extension RTCIdentityProviderRegistrarExtension
    on RTCIdentityProviderRegistrar {
  external JSUndefined register(RTCIdentityProvider idp);
}

@JS('RTCIdentityProvider')
@staticInterop
class RTCIdentityProvider {
  external factory RTCIdentityProvider();
}

extension RTCIdentityProviderExtension on RTCIdentityProvider {
  // TODO
  // TODO
}

@JS('RTCIdentityAssertionResult')
@staticInterop
class RTCIdentityAssertionResult {
  external factory RTCIdentityAssertionResult();
}

extension RTCIdentityAssertionResultExtension on RTCIdentityAssertionResult {
  // TODO
  // TODO
}

@JS('RTCIdentityProviderDetails')
@staticInterop
class RTCIdentityProviderDetails {
  external factory RTCIdentityProviderDetails();
}

extension RTCIdentityProviderDetailsExtension on RTCIdentityProviderDetails {
  // TODO
  // TODO
}

@JS('RTCIdentityValidationResult')
@staticInterop
class RTCIdentityValidationResult {
  external factory RTCIdentityValidationResult();
}

extension RTCIdentityValidationResultExtension on RTCIdentityValidationResult {
  // TODO
  // TODO
}

@JS('RTCIdentityProviderOptions')
@staticInterop
class RTCIdentityProviderOptions {
  external factory RTCIdentityProviderOptions();
}

extension RTCIdentityProviderOptionsExtension on RTCIdentityProviderOptions {
  // TODO
  // TODO
  // TODO
}

@JS('RTCIdentityAssertion')
@staticInterop
class RTCIdentityAssertion {
  external factory RTCIdentityAssertion();
  external factory RTCIdentityAssertion.a1(JSString idp, JSString name);
}

extension RTCIdentityAssertionExtension on RTCIdentityAssertion {
  external JSString get idp;
  external set idp(JSString value);
  external JSString get name;
  external set name(JSString value);
}
