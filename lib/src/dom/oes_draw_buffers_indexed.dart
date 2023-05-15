// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('OES_draw_buffers_indexed')
@staticInterop
class OES_draw_buffers_indexed implements JSObject {}

extension OESDrawBuffersIndexedExtension on OES_draw_buffers_indexed {
  external JSVoid enableiOES(
    GLenum target,
    GLuint index,
  );
  external JSVoid disableiOES(
    GLenum target,
    GLuint index,
  );
  external JSVoid blendEquationiOES(
    GLuint buf,
    GLenum mode,
  );
  external JSVoid blendEquationSeparateiOES(
    GLuint buf,
    GLenum modeRGB,
    GLenum modeAlpha,
  );
  external JSVoid blendFunciOES(
    GLuint buf,
    GLenum src,
    GLenum dst,
  );
  external JSVoid blendFuncSeparateiOES(
    GLuint buf,
    GLenum srcRGB,
    GLenum dstRGB,
    GLenum srcAlpha,
    GLenum dstAlpha,
  );
  external JSVoid colorMaskiOES(
    GLuint buf,
    GLboolean r,
    GLboolean g,
    GLboolean b,
    GLboolean a,
  );
}
