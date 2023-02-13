// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('OES_draw_buffers_indexed')
@staticInterop
class OES_draw_buffers_indexed {
  external factory OES_draw_buffers_indexed();
}

extension OES_draw_buffers_indexedExtension on OES_draw_buffers_indexed {
  external JSUndefined enableiOES(GLenum target, GLuint index);
  external JSUndefined disableiOES(GLenum target, GLuint index);
  external JSUndefined blendEquationiOES(GLuint buf, GLenum mode);
  external JSUndefined blendEquationSeparateiOES(
      GLuint buf, GLenum modeRGB, GLenum modeAlpha);
  external JSUndefined blendFunciOES(GLuint buf, GLenum src, GLenum dst);
  external JSUndefined blendFuncSeparateiOES(GLuint buf, GLenum srcRGB,
      GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
  external JSUndefined colorMaskiOES(
      GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
}
