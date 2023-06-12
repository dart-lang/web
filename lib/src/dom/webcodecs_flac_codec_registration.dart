// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class FlacEncoderConfig implements JSObject {
  external factory FlacEncoderConfig({
    int blockSize,
    int compressLevel,
  });
}

extension FlacEncoderConfigExtension on FlacEncoderConfig {
  external set blockSize(int value);
  external int get blockSize;
  external set compressLevel(int value);
  external int get compressLevel;
}
