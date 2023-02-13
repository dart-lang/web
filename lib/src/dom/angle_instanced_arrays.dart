// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('ANGLE_instanced_arrays')
@staticInterop
class ANGLE_instanced_arrays {
  external factory ANGLE_instanced_arrays();
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;
}

extension ANGLE_instanced_arraysExtension on ANGLE_instanced_arrays {
  external JSUndefined drawArraysInstancedANGLE(
      GLenum mode, GLint first, GLsizei count, GLsizei primcount);
  external JSUndefined drawElementsInstancedANGLE(GLenum mode, GLsizei count,
      GLenum type, GLintptr offset, GLsizei primcount);
  external JSUndefined vertexAttribDivisorANGLE(GLuint index, GLuint divisor);
}
