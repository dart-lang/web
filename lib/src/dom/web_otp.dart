// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'credential_management.dart';

typedef OTPCredentialTransportType = String;

/// The **`OTPCredential`** interface of the [WebOTP API] is returned when a
/// WebOTP [CredentialsContainer.get] call (i.e. invoked with an `otp` option)
/// fulfills. It includes a `code` property that contains the retrieved one-time
/// password (OTP).
extension type OTPCredential._(JSObject _) implements Credential, JSObject {
  external String get code;
}
extension type OTPCredentialRequestOptions._(JSObject _) implements JSObject {
  external factory OTPCredentialRequestOptions({JSArray transport});

  external set transport(JSArray value);
  external JSArray get transport;
}
