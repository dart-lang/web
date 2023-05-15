// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('KHR_parallel_shader_compile')
@staticInterop
class KHR_parallel_shader_compile implements JSObject {
  external static GLenum get COMPLETION_STATUS_KHR;
}
