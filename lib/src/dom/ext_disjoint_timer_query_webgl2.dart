// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';
import 'webgl2.dart';

extension type EXT_disjoint_timer_query_webgl2._(JSObject _)
    implements JSObject {
  external static GLenum get QUERY_COUNTER_BITS_EXT;
  external static GLenum get TIME_ELAPSED_EXT;
  external static GLenum get TIMESTAMP_EXT;
  external static GLenum get GPU_DISJOINT_EXT;
  external void queryCounterEXT(
    WebGLQuery query,
    GLenum target,
  );
}
