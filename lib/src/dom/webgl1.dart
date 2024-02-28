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

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef GLenum = int;
typedef GLboolean = bool;
typedef GLbitfield = int;
typedef GLbyte = int;
typedef GLshort = int;
typedef GLint = int;
typedef GLsizei = int;
typedef GLintptr = int;
typedef GLsizeiptr = int;
typedef GLubyte = int;
typedef GLushort = int;
typedef GLuint = int;
typedef GLfloat = num;
typedef GLclampf = num;
typedef TexImageSource = JSObject;
typedef Float32List = JSObject;
typedef Int32List = JSObject;
typedef WebGLPowerPreference = String;
extension type WebGLContextAttributes._(JSObject _) implements JSObject {
  external factory WebGLContextAttributes({
    bool alpha,
    bool depth,
    bool stencil,
    bool antialias,
    bool premultipliedAlpha,
    bool preserveDrawingBuffer,
    WebGLPowerPreference powerPreference,
    bool failIfMajorPerformanceCaveat,
    bool desynchronized,
  });

  external set alpha(bool value);
  external bool get alpha;
  external set depth(bool value);
  external bool get depth;
  external set stencil(bool value);
  external bool get stencil;
  external set antialias(bool value);
  external bool get antialias;
  external set premultipliedAlpha(bool value);
  external bool get premultipliedAlpha;
  external set preserveDrawingBuffer(bool value);
  external bool get preserveDrawingBuffer;
  external set powerPreference(WebGLPowerPreference value);
  external WebGLPowerPreference get powerPreference;
  external set failIfMajorPerformanceCaveat(bool value);
  external bool get failIfMajorPerformanceCaveat;
  external set desynchronized(bool value);
  external bool get desynchronized;
}

/// The **`WebGLObject`** is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// is the parent interface for all WebGL objects.
///
/// This object has no public properties or methods on its own.
///
/// If the WebGL context is lost, the internal _invalidated_ flag of all
/// `WebGLObject` instances is set to `true`.
extension type WebGLObject._(JSObject _) implements JSObject {}

/// The **WebGLBuffer** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents an opaque buffer object storing data such as vertices or colors.
extension type WebGLBuffer._(JSObject _) implements WebGLObject, JSObject {}

/// The **WebGLFramebuffer** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents a collection of buffers that serve as a rendering destination.
extension type WebGLFramebuffer._(JSObject _)
    implements WebGLObject, JSObject {}

/// The **`WebGLProgram`** is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// is a combination of two compiled [WebGLShader]s consisting of a vertex
/// shader and a fragment shader (both written in GLSL).
///
/// To create a `WebGLProgram`, call the GL context's
/// [WebGLRenderingContext.createProgram] function. After attaching the shader
/// programs using [WebGLRenderingContext.attachShader], you link them into a
/// usable program. This is shown in the code below.
///
/// ```js
/// const program = gl.createProgram();
///
/// // Attach pre-existing shaders
/// gl.attachShader(program, vertexShader);
/// gl.attachShader(program, fragmentShader);
///
/// gl.linkProgram(program);
///
/// if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
///   const info = gl.getProgramInfoLog(program);
///   throw `Could not compile WebGL program. \n\n${info}`;
/// }
/// ```
///
/// See [WebGLShader] for information on creating the `vertexShader` and
/// `fragmentShader` in the above example.
extension type WebGLProgram._(JSObject _) implements WebGLObject, JSObject {}

/// The **WebGLRenderbuffer** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents a buffer that can contain an image, or that can be a source or
/// target of a rendering operation.
extension type WebGLRenderbuffer._(JSObject _)
    implements WebGLObject, JSObject {}

/// The **WebGLShader** is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// can either be a vertex or a fragment shader. A [WebGLProgram] requires both
/// types of shaders.
extension type WebGLShader._(JSObject _) implements WebGLObject, JSObject {}

/// The **WebGLTexture** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents an opaque texture object providing storage and state for
/// texturing operations.
extension type WebGLTexture._(JSObject _) implements WebGLObject, JSObject {}

/// The **WebGLUniformLocation** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents the location of a uniform variable in a shader program.
extension type WebGLUniformLocation._(JSObject _) implements JSObject {}

/// The **WebGLActiveInfo** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents the information returned by calling the
/// [WebGLRenderingContext.getActiveAttrib] and
/// [WebGLRenderingContext.getActiveUniform] methods.
extension type WebGLActiveInfo._(JSObject _) implements JSObject {
  external GLint get size;
  external GLenum get type;
  external String get name;
}

/// The **WebGLShaderPrecisionFormat** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents the information returned by calling the
/// [WebGLRenderingContext.getShaderPrecisionFormat] method.
extension type WebGLShaderPrecisionFormat._(JSObject _) implements JSObject {
  external GLint get rangeMin;
  external GLint get rangeMax;
  external GLint get precision;
}

