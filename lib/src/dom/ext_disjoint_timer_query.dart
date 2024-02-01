// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';

typedef GLuint64EXT = int;
extension type WebGLTimerQueryEXT._(JSObject _)
    implements WebGLObject, JSObject {}
extension type EXT_disjoint_timer_query._(JSObject _) implements JSObject {
  external static GLenum get QUERY_COUNTER_BITS_EXT;
  external static GLenum get CURRENT_QUERY_EXT;
  external static GLenum get QUERY_RESULT_EXT;
  external static GLenum get QUERY_RESULT_AVAILABLE_EXT;
  external static GLenum get TIME_ELAPSED_EXT;
  external static GLenum get TIMESTAMP_EXT;
  external static GLenum get GPU_DISJOINT_EXT;
  external WebGLTimerQueryEXT? createQueryEXT();
  external void deleteQueryEXT(WebGLTimerQueryEXT? query);
  external bool isQueryEXT(WebGLTimerQueryEXT? query);
  external void beginQueryEXT(
    GLenum target,
    WebGLTimerQueryEXT query,
  );
  external void endQueryEXT(GLenum target);
  external void queryCounterEXT(
    WebGLTimerQueryEXT query,
    GLenum target,
  );
  external JSAny? getQueryEXT(
    GLenum target,
    GLenum pname,
  );
  external JSAny? getQueryObjectEXT(
    WebGLTimerQueryEXT query,
    GLenum pname,
  );
}
