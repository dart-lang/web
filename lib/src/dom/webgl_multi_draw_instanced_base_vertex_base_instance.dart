// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('WEBGL_multi_draw_instanced_base_vertex_base_instance')
@staticInterop
class WEBGL_multi_draw_instanced_base_vertex_base_instance {}

extension WEBGLMultiDrawInstancedBaseVertexBaseInstanceExtension
    on WEBGL_multi_draw_instanced_base_vertex_base_instance {
  external void multiDrawArraysInstancedBaseInstanceWEBGL(
    GLenum mode,
    JSObject firstsList,
    GLuint firstsOffset,
    JSObject countsList,
    GLuint countsOffset,
    JSObject instanceCountsList,
    GLuint instanceCountsOffset,
    JSObject baseInstancesList,
    GLuint baseInstancesOffset,
    GLsizei drawcount,
  );
  external void multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(
    GLenum mode,
    JSObject countsList,
    GLuint countsOffset,
    GLenum type,
    JSObject offsetsList,
    GLuint offsetsOffset,
    JSObject instanceCountsList,
    GLuint instanceCountsOffset,
    JSObject baseVerticesList,
    GLuint baseVerticesOffset,
    JSObject baseInstancesList,
    GLuint baseInstancesOffset,
    GLsizei drawcount,
  );
}
