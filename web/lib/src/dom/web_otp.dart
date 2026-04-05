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

typedef OTPCredentialTransportType = String;

/// The **`OTPCredential`** interface of the [WebOTP API] is returned when a
/// WebOTP [CredentialsContainer.get] call (i.e. invoked with an `otp` option)
/// fulfills. It includes a `code` property that contains the retrieved one-time
/// password (OTP).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/OTPCredential).
extension type OTPCredential._(JSObject _) implements Credential, JSObject {
  /// The **`code`** read-only property of the [OTPCredential] interface
  /// contains the one-time password (OTP).
  external String get code;
}
extension type OTPCredentialRequestOptions._(JSObject _) implements JSObject {
  external factory OTPCredentialRequestOptions({JSArray<JSString> transport});

  external JSArray<JSString> get transport;
  external set transport(JSArray<JSString> value);
}
