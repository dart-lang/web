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

/// The **`OES_draw_buffers_indexed`** extension is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// enables the use of different blend options when writing to multiple color
/// buffers simultaneously.
///
/// WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension] method. For more information, see also
/// [Using Extensions](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Using_Extensions)
/// in the
/// [WebGL tutorial](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Tutorial).
///
/// > **Note:** This extension is only available to [WebGL2RenderingContext]
/// > contexts.
extension type OES_draw_buffers_indexed._(JSObject _) implements JSObject {
  /// The `enableiOES()` method of the [OES_draw_buffers_indexed] WebGL
  /// extension enables blending for a particular draw buffer.
  external void enableiOES(
    GLenum target,
    GLuint index,
  );

  /// The `disableiOES()` method of the [OES_draw_buffers_indexed] WebGL
  /// extension enables blending for a particular draw buffer.
  external void disableiOES(
    GLenum target,
    GLuint index,
  );

  /// The `blendEquationiOES()` method of the `OES_draw_buffers_indexed` WebGL
  /// extension sets both the RGB blend and alpha blend equations for a
  /// particular draw buffer.
  ///
  /// See [OES_draw_buffers_indexed.blendEquationSeparateiOES] for setting RGB
  /// and alpha separately and [WebGLRenderingContext.blendEquation] for the
  /// WebGL 1 version of this method.
  external void blendEquationiOES(
    GLuint buf,
    GLenum mode,
  );

  /// The `blendEquationSeparateiOES()` method of the [OES_draw_buffers_indexed]
  /// WebGL extension sets the RGB and alpha blend equations separately for a
  /// particular draw buffer.
  ///
  /// See [OES_draw_buffers_indexed.blendEquationiOES] for setting RGB and alpha
  /// together and [WebGLRenderingContext.blendEquationSeparate] for the WebGL 1
  /// version of this method.
  external void blendEquationSeparateiOES(
    GLuint buf,
    GLenum modeRGB,
    GLenum modeAlpha,
  );

  /// The `blendFunciOES()` method of the [OES_draw_buffers_indexed] WebGL
  /// extension defines which function is used when blending pixels for a
  /// particular draw buffer.
  ///
  /// See [OES_draw_buffers_indexed.blendFuncSeparateiOES] for setting RGB and
  /// alpha components separately and [WebGLRenderingContext.blendFunc] for the
  /// WebGL 1 version of this method.
  external void blendFunciOES(
    GLuint buf,
    GLenum src,
    GLenum dst,
  );

  /// The `blendFuncSeparateiOES()` method of the [OES_draw_buffers_indexed]
  /// WebGL extension defines which function is used when blending pixels for
  /// RGB and alpha components separately for a particular draw buffer.
  ///
  /// See [OES_draw_buffers_indexed.blendFunciOES] for setting RGB and alpha
  /// together and [WebGLRenderingContext.blendFuncSeparate] for the WebGL 1
  /// version of this method.
  external void blendFuncSeparateiOES(
    GLuint buf,
    GLenum srcRGB,
    GLenum dstRGB,
    GLenum srcAlpha,
    GLenum dstAlpha,
  );

  /// The `colorMaskiOES()` method of the [OES_draw_buffers_indexed] WebGL
  /// extension sets which color components to enable or to disable when drawing
  /// or rendering for a particular draw buffer. It's the indexed version of
  /// WebGL 1's [WebGLRenderingContext.colorMask] method.
  external void colorMaskiOES(
    GLuint buf,
    GLboolean r,
    GLboolean g,
    GLboolean b,
    GLboolean a,
  );
}
