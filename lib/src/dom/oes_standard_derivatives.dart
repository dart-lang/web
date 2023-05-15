// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('OES_standard_derivatives')
@staticInterop
class OES_standard_derivatives implements JSObject {
  external static GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT_OES;
}
