// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'credential_management.dart';

typedef OTPCredentialTransportType = JSString;

@JS('OTPCredential')
@staticInterop
class OTPCredential implements Credential {}

extension OTPCredentialExtension on OTPCredential {
  external JSString get code;
}

@JS()
@staticInterop
@anonymous
class OTPCredentialRequestOptions {
  external factory OTPCredentialRequestOptions({JSArray transport = const []});
}

extension OTPCredentialRequestOptionsExtension on OTPCredentialRequestOptions {
  external set transport(JSArray value);
  external JSArray get transport;
}
