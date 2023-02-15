// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webgl1.dart';

@JS('EXT_texture_norm16')
@staticInterop
class EXT_texture_norm16 {
  external factory EXT_texture_norm16();

  external static GLenum get R16_EXT;
  external static GLenum get RG16_EXT;
  external static GLenum get RGB16_EXT;
  external static GLenum get RGBA16_EXT;
  external static GLenum get R16_SNORM_EXT;
  external static GLenum get RG16_SNORM_EXT;
  external static GLenum get RGB16_SNORM_EXT;
  external static GLenum get RGBA16_SNORM_EXT;
}
