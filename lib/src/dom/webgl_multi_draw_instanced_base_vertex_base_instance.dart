// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('WEBGL_multi_draw_instanced_base_vertex_base_instance')
@staticInterop
class WEBGL_multi_draw_instanced_base_vertex_base_instance
    implements JSObject {}

extension WEBGLMultiDrawInstancedBaseVertexBaseInstanceExtension
    on WEBGL_multi_draw_instanced_base_vertex_base_instance {
  external JSVoid multiDrawArraysInstancedBaseInstanceWEBGL(
    GLenum mode,
    JSAny firstsList,
    GLuint firstsOffset,
    JSAny countsList,
    GLuint countsOffset,
    JSAny instanceCountsList,
    GLuint instanceCountsOffset,
    JSAny baseInstancesList,
    GLuint baseInstancesOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(
    GLenum mode,
    JSAny countsList,
    GLuint countsOffset,
    GLenum type,
    JSAny offsetsList,
    GLuint offsetsOffset,
    JSAny instanceCountsList,
    GLuint instanceCountsOffset,
    JSAny baseVerticesList,
    GLuint baseVerticesOffset,
    JSAny baseInstancesList,
    GLuint baseInstancesOffset,
    GLsizei drawcount,
  );
}