/// The **`WebGLRenderingContext`** interface provides an interface to the
/// OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML
/// `canvas` element.
///
/// To get an access to a WebGL context for 2D and/or 3D graphics rendering,
/// call [HTMLCanvasElement.getContext] on a `<canvas>` element, supplying
/// "webgl" as the argument:
///
/// ```js
/// const canvas = document.getElementById("myCanvas");
/// const gl = canvas.getContext("webgl");
/// ```
///
/// Once you have the WebGL rendering context for a canvas, you can render
/// within it. The
/// [WebGL tutorial](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Tutorial)
/// has more information, examples, and resources on how to get started with
/// WebGL.
///
/// If you require a WebGL 2.0 context, see [WebGL2RenderingContext]; this
/// supplies access to an implementation of OpenGL ES 3.0 graphics.
extension type WebGLRenderingContext._(JSObject _) implements JSObject {
  external static GLenum get DEPTH_BUFFER_BIT;
  external static GLenum get STENCIL_BUFFER_BIT;
  external static GLenum get COLOR_BUFFER_BIT;
  external static GLenum get POINTS;
  external static GLenum get LINES;
  external static GLenum get LINE_LOOP;
  external static GLenum get LINE_STRIP;
  external static GLenum get TRIANGLES;
  external static GLenum get TRIANGLE_STRIP;
  external static GLenum get TRIANGLE_FAN;
  external static GLenum get ZERO;
  external static GLenum get ONE;
  external static GLenum get SRC_COLOR;
  external static GLenum get ONE_MINUS_SRC_COLOR;
  external static GLenum get SRC_ALPHA;
  external static GLenum get ONE_MINUS_SRC_ALPHA;
  external static GLenum get DST_ALPHA;
  external static GLenum get ONE_MINUS_DST_ALPHA;
  external static GLenum get DST_COLOR;
  external static GLenum get ONE_MINUS_DST_COLOR;
  external static GLenum get SRC_ALPHA_SATURATE;
  external static GLenum get FUNC_ADD;
  external static GLenum get BLEND_EQUATION;
  external static GLenum get BLEND_EQUATION_RGB;
  external static GLenum get BLEND_EQUATION_ALPHA;
  external static GLenum get FUNC_SUBTRACT;
  external static GLenum get FUNC_REVERSE_SUBTRACT;
  external static GLenum get BLEND_DST_RGB;
  external static GLenum get BLEND_SRC_RGB;
  external static GLenum get BLEND_DST_ALPHA;
  external static GLenum get BLEND_SRC_ALPHA;
  external static GLenum get CONSTANT_COLOR;
  external static GLenum get ONE_MINUS_CONSTANT_COLOR;
  external static GLenum get CONSTANT_ALPHA;
  external static GLenum get ONE_MINUS_CONSTANT_ALPHA;
  external static GLenum get BLEND_COLOR;
  external static GLenum get ARRAY_BUFFER;
  external static GLenum get ELEMENT_ARRAY_BUFFER;
  external static GLenum get ARRAY_BUFFER_BINDING;
  external static GLenum get ELEMENT_ARRAY_BUFFER_BINDING;
  external static GLenum get STREAM_DRAW;
  external static GLenum get STATIC_DRAW;
  external static GLenum get DYNAMIC_DRAW;
  external static GLenum get BUFFER_SIZE;
  external static GLenum get BUFFER_USAGE;
  external static GLenum get CURRENT_VERTEX_ATTRIB;
  external static GLenum get FRONT;
  external static GLenum get BACK;
  external static GLenum get FRONT_AND_BACK;
  external static GLenum get CULL_FACE;
  external static GLenum get BLEND;
  external static GLenum get DITHER;
  external static GLenum get STENCIL_TEST;
  external static GLenum get DEPTH_TEST;
  external static GLenum get SCISSOR_TEST;
  external static GLenum get POLYGON_OFFSET_FILL;
  external static GLenum get SAMPLE_ALPHA_TO_COVERAGE;
  external static GLenum get SAMPLE_COVERAGE;
  external static GLenum get NO_ERROR;
  external static GLenum get INVALID_ENUM;
  external static GLenum get INVALID_VALUE;
  external static GLenum get INVALID_OPERATION;
  external static GLenum get OUT_OF_MEMORY;
  external static GLenum get CW;
  external static GLenum get CCW;
  external static GLenum get LINE_WIDTH;
  external static GLenum get ALIASED_POINT_SIZE_RANGE;
  external static GLenum get ALIASED_LINE_WIDTH_RANGE;
  external static GLenum get CULL_FACE_MODE;
  external static GLenum get FRONT_FACE;
  external static GLenum get DEPTH_RANGE;
  external static GLenum get DEPTH_WRITEMASK;
  external static GLenum get DEPTH_CLEAR_VALUE;
  external static GLenum get DEPTH_FUNC;
  external static GLenum get STENCIL_CLEAR_VALUE;
  external static GLenum get STENCIL_FUNC;
  external static GLenum get STENCIL_FAIL;
  external static GLenum get STENCIL_PASS_DEPTH_FAIL;
  external static GLenum get STENCIL_PASS_DEPTH_PASS;
  external static GLenum get STENCIL_REF;
  external static GLenum get STENCIL_VALUE_MASK;
  external static GLenum get STENCIL_WRITEMASK;
  external static GLenum get STENCIL_BACK_FUNC;
  external static GLenum get STENCIL_BACK_FAIL;
  external static GLenum get STENCIL_BACK_PASS_DEPTH_FAIL;
  external static GLenum get STENCIL_BACK_PASS_DEPTH_PASS;
  external static GLenum get STENCIL_BACK_REF;
  external static GLenum get STENCIL_BACK_VALUE_MASK;
  external static GLenum get STENCIL_BACK_WRITEMASK;
  external static GLenum get VIEWPORT;
  external static GLenum get SCISSOR_BOX;
  external static GLenum get COLOR_CLEAR_VALUE;
  external static GLenum get COLOR_WRITEMASK;
  external static GLenum get UNPACK_ALIGNMENT;
  external static GLenum get PACK_ALIGNMENT;
  external static GLenum get MAX_TEXTURE_SIZE;
  external static GLenum get MAX_VIEWPORT_DIMS;
  external static GLenum get SUBPIXEL_BITS;
  external static GLenum get RED_BITS;
  external static GLenum get GREEN_BITS;
  external static GLenum get BLUE_BITS;
  external static GLenum get ALPHA_BITS;
  external static GLenum get DEPTH_BITS;
  external static GLenum get STENCIL_BITS;
  external static GLenum get POLYGON_OFFSET_UNITS;
  external static GLenum get POLYGON_OFFSET_FACTOR;
  external static GLenum get TEXTURE_BINDING_2D;
  external static GLenum get SAMPLE_BUFFERS;
  external static GLenum get SAMPLES;
  external static GLenum get SAMPLE_COVERAGE_VALUE;
  external static GLenum get SAMPLE_COVERAGE_INVERT;
  external static GLenum get COMPRESSED_TEXTURE_FORMATS;
  external static GLenum get DONT_CARE;
  external static GLenum get FASTEST;
  external static GLenum get NICEST;
  external static GLenum get GENERATE_MIPMAP_HINT;
  external static GLenum get BYTE;
  external static GLenum get UNSIGNED_BYTE;
  external static GLenum get SHORT;
  external static GLenum get UNSIGNED_SHORT;
  external static GLenum get INT;
  external static GLenum get UNSIGNED_INT;
  external static GLenum get FLOAT;
  external static GLenum get DEPTH_COMPONENT;
  external static GLenum get ALPHA;
  external static GLenum get RGB;
  external static GLenum get RGBA;
  external static GLenum get LUMINANCE;
  external static GLenum get LUMINANCE_ALPHA;
  external static GLenum get UNSIGNED_SHORT_4_4_4_4;
  external static GLenum get UNSIGNED_SHORT_5_5_5_1;
  external static GLenum get UNSIGNED_SHORT_5_6_5;
  external static GLenum get FRAGMENT_SHADER;
  external static GLenum get VERTEX_SHADER;
  external static GLenum get MAX_VERTEX_ATTRIBS;
  external static GLenum get MAX_VERTEX_UNIFORM_VECTORS;
  external static GLenum get MAX_VARYING_VECTORS;
  external static GLenum get MAX_COMBINED_TEXTURE_IMAGE_UNITS;
  external static GLenum get MAX_VERTEX_TEXTURE_IMAGE_UNITS;
  external static GLenum get MAX_TEXTURE_IMAGE_UNITS;
  external static GLenum get MAX_FRAGMENT_UNIFORM_VECTORS;
  external static GLenum get SHADER_TYPE;
  external static GLenum get DELETE_STATUS;
  external static GLenum get LINK_STATUS;
  external static GLenum get VALIDATE_STATUS;
  external static GLenum get ATTACHED_SHADERS;
  external static GLenum get ACTIVE_UNIFORMS;
  external static GLenum get ACTIVE_ATTRIBUTES;
  external static GLenum get SHADING_LANGUAGE_VERSION;
  external static GLenum get CURRENT_PROGRAM;
  external static GLenum get NEVER;
  external static GLenum get LESS;
  external static GLenum get EQUAL;
  external static GLenum get LEQUAL;
  external static GLenum get GREATER;
  external static GLenum get NOTEQUAL;
  external static GLenum get GEQUAL;
  external static GLenum get ALWAYS;
  external static GLenum get KEEP;
  external static GLenum get REPLACE;
  external static GLenum get INCR;
  external static GLenum get DECR;
  external static GLenum get INVERT;
  external static GLenum get INCR_WRAP;
  external static GLenum get DECR_WRAP;
  external static GLenum get VENDOR;
  external static GLenum get RENDERER;
  external static GLenum get VERSION;
  external static GLenum get NEAREST;
  external static GLenum get LINEAR;
  external static GLenum get NEAREST_MIPMAP_NEAREST;
  external static GLenum get LINEAR_MIPMAP_NEAREST;
  external static GLenum get NEAREST_MIPMAP_LINEAR;
  external static GLenum get LINEAR_MIPMAP_LINEAR;
  external static GLenum get TEXTURE_MAG_FILTER;
  external static GLenum get TEXTURE_MIN_FILTER;
  external static GLenum get TEXTURE_WRAP_S;
  external static GLenum get TEXTURE_WRAP_T;
  external static GLenum get TEXTURE_2D;
  external static GLenum get TEXTURE;
  external static GLenum get TEXTURE_CUBE_MAP;
  external static GLenum get TEXTURE_BINDING_CUBE_MAP;
  external static GLenum get TEXTURE_CUBE_MAP_POSITIVE_X;
  external static GLenum get TEXTURE_CUBE_MAP_NEGATIVE_X;
  external static GLenum get TEXTURE_CUBE_MAP_POSITIVE_Y;
  external static GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Y;
  external static GLenum get TEXTURE_CUBE_MAP_POSITIVE_Z;
  external static GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Z;
  external static GLenum get MAX_CUBE_MAP_TEXTURE_SIZE;
  external static GLenum get TEXTURE0;
  external static GLenum get TEXTURE1;
  external static GLenum get TEXTURE2;
  external static GLenum get TEXTURE3;
  external static GLenum get TEXTURE4;
  external static GLenum get TEXTURE5;
  external static GLenum get TEXTURE6;
  external static GLenum get TEXTURE7;
  external static GLenum get TEXTURE8;
  external static GLenum get TEXTURE9;
  external static GLenum get TEXTURE10;
  external static GLenum get TEXTURE11;
  external static GLenum get TEXTURE12;
  external static GLenum get TEXTURE13;
  external static GLenum get TEXTURE14;
  external static GLenum get TEXTURE15;
  external static GLenum get TEXTURE16;
  external static GLenum get TEXTURE17;
  external static GLenum get TEXTURE18;
  external static GLenum get TEXTURE19;
  external static GLenum get TEXTURE20;
  external static GLenum get TEXTURE21;
  external static GLenum get TEXTURE22;
  external static GLenum get TEXTURE23;
  external static GLenum get TEXTURE24;
  external static GLenum get TEXTURE25;
  external static GLenum get TEXTURE26;
  external static GLenum get TEXTURE27;
  external static GLenum get TEXTURE28;
  external static GLenum get TEXTURE29;
  external static GLenum get TEXTURE30;
  external static GLenum get TEXTURE31;
  external static GLenum get ACTIVE_TEXTURE;
  external static GLenum get REPEAT;
  external static GLenum get CLAMP_TO_EDGE;
  external static GLenum get MIRRORED_REPEAT;
  external static GLenum get FLOAT_VEC2;
  external static GLenum get FLOAT_VEC3;
  external static GLenum get FLOAT_VEC4;
  external static GLenum get INT_VEC2;
  external static GLenum get INT_VEC3;
  external static GLenum get INT_VEC4;
  external static GLenum get BOOL;
  external static GLenum get BOOL_VEC2;
  external static GLenum get BOOL_VEC3;
  external static GLenum get BOOL_VEC4;
  external static GLenum get FLOAT_MAT2;
  external static GLenum get FLOAT_MAT3;
  external static GLenum get FLOAT_MAT4;
  external static GLenum get SAMPLER_2D;
  external static GLenum get SAMPLER_CUBE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_ENABLED;
  external static GLenum get VERTEX_ATTRIB_ARRAY_SIZE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_STRIDE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_TYPE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_NORMALIZED;
  external static GLenum get VERTEX_ATTRIB_ARRAY_POINTER;
  external static GLenum get VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
  external static GLenum get IMPLEMENTATION_COLOR_READ_TYPE;
  external static GLenum get IMPLEMENTATION_COLOR_READ_FORMAT;
  external static GLenum get COMPILE_STATUS;
  external static GLenum get LOW_FLOAT;
  external static GLenum get MEDIUM_FLOAT;
  external static GLenum get HIGH_FLOAT;
  external static GLenum get LOW_INT;
  external static GLenum get MEDIUM_INT;
  external static GLenum get HIGH_INT;
  external static GLenum get FRAMEBUFFER;
  external static GLenum get RENDERBUFFER;
  external static GLenum get RGBA4;
  external static GLenum get RGB5_A1;
  external static GLenum get RGBA8;
  external static GLenum get RGB565;
  external static GLenum get DEPTH_COMPONENT16;
  external static GLenum get STENCIL_INDEX8;
  external static GLenum get DEPTH_STENCIL;
  external static GLenum get RENDERBUFFER_WIDTH;
  external static GLenum get RENDERBUFFER_HEIGHT;
  external static GLenum get RENDERBUFFER_INTERNAL_FORMAT;
  external static GLenum get RENDERBUFFER_RED_SIZE;
  external static GLenum get RENDERBUFFER_GREEN_SIZE;
  external static GLenum get RENDERBUFFER_BLUE_SIZE;
  external static GLenum get RENDERBUFFER_ALPHA_SIZE;
  external static GLenum get RENDERBUFFER_DEPTH_SIZE;
  external static GLenum get RENDERBUFFER_STENCIL_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
  external static GLenum get COLOR_ATTACHMENT0;
  external static GLenum get DEPTH_ATTACHMENT;
  external static GLenum get STENCIL_ATTACHMENT;
  external static GLenum get DEPTH_STENCIL_ATTACHMENT;
  external static GLenum get NONE;
  external static GLenum get FRAMEBUFFER_COMPLETE;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
  external static GLenum get FRAMEBUFFER_UNSUPPORTED;
  external static GLenum get FRAMEBUFFER_BINDING;
  external static GLenum get RENDERBUFFER_BINDING;
  external static GLenum get MAX_RENDERBUFFER_SIZE;
  external static GLenum get INVALID_FRAMEBUFFER_OPERATION;
  external static GLenum get UNPACK_FLIP_Y_WEBGL;
  external static GLenum get UNPACK_PREMULTIPLY_ALPHA_WEBGL;
  external static GLenum get CONTEXT_LOST_WEBGL;
  external static GLenum get UNPACK_COLORSPACE_CONVERSION_WEBGL;
  external static GLenum get BROWSER_DEFAULT_WEBGL;

