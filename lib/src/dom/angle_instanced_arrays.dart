// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';

@JS('ANGLE_instanced_arrays')
@staticInterop
class ANGLE_instanced_arrays {
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;
}

extension ANGLEInstancedArraysExtension on ANGLE_instanced_arrays {
  external JSVoid drawArraysInstancedANGLE(
    GLenum mode,
    GLint first,
    GLsizei count,
    GLsizei primcount,
  );
  external JSVoid drawElementsInstancedANGLE(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
    GLsizei primcount,
  );
  external JSVoid vertexAttribDivisorANGLE(
    GLuint index,
    GLuint divisor,
  );
}
