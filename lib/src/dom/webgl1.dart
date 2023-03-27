// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef GLenum = JSNumber;
typedef GLboolean = JSBoolean;
typedef GLbitfield = JSNumber;
typedef GLbyte = JSNumber;
typedef GLshort = JSNumber;
typedef GLint = JSNumber;
typedef GLsizei = JSNumber;
typedef GLintptr = JSNumber;
typedef GLsizeiptr = JSNumber;
typedef GLubyte = JSNumber;
typedef GLushort = JSNumber;
typedef GLuint = JSNumber;
typedef GLfloat = JSNumber;
typedef GLclampf = JSNumber;
typedef TexImageSource = JSAny;
typedef Float32List = JSAny;
typedef Int32List = JSAny;
typedef WebGLPowerPreference = JSString;

@JS()
@staticInterop
@anonymous
class WebGLContextAttributes {
  external factory WebGLContextAttributes({
    JSBoolean alpha,
    JSBoolean depth,
    JSBoolean stencil,
    JSBoolean antialias,
    JSBoolean premultipliedAlpha,
    JSBoolean preserveDrawingBuffer,
    WebGLPowerPreference powerPreference,
    JSBoolean failIfMajorPerformanceCaveat,
    JSBoolean desynchronized,
    JSBoolean xrCompatible,
  });
}

extension WebGLContextAttributesExtension on WebGLContextAttributes {
  external set alpha(JSBoolean value);
  external JSBoolean get alpha;
  external set depth(JSBoolean value);
  external JSBoolean get depth;
  external set stencil(JSBoolean value);
  external JSBoolean get stencil;
  external set antialias(JSBoolean value);
  external JSBoolean get antialias;
  external set premultipliedAlpha(JSBoolean value);
  external JSBoolean get premultipliedAlpha;
  external set preserveDrawingBuffer(JSBoolean value);
  external JSBoolean get preserveDrawingBuffer;
  external set powerPreference(WebGLPowerPreference value);
  external WebGLPowerPreference get powerPreference;
  external set failIfMajorPerformanceCaveat(JSBoolean value);
  external JSBoolean get failIfMajorPerformanceCaveat;
  external set desynchronized(JSBoolean value);
  external JSBoolean get desynchronized;
  external set xrCompatible(JSBoolean value);
  external JSBoolean get xrCompatible;
}

@JS('WebGLObject')
@staticInterop
class WebGLObject {}

@JS('WebGLBuffer')
@staticInterop
class WebGLBuffer implements WebGLObject {}

@JS('WebGLFramebuffer')
@staticInterop
class WebGLFramebuffer implements WebGLObject {}

@JS('WebGLProgram')
@staticInterop
class WebGLProgram implements WebGLObject {}

@JS('WebGLRenderbuffer')
@staticInterop
class WebGLRenderbuffer implements WebGLObject {}

@JS('WebGLShader')
@staticInterop
class WebGLShader implements WebGLObject {}

@JS('WebGLTexture')
@staticInterop
class WebGLTexture implements WebGLObject {}

@JS('WebGLUniformLocation')
@staticInterop
class WebGLUniformLocation {}

@JS('WebGLActiveInfo')
@staticInterop
class WebGLActiveInfo {}

extension WebGLActiveInfoExtension on WebGLActiveInfo {
  external GLint get size;
  external GLenum get type;
  external JSString get name;
}

@JS('WebGLShaderPrecisionFormat')
@staticInterop
class WebGLShaderPrecisionFormat {}

extension WebGLShaderPrecisionFormatExtension on WebGLShaderPrecisionFormat {
  external GLint get rangeMin;
  external GLint get rangeMax;
  external GLint get precision;
}

@JS('WebGLRenderingContextBase')
@staticInterop
class WebGLRenderingContextBase {
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
}

