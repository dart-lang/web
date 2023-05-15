// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

typedef GLuint64EXT = JSNumber;

@JS('WebGLTimerQueryEXT')
@staticInterop
class WebGLTimerQueryEXT implements WebGLObject {}

@JS('EXT_disjoint_timer_query')
@staticInterop
class EXT_disjoint_timer_query implements JSObject {
  external static GLenum get QUERY_COUNTER_BITS_EXT;
  external static GLenum get CURRENT_QUERY_EXT;
  external static GLenum get QUERY_RESULT_EXT;
  external static GLenum get QUERY_RESULT_AVAILABLE_EXT;
  external static GLenum get TIME_ELAPSED_EXT;
  external static GLenum get TIMESTAMP_EXT;
  external static GLenum get GPU_DISJOINT_EXT;
}

extension EXTDisjointTimerQueryExtension on EXT_disjoint_timer_query {
  external WebGLTimerQueryEXT? createQueryEXT();
  external JSVoid deleteQueryEXT(WebGLTimerQueryEXT? query);
  external JSBoolean isQueryEXT(WebGLTimerQueryEXT? query);
  external JSVoid beginQueryEXT(
    GLenum target,
    WebGLTimerQueryEXT query,
  );
  external JSVoid endQueryEXT(GLenum target);
  external JSVoid queryCounterEXT(
    WebGLTimerQueryEXT query,
    GLenum target,
  );
  external JSAny getQueryEXT(
    GLenum target,
    GLenum pname,
  );
  external JSAny getQueryObjectEXT(
    WebGLTimerQueryEXT query,
    GLenum pname,
  );
}
