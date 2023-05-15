// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('EXT_blend_minmax')
@staticInterop
class EXT_blend_minmax implements JSObject {
  external static GLenum get MIN_EXT;
  external static GLenum get MAX_EXT;
}
