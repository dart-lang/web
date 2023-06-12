// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class AudioOutputOptions implements JSObject {
  external factory AudioOutputOptions({String deviceId});
}

extension AudioOutputOptionsExtension on AudioOutputOptions {
  external set deviceId(String value);
  external String get deviceId;
}
