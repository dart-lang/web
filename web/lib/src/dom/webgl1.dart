// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef GLenum = int;
typedef GLboolean = bool;
typedef GLbitfield = int;
typedef GLint = int;
typedef GLsizei = int;
typedef GLintptr = int;
typedef GLsizeiptr = int;
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
    bool xrCompatible,
  });

  external bool get alpha;
  external set alpha(bool value);
  external bool get depth;
  external set depth(bool value);
  external bool get stencil;
  external set stencil(bool value);
  external bool get antialias;
  external set antialias(bool value);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool value);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool value);
  external WebGLPowerPreference get powerPreference;
  external set powerPreference(WebGLPowerPreference value);
  external bool get failIfMajorPerformanceCaveat;
  external set failIfMajorPerformanceCaveat(bool value);
  external bool get desynchronized;
  external set desynchronized(bool value);
  external bool get xrCompatible;
  external set xrCompatible(bool value);
}

/// The **WebGLBuffer** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents an opaque buffer object storing data such as vertices or colors.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLBuffer).
extension type WebGLBuffer._(JSObject _) implements JSObject {}

/// The **WebGLFramebuffer** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents a collection of buffers that serve as a rendering destination.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLFramebuffer).
extension type WebGLFramebuffer._(JSObject _) implements JSObject {}

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLProgram).
extension type WebGLProgram._(JSObject _) implements JSObject {}

/// The **WebGLRenderbuffer** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents a buffer that can contain an image, or that can be a source or
/// target of a rendering operation.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderbuffer).
extension type WebGLRenderbuffer._(JSObject _) implements JSObject {}

/// The **WebGLShader** is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// can either be a vertex or a fragment shader. A [WebGLProgram] requires both
/// types of shaders.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLShader).
extension type WebGLShader._(JSObject _) implements JSObject {}

/// The **WebGLTexture** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents an opaque texture object providing storage and state for
/// texturing operations.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLTexture).
extension type WebGLTexture._(JSObject _) implements JSObject {}

/// The **WebGLUniformLocation** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents the location of a uniform variable in a shader program.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLUniformLocation).
extension type WebGLUniformLocation._(JSObject _) implements JSObject {}

/// The **WebGLActiveInfo** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents the information returned by calling the
/// [WebGLRenderingContext.getActiveAttrib] and
/// [WebGLRenderingContext.getActiveUniform] methods.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo).
extension type WebGLActiveInfo._(JSObject _) implements JSObject {
  /// The read-only **`WebGLActiveInfo.size`** property is a `Number`
  /// representing the size of the requested data returned by calling the
  /// [WebGLRenderingContext.getActiveAttrib] or
  /// [WebGLRenderingContext.getActiveUniform] methods.
  external GLint get size;

  /// The read-only **`WebGLActiveInfo.type`** property represents the type of
  /// the requested data returned by calling the
  /// [WebGLRenderingContext.getActiveAttrib] or
  /// [WebGLRenderingContext.getActiveUniform] methods.
  external GLenum get type;

  /// The read-only **`WebGLActiveInfo.name`** property represents the name of
  /// the requested data returned by calling the
  /// [WebGLRenderingContext.getActiveAttrib] or
  /// [WebGLRenderingContext.getActiveUniform] methods.
  external String get name;
}

/// The **WebGLShaderPrecisionFormat** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// represents the information returned by calling the
/// [WebGLRenderingContext.getShaderPrecisionFormat] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat).
extension type WebGLShaderPrecisionFormat._(JSObject _) implements JSObject {
  /// The read-only **`WebGLShaderPrecisionFormat.rangeMin`** property returns
  /// the base 2 log of the absolute value of the minimum value that can be
  /// represented.
  external GLint get rangeMin;

  /// The read-only **`WebGLShaderPrecisionFormat.rangeMax`** property returns
  /// the base 2 log of the absolute value of the maximum value that can be
  /// represented.
  external GLint get rangeMax;

  /// The read-only **`WebGLShaderPrecisionFormat.precision`** property returns
  /// the number of bits of precision that can be represented.
  ///
  /// For integer formats this value is always 0.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext).
extension type WebGLRenderingContext._(JSObject _) implements JSObject {
  static const GLenum DEPTH_BUFFER_BIT = 256;

