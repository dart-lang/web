// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'credential_management.dart';

typedef OTPCredentialTransportType = String;
extension type OTPCredential._(JSObject _) implements Credential, JSObject {
  external String get code;
}
extension type OTPCredentialRequestOptions._(JSObject _) implements JSObject {
  external factory OTPCredentialRequestOptions({JSArray transport});

  external set transport(JSArray value);
  external JSArray get transport;
}