extension WebGLRenderingContextBaseExtension on WebGLRenderingContextBase {
  external WebGLContextAttributes? getContextAttributes();
  external JSBoolean isContextLost();
  external JSArray? getSupportedExtensions();
  external JSObject? getExtension(JSString name);
  external JSVoid activeTexture(GLenum texture);
  external JSVoid attachShader(
    WebGLProgram program,
    WebGLShader shader,
  );
  external JSVoid bindAttribLocation(
    WebGLProgram program,
    GLuint index,
    JSString name,
  );
  external JSVoid bindBuffer(
    GLenum target,
    WebGLBuffer? buffer,
  );
  external JSVoid bindFramebuffer(
    GLenum target,
    WebGLFramebuffer? framebuffer,
  );
  external JSVoid bindRenderbuffer(
    GLenum target,
    WebGLRenderbuffer? renderbuffer,
  );
  external JSVoid bindTexture(
    GLenum target,
    WebGLTexture? texture,
  );
  external JSVoid blendColor(
    GLclampf red,
    GLclampf green,
    GLclampf blue,
    GLclampf alpha,
  );
  external JSVoid blendEquation(GLenum mode);
  external JSVoid blendEquationSeparate(
    GLenum modeRGB,
    GLenum modeAlpha,
  );
  external JSVoid blendFunc(
    GLenum sfactor,
    GLenum dfactor,
  );
  external JSVoid blendFuncSeparate(
    GLenum srcRGB,
    GLenum dstRGB,
    GLenum srcAlpha,
    GLenum dstAlpha,
  );
  external GLenum checkFramebufferStatus(GLenum target);
  external JSVoid clear(GLbitfield mask);
  external JSVoid clearColor(
    GLclampf red,
    GLclampf green,
    GLclampf blue,
    GLclampf alpha,
  );
  external JSVoid clearDepth(GLclampf depth);
  external JSVoid clearStencil(GLint s);
  external JSVoid colorMask(
    GLboolean red,
    GLboolean green,
    GLboolean blue,
    GLboolean alpha,
  );
  external JSVoid compileShader(WebGLShader shader);
  external JSVoid copyTexImage2D(
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLint border,
  );
  external JSVoid copyTexSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external WebGLBuffer? createBuffer();
  external WebGLFramebuffer? createFramebuffer();
  external WebGLProgram? createProgram();
  external WebGLRenderbuffer? createRenderbuffer();
  external WebGLShader? createShader(GLenum type);
  external WebGLTexture? createTexture();
  external JSVoid cullFace(GLenum mode);
  external JSVoid deleteBuffer(WebGLBuffer? buffer);
  external JSVoid deleteFramebuffer(WebGLFramebuffer? framebuffer);
  external JSVoid deleteProgram(WebGLProgram? program);
  external JSVoid deleteRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external JSVoid deleteShader(WebGLShader? shader);
  external JSVoid deleteTexture(WebGLTexture? texture);
  external JSVoid depthFunc(GLenum func);
  external JSVoid depthMask(GLboolean flag);
  external JSVoid depthRange(
    GLclampf zNear,
    GLclampf zFar,
  );
  external JSVoid detachShader(
    WebGLProgram program,
    WebGLShader shader,
  );
  external JSVoid disable(GLenum cap);
  external JSVoid disableVertexAttribArray(GLuint index);
  external JSVoid drawArrays(
    GLenum mode,
    GLint first,
    GLsizei count,
  );
  external JSVoid drawElements(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
  );
  external JSVoid enable(GLenum cap);
  external JSVoid enableVertexAttribArray(GLuint index);
  external JSVoid finish();
  external JSVoid flush();
  external JSVoid framebufferRenderbuffer(
    GLenum target,
    GLenum attachment,
    GLenum renderbuffertarget,
    WebGLRenderbuffer? renderbuffer,
  );
  external JSVoid framebufferTexture2D(
    GLenum target,
    GLenum attachment,
    GLenum textarget,
    WebGLTexture? texture,
    GLint level,
  );
  external JSVoid frontFace(GLenum mode);
  external JSVoid generateMipmap(GLenum target);
  external WebGLActiveInfo? getActiveAttrib(
    WebGLProgram program,
    GLuint index,
  );
  external WebGLActiveInfo? getActiveUniform(
    WebGLProgram program,
    GLuint index,
  );
  external JSArray? getAttachedShaders(WebGLProgram program);
  external GLint getAttribLocation(
    WebGLProgram program,
    JSString name,
  );
  external JSAny getBufferParameter(
    GLenum target,
    GLenum pname,
  );
  external JSAny getParameter(GLenum pname);
  external GLenum getError();
  external JSAny getFramebufferAttachmentParameter(
    GLenum target,
    GLenum attachment,
    GLenum pname,
  );
  external JSAny getProgramParameter(
    WebGLProgram program,
    GLenum pname,
  );
  external JSString? getProgramInfoLog(WebGLProgram program);
  external JSAny getRenderbufferParameter(
    GLenum target,
    GLenum pname,
  );
  external JSAny getShaderParameter(
    WebGLShader shader,
    GLenum pname,
  );
  external WebGLShaderPrecisionFormat? getShaderPrecisionFormat(
    GLenum shadertype,
    GLenum precisiontype,
  );
  external JSString? getShaderInfoLog(WebGLShader shader);
  external JSString? getShaderSource(WebGLShader shader);
  external JSAny getTexParameter(
    GLenum target,
    GLenum pname,
  );
  external JSAny getUniform(
    WebGLProgram program,
    WebGLUniformLocation location,
  );
  external WebGLUniformLocation? getUniformLocation(
    WebGLProgram program,
    JSString name,
  );
  external JSAny getVertexAttrib(
    GLuint index,
    GLenum pname,
  );
  external GLintptr getVertexAttribOffset(
    GLuint index,
    GLenum pname,
  );
  external JSVoid hint(
    GLenum target,
    GLenum mode,
  );
  external GLboolean isBuffer(WebGLBuffer? buffer);
  external GLboolean isEnabled(GLenum cap);
  external GLboolean isFramebuffer(WebGLFramebuffer? framebuffer);
  external GLboolean isProgram(WebGLProgram? program);
  external GLboolean isRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external GLboolean isShader(WebGLShader? shader);
  external GLboolean isTexture(WebGLTexture? texture);
  external JSVoid lineWidth(GLfloat width);
  external JSVoid linkProgram(WebGLProgram program);
  external JSVoid pixelStorei(
    GLenum pname,
    GLint param,
  );
  external JSVoid polygonOffset(
    GLfloat factor,
    GLfloat units,
  );
  external JSVoid renderbufferStorage(
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );
  external JSVoid sampleCoverage(
    GLclampf value,
    GLboolean invert,
  );
  external JSVoid scissor(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external JSVoid shaderSource(
    WebGLShader shader,
    JSString source,
  );
  external JSVoid stencilFunc(
    GLenum func,
    GLint ref,
    GLuint mask,
  );
  external JSVoid stencilFuncSeparate(
    GLenum face,
    GLenum func,
    GLint ref,
    GLuint mask,
  );
  external JSVoid stencilMask(GLuint mask);
  external JSVoid stencilMaskSeparate(
    GLenum face,
    GLuint mask,
  );
  external JSVoid stencilOp(
    GLenum fail,
    GLenum zfail,
    GLenum zpass,
  );
  external JSVoid stencilOpSeparate(
    GLenum face,
    GLenum fail,
    GLenum zfail,
    GLenum zpass,
  );
  external JSVoid texParameterf(
    GLenum target,
    GLenum pname,
    GLfloat param,
  );
  external JSVoid texParameteri(
    GLenum target,
    GLenum pname,
    GLint param,
  );
  external JSVoid uniform1f(
    WebGLUniformLocation? location,
    GLfloat x,
  );
  external JSVoid uniform2f(
    WebGLUniformLocation? location,
    GLfloat x,
    GLfloat y,
  );
  external JSVoid uniform3f(
    WebGLUniformLocation? location,
    GLfloat x,
    GLfloat y,
    GLfloat z,
  );
  external JSVoid uniform4f(
    WebGLUniformLocation? location,
    GLfloat x,
    GLfloat y,
    GLfloat z,
    GLfloat w,
  );
  external JSVoid uniform1i(
    WebGLUniformLocation? location,
    GLint x,
  );
  external JSVoid uniform2i(
    WebGLUniformLocation? location,
    GLint x,
    GLint y,
  );
  external JSVoid uniform3i(
    WebGLUniformLocation? location,
    GLint x,
    GLint y,
    GLint z,
  );
  external JSVoid uniform4i(
    WebGLUniformLocation? location,
    GLint x,
    GLint y,
    GLint z,
    GLint w,
  );
  external JSVoid useProgram(WebGLProgram? program);
  external JSVoid validateProgram(WebGLProgram program);
  external JSVoid vertexAttrib1f(
    GLuint index,
    GLfloat x,
  );
  external JSVoid vertexAttrib2f(
    GLuint index,
    GLfloat x,
    GLfloat y,
  );
  external JSVoid vertexAttrib3f(
    GLuint index,
    GLfloat x,
    GLfloat y,
    GLfloat z,
  );
  external JSVoid vertexAttrib4f(
    GLuint index,
    GLfloat x,
    GLfloat y,
    GLfloat z,
    GLfloat w,
  );
  external JSVoid vertexAttrib1fv(
    GLuint index,
    Float32List values,
  );
  external JSVoid vertexAttrib2fv(
    GLuint index,
    Float32List values,
  );
  external JSVoid vertexAttrib3fv(
    GLuint index,
    Float32List values,
  );
  external JSVoid vertexAttrib4fv(
    GLuint index,
    Float32List values,
  );
  external JSVoid vertexAttribPointer(
    GLuint index,
    GLint size,
    GLenum type,
    GLboolean normalized,
    GLsizei stride,
    GLintptr offset,
  );
  external JSVoid viewport(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external JSPromise makeXRCompatible();
  external JSAny get canvas;
  external GLsizei get drawingBufferWidth;
  external GLsizei get drawingBufferHeight;
  external set drawingBufferColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get drawingBufferColorSpace;
  external set unpackColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get unpackColorSpace;
}

@JS('WebGLRenderingContextOverloads')
@staticInterop
class WebGLRenderingContextOverloads {}

extension WebGLRenderingContextOverloadsExtension
    on WebGLRenderingContextOverloads {
  external JSVoid bufferData(
    GLenum target,
    JSAny? dataOrSize,
    GLenum usage,
  );
  external JSVoid bufferSubData(
    GLenum target,
    GLintptr offset,
    BufferSource data,
  );
  external JSVoid compressedTexImage2D(
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLint border,
    ArrayBufferView data,
  );
  external JSVoid compressedTexSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLsizei width,
    GLsizei height,
    GLenum format,
    ArrayBufferView data,
  );
  external JSVoid readPixels(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    ArrayBufferView? pixels,
  );
  external JSVoid texImage2D(
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
  external JSVoid texSubImage2D(
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
  external JSVoid uniform1fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external JSVoid uniform2fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external JSVoid uniform3fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external JSVoid uniform4fv(
    WebGLUniformLocation? location,
    Float32List v,
  );
  external JSVoid uniform1iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external JSVoid uniform2iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external JSVoid uniform3iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external JSVoid uniform4iv(
    WebGLUniformLocation? location,
    Int32List v,
  );
  external JSVoid uniformMatrix2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List value,
  );
  external JSVoid uniformMatrix3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List value,
  );
  external JSVoid uniformMatrix4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List value,
  );
}

@JS('WebGLRenderingContext')
@staticInterop
class WebGLRenderingContext
    implements WebGLRenderingContextBase, WebGLRenderingContextOverloads {}

@JS('WebGLContextEvent')
@staticInterop
class WebGLContextEvent implements Event {
  external factory WebGLContextEvent(
    JSString type, [
    WebGLContextEventInit eventInit,
  ]);
}

extension WebGLContextEventExtension on WebGLContextEvent {
  external JSString get statusMessage;
}

@JS()
@staticInterop
@anonymous
class WebGLContextEventInit implements EventInit {
  external factory WebGLContextEventInit({JSString statusMessage});
}

extension WebGLContextEventInitExtension on WebGLContextEventInit {
  external set statusMessage(JSString value);
  external JSString get statusMessage;
}