  static const GLenum STENCIL_BUFFER_BIT = 1024;

  static const GLenum COLOR_BUFFER_BIT = 16384;

  static const GLenum POINTS = 0;

  static const GLenum LINES = 1;

  static const GLenum LINE_LOOP = 2;

  static const GLenum LINE_STRIP = 3;

  static const GLenum TRIANGLES = 4;

  static const GLenum TRIANGLE_STRIP = 5;

  static const GLenum TRIANGLE_FAN = 6;

  static const GLenum ZERO = 0;

  static const GLenum ONE = 1;

  static const GLenum SRC_COLOR = 768;

  static const GLenum ONE_MINUS_SRC_COLOR = 769;

  static const GLenum SRC_ALPHA = 770;

  static const GLenum ONE_MINUS_SRC_ALPHA = 771;

  static const GLenum DST_ALPHA = 772;

  static const GLenum ONE_MINUS_DST_ALPHA = 773;

  static const GLenum DST_COLOR = 774;

  static const GLenum ONE_MINUS_DST_COLOR = 775;

  static const GLenum SRC_ALPHA_SATURATE = 776;

  static const GLenum FUNC_ADD = 32774;

  static const GLenum BLEND_EQUATION = 32777;

  static const GLenum BLEND_EQUATION_RGB = 32777;

  static const GLenum BLEND_EQUATION_ALPHA = 34877;

  static const GLenum FUNC_SUBTRACT = 32778;

  static const GLenum FUNC_REVERSE_SUBTRACT = 32779;

  static const GLenum BLEND_DST_RGB = 32968;

  static const GLenum BLEND_SRC_RGB = 32969;

  static const GLenum BLEND_DST_ALPHA = 32970;

  static const GLenum BLEND_SRC_ALPHA = 32971;

  static const GLenum CONSTANT_COLOR = 32769;

  static const GLenum ONE_MINUS_CONSTANT_COLOR = 32770;

  static const GLenum CONSTANT_ALPHA = 32771;

  static const GLenum ONE_MINUS_CONSTANT_ALPHA = 32772;

  static const GLenum BLEND_COLOR = 32773;

  static const GLenum ARRAY_BUFFER = 34962;

  static const GLenum ELEMENT_ARRAY_BUFFER = 34963;

  static const GLenum ARRAY_BUFFER_BINDING = 34964;

  static const GLenum ELEMENT_ARRAY_BUFFER_BINDING = 34965;

  static const GLenum STREAM_DRAW = 35040;

  static const GLenum STATIC_DRAW = 35044;

  static const GLenum DYNAMIC_DRAW = 35048;

  static const GLenum BUFFER_SIZE = 34660;

  static const GLenum BUFFER_USAGE = 34661;

  static const GLenum CURRENT_VERTEX_ATTRIB = 34342;

  static const GLenum FRONT = 1028;

  static const GLenum BACK = 1029;

  static const GLenum FRONT_AND_BACK = 1032;

  static const GLenum CULL_FACE = 2884;

  static const GLenum BLEND = 3042;

  static const GLenum DITHER = 3024;

  static const GLenum STENCIL_TEST = 2960;

  static const GLenum DEPTH_TEST = 2929;

  static const GLenum SCISSOR_TEST = 3089;

  static const GLenum POLYGON_OFFSET_FILL = 32823;

  static const GLenum SAMPLE_ALPHA_TO_COVERAGE = 32926;

  static const GLenum SAMPLE_COVERAGE = 32928;

  static const GLenum NO_ERROR = 0;

  static const GLenum INVALID_ENUM = 1280;

  static const GLenum INVALID_VALUE = 1281;

  static const GLenum INVALID_OPERATION = 1282;

  static const GLenum OUT_OF_MEMORY = 1285;

  static const GLenum CW = 2304;

  static const GLenum CCW = 2305;

  static const GLenum LINE_WIDTH = 2849;

  static const GLenum ALIASED_POINT_SIZE_RANGE = 33901;

  static const GLenum ALIASED_LINE_WIDTH_RANGE = 33902;

  static const GLenum CULL_FACE_MODE = 2885;

  static const GLenum FRONT_FACE = 2886;

