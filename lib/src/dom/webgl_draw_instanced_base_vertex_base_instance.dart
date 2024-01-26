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

extension type WEBGL_draw_instanced_base_vertex_base_instance._(JSObject _)
    implements JSObject {
  external void drawArraysInstancedBaseInstanceWEBGL(
    GLenum mode,
    GLint first,
    GLsizei count,
    GLsizei instanceCount,
    GLuint baseInstance,
  );
  external void drawElementsInstancedBaseVertexBaseInstanceWEBGL(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
    GLsizei instanceCount,
    GLint baseVertex,
    GLuint baseInstance,
  );
}
