// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';
import 'webgl2.dart';

@JS('EXT_disjoint_timer_query_webgl2')
@staticInterop
class EXT_disjoint_timer_query_webgl2 implements JSObject {
  external static GLenum get QUERY_COUNTER_BITS_EXT;
  external static GLenum get TIME_ELAPSED_EXT;
  external static GLenum get TIMESTAMP_EXT;
  external static GLenum get GPU_DISJOINT_EXT;
}

extension EXTDisjointTimerQueryWebgl2Extension
    on EXT_disjoint_timer_query_webgl2 {
  external JSVoid queryCounterEXT(
    WebGLQuery query,
    GLenum target,
  );
}
