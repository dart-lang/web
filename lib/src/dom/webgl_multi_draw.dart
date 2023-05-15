// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('WEBGL_multi_draw')
@staticInterop
class WEBGL_multi_draw implements JSObject {}

extension WEBGLMultiDrawExtension on WEBGL_multi_draw {
  external JSVoid multiDrawArraysWEBGL(
    GLenum mode,
    JSAny firstsList,
    GLuint firstsOffset,
    JSAny countsList,
    GLuint countsOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawElementsWEBGL(
    GLenum mode,
    JSAny countsList,
    GLuint countsOffset,
    GLenum type,
    JSAny offsetsList,
    GLuint offsetsOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawArraysInstancedWEBGL(
    GLenum mode,
    JSAny firstsList,
    GLuint firstsOffset,
    JSAny countsList,
    GLuint countsOffset,
    JSAny instanceCountsList,
    GLuint instanceCountsOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawElementsInstancedWEBGL(
    GLenum mode,
    JSAny countsList,
    GLuint countsOffset,
    GLenum type,
    JSAny offsetsList,
    GLuint offsetsOffset,
    JSAny instanceCountsList,
    GLuint instanceCountsOffset,
    GLsizei drawcount,
  );
}
