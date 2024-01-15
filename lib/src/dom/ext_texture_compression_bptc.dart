// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'status.dart';
import 'webgl1.dart';

@JS('EXT_texture_compression_bptc')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class EXT_texture_compression_bptc {
  external static GLenum get COMPRESSED_RGBA_BPTC_UNORM_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT;
  external static GLenum get COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT;
  external static GLenum get COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT;
}