  static const GLenum DEPTH_RANGE = 2928;

  static const GLenum DEPTH_WRITEMASK = 2930;

  static const GLenum DEPTH_CLEAR_VALUE = 2931;

  static const GLenum DEPTH_FUNC = 2932;

  static const GLenum STENCIL_CLEAR_VALUE = 2961;

  static const GLenum STENCIL_FUNC = 2962;

  static const GLenum STENCIL_FAIL = 2964;

  static const GLenum STENCIL_PASS_DEPTH_FAIL = 2965;

  static const GLenum STENCIL_PASS_DEPTH_PASS = 2966;

  static const GLenum STENCIL_REF = 2967;

  static const GLenum STENCIL_VALUE_MASK = 2963;

  static const GLenum STENCIL_WRITEMASK = 2968;

  static const GLenum STENCIL_BACK_FUNC = 34816;

  static const GLenum STENCIL_BACK_FAIL = 34817;

  static const GLenum STENCIL_BACK_PASS_DEPTH_FAIL = 34818;

  static const GLenum STENCIL_BACK_PASS_DEPTH_PASS = 34819;

  static const GLenum STENCIL_BACK_REF = 36003;

  static const GLenum STENCIL_BACK_VALUE_MASK = 36004;

  static const GLenum STENCIL_BACK_WRITEMASK = 36005;

  static const GLenum VIEWPORT = 2978;

  static const GLenum SCISSOR_BOX = 3088;

  static const GLenum COLOR_CLEAR_VALUE = 3106;

  static const GLenum COLOR_WRITEMASK = 3107;

  static const GLenum UNPACK_ALIGNMENT = 3317;

  static const GLenum PACK_ALIGNMENT = 3333;

  static const GLenum MAX_TEXTURE_SIZE = 3379;

  static const GLenum MAX_VIEWPORT_DIMS = 3386;

  static const GLenum SUBPIXEL_BITS = 3408;

  static const GLenum RED_BITS = 3410;

  static const GLenum GREEN_BITS = 3411;

  static const GLenum BLUE_BITS = 3412;

  static const GLenum ALPHA_BITS = 3413;

  static const GLenum DEPTH_BITS = 3414;

  static const GLenum STENCIL_BITS = 3415;

  static const GLenum POLYGON_OFFSET_UNITS = 10752;

  static const GLenum POLYGON_OFFSET_FACTOR = 32824;

  static const GLenum TEXTURE_BINDING_2D = 32873;

  static const GLenum SAMPLE_BUFFERS = 32936;

  static const GLenum SAMPLES = 32937;

  static const GLenum SAMPLE_COVERAGE_VALUE = 32938;

  static const GLenum SAMPLE_COVERAGE_INVERT = 32939;

  static const GLenum COMPRESSED_TEXTURE_FORMATS = 34467;

  static const GLenum DONT_CARE = 4352;

  static const GLenum FASTEST = 4353;

  static const GLenum NICEST = 4354;

  static const GLenum GENERATE_MIPMAP_HINT = 33170;

  static const GLenum BYTE = 5120;

  static const GLenum UNSIGNED_BYTE = 5121;

  static const GLenum SHORT = 5122;

  static const GLenum UNSIGNED_SHORT = 5123;

  static const GLenum INT = 5124;

  static const GLenum UNSIGNED_INT = 5125;

  static const GLenum FLOAT = 5126;

  static const GLenum DEPTH_COMPONENT = 6402;

  static const GLenum ALPHA = 6406;

  static const GLenum RGB = 6407;

  static const GLenum RGBA = 6408;

  static const GLenum LUMINANCE = 6409;

  static const GLenum LUMINANCE_ALPHA = 6410;

  static const GLenum UNSIGNED_SHORT_4_4_4_4 = 32819;

  static const GLenum UNSIGNED_SHORT_5_5_5_1 = 32820;

  static const GLenum UNSIGNED_SHORT_5_6_5 = 33635;

  static const GLenum FRAGMENT_SHADER = 35632;

  static const GLenum VERTEX_SHADER = 35633;

  static const GLenum MAX_VERTEX_ATTRIBS = 34921;

  static const GLenum MAX_VERTEX_UNIFORM_VECTORS = 36347;

