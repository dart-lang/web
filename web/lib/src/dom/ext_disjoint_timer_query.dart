// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';

extension type WebGLTimerQueryEXT._(JSObject _) implements JSObject {}
extension type EXT_disjoint_timer_query._(JSObject _) implements JSObject {
  static const GLenum QUERY_COUNTER_BITS_EXT = 34916;

  static const GLenum CURRENT_QUERY_EXT = 34917;

  static const GLenum QUERY_RESULT_EXT = 34918;

  static const GLenum QUERY_RESULT_AVAILABLE_EXT = 34919;

  static const GLenum TIME_ELAPSED_EXT = 35007;

  static const GLenum TIMESTAMP_EXT = 36392;

  static const GLenum GPU_DISJOINT_EXT = 36795;

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
