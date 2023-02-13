// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('EXT_sRGB')
@staticInterop
class EXT_sRGB {
  external factory EXT_sRGB();
  external static GLenum get SRGB_EXT;
  external static GLenum get SRGB_ALPHA_EXT;
  external static GLenum get SRGB8_ALPHA8_EXT;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT;
}