  static const GLenum MAX_VARYING_VECTORS = 36348;

  static const GLenum MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661;

  static const GLenum MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660;

  static const GLenum MAX_TEXTURE_IMAGE_UNITS = 34930;

  static const GLenum MAX_FRAGMENT_UNIFORM_VECTORS = 36349;

  static const GLenum SHADER_TYPE = 35663;

  static const GLenum DELETE_STATUS = 35712;

  static const GLenum LINK_STATUS = 35714;

  static const GLenum VALIDATE_STATUS = 35715;

  static const GLenum ATTACHED_SHADERS = 35717;

  static const GLenum ACTIVE_UNIFORMS = 35718;

  static const GLenum ACTIVE_ATTRIBUTES = 35721;

  static const GLenum SHADING_LANGUAGE_VERSION = 35724;

  static const GLenum CURRENT_PROGRAM = 35725;

  static const GLenum NEVER = 512;

  static const GLenum LESS = 513;

  static const GLenum EQUAL = 514;

  static const GLenum LEQUAL = 515;

  static const GLenum GREATER = 516;

  static const GLenum NOTEQUAL = 517;

  static const GLenum GEQUAL = 518;

  static const GLenum ALWAYS = 519;

  static const GLenum KEEP = 7680;

  static const GLenum REPLACE = 7681;

  static const GLenum INCR = 7682;

  static const GLenum DECR = 7683;

  static const GLenum INVERT = 5386;

  static const GLenum INCR_WRAP = 34055;

  static const GLenum DECR_WRAP = 34056;

  static const GLenum VENDOR = 7936;

  static const GLenum RENDERER = 7937;

  static const GLenum VERSION = 7938;

  static const GLenum NEAREST = 9728;

  static const GLenum LINEAR = 9729;

  static const GLenum NEAREST_MIPMAP_NEAREST = 9984;

  static const GLenum LINEAR_MIPMAP_NEAREST = 9985;

  static const GLenum NEAREST_MIPMAP_LINEAR = 9986;

  static const GLenum LINEAR_MIPMAP_LINEAR = 9987;

  static const GLenum TEXTURE_MAG_FILTER = 10240;

  static const GLenum TEXTURE_MIN_FILTER = 10241;

  static const GLenum TEXTURE_WRAP_S = 10242;

  static const GLenum TEXTURE_WRAP_T = 10243;

  static const GLenum TEXTURE_2D = 3553;

  static const GLenum TEXTURE = 5890;

  static const GLenum TEXTURE_CUBE_MAP = 34067;

  static const GLenum TEXTURE_BINDING_CUBE_MAP = 34068;

  static const GLenum TEXTURE_CUBE_MAP_POSITIVE_X = 34069;

  static const GLenum TEXTURE_CUBE_MAP_NEGATIVE_X = 34070;

  static const GLenum TEXTURE_CUBE_MAP_POSITIVE_Y = 34071;

  static const GLenum TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072;

  static const GLenum TEXTURE_CUBE_MAP_POSITIVE_Z = 34073;

  static const GLenum TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074;

  static const GLenum MAX_CUBE_MAP_TEXTURE_SIZE = 34076;

  static const GLenum TEXTURE0 = 33984;

  static const GLenum TEXTURE1 = 33985;

  static const GLenum TEXTURE2 = 33986;

  static const GLenum TEXTURE3 = 33987;

  static const GLenum TEXTURE4 = 33988;

  static const GLenum TEXTURE5 = 33989;

  static const GLenum TEXTURE6 = 33990;

  static const GLenum TEXTURE7 = 33991;

  static const GLenum TEXTURE8 = 33992;

  static const GLenum TEXTURE9 = 33993;

  static const GLenum TEXTURE10 = 33994;

  static const GLenum TEXTURE11 = 33995;

  static const GLenum TEXTURE12 = 33996;

  static const GLenum TEXTURE13 = 33997;

  static const GLenum TEXTURE14 = 33998;

  static const GLenum TEXTURE15 = 33999;

  static const GLenum TEXTURE16 = 34000;

  static const GLenum TEXTURE17 = 34001;

  static const GLenum TEXTURE18 = 34002;

  static const GLenum TEXTURE19 = 34003;

