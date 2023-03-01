// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webgl1.dart';

@JS('WEBGL_compressed_texture_s3tc_srgb')
@staticInterop
class WEBGL_compressed_texture_s3tc_srgb {
  external static GLenum get COMPRESSED_SRGB_S3TC_DXT1_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT;
}
