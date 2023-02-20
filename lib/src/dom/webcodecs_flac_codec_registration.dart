// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
@staticInterop
@anonymous
class FlacEncoderConfig {
  external factory FlacEncoderConfig({
    JSNumber blockSize = 0,
    JSNumber compressLevel = 5,
  });
}

extension FlacEncoderConfigExtension on FlacEncoderConfig {
  external set blockSize(JSNumber value);
  external JSNumber get blockSize;
  external set compressLevel(JSNumber value);
  external JSNumber get compressLevel;
}
