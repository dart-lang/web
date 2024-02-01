// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library webcodecs_flac_codec_registration;

import 'dart:js_interop';

extension type FlacEncoderConfig._(JSObject _) implements JSObject {
  external factory FlacEncoderConfig({
    int blockSize,
    int compressLevel,
  });

  external set blockSize(int value);
  external int get blockSize;
  external set compressLevel(int value);
  external int get compressLevel;
}
