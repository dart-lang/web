// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library fido;

import 'dart:js_interop';

extension type HMACGetSecretInput._(JSObject _) implements JSObject {
  external factory HMACGetSecretInput({
    required JSArrayBuffer salt1,
    JSArrayBuffer salt2,
  });

  external set salt1(JSArrayBuffer value);
  external JSArrayBuffer get salt1;
  external set salt2(JSArrayBuffer value);
  external JSArrayBuffer get salt2;
}
extension type HMACGetSecretOutput._(JSObject _) implements JSObject {
  external factory HMACGetSecretOutput({
    required JSArrayBuffer output1,
    JSArrayBuffer output2,
  });

  external set output1(JSArrayBuffer value);
  external JSArrayBuffer get output1;
  external set output2(JSArrayBuffer value);
  external JSArrayBuffer get output2;
}
