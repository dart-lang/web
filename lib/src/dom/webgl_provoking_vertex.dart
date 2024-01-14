// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('WEBGL_provoking_vertex')
@staticInterop
class WEBGL_provoking_vertex {
  external static GLenum get FIRST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get LAST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get PROVOKING_VERTEX_WEBGL;
}

extension WEBGLProvokingVertexExtension on WEBGL_provoking_vertex {
  external void provokingVertexWEBGL(GLenum provokeMode);
}