  static const GLenum TEXTURE20 = 34004;

  static const GLenum TEXTURE21 = 34005;

  static const GLenum TEXTURE22 = 34006;

  static const GLenum TEXTURE23 = 34007;

  static const GLenum TEXTURE24 = 34008;

  static const GLenum TEXTURE25 = 34009;

  static const GLenum TEXTURE26 = 34010;

  static const GLenum TEXTURE27 = 34011;

  static const GLenum TEXTURE28 = 34012;

  static const GLenum TEXTURE29 = 34013;

  static const GLenum TEXTURE30 = 34014;

  static const GLenum TEXTURE31 = 34015;

  static const GLenum ACTIVE_TEXTURE = 34016;

  static const GLenum REPEAT = 10497;

  static const GLenum CLAMP_TO_EDGE = 33071;

  static const GLenum MIRRORED_REPEAT = 33648;

  static const GLenum FLOAT_VEC2 = 35664;

  static const GLenum FLOAT_VEC3 = 35665;

  static const GLenum FLOAT_VEC4 = 35666;

  static const GLenum INT_VEC2 = 35667;

  static const GLenum INT_VEC3 = 35668;

  static const GLenum INT_VEC4 = 35669;

  static const GLenum BOOL = 35670;

  static const GLenum BOOL_VEC2 = 35671;

  static const GLenum BOOL_VEC3 = 35672;

  static const GLenum BOOL_VEC4 = 35673;

  static const GLenum FLOAT_MAT2 = 35674;

  static const GLenum FLOAT_MAT3 = 35675;

  static const GLenum FLOAT_MAT4 = 35676;

  static const GLenum SAMPLER_2D = 35678;

  static const GLenum SAMPLER_CUBE = 35680;

  static const GLenum VERTEX_ATTRIB_ARRAY_ENABLED = 34338;

  static const GLenum VERTEX_ATTRIB_ARRAY_SIZE = 34339;

  static const GLenum VERTEX_ATTRIB_ARRAY_STRIDE = 34340;

  static const GLenum VERTEX_ATTRIB_ARRAY_TYPE = 34341;

  static const GLenum VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922;

  static const GLenum VERTEX_ATTRIB_ARRAY_POINTER = 34373;

  static const GLenum VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975;

  static const GLenum IMPLEMENTATION_COLOR_READ_TYPE = 35738;

  static const GLenum IMPLEMENTATION_COLOR_READ_FORMAT = 35739;

  static const GLenum COMPILE_STATUS = 35713;

  static const GLenum LOW_FLOAT = 36336;

  static const GLenum MEDIUM_FLOAT = 36337;

  static const GLenum HIGH_FLOAT = 36338;

  static const GLenum LOW_INT = 36339;

  static const GLenum MEDIUM_INT = 36340;

  static const GLenum HIGH_INT = 36341;

  static const GLenum FRAMEBUFFER = 36160;

  static const GLenum RENDERBUFFER = 36161;

  static const GLenum RGBA4 = 32854;

  static const GLenum RGB5_A1 = 32855;

  static const GLenum RGBA8 = 32856;

  static const GLenum RGB565 = 36194;

  static const GLenum DEPTH_COMPONENT16 = 33189;

  static const GLenum STENCIL_INDEX8 = 36168;

  static const GLenum DEPTH_STENCIL = 34041;

  static const GLenum RENDERBUFFER_WIDTH = 36162;

  static const GLenum RENDERBUFFER_HEIGHT = 36163;

  static const GLenum RENDERBUFFER_INTERNAL_FORMAT = 36164;

  static const GLenum RENDERBUFFER_RED_SIZE = 36176;

  static const GLenum RENDERBUFFER_GREEN_SIZE = 36177;

  static const GLenum RENDERBUFFER_BLUE_SIZE = 36178;

  static const GLenum RENDERBUFFER_ALPHA_SIZE = 36179;

  static const GLenum RENDERBUFFER_DEPTH_SIZE = 36180;

  static const GLenum RENDERBUFFER_STENCIL_SIZE = 36181;

  static const GLenum FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048;

  static const GLenum FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049;

  static const GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050;

  static const GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051;

  static const GLenum COLOR_ATTACHMENT0 = 36064;

