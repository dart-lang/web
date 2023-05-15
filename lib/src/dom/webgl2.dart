// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';
import 'webidl.dart';

typedef GLint64 = JSNumber;
typedef GLuint64 = JSNumber;
typedef Uint32List = JSAny;

@JS('WebGLQuery')
@staticInterop
class WebGLQuery implements WebGLObject {}

@JS('WebGLSampler')
@staticInterop
class WebGLSampler implements WebGLObject {}

@JS('WebGLSync')
@staticInterop
class WebGLSync implements WebGLObject {}

@JS('WebGLTransformFeedback')
@staticInterop
class WebGLTransformFeedback implements WebGLObject {}

@JS('WebGLVertexArrayObject')
@staticInterop
class WebGLVertexArrayObject implements WebGLObject {}

@JS('WebGL2RenderingContextBase')
@staticInterop
class WebGL2RenderingContextBase implements JSObject {
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
}

extension WebGL2RenderingContextBaseExtension on WebGL2RenderingContextBase {
  external JSVoid copyBufferSubData(
    GLenum readTarget,
    GLenum writeTarget,
    GLintptr readOffset,
    GLintptr writeOffset,
    GLsizeiptr size,
  );
  external JSVoid getBufferSubData(
    GLenum target,
    GLintptr srcByteOffset,
    ArrayBufferView dstBuffer, [
    GLuint dstOffset,
    GLuint length,
  ]);
  external JSVoid blitFramebuffer(
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
  external JSVoid framebufferTextureLayer(
    GLenum target,
    GLenum attachment,
    WebGLTexture? texture,
    GLint level,
    GLint layer,
  );
  external JSVoid invalidateFramebuffer(
    GLenum target,
    JSArray attachments,
  );
  external JSVoid invalidateSubFramebuffer(
    GLenum target,
    JSArray attachments,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
  );
  external JSVoid readBuffer(GLenum src);
  external JSAny getInternalformatParameter(
    GLenum target,
    GLenum internalformat,
    GLenum pname,
  );
  external JSVoid renderbufferStorageMultisample(
    GLenum target,
    GLsizei samples,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );
  external JSVoid texStorage2D(
    GLenum target,
    GLsizei levels,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
  );
  external JSVoid texStorage3D(
    GLenum target,
    GLsizei levels,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
  );
  external JSVoid texImage3D(
    GLenum target,
    GLint level,
    GLint internalformat,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLint border,
    GLenum format,
    GLenum type,
    JSAny? pboOffsetOrSourceOrSrcData, [
    GLuint srcOffset,
  ]);
  external JSVoid texSubImage3D(
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
    JSAny? pboOffsetOrSourceOrSrcData, [
    GLuint srcOffset,
  ]);
  external JSVoid copyTexSubImage3D(
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
  external JSVoid compressedTexImage3D(
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
  external JSVoid compressedTexSubImage3D(
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
  external GLint getFragDataLocation(
    WebGLProgram program,
    JSString name,
  );
  external JSVoid uniform1ui(
    WebGLUniformLocation? location,
    GLuint v0,
  );
  external JSVoid uniform2ui(
    WebGLUniformLocation? location,
    GLuint v0,
    GLuint v1,
  );
  external JSVoid uniform3ui(
    WebGLUniformLocation? location,
    GLuint v0,
    GLuint v1,
    GLuint v2,
  );
  external JSVoid uniform4ui(
    WebGLUniformLocation? location,
    GLuint v0,
    GLuint v1,
    GLuint v2,
    GLuint v3,
  );
  external JSVoid uniform1uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform2uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform3uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform4uiv(
    WebGLUniformLocation? location,
    Uint32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix3x2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix4x2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix2x3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix4x3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix2x4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix3x4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid vertexAttribI4i(
    GLuint index,
    GLint x,
    GLint y,
    GLint z,
    GLint w,
  );
  external JSVoid vertexAttribI4iv(
    GLuint index,
    Int32List values,
  );
  external JSVoid vertexAttribI4ui(
    GLuint index,
    GLuint x,
    GLuint y,
    GLuint z,
    GLuint w,
  );
  external JSVoid vertexAttribI4uiv(
    GLuint index,
    Uint32List values,
  );
  external JSVoid vertexAttribIPointer(
    GLuint index,
    GLint size,
    GLenum type,
    GLsizei stride,
    GLintptr offset,
  );
  external JSVoid vertexAttribDivisor(
    GLuint index,
    GLuint divisor,
  );
  external JSVoid drawArraysInstanced(
    GLenum mode,
    GLint first,
    GLsizei count,
    GLsizei instanceCount,
  );
  external JSVoid drawElementsInstanced(
    GLenum mode,
    GLsizei count,
    GLenum type,
    GLintptr offset,
    GLsizei instanceCount,
  );
  external JSVoid drawRangeElements(
    GLenum mode,
    GLuint start,
    GLuint end,
    GLsizei count,
    GLenum type,
    GLintptr offset,
  );
  external JSVoid drawBuffers(JSArray buffers);
  external JSVoid clearBufferfv(
    GLenum buffer,
    GLint drawbuffer,
    Float32List values, [
    GLuint srcOffset,
  ]);
  external JSVoid clearBufferiv(
    GLenum buffer,
    GLint drawbuffer,
    Int32List values, [
    GLuint srcOffset,
  ]);
  external JSVoid clearBufferuiv(
    GLenum buffer,
    GLint drawbuffer,
    Uint32List values, [
    GLuint srcOffset,
  ]);
  external JSVoid clearBufferfi(
    GLenum buffer,
    GLint drawbuffer,
    GLfloat depth,
    GLint stencil,
  );
  external WebGLQuery? createQuery();
  external JSVoid deleteQuery(WebGLQuery? query);
  external GLboolean isQuery(WebGLQuery? query);
  external JSVoid beginQuery(
    GLenum target,
    WebGLQuery query,
  );
  external JSVoid endQuery(GLenum target);
  external WebGLQuery? getQuery(
    GLenum target,
    GLenum pname,
  );
  external JSAny getQueryParameter(
    WebGLQuery query,
    GLenum pname,
  );
  external WebGLSampler? createSampler();
  external JSVoid deleteSampler(WebGLSampler? sampler);
  external GLboolean isSampler(WebGLSampler? sampler);
  external JSVoid bindSampler(
    GLuint unit,
    WebGLSampler? sampler,
  );
  external JSVoid samplerParameteri(
    WebGLSampler sampler,
    GLenum pname,
    GLint param,
  );
  external JSVoid samplerParameterf(
    WebGLSampler sampler,
    GLenum pname,
    GLfloat param,
  );
  external JSAny getSamplerParameter(
    WebGLSampler sampler,
    GLenum pname,
  );
  external WebGLSync? fenceSync(
    GLenum condition,
    GLbitfield flags,
  );
  external GLboolean isSync(WebGLSync? sync);
  external JSVoid deleteSync(WebGLSync? sync);
  external GLenum clientWaitSync(
    WebGLSync sync,
    GLbitfield flags,
    GLuint64 timeout,
  );
  external JSVoid waitSync(
    WebGLSync sync,
    GLbitfield flags,
    GLint64 timeout,
  );
  external JSAny getSyncParameter(
    WebGLSync sync,
    GLenum pname,
  );
  external WebGLTransformFeedback? createTransformFeedback();
  external JSVoid deleteTransformFeedback(WebGLTransformFeedback? tf);
  external GLboolean isTransformFeedback(WebGLTransformFeedback? tf);
  external JSVoid bindTransformFeedback(
    GLenum target,
    WebGLTransformFeedback? tf,
  );
  external JSVoid beginTransformFeedback(GLenum primitiveMode);
  external JSVoid endTransformFeedback();
  external JSVoid transformFeedbackVaryings(
    WebGLProgram program,
    JSArray varyings,
    GLenum bufferMode,
  );
  external WebGLActiveInfo? getTransformFeedbackVarying(
    WebGLProgram program,
    GLuint index,
  );
  external JSVoid pauseTransformFeedback();
  external JSVoid resumeTransformFeedback();
  external JSVoid bindBufferBase(
    GLenum target,
    GLuint index,
    WebGLBuffer? buffer,
  );
  external JSVoid bindBufferRange(
    GLenum target,
    GLuint index,
    WebGLBuffer? buffer,
    GLintptr offset,
    GLsizeiptr size,
  );
  external JSAny getIndexedParameter(
    GLenum target,
    GLuint index,
  );
  external JSArray? getUniformIndices(
    WebGLProgram program,
    JSArray uniformNames,
  );
  external JSAny getActiveUniforms(
    WebGLProgram program,
    JSArray uniformIndices,
    GLenum pname,
  );
  external GLuint getUniformBlockIndex(
    WebGLProgram program,
    JSString uniformBlockName,
  );
  external JSAny getActiveUniformBlockParameter(
    WebGLProgram program,
    GLuint uniformBlockIndex,
    GLenum pname,
  );
  external JSString? getActiveUniformBlockName(
    WebGLProgram program,
    GLuint uniformBlockIndex,
  );
  external JSVoid uniformBlockBinding(
    WebGLProgram program,
    GLuint uniformBlockIndex,
    GLuint uniformBlockBinding,
  );
  external WebGLVertexArrayObject? createVertexArray();
  external JSVoid deleteVertexArray(WebGLVertexArrayObject? vertexArray);
  external GLboolean isVertexArray(WebGLVertexArrayObject? vertexArray);
  external JSVoid bindVertexArray(WebGLVertexArrayObject? array);
}

@JS('WebGL2RenderingContextOverloads')
@staticInterop
class WebGL2RenderingContextOverloads implements JSObject {}

extension WebGL2RenderingContextOverloadsExtension
    on WebGL2RenderingContextOverloads {
  external JSVoid bufferData(
    GLenum target,
    JSAny? sizeOrSrcData,
    GLenum usage, [
    GLuint srcOffset,
    GLuint length,
  ]);
  external JSVoid bufferSubData(
    GLenum target,
    GLintptr dstByteOffset,
    JSAny srcData, [
    GLuint srcOffset,
    GLuint length,
  ]);
  external JSVoid texImage2D(
    GLenum target,
    GLint level,
    GLint internalformat,
    JSAny formatOrWidth,
    JSAny heightOrType,
    JSAny borderOrSource, [
    GLenum format,
    GLenum type,
    JSAny? pboOffsetOrPixelsOrSourceOrSrcData,
    GLuint srcOffset,
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
    JSAny? pboOffsetOrPixelsOrSourceOrSrcData,
    GLuint srcOffset,
  ]);
  external JSVoid compressedTexImage2D(
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
  external JSVoid compressedTexSubImage2D(
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
  external JSVoid uniform1fv(
    WebGLUniformLocation? location,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform2fv(
    WebGLUniformLocation? location,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform3fv(
    WebGLUniformLocation? location,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform4fv(
    WebGLUniformLocation? location,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform1iv(
    WebGLUniformLocation? location,
    Int32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform2iv(
    WebGLUniformLocation? location,
    Int32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform3iv(
    WebGLUniformLocation? location,
    Int32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniform4iv(
    WebGLUniformLocation? location,
    Int32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix2fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix3fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid uniformMatrix4fv(
    WebGLUniformLocation? location,
    GLboolean transpose,
    Float32List data, [
    GLuint srcOffset,
    GLuint srcLength,
  ]);
  external JSVoid readPixels(
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    JSAny? dstDataOrOffset, [
    GLuint dstOffset,
  ]);
}

@JS('WebGL2RenderingContext')
@staticInterop
class WebGL2RenderingContext
    implements
        WebGLRenderingContextBase,
        WebGL2RenderingContextBase,
        WebGL2RenderingContextOverloads {}
