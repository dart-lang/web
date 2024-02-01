// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library audio_output;

import 'dart:js_interop';

extension type AudioOutputOptions._(JSObject _) implements JSObject {
  external factory AudioOutputOptions({String deviceId});

  external set deviceId(String value);
  external String get deviceId;
}
