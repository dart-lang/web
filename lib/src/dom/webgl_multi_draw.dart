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
    JSAny? firstsList,
    int firstsOffset,
    JSAny? countsList,
    int countsOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawElementsWEBGL(
    GLenum mode,
    JSAny? countsList,
    int countsOffset,
    GLenum type,
    JSAny? offsetsList,
    int offsetsOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawArraysInstancedWEBGL(
    GLenum mode,
    JSAny? firstsList,
    int firstsOffset,
    JSAny? countsList,
    int countsOffset,
    JSAny? instanceCountsList,
    int instanceCountsOffset,
    GLsizei drawcount,
  );
  external JSVoid multiDrawElementsInstancedWEBGL(
    GLenum mode,
    JSAny? countsList,
    int countsOffset,
    GLenum type,
    JSAny? offsetsList,
    int offsetsOffset,
    JSAny? instanceCountsList,
    int instanceCountsOffset,
    GLsizei drawcount,
  );
}
