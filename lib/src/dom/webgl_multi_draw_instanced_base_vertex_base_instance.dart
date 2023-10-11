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
    JSAny? firstsList,
    int firstsOffset,
    JSAny? countsList,
    int countsOffset,
    JSAny? instanceCountsList,
    int instanceCountsOffset,
    JSAny? baseInstancesList,
    int baseInstancesOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(
    GLenum mode,
    JSAny? countsList,
    int countsOffset,
    GLenum type,
    JSAny? offsetsList,
    int offsetsOffset,
    JSAny? instanceCountsList,
    int instanceCountsOffset,
    JSAny? baseVerticesList,
    int baseVerticesOffset,
    JSAny? baseInstancesList,
    int baseInstancesOffset,
    GLsizei drawcount,
  );
}
