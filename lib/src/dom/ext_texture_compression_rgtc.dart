// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/webgl1.dart';

@JS('EXT_texture_compression_rgtc')
@staticInterop
class EXT_texture_compression_rgtc {
  external factory EXT_texture_compression_rgtc();

  external static GLenum get COMPRESSED_RED_RGTC1_EXT;
  external static GLenum get COMPRESSED_SIGNED_RED_RGTC1_EXT;
  external static GLenum get COMPRESSED_RED_GREEN_RGTC2_EXT;
  external static GLenum get COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT;
}
