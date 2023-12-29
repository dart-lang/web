// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgl1.dart';

extension type ANGLE_instanced_arrays._(JSObject _) implements JSObject {
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;
}

extension ANGLEInstancedArraysExtension on ANGLE_instanced_arrays {
  external void drawArraysInstancedANGLE(
    GLenum mode,
    GLint first,
    GLsizei count,
    GLsizei primcount,
  );
  external void drawElementsInstancedANGLE(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
    GLsizei primcount,
  );
  external void vertexAttribDivisorANGLE(
    GLuint index,
    GLuint divisor,
  );
}
