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

import 'credential_management.dart';

extension type DigitalCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory DigitalCredentialRequestOptions(
      {required JSArray<DigitalCredentialGetRequest> requests});

  external JSArray<DigitalCredentialGetRequest> get requests;
  external set requests(JSArray<DigitalCredentialGetRequest> value);
}
extension type DigitalCredentialGetRequest._(JSObject _) implements JSObject {
  external factory DigitalCredentialGetRequest({
    required String protocol,
    required JSObject data,
  });

  external String get protocol;
  external set protocol(String value);
  external JSObject get data;
  external set data(JSObject value);
}
extension type DigitalCredentialCreationOptions._(JSObject _)
    implements JSObject {
  external factory DigitalCredentialCreationOptions(
      {JSArray<DigitalCredentialCreateRequest> requests});

  external JSArray<DigitalCredentialCreateRequest> get requests;
  external set requests(JSArray<DigitalCredentialCreateRequest> value);
}
extension type DigitalCredentialCreateRequest._(JSObject _)
    implements JSObject {
  external factory DigitalCredentialCreateRequest({
    required String protocol,
    required JSObject data,
  });

  external String get protocol;
  external set protocol(String value);
  external JSObject get data;
  external set data(JSObject value);
}
extension type DigitalCredential._(JSObject _) implements Credential, JSObject {
  external static bool userAgentAllowsProtocol(String protocol);
  external JSObject toJSON();
  external String get protocol;
  external JSObject get data;
}
