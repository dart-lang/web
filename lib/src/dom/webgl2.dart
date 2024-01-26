// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'html.dart';
import 'webgl1.dart';
import 'webidl.dart';

typedef GLint64 = int;
typedef GLuint64 = int;
typedef Uint32List = JSObject;
extension type WebGLQuery._(JSObject _) implements WebGLObject, JSObject {}
extension type WebGLSampler._(JSObject _) implements WebGLObject, JSObject {}
extension type WebGLSync._(JSObject _) implements WebGLObject, JSObject {}
extension type WebGLTransformFeedback._(JSObject _)
    implements WebGLObject, JSObject {}
extension type WebGLVertexArrayObject._(JSObject _)
    implements WebGLObject, JSObject {}
extension type WebGL2RenderingContext._(JSObject _) implements JSObject {
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
  external static GLenum get READ_BUFFER;
  external static GLenum get UNPACK_ROW_LENGTH;
  external static GLenum get UNPACK_SKIP_ROWS;
  external static GLenum get UNPACK_SKIP_PIXELS;
  external static GLenum get PACK_ROW_LENGTH;
  external static GLenum get PACK_SKIP_ROWS;
  external static GLenum get PACK_SKIP_PIXELS;
  external static GLenum get COLOR;
  external static GLenum get DEPTH;
  external static GLenum get STENCIL;
  external static GLenum get RED;
  external static GLenum get RGB8;
  external static GLenum get RGBA8;
  external static GLenum get RGB10_A2;
  external static GLenum get TEXTURE_BINDING_3D;
  external static GLenum get UNPACK_SKIP_IMAGES;
  external static GLenum get UNPACK_IMAGE_HEIGHT;
  external static GLenum get TEXTURE_3D;
  external static GLenum get TEXTURE_WRAP_R;
  external static GLenum get MAX_3D_TEXTURE_SIZE;
  external static GLenum get UNSIGNED_INT_2_10_10_10_REV;
  external static GLenum get MAX_ELEMENTS_VERTICES;
  external static GLenum get MAX_ELEMENTS_INDICES;
  external static GLenum get TEXTURE_MIN_LOD;
  external static GLenum get TEXTURE_MAX_LOD;
  external static GLenum get TEXTURE_BASE_LEVEL;
  external static GLenum get TEXTURE_MAX_LEVEL;
  external static GLenum get MIN;
  external static GLenum get MAX;
  external static GLenum get DEPTH_COMPONENT24;
  external static GLenum get MAX_TEXTURE_LOD_BIAS;
  external static GLenum get TEXTURE_COMPARE_MODE;
  external static GLenum get TEXTURE_COMPARE_FUNC;
  external static GLenum get CURRENT_QUERY;
  external static GLenum get QUERY_RESULT;
  external static GLenum get QUERY_RESULT_AVAILABLE;
  external static GLenum get STREAM_READ;
  external static GLenum get STREAM_COPY;
  external static GLenum get STATIC_READ;
  external static GLenum get STATIC_COPY;
  external static GLenum get DYNAMIC_READ;
  external static GLenum get DYNAMIC_COPY;
  external static GLenum get MAX_DRAW_BUFFERS;
  external static GLenum get DRAW_BUFFER0;
  external static GLenum get DRAW_BUFFER1;
  external static GLenum get DRAW_BUFFER2;
  external static GLenum get DRAW_BUFFER3;
  external static GLenum get DRAW_BUFFER4;
  external static GLenum get DRAW_BUFFER5;
  external static GLenum get DRAW_BUFFER6;
  external static GLenum get DRAW_BUFFER7;
  external static GLenum get DRAW_BUFFER8;
  external static GLenum get DRAW_BUFFER9;
  external static GLenum get DRAW_BUFFER10;
  external static GLenum get DRAW_BUFFER11;
  external static GLenum get DRAW_BUFFER12;
  external static GLenum get DRAW_BUFFER13;
  external static GLenum get DRAW_BUFFER14;
  external static GLenum get DRAW_BUFFER15;
  external static GLenum get MAX_FRAGMENT_UNIFORM_COMPONENTS;
  external static GLenum get MAX_VERTEX_UNIFORM_COMPONENTS;
  external static GLenum get SAMPLER_3D;
  external static GLenum get SAMPLER_2D_SHADOW;
  external static GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT;
  external static GLenum get PIXEL_PACK_BUFFER;
  external static GLenum get PIXEL_UNPACK_BUFFER;
  external static GLenum get PIXEL_PACK_BUFFER_BINDING;
  external static GLenum get PIXEL_UNPACK_BUFFER_BINDING;
  external static GLenum get FLOAT_MAT2x3;
  external static GLenum get FLOAT_MAT2x4;
  external static GLenum get FLOAT_MAT3x2;
  external static GLenum get FLOAT_MAT3x4;
  external static GLenum get FLOAT_MAT4x2;
  external static GLenum get FLOAT_MAT4x3;
  external static GLenum get SRGB;
  external static GLenum get SRGB8;
  external static GLenum get SRGB8_ALPHA8;
  external static GLenum get COMPARE_REF_TO_TEXTURE;
  external static GLenum get RGBA32F;
  external static GLenum get RGB32F;
  external static GLenum get RGBA16F;
  external static GLenum get RGB16F;
  external static GLenum get VERTEX_ATTRIB_ARRAY_INTEGER;
  external static GLenum get MAX_ARRAY_TEXTURE_LAYERS;
  external static GLenum get MIN_PROGRAM_TEXEL_OFFSET;
  external static GLenum get MAX_PROGRAM_TEXEL_OFFSET;
  external static GLenum get MAX_VARYING_COMPONENTS;
  external static GLenum get TEXTURE_2D_ARRAY;
  external static GLenum get TEXTURE_BINDING_2D_ARRAY;
  external static GLenum get R11F_G11F_B10F;
  external static GLenum get UNSIGNED_INT_10F_11F_11F_REV;
  external static GLenum get RGB9_E5;
  external static GLenum get UNSIGNED_INT_5_9_9_9_REV;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_MODE;
  external static GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS;
  external static GLenum get TRANSFORM_FEEDBACK_VARYINGS;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_START;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_SIZE;
  external static GLenum get TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
  external static GLenum get RASTERIZER_DISCARD;
  external static GLenum get MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS;
  external static GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS;
  external static GLenum get INTERLEAVED_ATTRIBS;
  external static GLenum get SEPARATE_ATTRIBS;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_BINDING;
  external static GLenum get RGBA32UI;
  external static GLenum get RGB32UI;
  external static GLenum get RGBA16UI;
  external static GLenum get RGB16UI;
  external static GLenum get RGBA8UI;
  external static GLenum get RGB8UI;
  external static GLenum get RGBA32I;
  external static GLenum get RGB32I;
  external static GLenum get RGBA16I;
  external static GLenum get RGB16I;
  external static GLenum get RGBA8I;
  external static GLenum get RGB8I;
  external static GLenum get RED_INTEGER;
  external static GLenum get RGB_INTEGER;
  external static GLenum get RGBA_INTEGER;
  external static GLenum get SAMPLER_2D_ARRAY;
  external static GLenum get SAMPLER_2D_ARRAY_SHADOW;
  external static GLenum get SAMPLER_CUBE_SHADOW;
  external static GLenum get UNSIGNED_INT_VEC2;
  external static GLenum get UNSIGNED_INT_VEC3;
  external static GLenum get UNSIGNED_INT_VEC4;
  external static GLenum get INT_SAMPLER_2D;
  external static GLenum get INT_SAMPLER_3D;
  external static GLenum get INT_SAMPLER_CUBE;
  external static GLenum get INT_SAMPLER_2D_ARRAY;
  external static GLenum get UNSIGNED_INT_SAMPLER_2D;
  external static GLenum get UNSIGNED_INT_SAMPLER_3D;
  external static GLenum get UNSIGNED_INT_SAMPLER_CUBE;
  external static GLenum get UNSIGNED_INT_SAMPLER_2D_ARRAY;
  external static GLenum get DEPTH_COMPONENT32F;
  external static GLenum get DEPTH32F_STENCIL8;
  external static GLenum get FLOAT_32_UNSIGNED_INT_24_8_REV;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_RED_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_GREEN_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_BLUE_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE;
  external static GLenum get FRAMEBUFFER_DEFAULT;
  external static GLenum get UNSIGNED_INT_24_8;
  external static GLenum get DEPTH24_STENCIL8;
  external static GLenum get UNSIGNED_NORMALIZED;
  external static GLenum get DRAW_FRAMEBUFFER_BINDING;
  external static GLenum get READ_FRAMEBUFFER;
  external static GLenum get DRAW_FRAMEBUFFER;
  external static GLenum get READ_FRAMEBUFFER_BINDING;
  external static GLenum get RENDERBUFFER_SAMPLES;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER;
  external static GLenum get MAX_COLOR_ATTACHMENTS;
  external static GLenum get COLOR_ATTACHMENT1;
  external static GLenum get COLOR_ATTACHMENT2;
  external static GLenum get COLOR_ATTACHMENT3;
  external static GLenum get COLOR_ATTACHMENT4;
  external static GLenum get COLOR_ATTACHMENT5;
  external static GLenum get COLOR_ATTACHMENT6;
  external static GLenum get COLOR_ATTACHMENT7;
  external static GLenum get COLOR_ATTACHMENT8;
  external static GLenum get COLOR_ATTACHMENT9;
  external static GLenum get COLOR_ATTACHMENT10;
  external static GLenum get COLOR_ATTACHMENT11;
  external static GLenum get COLOR_ATTACHMENT12;
  external static GLenum get COLOR_ATTACHMENT13;
  external static GLenum get COLOR_ATTACHMENT14;
  external static GLenum get COLOR_ATTACHMENT15;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_MULTISAMPLE;
  external static GLenum get MAX_SAMPLES;
  external static GLenum get HALF_FLOAT;
  external static GLenum get RG;
  external static GLenum get RG_INTEGER;
  external static GLenum get R8;
  external static GLenum get RG8;
  external static GLenum get R16F;
  external static GLenum get R32F;
  external static GLenum get RG16F;
  external static GLenum get RG32F;
  external static GLenum get R8I;
  external static GLenum get R8UI;
  external static GLenum get R16I;
  external static GLenum get R16UI;
  external static GLenum get R32I;
  external static GLenum get R32UI;
  external static GLenum get RG8I;
  external static GLenum get RG8UI;
  external static GLenum get RG16I;
  external static GLenum get RG16UI;
  external static GLenum get RG32I;
  external static GLenum get RG32UI;
  external static GLenum get VERTEX_ARRAY_BINDING;
  external static GLenum get R8_SNORM;
  external static GLenum get RG8_SNORM;
  external static GLenum get RGB8_SNORM;
  external static GLenum get RGBA8_SNORM;
  external static GLenum get SIGNED_NORMALIZED;
  external static GLenum get COPY_READ_BUFFER;
  external static GLenum get COPY_WRITE_BUFFER;
  external static GLenum get COPY_READ_BUFFER_BINDING;
  external static GLenum get COPY_WRITE_BUFFER_BINDING;
  external static GLenum get UNIFORM_BUFFER;
  external static GLenum get UNIFORM_BUFFER_BINDING;
  external static GLenum get UNIFORM_BUFFER_START;
  external static GLenum get UNIFORM_BUFFER_SIZE;
  external static GLenum get MAX_VERTEX_UNIFORM_BLOCKS;
  external static GLenum get MAX_FRAGMENT_UNIFORM_BLOCKS;
  external static GLenum get MAX_COMBINED_UNIFORM_BLOCKS;
  external static GLenum get MAX_UNIFORM_BUFFER_BINDINGS;
  external static GLenum get MAX_UNIFORM_BLOCK_SIZE;
  external static GLenum get MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
  external static GLenum get MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
  external static GLenum get UNIFORM_BUFFER_OFFSET_ALIGNMENT;
  external static GLenum get ACTIVE_UNIFORM_BLOCKS;
  external static GLenum get UNIFORM_TYPE;
  external static GLenum get UNIFORM_SIZE;
  external static GLenum get UNIFORM_BLOCK_INDEX;
  external static GLenum get UNIFORM_OFFSET;
  external static GLenum get UNIFORM_ARRAY_STRIDE;
  external static GLenum get UNIFORM_MATRIX_STRIDE;
  external static GLenum get UNIFORM_IS_ROW_MAJOR;
  external static GLenum get UNIFORM_BLOCK_BINDING;
  external static GLenum get UNIFORM_BLOCK_DATA_SIZE;
  external static GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORMS;
  external static GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES;
  external static GLenum get UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER;
  external static GLenum get UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER;
  external static GLenum get INVALID_INDEX;
  external static GLenum get MAX_VERTEX_OUTPUT_COMPONENTS;
  external static GLenum get MAX_FRAGMENT_INPUT_COMPONENTS;
  external static GLenum get MAX_SERVER_WAIT_TIMEOUT;
  external static GLenum get OBJECT_TYPE;
  external static GLenum get SYNC_CONDITION;
  external static GLenum get SYNC_STATUS;
  external static GLenum get SYNC_FLAGS;
  external static GLenum get SYNC_FENCE;
  external static GLenum get SYNC_GPU_COMMANDS_COMPLETE;
  external static GLenum get UNSIGNALED;
  external static GLenum get SIGNALED;
  external static GLenum get ALREADY_SIGNALED;
  external static GLenum get TIMEOUT_EXPIRED;
  external static GLenum get CONDITION_SATISFIED;
  external static GLenum get WAIT_FAILED;
  external static GLenum get SYNC_FLUSH_COMMANDS_BIT;
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR;
  external static GLenum get ANY_SAMPLES_PASSED;
  external static GLenum get ANY_SAMPLES_PASSED_CONSERVATIVE;
  external static GLenum get SAMPLER_BINDING;
  external static GLenum get RGB10_A2UI;
  external static GLenum get INT_2_10_10_10_REV;
  external static GLenum get TRANSFORM_FEEDBACK;
  external static GLenum get TRANSFORM_FEEDBACK_PAUSED;
  external static GLenum get TRANSFORM_FEEDBACK_ACTIVE;
  external static GLenum get TRANSFORM_FEEDBACK_BINDING;
  external static GLenum get TEXTURE_IMMUTABLE_FORMAT;
  external static GLenum get MAX_ELEMENT_INDEX;
  external static GLenum get TEXTURE_IMMUTABLE_LEVELS;
  external static GLint64 get TIMEOUT_IGNORED;
  external static GLenum get MAX_CLIENT_WAIT_TIMEOUT_WEBGL;
  external WebGLContextAttributes? getContextAttributes();
  external bool isContextLost();
  external JSArray? getSupportedExtensions();
  external JSObject? getExtension(String name);
  external void activeTexture(GLenum texture);
  external void attachShader(
    WebGLProgram program,
    WebGLShader shader,
  );
  external void bindAttribLocation(
    WebGLProgram program,
    GLuint index,
    String name,
  );
  external void bindBuffer(
    GLenum target,
    WebGLBuffer? buffer,
  );
  external void bindFramebuffer(
    GLenum target,
    WebGLFramebuffer? framebuffer,
  );
  external void bindRenderbuffer(
    GLenum target,
    WebGLRenderbuffer? renderbuffer,
  );
  external void bindTexture(
    GLenum target,
    WebGLTexture? texture,
  );
  external void blendColor(
    GLclampf red,
    GLclampf green,
    GLclampf blue,
    GLclampf alpha,
  );
  external void blendEquation(GLenum mode);
  external void blendEquationSeparate(
    GLenum modeRGB,
    GLenum modeAlpha,
  );
  external void blendFunc(
    GLenum sfactor,
    GLenum dfactor,
  );
  external void blendFuncSeparate(
    GLenum srcRGB,
    GLenum dstRGB,
    GLenum srcAlpha,
    GLenum dstAlpha,
  );
  external GLenum checkFramebufferStatus(GLenum target);
  external void clear(GLbitfield mask);
  external void clearColor(
    GLclampf red,
    GLclampf green,
    GLclampf blue,
    GLclampf alpha,
  );
  external void clearDepth(GLclampf depth);
  external void clearStencil(GLint s);
  external void colorMask(
    GLboolean red,
    GLboolean green,
    GLboolean blue,
    GLboolean alpha,
  );
  external void compileShader(WebGLShader shader);
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
  external WebGLBuffer? createBuffer();
  external WebGLFramebuffer? createFramebuffer();
  external WebGLProgram? createProgram();
  external WebGLRenderbuffer? createRenderbuffer();
  external WebGLShader? createShader(GLenum type);
  external WebGLTexture? createTexture();
  external void cullFace(GLenum mode);
  external void deleteBuffer(WebGLBuffer? buffer);
  external void deleteFramebuffer(WebGLFramebuffer? framebuffer);
  external void deleteProgram(WebGLProgram? program);
  external void deleteRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external void deleteShader(WebGLShader? shader);
  external void deleteTexture(WebGLTexture? texture);
  external void depthFunc(GLenum func);
  external void depthMask(GLboolean flag);
  external void depthRange(
    GLclampf zNear,
    GLclampf zFar,
  );
  external void detachShader(
    WebGLProgram program,
    WebGLShader shader,
  );
  external void disable(GLenum cap);
  external void disableVertexAttribArray(GLuint index);
  external void drawArrays(
    GLenum mode,
    GLint first,
    GLsizei count,
  );
  external void drawElements(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
  );
  external void enable(GLenum cap);
  external void enableVertexAttribArray(GLuint index);
  external void finish();
  external void flush();
  external void framebufferRenderbuffer(
    GLenum target,
    GLenum attachment,
    GLenum renderbuffertarget,
    WebGLRenderbuffer? renderbuffer,
  );
  external void framebufferTexture2D(
    GLenum target,
    GLenum attachment,
    GLenum textarget,
    WebGLTexture? texture,
    GLint level,
  );
  external void frontFace(GLenum mode);
  external void generateMipmap(GLenum target);
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
    String name,
  );
  external JSAny? getBufferParameter(
    GLenum target,
    GLenum pname,
  );
  external JSAny? getParameter(GLenum pname);
  external GLenum getError();
  external JSAny? getFramebufferAttachmentParameter(
    GLenum target,
    GLenum attachment,
    GLenum pname,
  );
  external JSAny? getProgramParameter(
    WebGLProgram program,
    GLenum pname,
  );
  external String? getProgramInfoLog(WebGLProgram program);
  external JSAny? getRenderbufferParameter(
    GLenum target,
    GLenum pname,
  );
  external JSAny? getShaderParameter(
    WebGLShader shader,
    GLenum pname,
  );
  external WebGLShaderPrecisionFormat? getShaderPrecisionFormat(
    GLenum shadertype,
    GLenum precisiontype,
  );
  external String? getShaderInfoLog(WebGLShader shader);
  external String? getShaderSource(WebGLShader shader);
  external JSAny? getTexParameter(
    GLenum target,
    GLenum pname,
  );
  external JSAny? getUniform(
    WebGLProgram program,
    WebGLUniformLocation location,
  );
  external WebGLUniformLocation? getUniformLocation(
    WebGLProgram program,
    String name,
  );
  external JSAny? getVertexAttrib(
    GLuint index,
    GLenum pname,
  );
  external GLintptr getVertexAttribOffset(
    GLuint index,
    GLenum pname,
  );
  external void hint(
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
  external void lineWidth(GLfloat width);
  external void linkProgram(WebGLProgram program);
  external void pixelStorei(
    GLenum pname,
    GLint param,
  );
  external void polygonOffset(
    GLfloat factor,
    GLfloat units,
  );
  external void renderbufferStorage(
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );
  external void sampleCoverage(
    GLclampf value,
    GLboolean invert,
  );
  external void scissor(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external void shaderSource(
    WebGLShader shader,
    String source,
  );
  external void stencilFunc(
    GLenum func,
    GLint ref,
    GLuint mask,
  );
  external void stencilFuncSeparate(
    GLenum face,
    GLenum func,
    GLint ref,
    GLuint mask,
  );
  external void stencilMask(GLuint mask);
  external void stencilMaskSeparate(
    GLenum face,
    GLuint mask,
  );
  external void stencilOp(
    GLenum fail,
    GLenum zfail,
    GLenum zpass,
  );
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
  external void useProgram(WebGLProgram? program);
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
  external void vertexAttribPointer(
    GLuint index,
    GLint size,
    GLenum type,
    GLboolean normalized,
    GLsizei stride,
    GLintptr offset,
  );
  external void viewport(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external JSPromise makeXRCompatible();

  /// The **`WebGL2RenderingContext.copyBufferSubData()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// copies part of the data of a
  /// buffer to another buffer.
  external void copyBufferSubData(
    GLenum readTarget,
    GLenum writeTarget,
    GLintptr readOffset,
    GLintptr writeOffset,
    GLsizeiptr size,
  );

  /// The **`WebGL2RenderingContext.getBufferSubData()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// reads data from a buffer
  /// binding point and writes them to an `ArrayBuffer` or
  /// `SharedArrayBuffer`.
  external void getBufferSubData(
    GLenum target,
    GLintptr srcByteOffset,
    ArrayBufferView dstBuffer, [
    int dstOffset,
    GLuint length,
  ]);

  /// The **`WebGL2RenderingContext.blitFramebuffer()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// transfers a block of pixels
  /// from the read framebuffer to the draw framebuffer. Read and draw
  /// framebuffers are bound
  /// using [WebGLRenderingContext.bindFramebuffer].
  external void blitFramebuffer(
    GLint srcX0,
    GLint srcY0,
    GLint srcX1,
    GLint srcY1,
    GLint dstX0,
    GLint dstY0,
    GLint dstX1,
    GLint dstY1,
    GLbitfield mask,
    GLenum filter,
  );

  /// The **`WebGL2RenderingContext.framebufferTextureLayer()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// attaches a single
  /// layer of a texture to a framebuffer.
  ///
  /// This method is similar to [WebGLRenderingContext.framebufferTexture2D],
  /// but only a given single layer of the texture level is attached to the
  /// attachment point.
  external void framebufferTextureLayer(
    GLenum target,
    GLenum attachment,
    WebGLTexture? texture,
    GLint level,
    GLint layer,
  );

  /// The **`WebGL2RenderingContext.invalidateFramebuffer()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// invalidates the contents
  /// of attachments in a framebuffer.
  external void invalidateFramebuffer(
    GLenum target,
    JSArray attachments,
  );

  /// The **`WebGL2RenderingContext.invalidateSubFramebuffer()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// invalidates
  /// portions of the contents of attachments in a framebuffer.
  external void invalidateSubFramebuffer(
    GLenum target,
    JSArray attachments,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGL2RenderingContext.readBuffer()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// selects a color buffer as the
  /// source for pixels for subsequent calls to
  /// [WebGLRenderingContext.copyTexImage2D],
  /// [WebGLRenderingContext.copyTexSubImage2D],
  /// [WebGL2RenderingContext.copyTexSubImage3D] or
  /// [WebGLRenderingContext.readPixels].
  external void readBuffer(GLenum src);

  /// The **`WebGL2RenderingContext.getInternalformatParameter()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns
  /// information about implementation-dependent support for internal formats.
  external JSAny? getInternalformatParameter(
    GLenum target,
    GLenum internalformat,
    GLenum pname,
  );

  /// The
  /// **`WebGL2RenderingContext.renderbufferStorageMultisample()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns creates
  /// and initializes a renderbuffer object's data store and allows specifying a
  /// number of
  /// samples to be used.
  external void renderbufferStorageMultisample(
    GLenum target,
    GLsizei samples,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGL2RenderingContext.texStorage2D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies all levels of
  /// two-dimensional texture storage.
  external void texStorage2D(
    GLenum target,
    GLsizei levels,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );

  /// The **`WebGL2RenderingContext.texStorage3D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies all levels of a
  /// three-dimensional texture or two-dimensional array texture.
  external void texStorage3D(
    GLenum target,
    GLsizei levels,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
  );

  /// The **`WebGLRenderingContext.texImage3D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a three-dimensional
  /// texture image.
  external void texImage3D(
    GLenum target,
    GLint level,
    GLint internalformat,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLint border,
    GLenum format,
    GLenum type,
    JSAny pboOffsetOrSourceOrSrcData, [
    int srcOffset,
  ]);

  /// The **`WebGL2RenderingContext.texSubImage3D()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a sub-rectangle of the
  /// current texture.
  external void texSubImage3D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint zoffset,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLenum format,
    GLenum type,
    JSAny pboOffsetOrSourceOrSrcData, [
    int srcOffset,
  ]);

  /// The **`WebGL2RenderingContext.copyTexSubImage3D()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// copies pixels from the current
  /// [WebGLFramebuffer] into an existing 3D texture sub-image.
  external void copyTexSubImage3D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint zoffset,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external void compressedTexImage3D(
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLint border,
    JSAny imageSizeOrSrcData, [
    JSAny offsetOrSrcOffset,
    GLuint srcLengthOverride,
  ]);

  /// The **`WebGL2RenderingContext.compressedTexSubImage3D()`**
  /// method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies a
  /// three-dimensional sub-rectangle for a texture image in a compressed
  /// format.
  external void compressedTexSubImage3D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint zoffset,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLenum format,
    JSAny imageSizeOrSrcData, [
    JSAny offsetOrSrcOffset,
    GLuint srcLengthOverride,
  ]);

  /// The **`WebGL2RenderingContext.getFragDataLocation()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the binding of
  /// color numbers to user-defined varying out variables.
  external GLint getFragDataLocation(
    WebGLProgram program,
    String name,
  );
  external void uniform1ui(
    WebGLUniformLocation? location,
    GLuint v0,
  );
  external void uniform2ui(
    WebGLUniformLocation? location,
    GLuint v0,
    GLuint v1,
  );
  external void uniform3ui(
    WebGLUniformLocation? location,
    GLuint v0,
    GLuint v1,
    GLuint v2,
  );
  external void uniform4ui(
    WebGLUniformLocation? location,
    GLuint v0,
    GLuint v1,
    GLuint v2,
    GLuint v3,
  );
  external void uniform1uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform2uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform3uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform4uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix3x2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix4x2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix2x3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix4x3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix2x4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix3x4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void vertexAttribI4i(
    GLuint index,
    GLint x,
    GLint y,
    GLint z,
    GLint w,
  );
  external void vertexAttribI4iv(
    GLuint index,
    Int32List values,
  );
  external void vertexAttribI4ui(
    GLuint index,
    GLuint x,
    GLuint y,
    GLuint z,
    GLuint w,
  );
  external void vertexAttribI4uiv(
    GLuint index,
    Uint32List values,
  );

  /// The **`WebGL2RenderingContext.vertexAttribIPointer()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies integer data
  /// formats and locations of vertex attributes in a vertex attributes array.
  external void vertexAttribIPointer(
    GLuint index,
    GLint size,
    GLenum type,
    GLsizei stride,
    GLintptr offset,
  );

  /// The **`WebGL2RenderingContext.vertexAttribDivisor()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// modifies the rate at
  /// which generic vertex attributes advance when rendering multiple instances
  /// of primitives
  /// with [WebGL2RenderingContext.drawArraysInstanced] and
  /// [WebGL2RenderingContext.drawElementsInstanced].
  ///
  /// > **Note:** When using [WebGLRenderingContext], the
  /// > [ANGLE_instanced_arrays] extension can provide this method,
  /// > too.
  external void vertexAttribDivisor(
    GLuint index,
    GLuint divisor,
  );

  /// The **`WebGL2RenderingContext.drawArraysInstanced()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from
  /// array data like the [WebGLRenderingContext.drawArrays]
  /// method. In addition, it can execute multiple instances of the range of
  /// elements.
  ///
  /// > **Note:** When using [WebGLRenderingContext],
  /// > the [ANGLE_instanced_arrays] extension can provide this method,
  /// > too.
  external void drawArraysInstanced(
    GLenum mode,
    GLint first,
    GLsizei count,
    GLsizei instanceCount,
  );

  /// The **`WebGL2RenderingContext.drawElementsInstanced()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from
  /// array data like the [WebGLRenderingContext.drawElements] method. In
  /// addition, it can execute multiple instances of a set
  /// of elements.
  ///
  /// > **Note:** When using [WebGLRenderingContext], the
  /// > [ANGLE_instanced_arrays] extension can provide this method,
  /// > too.
  external void drawElementsInstanced(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
    GLsizei instanceCount,
  );

  /// The **`WebGL2RenderingContext.drawRangeElements()`** method of
  /// the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// renders primitives from array
  /// data in a given range.
  external void drawRangeElements(
    GLenum mode,
    GLuint start,
    GLuint end,
    GLsizei count,
    GLenum type,
    GLintptr offset,
  );

  /// The **`WebGL2RenderingContext.drawBuffers()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// defines draw buffers to which
  /// fragment colors are written into. The draw buffer settings are part of the
  /// state of the
  /// currently bound framebuffer or the drawingbuffer if no framebuffer is
  /// bound.
  external void drawBuffers(JSArray buffers);
  external void clearBufferfv(
    GLenum buffer,
    GLint drawbuffer,
    Float32List values, [
    int srcOffset,
  ]);
  external void clearBufferiv(
    GLenum buffer,
    GLint drawbuffer,
    Int32List values, [
    int srcOffset,
  ]);
  external void clearBufferuiv(
    GLenum buffer,
    GLint drawbuffer,
    Uint32List values, [
    int srcOffset,
  ]);
  external void clearBufferfi(
    GLenum buffer,
    GLint drawbuffer,
    GLfloat depth,
    GLint stencil,
  );

  /// The **`WebGL2RenderingContext.createQuery()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes
  /// [WebGLQuery] objects, which provide ways to asynchronously query for
  /// information.
  external WebGLQuery? createQuery();

  /// The **`WebGL2RenderingContext.deleteQuery()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLQuery] object.
  external void deleteQuery(WebGLQuery? query);

  /// The **`WebGL2RenderingContext.isQuery()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed object is a valid [WebGLQuery] object.
  external GLboolean isQuery(WebGLQuery? query);

  /// The **`WebGL2RenderingContext.beginQuery()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// starts an asynchronous query. The
  /// `target` parameter indicates which kind of query to begin.
  external void beginQuery(
    GLenum target,
    WebGLQuery query,
  );

  /// The **`WebGL2RenderingContext.endQuery()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// marks the end of a given query
  /// target.
  external void endQuery(GLenum target);

  /// The **`WebGL2RenderingContext.getQuery()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns the currently active
  /// [WebGLQuery] for the `target`, or
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null).
  external WebGLQuery? getQuery(
    GLenum target,
    GLenum pname,
  );

  /// The **`WebGL2RenderingContext.getQueryParameter()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns parameter
  /// information of a [WebGLQuery] object.
  external JSAny? getQueryParameter(
    WebGLQuery query,
    GLenum pname,
  );

  /// The **`WebGL2RenderingContext.createSampler()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes
  /// [WebGLSampler] objects.
  external WebGLSampler? createSampler();

  /// The **`WebGL2RenderingContext.deleteSampler()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLSampler] object.
  external void deleteSampler(WebGLSampler? sampler);

  /// The **`WebGL2RenderingContext.isSampler()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed object is a valid [WebGLSampler] object.
  external GLboolean isSampler(WebGLSampler? sampler);

  /// The **`WebGL2RenderingContext.bindSampler()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a
  /// passed [WebGLSampler] object to the texture unit at the passed index.
  external void bindSampler(
    GLuint unit,
    WebGLSampler? sampler,
  );
  external void samplerParameteri(
    WebGLSampler sampler,
    GLenum pname,
    GLint param,
  );
  external void samplerParameterf(
    WebGLSampler sampler,
    GLenum pname,
    GLfloat param,
  );

  /// The **`WebGL2RenderingContext.getSamplerParameter()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns parameter
  /// information of a [WebGLSampler] object.
  external JSAny? getSamplerParameter(
    WebGLSampler sampler,
    GLenum pname,
  );

  /// The **`WebGL2RenderingContext.fenceSync()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates a new
  /// [WebGLSync] object and inserts it into the GL command stream.
  external WebGLSync? fenceSync(
    GLenum condition,
    GLbitfield flags,
  );

  /// The **`WebGL2RenderingContext.isSync()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed object is a valid [WebGLSync] object.
  external GLboolean isSync(WebGLSync? sync);

  /// The **`WebGL2RenderingContext.deleteSync()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLSync] object.
  external void deleteSync(WebGLSync? sync);

  /// The **`WebGL2RenderingContext.clientWaitSync()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// blocks and waits for a
  /// [WebGLSync] object to become signaled or a given timeout to be passed.
  external GLenum clientWaitSync(
    WebGLSync sync,
    GLbitfield flags,
    GLuint64 timeout,
  );

  /// The **`WebGL2RenderingContext.waitSync()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns immediately, but waits on
  /// the GL server until the given [WebGLSync] object is signaled.
  ///
  /// The method is a no-op in the absence of the possibility of synchronizing
  /// between
  /// multiple GL contexts.
  external void waitSync(
    WebGLSync sync,
    GLbitfield flags,
    GLint64 timeout,
  );

  /// The **`WebGL2RenderingContext.getSyncParameter()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns parameter
  /// information of a [WebGLSync] object.
  external JSAny? getSyncParameter(
    WebGLSync sync,
    GLenum pname,
  );

  /// The **`WebGL2RenderingContext.createTransformFeedback()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and
  /// initializes [WebGLTransformFeedback] objects.
  external WebGLTransformFeedback? createTransformFeedback();

  /// The **`WebGL2RenderingContext.deleteTransformFeedback()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLTransformFeedback] object.
  external void deleteTransformFeedback(WebGLTransformFeedback? tf);

  /// The **`WebGL2RenderingContext.isTransformFeedback()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true`
  /// if the passed object is a valid [WebGLTransformFeedback] object.
  external GLboolean isTransformFeedback(WebGLTransformFeedback? tf);

  /// The **`WebGL2RenderingContext.bindTransformFeedback()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a
  /// passed [WebGLTransformFeedback] object to the current GL state.
  external void bindTransformFeedback(
    GLenum target,
    WebGLTransformFeedback? tf,
  );

  /// The **`WebGL2RenderingContext.beginTransformFeedback()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// starts a transform
  /// feedback operation.
  external void beginTransformFeedback(GLenum primitiveMode);

  /// The **`WebGL2RenderingContext.endTransformFeedback()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// ends a transform feedback
  /// operation.
  external void endTransformFeedback();

  /// The **`WebGL2RenderingContext.transformFeedbackVaryings()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// specifies values
  /// to record in [WebGLTransformFeedback] buffers.
  external void transformFeedbackVaryings(
    WebGLProgram program,
    JSArray varyings,
    GLenum bufferMode,
  );

  /// The **`WebGL2RenderingContext.getTransformFeedbackVarying()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns
  /// information about varying variables from [WebGLTransformFeedback] buffers.
  external WebGLActiveInfo? getTransformFeedbackVarying(
    WebGLProgram program,
    GLuint index,
  );

  /// The **`WebGL2RenderingContext.pauseTransformFeedback()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// pauses a transform
  /// feedback operation.
  external void pauseTransformFeedback();

  /// The **`WebGL2RenderingContext.resumeTransformFeedback()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// resumes a
  /// transform feedback operation.
  external void resumeTransformFeedback();

  /// The **`WebGL2RenderingContext.bindBufferBase()`** method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a given
  /// [WebGLBuffer] to a given binding point (`target`) at a given
  /// `index`.
  external void bindBufferBase(
    GLenum target,
    GLuint index,
    WebGLBuffer? buffer,
  );

  /// The **`WebGL2RenderingContext.bindBufferRange()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a range of a given
  /// [WebGLBuffer] to a given binding point (`target`) at a given
  /// `index`.
  external void bindBufferRange(
    GLenum target,
    GLuint index,
    WebGLBuffer? buffer,
    GLintptr offset,
    GLsizeiptr size,
  );

  /// The **`WebGL2RenderingContext.getIndexedParameter()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns indexed
  /// information about a given `target`.
  external JSAny? getIndexedParameter(
    GLenum target,
    GLuint index,
  );

  /// The **`WebGL2RenderingContext.getUniformIndices()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// retrieves the indices of a
  /// number of uniforms within a [WebGLProgram].
  external JSArray? getUniformIndices(
    WebGLProgram program,
    JSArray uniformNames,
  );

  /// The **`WebGL2RenderingContext.getActiveUniforms()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// retrieves information about
  /// active uniforms within a [WebGLProgram].
  external JSAny? getActiveUniforms(
    WebGLProgram program,
    JSArray uniformIndices,
    GLenum pname,
  );

  /// The **`WebGL2RenderingContext.getUniformBlockIndex()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// retrieves the index of
  /// a uniform block within a [WebGLProgram].
  external GLuint getUniformBlockIndex(
    WebGLProgram program,
    String uniformBlockName,
  );

  /// The
  /// **`WebGL2RenderingContext.getActiveUniformBlockParameter()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// retrieves
  /// information about an active uniform block within a [WebGLProgram].
  external JSAny? getActiveUniformBlockParameter(
    WebGLProgram program,
    GLuint uniformBlockIndex,
    GLenum pname,
  );

  /// The **`WebGL2RenderingContext.getActiveUniformBlockName()`**
  /// method of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// retrieves the name
  /// of the active uniform block at a given index within a [WebGLProgram].
  external String? getActiveUniformBlockName(
    WebGLProgram program,
    GLuint uniformBlockIndex,
  );

  /// The **`WebGL2RenderingContext.uniformBlockBinding()`** method
  /// of the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// assigns binding points
  /// for active uniform blocks.
  external void uniformBlockBinding(
    WebGLProgram program,
    GLuint uniformBlockIndex,
    GLuint uniformBlockBinding,
  );

  /// The **`WebGL2RenderingContext.createVertexArray()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// creates and initializes a
  /// [WebGLVertexArrayObject] object that represents a vertex array object
  /// (VAO)
  /// pointing to vertex array data and which provides names for different sets
  /// of vertex
  /// data.
  external WebGLVertexArrayObject? createVertexArray();

  /// The **`WebGL2RenderingContext.deleteVertexArray()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// deletes a given
  /// [WebGLVertexArrayObject] object.
  external void deleteVertexArray(WebGLVertexArrayObject? vertexArray);

  /// The **`WebGL2RenderingContext.isVertexArray()`** method of the
  /// [WebGL API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// returns `true` if the
  /// passed object is a valid [WebGLVertexArrayObject] object.
  external GLboolean isVertexArray(WebGLVertexArrayObject? vertexArray);

  /// The **`WebGL2RenderingContext.bindVertexArray()`** method of
  /// the
  /// [WebGL 2 API](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
  /// binds a
  /// passed [WebGLVertexArrayObject] object to the buffer.
  external void bindVertexArray(WebGLVertexArrayObject? array);
  external void bufferData(
    GLenum target,
    JSAny sizeOrSrcData,
    GLenum usage, [
    int srcOffset,
    GLuint length,
  ]);
  external void bufferSubData(
    GLenum target,
    GLintptr dstByteOffset,
    JSObject srcData, [
    int srcOffset,
    GLuint length,
  ]);
  external void texImage2D(
    GLenum target,
    GLint level,
    GLint internalformat,
    JSAny formatOrWidth,
    JSAny heightOrType,
    JSAny borderOrSource, [
    GLenum format,
    GLenum type,
    JSAny pboOffsetOrPixelsOrSourceOrSrcData,
    int srcOffset,
  ]);
  external void texSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    JSAny formatOrWidth,
    JSAny heightOrType,
    JSAny formatOrSource, [
    GLenum type,
    JSAny pboOffsetOrPixelsOrSourceOrSrcData,
    int srcOffset,
  ]);
  external void compressedTexImage2D(
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLint border,
    JSAny imageSizeOrSrcData, [
    JSAny offsetOrSrcOffset,
    GLuint srcLengthOverride,
  ]);
  external void compressedTexSubImage2D(
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLsizei width,
    GLsizei height,
    GLenum format,
    JSAny imageSizeOrSrcData, [
    JSAny offsetOrSrcOffset,
    GLuint srcLengthOverride,
  ]);
  external void uniform1fv(
    WebGLUniformLocation? location,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform2fv(
    WebGLUniformLocation? location,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform3fv(
    WebGLUniformLocation? location,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform4fv(
    WebGLUniformLocation? location,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform1iv(
    WebGLUniformLocation? location,
    Int32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform2iv(
    WebGLUniformLocation? location,
    Int32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform3iv(
    WebGLUniformLocation? location,
    Int32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniform4iv(
    WebGLUniformLocation? location,
    Int32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void uniformMatrix4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    int srcOffset,
    GLuint srcLength,
  ]);
  external void readPixels(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    JSAny dstDataOrOffset, [
    int dstOffset,
  ]);
  external JSObject get canvas;
  external GLsizei get drawingBufferWidth;
  external GLsizei get drawingBufferHeight;
  external set drawingBufferColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get drawingBufferColorSpace;
  external set unpackColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get unpackColorSpace;
}