  /// The **`WebGLRenderingContext.getContextAttributes()`** method
  /// returns a `WebGLContextAttributes` object that contains the actual context
  /// parameters. Might return
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null),
  /// if the context is lost.
  external WebGLContextAttributes? getContextAttributes();

  /// The
  /// **`WebGLRenderingContext.isContextLost()`** method returns a
  /// boolean value indicating whether or not the WebGL context has been lost
  /// and
  /// must be re-established before rendering can resume.
  external bool isContextLost();

  /// The **`WebGLRenderingContext.getSupportedExtensions()`** method
  /// returns a list of all the supported
  /// [WebGL](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// extensions.
  external JSArray<JSString>? getSupportedExtensions();

  /// The **`WebGLRenderingContext.getExtension()`** method enables a
  /// [WebGL](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// extension.
  external JSObject? getExtension(String name);
  external void drawingBufferStorage(
    GLenum sizedFormat,
    int width,
    int height,
  );

  /// The **`WebGLRenderingContext.activeTexture()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies which texture unit to
  /// make active.
  external void activeTexture(GLenum texture);

  /// The **WebGLRenderingContext.attachShader()** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// attaches either a fragment or
  /// vertex [WebGLShader] to a [WebGLProgram].
  external void attachShader(
    WebGLProgram program,
    WebGLShader shader,
  );

  /// The **`WebGLRenderingContext.bindAttribLocation()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a generic vertex index
  /// to an attribute variable.
  external void bindAttribLocation(
    WebGLProgram program,
    GLuint index,
    String name,
  );

  /// The **`WebGLRenderingContext.bindBuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a given
  /// [WebGLBuffer] to a target.
  external void bindBuffer(
    GLenum target,
    WebGLBuffer? buffer,
  );

  /// The **`WebGLRenderingContext.bindFramebuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds to the specified target the provided [WebGLFramebuffer], or, if the
  /// `framebuffer` argument is null, the default [WebGLFramebuffer], which is
  /// associated with the canvas rendering context.
  external void bindFramebuffer(
    GLenum target,
    WebGLFramebuffer? framebuffer,
  );

  /// The **`WebGLRenderingContext.bindRenderbuffer()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a given
  /// [WebGLRenderbuffer] to a target, which must be
  /// `gl.RENDERBUFFER`.
  external void bindRenderbuffer(
    GLenum target,
    WebGLRenderbuffer? renderbuffer,
  );

  /// The **`WebGLRenderingContext.bindTexture()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a given
  /// [WebGLTexture] to a target (binding point).
  external void bindTexture(
    GLenum target,
    WebGLTexture? texture,
  );

  /// The **`WebGLRenderingContext.blendColor()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) is
  /// used to set the source and
  /// destination blending factors.
  external void blendColor(
    GLclampf red,
    GLclampf green,
    GLclampf blue,
    GLclampf alpha,
  );

  /// The **`WebGLRenderingContext.blendEquation()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) is
  /// used to set both the RGB blend
  /// equation and alpha blend equation to a single equation.
  ///
  /// The blend equation determines how a new pixel is combined with a pixel
  /// already in the
  /// [WebGLFramebuffer].
  external void blendEquation(GLenum mode);

  /// The **`WebGLRenderingContext.blendEquationSeparate()`** method
  /// of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) is
  /// used to set the RGB
  /// blend equation and alpha blend equation separately.
  ///
  /// The blend equation determines how a new pixel is combined with a pixel
  /// already in the
  /// [WebGLFramebuffer].
  external void blendEquationSeparate(
    GLenum modeRGB,
    GLenum modeAlpha,
  );

  /// The **`WebGLRenderingContext.blendFunc()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// defines which function is used for
  /// blending pixel arithmetic.
  external void blendFunc(
    GLenum sfactor,
    GLenum dfactor,
  );

  /// The **`WebGLRenderingContext.blendFuncSeparate()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// defines which function is used
  /// for blending pixel arithmetic for RGB and alpha components separately.
  external void blendFuncSeparate(
    GLenum srcRGB,
    GLenum dstRGB,
    GLenum srcAlpha,
    GLenum dstAlpha,
  );

  /// The **`WebGLRenderingContext.checkFramebufferStatus()`** method
  /// of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the completeness
  /// status of the [WebGLFramebuffer] object.
  external GLenum checkFramebufferStatus(GLenum target);

  /// The **`WebGLRenderingContext.clear()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// clears buffers to preset values.
  ///
  /// The preset values can be set by [WebGLRenderingContext.clearColor],
  /// [WebGLRenderingContext.clearDepth] or
  /// [WebGLRenderingContext.clearStencil].
  ///
  /// The scissor box, dithering, and buffer writemasks can affect the `clear()`
  /// method.
  external void clear(GLbitfield mask);

  /// The **`WebGLRenderingContext.clearColor()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies the color values used
  /// when clearing color buffers.
  ///
  /// This specifies what color values to use when calling the
  /// [WebGLRenderingContext.clear] method. The values are clamped
  /// between 0 and 1.
  external void clearColor(
    GLclampf red,
    GLclampf green,
    GLclampf blue,
    GLclampf alpha,
  );

  /// The **`WebGLRenderingContext.clearDepth()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies the clear value for the
  /// depth buffer.
  ///
  /// This specifies what depth value to use when calling the
  /// [WebGLRenderingContext.clear] method. The value is clamped
  /// between 0 and 1.
  external void clearDepth(GLclampf depth);

  /// The **`WebGLRenderingContext.clearStencil()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies the clear value for the
  /// stencil buffer.
  ///
  /// This specifies what stencil value to use when calling the
  /// [WebGLRenderingContext.clear] method.
  external void clearStencil(GLint s);

  /// The **`WebGLRenderingContext.colorMask()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets which color components to
  /// enable or to disable when drawing or rendering to a [WebGLFramebuffer].
  external void colorMask(
    GLboolean red,
    GLboolean green,
    GLboolean blue,
    GLboolean alpha,
  );

  /// The **WebGLRenderingContext.compileShader()** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// compiles a GLSL shader into binary
  /// data so that it can be used by a [WebGLProgram].
  external void compileShader(WebGLShader shader);

  /// The **`WebGLRenderingContext.copyTexImage2D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// copies pixels from the current
  /// [WebGLFramebuffer] into a 2D texture image.
  external void copyTexImage2D(
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLint border,
  );

  /// The **`WebGLRenderingContext.copyTexSubImage2D()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// copies pixels from the current
  /// [WebGLFramebuffer] into an existing 2D texture sub-image.
  external void copyTexSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGLRenderingContext.createBuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// [WebGLBuffer] storing data such as vertices or colors.
  external WebGLBuffer? createBuffer();

  /// The **`WebGLRenderingContext.createFramebuffer()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// [WebGLFramebuffer] object.
  external WebGLFramebuffer? createFramebuffer();

  /// The **`WebGLRenderingContext.createProgram()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// [WebGLProgram] object.
  external WebGLProgram? createProgram();

  /// The **`WebGLRenderingContext.createRenderbuffer()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// [WebGLRenderbuffer] object.
  external WebGLRenderbuffer? createRenderbuffer();

  /// The [WebGLRenderingContext]
  /// method **`createShader()`** of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates a
  /// [WebGLShader] that can then be configured further using
  /// [WebGLRenderingContext.shaderSource] and
  /// [WebGLRenderingContext.compileShader].
  external WebGLShader? createShader(GLenum type);

  /// The **`WebGLRenderingContext.createTexture()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// [WebGLTexture] object.
  external WebGLTexture? createTexture();

  /// The **`WebGLRenderingContext.cullFace()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies whether or not front-
  /// and/or back-facing polygons can be culled.
  external void cullFace(GLenum mode);

  /// The **`WebGLRenderingContext.deleteBuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLBuffer]. This method has no effect if the buffer has already been
  /// deleted. Normally you don't need to call this method yourself, when the
  /// buffer object is dereferenced it will be marked as free.
  external void deleteBuffer(WebGLBuffer? buffer);

  /// The **`WebGLRenderingContext.deleteFramebuffer()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLFramebuffer] object. This method has no effect if the frame buffer
  /// has already been deleted.
  external void deleteFramebuffer(WebGLFramebuffer? framebuffer);

  /// The **`WebGLRenderingContext.deleteProgram()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLProgram] object. This method has no effect if the program has
  /// already
  /// been deleted.
  external void deleteProgram(WebGLProgram? program);

  /// The **`WebGLRenderingContext.deleteRenderbuffer()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLRenderbuffer] object. This method has no effect if the render buffer
  /// has already been deleted.
  external void deleteRenderbuffer(WebGLRenderbuffer? renderbuffer);

  /// The **`WebGLRenderingContext.deleteShader()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// marks a given
  /// [WebGLShader] object for deletion. It will then be deleted whenever the
  /// shader is no longer in use. This method has no effect if the shader has
  /// already been
  /// deleted, and the [WebGLShader] is automatically marked for deletion when
  /// it
  /// is destroyed by the garbage collector.
  external void deleteShader(WebGLShader? shader);

  /// The **`WebGLRenderingContext.deleteTexture()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLTexture] object. This method has no effect if the texture has
  /// already
  /// been deleted.
  external void deleteTexture(WebGLTexture? texture);

  /// The **`WebGLRenderingContext.depthFunc()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a function that compares
  /// incoming pixel depth to the current depth buffer value.
  external void depthFunc(GLenum func);

  /// The **`WebGLRenderingContext.depthMask()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets whether writing into the depth
  /// buffer is enabled or disabled.
  external void depthMask(GLboolean flag);

  /// The **`WebGLRenderingContext.depthRange()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies the depth range mapping
  /// from normalized device coordinates to window or viewport coordinates.
  external void depthRange(
    GLclampf zNear,
    GLclampf zFar,
  );

  /// The **WebGLRenderingContext.detachShader()** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// detaches a previously
  /// attached [WebGLShader] from a [WebGLProgram].
  external void detachShader(
    WebGLProgram program,
    WebGLShader shader,
  );

  /// The **`WebGLRenderingContext.disable()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// disables specific WebGL
  /// capabilities for this context.
  external void disable(GLenum cap);

  /// The **`WebGLRenderingContext.disableVertexAttribArray()`**
  /// method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// turns the generic
  /// vertex attribute array off at a given index position.
  external void disableVertexAttribArray(GLuint index);

  /// The **`WebGLRenderingContext.drawArrays()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from array data.
  external void drawArrays(
    GLenum mode,
    GLint first,
    GLsizei count,
  );

  /// The **`WebGLRenderingContext.drawElements()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from array data.
  external void drawElements(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
  );

  /// The **`WebGLRenderingContext.enable()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// enables specific WebGL capabilities
  /// for this context.
  external void enable(GLenum cap);

  /// The [WebGLRenderingContext] method
  /// **`enableVertexAttribArray()`**, part of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API),
  /// turns on the generic vertex
  /// attribute array at the specified index into the list of attribute arrays.
  ///
  /// > **Note:** You can disable the attribute array by calling
  /// > [WebGLRenderingContext.disableVertexAttribArray].
  ///
  /// In WebGL, values that apply to a specific vertex are stored in
  /// [attributes](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Data#attributes).
  /// These are only
  /// available to the JavaScript code and the vertex shader. Attributes are
  /// referenced by an
  /// index number into the list of attributes maintained by the GPU. Some
  /// vertex attribute
  /// indices may have predefined purposes, depending on the platform and/or the
  /// GPU. Others
  /// are assigned by the WebGL layer when you create the attributes.
  ///
  /// Either way, since attributes cannot be used unless enabled, and are
  /// disabled by
  /// default, you need to call `enableVertexAttribArray()` to enable individual
  /// attributes so that they can be used. Once that's been done, other methods
  /// can be used to
  /// access the attribute, including
  /// [WebGLRenderingContext.vertexAttribPointer],
  /// [WebGLRenderingContext.vertexAttrib], and
  /// [WebGLRenderingContext.getVertexAttrib].
  external void enableVertexAttribArray(GLuint index);

  /// The **`WebGLRenderingContext.finish()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// blocks execution until all
  /// previously called commands are finished.
  external void finish();

  /// The **`WebGLRenderingContext.flush()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// empties different buffer commands,
  /// causing all commands to be executed as quickly as possible.
  external void flush();

  /// The **`WebGLRenderingContext.framebufferRenderbuffer()`**
  /// method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// attaches a
  /// [WebGLRenderbuffer] object to a [WebGLFramebuffer] object.
  external void framebufferRenderbuffer(
    GLenum target,
    GLenum attachment,
    GLenum renderbuffertarget,
    WebGLRenderbuffer? renderbuffer,
  );

  /// The **`WebGLRenderingContext.framebufferTexture2D()`** method
  /// of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// attaches a texture to a
  /// [WebGLFramebuffer].
  external void framebufferTexture2D(
    GLenum target,
    GLenum attachment,
    GLenum textarget,
    WebGLTexture? texture,
    GLint level,
  );

  /// The **`WebGLRenderingContext.frontFace()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies whether polygons are
  /// front- or back-facing by setting a winding orientation.
  external void frontFace(GLenum mode);

  /// The **`WebGLRenderingContext.generateMipmap()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// generates a set of mipmaps for a
  /// [WebGLTexture] object.
  ///
  /// Mipmaps are used to create distance with objects. A higher-resolution
  /// mipmap is used
  /// for objects that are closer, and a lower-resolution mipmap is used for
  /// objects that are
  /// farther away. It starts with the resolution of the texture image and
  /// halves the
  /// resolution until a 1x1 dimension texture image is created.
  external void generateMipmap(GLenum target);

  /// The **`WebGLRenderingContext.getActiveAttrib()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns a
  /// [WebGLActiveInfo] object containing size, type, and name of a vertex
  /// attribute. It is generally used when querying unknown attributes either
  /// for debugging or
  /// generic library creation.
  external WebGLActiveInfo? getActiveAttrib(
    WebGLProgram program,
    GLuint index,
  );

  /// The **`WebGLRenderingContext.getActiveUniform()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns a
  /// [WebGLActiveInfo] object containing size, type, and name of a uniform
  /// attribute. It is generally used when querying unknown uniforms either for
  /// debugging or
  /// generic library creation.
  external WebGLActiveInfo? getActiveUniform(
    WebGLProgram program,
    GLuint index,
  );

  /// The **`WebGLRenderingContext.getAttachedShaders()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns a list of
  /// [WebGLShader] objects attached to a [WebGLProgram].
  external JSArray<WebGLShader>? getAttachedShaders(WebGLProgram program);

  /// The **`WebGLRenderingContext.getAttribLocation()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the location of an
  /// attribute variable in a given [WebGLProgram].
  external GLint getAttribLocation(
    WebGLProgram program,
    String name,
  );

  /// The **`WebGLRenderingContext.getBufferParameter()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information about the
  /// buffer.
  external JSAny? getBufferParameter(
    GLenum target,
    GLenum pname,
  );

  /// The **`WebGLRenderingContext.getParameter()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns a value for the passed
  /// parameter name.
  external JSAny? getParameter(GLenum pname);

  /// The **`WebGLRenderingContext.getError()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns error information.
  external GLenum getError();

  /// The
  /// **`WebGLRenderingContext.getFramebufferAttachmentParameter()`**
  /// method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information
  /// about a framebuffer's attachment.
  external JSAny? getFramebufferAttachmentParameter(
    GLenum target,
    GLenum attachment,
    GLenum pname,
  );

  /// The **`WebGLRenderingContext.getProgramParameter()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information about the
  /// given program.
  external JSAny? getProgramParameter(
    WebGLProgram program,
    GLenum pname,
  );

  /// The **WebGLRenderingContext.getProgramInfoLog** returns the information
  /// log for the specified [WebGLProgram] object. It contains errors that
  /// occurred during failed linking or validation of `WebGLProgram` objects.
  external String? getProgramInfoLog(WebGLProgram program);

  /// The **`WebGLRenderingContext.getRenderbufferParameter()`**
  /// method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information
  /// about the renderbuffer.
  external JSAny? getRenderbufferParameter(
    GLenum target,
    GLenum pname,
  );

  /// The **`WebGLRenderingContext.getShaderParameter()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information about the
  /// given shader.
  external JSAny? getShaderParameter(
    WebGLShader shader,
    GLenum pname,
  );

  /// The
  /// **`WebGLRenderingContext.getShaderPrecisionFormat()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns a new
  /// [WebGLShaderPrecisionFormat] object describing the range and precision for
  /// the specified shader numeric format.
  external WebGLShaderPrecisionFormat? getShaderPrecisionFormat(
    GLenum shadertype,
    GLenum precisiontype,
  );

  /// The **WebGLRenderingContext.getShaderInfoLog** returns the information log
  /// for the specified [WebGLShader] object. It contains warnings, debugging
  /// and
  /// compile information.
  external String? getShaderInfoLog(WebGLShader shader);

  /// The **`WebGLRenderingContext.getShaderSource()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the source code of a
  /// [WebGLShader] as a string.
  external String? getShaderSource(WebGLShader shader);

  /// The **`WebGLRenderingContext.getTexParameter()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information about the
  /// given texture.
  external JSAny? getTexParameter(
    GLenum target,
    GLenum pname,
  );

  /// The **`WebGLRenderingContext.getUniform()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the value of a uniform
  /// variable at a given location.
  external JSAny? getUniform(
    WebGLProgram program,
    WebGLUniformLocation location,
  );

  /// Part of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API),
  /// the [WebGLRenderingContext] method
  /// **`getUniformLocation()`** returns the location of a
  /// specific **uniform** variable which is part of a given
  /// [WebGLProgram].
  ///
  /// The uniform variable is returned as a
  /// [WebGLUniformLocation] object, which is an opaque identifier used to
  /// specify where in the GPU's memory that uniform variable is located.
  ///
  /// Once you have the uniform's location, you can access the uniform itself
  /// using one of
  /// the other uniform access methods, passing in the uniform location as one
  /// of the
  /// inputs:
  ///
  /// - [WebGLRenderingContext.getUniform]
  ///   - : Returns the value of the uniform at the given location.
  ///   <!-- markdownlint-disable MD052 -- text in code block is misidentified as image -->
  /// - [`WebGLRenderingContext.uniform[1234][fi][v]()`](/en-US/docs/Web/API/WebGLRenderingContext/uniform)
  ///   - : Sets the uniform's value to the specified value, which may be a single floating
  /// point or integer number, or a 2-4 component vector specified either as a
  /// list of
  /// values or as a `Float32Array` or `Int32Array`.
  ///     <!-- markdownlint-disable MD052 — text in code block is misidentified as image -->
  /// - [`WebGLRenderingContext.uniformMatrix[234][fv]()`](/en-US/docs/Web/API/WebGLRenderingContext/uniformMatrix)
  ///   - : Sets the uniform's value to the specified matrix, possibly with transposition. The
  /// value is represented as a sequence of `GLfloat` values or as a
  /// `Float32Array`.
  ///
  /// The uniform itself is declared in the shader program using GLSL.
  external WebGLUniformLocation? getUniformLocation(
    WebGLProgram program,
    String name,
  );

  /// The **`WebGLRenderingContext.getVertexAttrib()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns information about a vertex
  /// attribute at a given position.
  external JSAny? getVertexAttrib(
    GLuint index,
    GLenum pname,
  );

  /// The **`WebGLRenderingContext.getVertexAttribOffset()`** method
  /// of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the address of a
  /// specified vertex attribute.
  external GLintptr getVertexAttribOffset(
    GLuint index,
    GLenum pname,
  );

  /// The **`WebGLRenderingContext.hint()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies hints for certain
  /// behaviors. The interpretation of these hints depend on the implementation.
  external void hint(
    GLenum target,
    GLenum mode,
  );

  /// The **`WebGLRenderingContext.isBuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed [WebGLBuffer] is valid and `false` otherwise.
  external GLboolean isBuffer(WebGLBuffer? buffer);

  /// The **`WebGLRenderingContext.isEnabled()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// tests whether a specific WebGL
  /// capability is enabled or not for this context.
  ///
  /// By default, all capabilities except `gl.DITHER` are
  /// **disabled**.
  external GLboolean isEnabled(GLenum cap);

  /// The **`WebGLRenderingContext.isFramebuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed [WebGLFramebuffer] is valid and `false` otherwise.
  external GLboolean isFramebuffer(WebGLFramebuffer? framebuffer);

  /// The **`WebGLRenderingContext.isProgram()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed [WebGLProgram] is valid, `false` otherwise.
  external GLboolean isProgram(WebGLProgram? program);

  /// The **`WebGLRenderingContext.isRenderbuffer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed [WebGLRenderbuffer] is valid and `false` otherwise.
  external GLboolean isRenderbuffer(WebGLRenderbuffer? renderbuffer);

  /// The **`WebGLRenderingContext.isShader()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed [WebGLShader] is valid, `false` otherwise.
  external GLboolean isShader(WebGLShader? shader);

  /// The **`WebGLRenderingContext.isTexture()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed [WebGLTexture] is valid and `false` otherwise.
  external GLboolean isTexture(WebGLTexture? texture);

  /// The **`WebGLRenderingContext.lineWidth()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the line width of rasterized
  /// lines.
  ///
  /// > **Warning:** The webgl spec, based on the OpenGL ES 2.0/3.0 specs points
  /// > out that the minimum and
  /// > maximum width for a line is implementation defined. The maximum minimum
  /// > width is
  /// > allowed to be 1.0. The minimum maximum width is also allowed to be 1.0.
  /// > Because of
  /// > these implementation defined limits it is not recommended to use line
  /// > widths other
  /// > than 1.0 since there is no guarantee any user's browser will display any
  /// > other width.
  /// >
  /// > As of January 2017 most implementations of WebGL only support a minimum
  /// > of 1 and a
  /// > maximum of 1 as the technology they are based on has these same limits.
  external void lineWidth(GLfloat width);

  /// The [WebGLRenderingContext] interface's
  /// **`linkProgram()`** method links a given
  /// [WebGLProgram], completing the process of preparing the GPU code for the
  /// program's fragment and vertex shaders.
  external void linkProgram(WebGLProgram program);

  /// The **`WebGLRenderingContext.pixelStorei()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies the pixel storage modes.
  external void pixelStorei(
    GLenum pname,
    GLint param,
  );

  /// The **`WebGLRenderingContext.polygonOffset()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies the scale factors and
  /// units to calculate depth values.
  ///
  /// The offset is added before the depth test is performed and before the
  /// value is written
  /// into the depth buffer.
  external void polygonOffset(
    GLfloat factor,
    GLfloat units,
  );

  /// The **`WebGLRenderingContext.renderbufferStorage()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// renderbuffer object's data store.
  external void renderbufferStorage(
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGLRenderingContext.sampleCoverage()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies multi-sample coverage
  /// parameters for anti-aliasing effects.
  external void sampleCoverage(
    GLclampf value,
    GLboolean invert,
  );

  /// The **`WebGLRenderingContext.scissor()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets a scissor box, which limits
  /// the drawing to a specified rectangle.
  external void scissor(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGLRenderingContext.shaderSource()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the source code of a
  /// [WebGLShader].
  external void shaderSource(
    WebGLShader shader,
    String source,
  );

  /// The **`WebGLRenderingContext.stencilFunc()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the front and back function
  /// and reference value for stencil testing.
  ///
  /// Stenciling enables and disables drawing on a per-pixel basis. It is
  /// typically used in
  /// multipass rendering to achieve special effects.
  external void stencilFunc(
    GLenum func,
    GLint ref,
    GLuint mask,
  );

  /// The **`WebGLRenderingContext.stencilFuncSeparate()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the front and/or back
  /// function and reference value for stencil testing.
  ///
  /// Stencilling enables and disables drawing on a per-pixel basis. It is
  /// typically used in
  /// multipass rendering to achieve special effects.
  external void stencilFuncSeparate(
    GLenum face,
    GLenum func,
    GLint ref,
    GLuint mask,
  );

  /// The **`WebGLRenderingContext.stencilMask()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// controls enabling and disabling of
  /// both the front and back writing of individual bits in the stencil planes.
  ///
  /// The [WebGLRenderingContext.stencilMaskSeparate] method can set front and
  /// back stencil writemasks to different values.
  external void stencilMask(GLuint mask);

  /// The **`WebGLRenderingContext.stencilMaskSeparate()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// controls enabling and
  /// disabling of front and/or back writing of individual bits in the stencil
  /// planes.
  ///
  /// The [WebGLRenderingContext.stencilMask] method can set both, the front
  /// and back stencil writemasks to one value at the same time.
  external void stencilMaskSeparate(
    GLenum face,
    GLuint mask,
  );

  /// The **`WebGLRenderingContext.stencilOp()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets both the front and back-facing
  /// stencil test actions.
  external void stencilOp(
    GLenum fail,
    GLenum zfail,
    GLenum zpass,
  );

  /// The **`WebGLRenderingContext.stencilOpSeparate()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the front and/or
  /// back-facing stencil test actions.
  external void stencilOpSeparate(
    GLenum face,
    GLenum fail,
    GLenum zfail,
    GLenum zpass,
  );
  external void texParameterf(
    GLenum target,
    GLenum pname,
    GLfloat param,
  );
  external void texParameteri(
    GLenum target,
    GLenum pname,
    GLint param,
  );
  external void uniform1f(
    WebGLUniformLocation? location,
    GLfloat x,
  );
  external void uniform2f(
    WebGLUniformLocation? location,
    GLfloat x,
    GLfloat y,
  );
  external void uniform3f(
    WebGLUniformLocation? location,
    GLfloat x,
    GLfloat y,
    GLfloat z,
  );
  external void uniform4f(
    WebGLUniformLocation? location,
    GLfloat x,
    GLfloat y,
    GLfloat z,
    GLfloat w,
  );
  external void uniform1i(
    WebGLUniformLocation? location,
    GLint x,
  );
  external void uniform2i(
    WebGLUniformLocation? location,
    GLint x,
    GLint y,
  );
  external void uniform3i(
    WebGLUniformLocation? location,
    GLint x,
    GLint y,
    GLint z,
  );
  external void uniform4i(
    WebGLUniformLocation? location,
    GLint x,
    GLint y,
    GLint z,
    GLint w,
  );

  /// The **`WebGLRenderingContext.useProgram()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the specified
  /// [WebGLProgram] as part of the current rendering state.
  external void useProgram(WebGLProgram? program);

  /// The **`WebGLRenderingContext.validateProgram()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// validates a
  /// [WebGLProgram]. It checks if it is successfully linked and if it can be
  /// used in the current WebGL state.
  external void validateProgram(WebGLProgram program);
  external void vertexAttrib1f(
    GLuint index,
    GLfloat x,
  );
  external void vertexAttrib2f(
    GLuint index,
    GLfloat x,
    GLfloat y,
  );
  external void vertexAttrib3f(
    GLuint index,
    GLfloat x,
    GLfloat y,
    GLfloat z,
  );
  external void vertexAttrib4f(
    GLuint index,
    GLfloat x,
    GLfloat y,
    GLfloat z,
    GLfloat w,
  );
  external void vertexAttrib1fv(
    GLuint index,
    Float32List values,
  );
  external void vertexAttrib2fv(
    GLuint index,
    Float32List values,
  );
  external void vertexAttrib3fv(
    GLuint index,
    Float32List values,
  );
  external void vertexAttrib4fv(
    GLuint index,
    Float32List values,
  );

  /// The
  /// **`WebGLRenderingContext.vertexAttribPointer()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds the buffer currently bound
  /// to `gl.ARRAY_BUFFER` to a generic vertex attribute of the current vertex
  /// buffer object and specifies its layout.
  external void vertexAttribPointer(
    GLuint index,
    GLint size,
    GLenum type,
    GLboolean normalized,
    GLsizei stride,
    GLintptr offset,
  );

  /// The **`WebGLRenderingContext.viewport()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// sets the viewport, which specifies
  /// the affine transformation of x and y from normalized device coordinates to
  /// window
  /// coordinates.
  external void viewport(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGLRenderingContext.bufferData()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// initializes and creates the
  /// buffer object's data store.
  external void bufferData(
    GLenum target,
    JSAny dataOrSize,
    GLenum usage,
  );

  /// The **`WebGLRenderingContext.bufferSubData()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// updates a subset of a buffer
  /// object's data store.
  external void bufferSubData(
    GLenum target,
    GLintptr offset,
    AllowSharedBufferSource data,
  );

  /// The **`WebGLRenderingContext.compressedTexImage2D()`**
  /// and **`WebGL2RenderingContext.compressedTexImage3D()`** methods
  /// of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specify a two- or
  /// three-dimensional texture image in a compressed format.
  ///
  /// Compressed image formats must be enabled by
  /// [WebGL extensions](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Using_Extensions)
  /// before
  /// using these methods.
  external void compressedTexImage2D(
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLint border,
    ArrayBufferView data,
  );

  /// The **`WebGLRenderingContext.compressedTexSubImage2D()`**
  /// method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a
  /// two-dimensional sub-rectangle for a texture image in a compressed format.
  ///
  /// Compressed image formats must be enabled by
  /// [WebGL extensions](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Using_Extensions)
  /// before
  /// using this method or a [WebGL2RenderingContext] must be used.
  external void compressedTexSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLsizei width,
    GLsizei height,
    GLenum format,
    ArrayBufferView data,
  );

  /// The **`WebGLRenderingContext.readPixels()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// reads a block of pixels from a
  /// specified rectangle of the current color framebuffer into a `TypedArray`
  /// or a `DataView` object.
  external void readPixels(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    ArrayBufferView? pixels,
  );

  /// The **`WebGLRenderingContext.texImage2D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a two-dimensional texture
  /// image.
  external void texImage2D(
    GLenum target,
    GLint level,
    GLint internalformat,
    JSAny formatOrWidth,
    JSAny heightOrType,
    JSAny borderOrSource, [
    GLenum format,
    GLenum type,
    ArrayBufferView? pixels,
  ]);

  /// The **`WebGLRenderingContext.texSubImage2D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a sub-rectangle of the
  /// current texture.
  external void texSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    JSAny formatOrWidth,
    JSAny heightOrType,
    JSAny formatOrSource, [
    GLenum type,
    ArrayBufferView? pixels,
  ]);
  external void uniform1fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external void uniform2fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external void uniform3fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external void uniform4fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external void uniform1iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external void uniform2iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external void uniform3iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external void uniform4iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external void uniformMatrix2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List value,
  );
  external void uniformMatrix3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List value,
  );
  external void uniformMatrix4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List value,
  );
  external JSObject get canvas;
  external GLsizei get drawingBufferWidth;
  external GLsizei get drawingBufferHeight;
  external GLenum get drawingBufferFormat;
  external set drawingBufferColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get drawingBufferColorSpace;
  external set unpackColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get unpackColorSpace;
}

/// The **WebContextEvent** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// is an interface for an event that is generated in response to a status
/// change to the WebGL rendering context.
extension type WebGLContextEvent._(JSObject _) implements Event, JSObject {
  external factory WebGLContextEvent(
    String type, [
    WebGLContextEventInit eventInit,
  ]);

  external String get statusMessage;
}
extension type WebGLContextEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory WebGLContextEventInit({String statusMessage});

  external set statusMessage(String value);
  external String get statusMessage;
}
