// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('WEBGL_multi_draw')
@staticInterop
class WEBGL_multi_draw {
  external factory WEBGL_multi_draw();
}

extension WEBGL_multi_drawExtension on WEBGL_multi_draw {
  external JSUndefined multiDrawArraysWEBGL(
      GLenum mode,
      JSAny firstsList,
      GLuint firstsOffset,
      JSAny countsList,
      GLuint countsOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawElementsWEBGL(
      GLenum mode,
      JSAny countsList,
      GLuint countsOffset,
      GLenum type,
      JSAny offsetsList,
      GLuint offsetsOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawArraysInstancedWEBGL(
      GLenum mode,
      JSAny firstsList,
      GLuint firstsOffset,
      JSAny countsList,
      GLuint countsOffset,
      JSAny instanceCountsList,
      GLuint instanceCountsOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawElementsInstancedWEBGL(
      GLenum mode,
      JSAny countsList,
      GLuint countsOffset,
      GLenum type,
      JSAny offsetsList,
      GLuint offsetsOffset,
      JSAny instanceCountsList,
      GLuint instanceCountsOffset,
      GLsizei drawcount);
}
