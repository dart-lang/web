// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('EXT_texture_compression_bptc')
@staticInterop
class EXT_texture_compression_bptc {
  external factory EXT_texture_compression_bptc();
  external static GLenum get COMPRESSED_RGBA_BPTC_UNORM_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT;
  external static GLenum get COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT;
  external static GLenum get COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT;
}
