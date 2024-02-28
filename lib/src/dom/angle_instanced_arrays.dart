// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';

/// The **`ANGLE_instanced_arrays`** extension is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// allows to draw the same object, or groups of similar objects multiple times,
/// if they share the same vertex data, primitive count and type.
///
/// WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension] method. For more information, see also
/// [Using Extensions](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Using_Extensions)
/// in the
/// [WebGL tutorial](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Tutorial).
///
/// > **Note:** This extension is only available to [WebGLRenderingContext]
/// > contexts. In [WebGL2RenderingContext], the functionality of this extension
/// > is available on the WebGL2 context by default and the constants and
/// > methods are available without the "`ANGLE`" suffix.
/// >
/// > Despite the name "ANGLE", this extension works on any device if the
/// > hardware supports it and not just on Windows when using the ANGLE library.
/// > "ANGLE" just indicates that this extension has been written by the ANGLE
/// > library authors.
extension type ANGLE_instanced_arrays._(JSObject _) implements JSObject {
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;

  /// The **`ANGLE_instanced_arrays.drawArraysInstancedANGLE()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from array data like the
  /// [WebGLRenderingContext.drawArrays] method. In addition, it can execute
  /// multiple instances of the range of elements.
  ///
  /// > **Note:** When using [WebGL2RenderingContext], this method is available
  /// > as [WebGL2RenderingContext.drawArraysInstanced] by default.
  external void drawArraysInstancedANGLE(
    GLenum mode,
    GLint first,
    GLsizei count,
    GLsizei primcount,
  );

  /// The **`ANGLE_instanced_arrays.drawElementsInstancedANGLE()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from array data like the
  /// [WebGLRenderingContext.drawElements] method. In addition, it can execute
  /// multiple instances of a set of elements.
  ///
  /// > **Note:** When using [WebGL2RenderingContext], this method is available
  /// > as [WebGL2RenderingContext.drawElementsInstanced] by default.
  external void drawElementsInstancedANGLE(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
    GLsizei primcount,
  );

  /// The **ANGLE_instanced_arrays.vertexAttribDivisorANGLE()** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// modifies the rate at which generic vertex attributes advance when
  /// rendering multiple instances of primitives with
  /// [ANGLE_instanced_arrays.drawArraysInstancedANGLE] and
  /// [ANGLE_instanced_arrays.drawElementsInstancedANGLE].
  ///
  /// > **Note:** When using [WebGL2RenderingContext], this method is available
  /// > as [WebGL2RenderingContext.vertexAttribDivisor] by default.
  external void vertexAttribDivisorANGLE(
    GLuint index,
    GLuint divisor,
  );
}