  static const GLenum DEPTH_ATTACHMENT = 36096;

  static const GLenum STENCIL_ATTACHMENT = 36128;

  static const GLenum DEPTH_STENCIL_ATTACHMENT = 33306;

  static const GLenum NONE = 0;

  static const GLenum FRAMEBUFFER_COMPLETE = 36053;

  static const GLenum FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054;

  static const GLenum FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055;

  static const GLenum FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057;

  static const GLenum FRAMEBUFFER_UNSUPPORTED = 36061;

  static const GLenum FRAMEBUFFER_BINDING = 36006;

  static const GLenum RENDERBUFFER_BINDING = 36007;

  static const GLenum MAX_RENDERBUFFER_SIZE = 34024;

  static const GLenum INVALID_FRAMEBUFFER_OPERATION = 1286;

  static const GLenum UNPACK_FLIP_Y_WEBGL = 37440;

  static const GLenum UNPACK_PREMULTIPLY_ALPHA_WEBGL = 37441;

  static const GLenum CONTEXT_LOST_WEBGL = 37442;

  static const GLenum UNPACK_COLORSPACE_CONVERSION_WEBGL = 37443;

  static const GLenum BROWSER_DEFAULT_WEBGL = 37444;

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

  /// The [WebGLRenderingContext] method
  /// **`makeXRCompatible()`** ensures that the rendering context
  /// described by the `WebGLRenderingContext` is ready to render the scene for
  /// the
  /// immersive
  /// [WebXR](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
  /// device on which it
  /// will be displayed. If necessary, the
  /// [WebGL](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// layer may reconfigure the context to be ready to render to a different
  /// device than it
  /// originally was.
  ///
  /// This is useful if you have an application which can start out being
  /// presented on a
  /// standard 2D display but can then be transitioned to a 3D immersion system.
  external JSPromise<JSAny?> makeXRCompatible();

  /// The **`WebGLRenderingContext.bufferData()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// initializes and creates the
  /// buffer object's data store.
  external void bufferData(
    GLenum target,
    JSAny? dataOrSize,
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

  /// The **`WebGLRenderingContext.canvas`** property is a read-only
  /// reference to the [HTMLCanvasElement] or [OffscreenCanvas]
  /// object that is associated with the context. It might be
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// if it is not
  /// associated with a `canvas` element or an [OffscreenCanvas]
  /// object.
  external JSObject get canvas;

  /// The read-only **`WebGLRenderingContext.drawingBufferWidth`**
  /// property represents the actual width of the current drawing buffer. It
  /// should match the
  /// `width` attribute of the `canvas` element associated with
  /// this context, but might differ if the implementation is not able to
  /// provide the
  /// requested width.
  external GLsizei get drawingBufferWidth;

  /// The read-only **`WebGLRenderingContext.drawingBufferHeight`**
  /// property represents the actual height of the current drawing buffer. It
  /// should match the
  /// `height` attribute of the `canvas` element associated with
  /// this context, but might differ if the implementation is not able to
  /// provide the
  /// requested height.
  external GLsizei get drawingBufferHeight;

  /// The **`WebGLRenderingContext.drawingBufferColorSpace`** property specifies
  /// the color space of the WebGL drawing buffer. Along with the default
  /// (`srgb`), the `display-p3` color space can be used.
  ///
  /// See
  /// [`WebGLRenderingContext.unpackColorSpace`](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/unpackColorSpace)
  /// for specifying the color space for textures.
  external PredefinedColorSpace get drawingBufferColorSpace;
  external set drawingBufferColorSpace(PredefinedColorSpace value);
}

/// The **WebContextEvent** interface is part of the
/// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) and
/// is an interface for an event that is generated in response to a status
/// change to the WebGL rendering context.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent).
extension type WebGLContextEvent._(JSObject _) implements Event, JSObject {
  external factory WebGLContextEvent(
    String type, [
    WebGLContextEventInit eventInit,
  ]);

  /// The read-only **`WebGLContextEvent.statusMessage`** property contains
  /// additional event status information, or is an empty string if no
  /// additional information is available.
  external String get statusMessage;
}
extension type WebGLContextEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory WebGLContextEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String statusMessage,
  });

  external String get statusMessage;
  external set statusMessage(String value);
}
