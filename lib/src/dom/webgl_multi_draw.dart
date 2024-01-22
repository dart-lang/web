// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('WEBGL_multi_draw')
@staticInterop
class WEBGL_multi_draw {}

extension WEBGLMultiDrawExtension on WEBGL_multi_draw {
  external void multiDrawArraysWEBGL(
    GLenum mode,
    JSObject firstsList,
    GLuint firstsOffset,
    JSObject countsList,
    GLuint countsOffset,
    GLsizei drawcount,
  );
  external void multiDrawElementsWEBGL(
    GLenum mode,
    JSObject countsList,
    GLuint countsOffset,
    GLenum type,
    JSObject offsetsList,
    GLuint offsetsOffset,
    GLsizei drawcount,
  );
  external void multiDrawArraysInstancedWEBGL(
    GLenum mode,
    JSObject firstsList,
    GLuint firstsOffset,
    JSObject countsList,
    GLuint countsOffset,
    JSObject instanceCountsList,
    GLuint instanceCountsOffset,
    GLsizei drawcount,
  );
  external void multiDrawElementsInstancedWEBGL(
    GLenum mode,
    JSObject countsList,
    GLuint countsOffset,
    GLenum type,
    JSObject offsetsList,
    GLuint offsetsOffset,
    JSObject instanceCountsList,
    GLuint instanceCountsOffset,
    GLsizei drawcount,
  );
}
