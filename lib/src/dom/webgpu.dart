// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef GPUBufferUsageFlags = JSNumber;
typedef GPUMapModeFlags = JSNumber;
typedef GPUTextureUsageFlags = JSNumber;
typedef GPUShaderStageFlags = JSNumber;
typedef GPUBindingResource = JSAny;
typedef GPUPipelineConstantValue = JSNumber;
typedef GPUColorWriteFlags = JSNumber;
typedef GPUComputePassTimestampWrites = JSArray;
typedef GPURenderPassTimestampWrites = JSArray;
typedef GPUBufferDynamicOffset = JSNumber;
typedef GPUStencilValue = JSNumber;
typedef GPUSampleMask = JSNumber;
typedef GPUDepthBias = JSNumber;
typedef GPUSize64 = JSNumber;
typedef GPUIntegerCoordinate = JSNumber;
typedef GPUIndex32 = JSNumber;
typedef GPUSize32 = JSNumber;
typedef GPUSignedOffset32 = JSNumber;
typedef GPUFlagsConstant = JSNumber;
typedef GPUColor = JSAny;
typedef GPUOrigin2D = JSAny;
typedef GPUOrigin3D = JSAny;
typedef GPUExtent3D = JSAny;
typedef GPUPowerPreference = JSString;
typedef GPUFeatureName = JSString;
typedef GPUBufferMapState = JSString;
typedef GPUTextureDimension = JSString;
typedef GPUTextureViewDimension = JSString;
typedef GPUTextureAspect = JSString;
typedef GPUTextureFormat = JSString;
typedef GPUAddressMode = JSString;
typedef GPUFilterMode = JSString;
typedef GPUMipmapFilterMode = JSString;
typedef GPUCompareFunction = JSString;
typedef GPUBufferBindingType = JSString;
typedef GPUSamplerBindingType = JSString;
typedef GPUTextureSampleType = JSString;
typedef GPUStorageTextureAccess = JSString;
typedef GPUCompilationMessageType = JSString;
typedef GPUPipelineErrorReason = JSString;
typedef GPUAutoLayoutMode = JSString;
typedef GPUPrimitiveTopology = JSString;
typedef GPUFrontFace = JSString;
typedef GPUCullMode = JSString;
typedef GPUBlendFactor = JSString;
typedef GPUBlendOperation = JSString;
typedef GPUStencilOperation = JSString;
typedef GPUIndexFormat = JSString;
typedef GPUVertexFormat = JSString;
typedef GPUVertexStepMode = JSString;
typedef GPUComputePassTimestampLocation = JSString;
typedef GPURenderPassTimestampLocation = JSString;
typedef GPULoadOp = JSString;
typedef GPUStoreOp = JSString;
typedef GPUQueryType = JSString;
typedef GPUCanvasAlphaMode = JSString;
typedef GPUDeviceLostReason = JSString;
typedef GPUErrorFilter = JSString;

@JS('GPUObjectBase')
@staticInterop
class GPUObjectBase {
  external factory GPUObjectBase();
}

extension GPUObjectBaseExtension on GPUObjectBase {
  external set label(JSString value);
  external JSString get label;
}

@JS('GPUObjectDescriptorBase')
@staticInterop
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase();
}

extension GPUObjectDescriptorBaseExtension on GPUObjectDescriptorBase {}

@JS('GPUSupportedLimits')
@staticInterop
class GPUSupportedLimits {
  external factory GPUSupportedLimits();
}

extension GPUSupportedLimitsExtension on GPUSupportedLimits {
  external JSNumber get maxTextureDimension1D;
  external JSNumber get maxTextureDimension2D;
  external JSNumber get maxTextureDimension3D;
  external JSNumber get maxTextureArrayLayers;
  external JSNumber get maxBindGroups;
  external JSNumber get maxBindingsPerBindGroup;
  external JSNumber get maxDynamicUniformBuffersPerPipelineLayout;
  external JSNumber get maxDynamicStorageBuffersPerPipelineLayout;
  external JSNumber get maxSampledTexturesPerShaderStage;
  external JSNumber get maxSamplersPerShaderStage;
  external JSNumber get maxStorageBuffersPerShaderStage;
  external JSNumber get maxStorageTexturesPerShaderStage;
  external JSNumber get maxUniformBuffersPerShaderStage;
  external JSNumber get maxUniformBufferBindingSize;
  external JSNumber get maxStorageBufferBindingSize;
  external JSNumber get minUniformBufferOffsetAlignment;
  external JSNumber get minStorageBufferOffsetAlignment;
  external JSNumber get maxVertexBuffers;
  external JSNumber get maxBufferSize;
  external JSNumber get maxVertexAttributes;
  external JSNumber get maxVertexBufferArrayStride;
  external JSNumber get maxInterStageShaderComponents;
  external JSNumber get maxInterStageShaderVariables;
  external JSNumber get maxColorAttachments;
  external JSNumber get maxColorAttachmentBytesPerSample;
  external JSNumber get maxComputeWorkgroupStorageSize;
  external JSNumber get maxComputeInvocationsPerWorkgroup;
  external JSNumber get maxComputeWorkgroupSizeX;
  external JSNumber get maxComputeWorkgroupSizeY;
  external JSNumber get maxComputeWorkgroupSizeZ;
  external JSNumber get maxComputeWorkgroupsPerDimension;
}

@JS('GPUSupportedFeatures')
@staticInterop
class GPUSupportedFeatures {
  external factory GPUSupportedFeatures();
}

extension GPUSupportedFeaturesExtension on GPUSupportedFeatures {}

@JS('GPUAdapterInfo')
@staticInterop
class GPUAdapterInfo {
  external factory GPUAdapterInfo();
}

extension GPUAdapterInfoExtension on GPUAdapterInfo {
  external JSString get vendor;
  external JSString get architecture;
  external JSString get device;
  external JSString get description;
}

@JS('NavigatorGPU')
@staticInterop
class NavigatorGPU {
  external factory NavigatorGPU();
}

extension NavigatorGPUExtension on NavigatorGPU {
  external GPU get gpu;
}

@JS('GPU')
@staticInterop
class GPU {
  external factory GPU();
}

extension GPUExtension on GPU {
  external JSPromise requestAdapter();
  external JSPromise requestAdapter1(GPURequestAdapterOptions options);
  external GPUTextureFormat getPreferredCanvasFormat();
}

@JS('GPURequestAdapterOptions')
@staticInterop
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions();
}

extension GPURequestAdapterOptionsExtension on GPURequestAdapterOptions {}

@JS('GPUAdapter')
@staticInterop
class GPUAdapter {
  external factory GPUAdapter();
}

extension GPUAdapterExtension on GPUAdapter {
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external JSBoolean get isFallbackAdapter;
  external JSPromise requestDevice();
  external JSPromise requestDevice1(GPUDeviceDescriptor descriptor);
  external JSPromise requestAdapterInfo();
  external JSPromise requestAdapterInfo1(JSArray unmaskHints);
}

@JS('GPUDeviceDescriptor')
@staticInterop
class GPUDeviceDescriptor extends GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor();
}

extension GPUDeviceDescriptorExtension on GPUDeviceDescriptor {}

@JS('GPUDevice')
@staticInterop
class GPUDevice extends EventTarget implements GPUObjectBase {
  external factory GPUDevice();
}

extension GPUDeviceExtension on GPUDevice {
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external JSVoid destroy();
  external GPUBuffer createBuffer(GPUBufferDescriptor descriptor);
  external GPUTexture createTexture(GPUTextureDescriptor descriptor);
  external GPUSampler createSampler();
  external GPUSampler createSampler1(GPUSamplerDescriptor descriptor);
  external GPUExternalTexture importExternalTexture(
      GPUExternalTextureDescriptor descriptor);
  external GPUBindGroupLayout createBindGroupLayout(
      GPUBindGroupLayoutDescriptor descriptor);
  external GPUPipelineLayout createPipelineLayout(
      GPUPipelineLayoutDescriptor descriptor);
  external GPUBindGroup createBindGroup(GPUBindGroupDescriptor descriptor);
  external GPUShaderModule createShaderModule(
      GPUShaderModuleDescriptor descriptor);
  external GPUComputePipeline createComputePipeline(
      GPUComputePipelineDescriptor descriptor);
  external GPURenderPipeline createRenderPipeline(
      GPURenderPipelineDescriptor descriptor);
  external JSPromise createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);
  external JSPromise createRenderPipelineAsync(
      GPURenderPipelineDescriptor descriptor);
  external GPUCommandEncoder createCommandEncoder();
  external GPUCommandEncoder createCommandEncoder1(
      GPUCommandEncoderDescriptor descriptor);
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);
  external JSPromise get lost;
  external JSVoid pushErrorScope(GPUErrorFilter filter);
  external JSPromise popErrorScope();
  external set onuncapturederror(EventHandler value);
  external EventHandler get onuncapturederror;
}

@JS('GPUBuffer')
@staticInterop
class GPUBuffer implements GPUObjectBase {
  external factory GPUBuffer();
}

extension GPUBufferExtension on GPUBuffer {
  external GPUSize64 get size;
  external GPUBufferUsageFlags get usage;
  external GPUBufferMapState get mapState;
  external JSPromise mapAsync(GPUMapModeFlags mode);
  external JSPromise mapAsync1(
    GPUMapModeFlags mode,
    GPUSize64 offset,
  );
  external JSPromise mapAsync2(
    GPUMapModeFlags mode,
    GPUSize64 offset,
    GPUSize64 size,
  );
  external JSArrayBuffer getMappedRange();
  external JSArrayBuffer getMappedRange1(GPUSize64 offset);
  external JSArrayBuffer getMappedRange2(
    GPUSize64 offset,
    GPUSize64 size,
  );
  external JSVoid unmap();
  external JSVoid destroy();
}

@JS('GPUBufferDescriptor')
@staticInterop
class GPUBufferDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor();
}

extension GPUBufferDescriptorExtension on GPUBufferDescriptor {}

@JS()
external $GPUBufferUsage get GPUBufferUsage;

@JS('GPUBufferUsage')
@staticInterop
abstract class $GPUBufferUsage {
  external factory $GPUBufferUsage();

  external static GPUFlagsConstant get MAP_READ;
  external static GPUFlagsConstant get MAP_WRITE;
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get INDEX;
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get UNIFORM;
  external static GPUFlagsConstant get STORAGE;
  external static GPUFlagsConstant get INDIRECT;
  external static GPUFlagsConstant get QUERY_RESOLVE;
}

@JS()
external $GPUMapMode get GPUMapMode;

@JS('GPUMapMode')
@staticInterop
abstract class $GPUMapMode {
  external factory $GPUMapMode();

  external static GPUFlagsConstant get READ;
  external static GPUFlagsConstant get WRITE;
}

@JS('GPUTexture')
@staticInterop
class GPUTexture implements GPUObjectBase {
  external factory GPUTexture();
}

extension GPUTextureExtension on GPUTexture {
  external GPUTextureView createView();
  external GPUTextureView createView1(GPUTextureViewDescriptor descriptor);
  external JSVoid destroy();
  external GPUIntegerCoordinate get width;
  external GPUIntegerCoordinate get height;
  external GPUIntegerCoordinate get depthOrArrayLayers;
  external GPUIntegerCoordinate get mipLevelCount;
  external GPUSize32 get sampleCount;
  external GPUTextureDimension get dimension;
  external GPUTextureFormat get format;
  external GPUTextureUsageFlags get usage;
}

@JS('GPUTextureDescriptor')
@staticInterop
class GPUTextureDescriptor extends GPUObjectDescriptorBase {
  external factory GPUTextureDescriptor();
}

extension GPUTextureDescriptorExtension on GPUTextureDescriptor {}

@JS()
external $GPUTextureUsage get GPUTextureUsage;

@JS('GPUTextureUsage')
@staticInterop
abstract class $GPUTextureUsage {
  external factory $GPUTextureUsage();

  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get TEXTURE_BINDING;
  external static GPUFlagsConstant get STORAGE_BINDING;
  external static GPUFlagsConstant get RENDER_ATTACHMENT;
}

@JS('GPUTextureView')
@staticInterop
class GPUTextureView implements GPUObjectBase {
  external factory GPUTextureView();
}

@JS('GPUTextureViewDescriptor')
@staticInterop
class GPUTextureViewDescriptor extends GPUObjectDescriptorBase {
  external factory GPUTextureViewDescriptor();
}

extension GPUTextureViewDescriptorExtension on GPUTextureViewDescriptor {}

@JS('GPUExternalTexture')
@staticInterop
class GPUExternalTexture implements GPUObjectBase {
  external factory GPUExternalTexture();
}

@JS('GPUExternalTextureDescriptor')
@staticInterop
class GPUExternalTextureDescriptor extends GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor();
}

extension GPUExternalTextureDescriptorExtension
    on GPUExternalTextureDescriptor {}

@JS('GPUSampler')
@staticInterop
class GPUSampler implements GPUObjectBase {
  external factory GPUSampler();
}

@JS('GPUSamplerDescriptor')
@staticInterop
class GPUSamplerDescriptor extends GPUObjectDescriptorBase {
  external factory GPUSamplerDescriptor();
}

extension GPUSamplerDescriptorExtension on GPUSamplerDescriptor {}

@JS('GPUBindGroupLayout')
@staticInterop
class GPUBindGroupLayout implements GPUObjectBase {
  external factory GPUBindGroupLayout();
}

@JS('GPUBindGroupLayoutDescriptor')
@staticInterop
class GPUBindGroupLayoutDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBindGroupLayoutDescriptor();
}

extension GPUBindGroupLayoutDescriptorExtension
    on GPUBindGroupLayoutDescriptor {}

@JS('GPUBindGroupLayoutEntry')
@staticInterop
class GPUBindGroupLayoutEntry {
  external factory GPUBindGroupLayoutEntry();
}

extension GPUBindGroupLayoutEntryExtension on GPUBindGroupLayoutEntry {}

@JS()
external $GPUShaderStage get GPUShaderStage;

@JS('GPUShaderStage')
@staticInterop
abstract class $GPUShaderStage {
  external factory $GPUShaderStage();

  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get FRAGMENT;
  external static GPUFlagsConstant get COMPUTE;
}

@JS('GPUBufferBindingLayout')
@staticInterop
class GPUBufferBindingLayout {
  external factory GPUBufferBindingLayout();
}

extension GPUBufferBindingLayoutExtension on GPUBufferBindingLayout {}

@JS('GPUSamplerBindingLayout')
@staticInterop
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout();
}

extension GPUSamplerBindingLayoutExtension on GPUSamplerBindingLayout {}

@JS('GPUTextureBindingLayout')
@staticInterop
class GPUTextureBindingLayout {
  external factory GPUTextureBindingLayout();
}

extension GPUTextureBindingLayoutExtension on GPUTextureBindingLayout {}

@JS('GPUStorageTextureBindingLayout')
@staticInterop
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout();
}

extension GPUStorageTextureBindingLayoutExtension
    on GPUStorageTextureBindingLayout {}

@JS('GPUExternalTextureBindingLayout')
@staticInterop
class GPUExternalTextureBindingLayout {
  external factory GPUExternalTextureBindingLayout();
}

@JS('GPUBindGroup')
@staticInterop
class GPUBindGroup implements GPUObjectBase {
  external factory GPUBindGroup();
}

@JS('GPUBindGroupDescriptor')
@staticInterop
class GPUBindGroupDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBindGroupDescriptor();
}

extension GPUBindGroupDescriptorExtension on GPUBindGroupDescriptor {}

@JS('GPUBindGroupEntry')
@staticInterop
class GPUBindGroupEntry {
  external factory GPUBindGroupEntry();
}

extension GPUBindGroupEntryExtension on GPUBindGroupEntry {}

@JS('GPUBufferBinding')
@staticInterop
class GPUBufferBinding {
  external factory GPUBufferBinding();
}

extension GPUBufferBindingExtension on GPUBufferBinding {}

@JS('GPUPipelineLayout')
@staticInterop
class GPUPipelineLayout implements GPUObjectBase {
  external factory GPUPipelineLayout();
}

@JS('GPUPipelineLayoutDescriptor')
@staticInterop
class GPUPipelineLayoutDescriptor extends GPUObjectDescriptorBase {
  external factory GPUPipelineLayoutDescriptor();
}

extension GPUPipelineLayoutDescriptorExtension on GPUPipelineLayoutDescriptor {}

@JS('GPUShaderModule')
@staticInterop
class GPUShaderModule implements GPUObjectBase {
  external factory GPUShaderModule();
}

extension GPUShaderModuleExtension on GPUShaderModule {
  external JSPromise compilationInfo();
}

@JS('GPUShaderModuleDescriptor')
@staticInterop
class GPUShaderModuleDescriptor extends GPUObjectDescriptorBase {
  external factory GPUShaderModuleDescriptor();
}

extension GPUShaderModuleDescriptorExtension on GPUShaderModuleDescriptor {}

@JS('GPUShaderModuleCompilationHint')
@staticInterop
class GPUShaderModuleCompilationHint {
  external factory GPUShaderModuleCompilationHint();
}

extension GPUShaderModuleCompilationHintExtension
    on GPUShaderModuleCompilationHint {}

@JS('GPUCompilationMessage')
@staticInterop
class GPUCompilationMessage {
  external factory GPUCompilationMessage();
}

extension GPUCompilationMessageExtension on GPUCompilationMessage {
  external JSString get message;
  external GPUCompilationMessageType get type;
  external JSNumber get lineNum;
  external JSNumber get linePos;
  external JSNumber get offset;
  external JSNumber get length;
}

@JS('GPUCompilationInfo')
@staticInterop
class GPUCompilationInfo {
  external factory GPUCompilationInfo();
}

extension GPUCompilationInfoExtension on GPUCompilationInfo {
  external JSArray get messages;
}

@JS('GPUPipelineError')
@staticInterop
class GPUPipelineError extends DOMException {
  external factory GPUPipelineError();

  external factory GPUPipelineError.a1(
    JSString message,
    GPUPipelineErrorInit options,
  );
}

extension GPUPipelineErrorExtension on GPUPipelineError {
  external GPUPipelineErrorReason get reason;
}

@JS('GPUPipelineErrorInit')
@staticInterop
class GPUPipelineErrorInit {
  external factory GPUPipelineErrorInit();
}

extension GPUPipelineErrorInitExtension on GPUPipelineErrorInit {}

@JS('GPUPipelineDescriptorBase')
@staticInterop
class GPUPipelineDescriptorBase extends GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase();
}

extension GPUPipelineDescriptorBaseExtension on GPUPipelineDescriptorBase {}

@JS('GPUPipelineBase')
@staticInterop
class GPUPipelineBase {
  external factory GPUPipelineBase();
}

extension GPUPipelineBaseExtension on GPUPipelineBase {
  external GPUBindGroupLayout getBindGroupLayout(JSNumber index);
}

@JS('GPUProgrammableStage')
@staticInterop
class GPUProgrammableStage {
  external factory GPUProgrammableStage();
}

extension GPUProgrammableStageExtension on GPUProgrammableStage {}

@JS('GPUComputePipeline')
@staticInterop
class GPUComputePipeline implements GPUObjectBase, GPUPipelineBase {
  external factory GPUComputePipeline();
}

@JS('GPUComputePipelineDescriptor')
@staticInterop
class GPUComputePipelineDescriptor extends GPUPipelineDescriptorBase {
  external factory GPUComputePipelineDescriptor();
}

extension GPUComputePipelineDescriptorExtension
    on GPUComputePipelineDescriptor {}

@JS('GPURenderPipeline')
@staticInterop
class GPURenderPipeline implements GPUObjectBase, GPUPipelineBase {
  external factory GPURenderPipeline();
}

@JS('GPURenderPipelineDescriptor')
@staticInterop
class GPURenderPipelineDescriptor extends GPUPipelineDescriptorBase {
  external factory GPURenderPipelineDescriptor();
}

extension GPURenderPipelineDescriptorExtension on GPURenderPipelineDescriptor {}

@JS('GPUPrimitiveState')
@staticInterop
class GPUPrimitiveState {
  external factory GPUPrimitiveState();
}

extension GPUPrimitiveStateExtension on GPUPrimitiveState {}

@JS('GPUMultisampleState')
@staticInterop
class GPUMultisampleState {
  external factory GPUMultisampleState();
}

extension GPUMultisampleStateExtension on GPUMultisampleState {}

@JS('GPUFragmentState')
@staticInterop
class GPUFragmentState extends GPUProgrammableStage {
  external factory GPUFragmentState();
}

extension GPUFragmentStateExtension on GPUFragmentState {}

@JS('GPUColorTargetState')
@staticInterop
class GPUColorTargetState {
  external factory GPUColorTargetState();
}

extension GPUColorTargetStateExtension on GPUColorTargetState {}

@JS('GPUBlendState')
@staticInterop
class GPUBlendState {
  external factory GPUBlendState();
}

extension GPUBlendStateExtension on GPUBlendState {}

@JS()
external $GPUColorWrite get GPUColorWrite;

@JS('GPUColorWrite')
@staticInterop
abstract class $GPUColorWrite {
  external factory $GPUColorWrite();

  external static GPUFlagsConstant get RED;
  external static GPUFlagsConstant get GREEN;
  external static GPUFlagsConstant get BLUE;
  external static GPUFlagsConstant get ALPHA;
  external static GPUFlagsConstant get ALL;
}

@JS('GPUBlendComponent')
@staticInterop
class GPUBlendComponent {
  external factory GPUBlendComponent();
}

extension GPUBlendComponentExtension on GPUBlendComponent {}

@JS('GPUDepthStencilState')
@staticInterop
class GPUDepthStencilState {
  external factory GPUDepthStencilState();
}

extension GPUDepthStencilStateExtension on GPUDepthStencilState {}

@JS('GPUStencilFaceState')
@staticInterop
class GPUStencilFaceState {
  external factory GPUStencilFaceState();
}

extension GPUStencilFaceStateExtension on GPUStencilFaceState {}

@JS('GPUVertexState')
@staticInterop
class GPUVertexState extends GPUProgrammableStage {
  external factory GPUVertexState();
}

extension GPUVertexStateExtension on GPUVertexState {}

@JS('GPUVertexBufferLayout')
@staticInterop
class GPUVertexBufferLayout {
  external factory GPUVertexBufferLayout();
}

extension GPUVertexBufferLayoutExtension on GPUVertexBufferLayout {}

@JS('GPUVertexAttribute')
@staticInterop
class GPUVertexAttribute {
  external factory GPUVertexAttribute();
}

extension GPUVertexAttributeExtension on GPUVertexAttribute {}

@JS('GPUImageDataLayout')
@staticInterop
class GPUImageDataLayout {
  external factory GPUImageDataLayout();
}

extension GPUImageDataLayoutExtension on GPUImageDataLayout {}

@JS('GPUImageCopyBuffer')
@staticInterop
class GPUImageCopyBuffer extends GPUImageDataLayout {
  external factory GPUImageCopyBuffer();
}

extension GPUImageCopyBufferExtension on GPUImageCopyBuffer {}

@JS('GPUImageCopyTexture')
@staticInterop
class GPUImageCopyTexture {
  external factory GPUImageCopyTexture();
}

extension GPUImageCopyTextureExtension on GPUImageCopyTexture {}

@JS('GPUImageCopyTextureTagged')
@staticInterop
class GPUImageCopyTextureTagged extends GPUImageCopyTexture {
  external factory GPUImageCopyTextureTagged();
}

extension GPUImageCopyTextureTaggedExtension on GPUImageCopyTextureTagged {}

@JS('GPUImageCopyExternalImage')
@staticInterop
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage();
}

extension GPUImageCopyExternalImageExtension on GPUImageCopyExternalImage {}

@JS('GPUCommandBuffer')
@staticInterop
class GPUCommandBuffer implements GPUObjectBase {
  external factory GPUCommandBuffer();
}

@JS('GPUCommandBufferDescriptor')
@staticInterop
class GPUCommandBufferDescriptor extends GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

@JS('GPUCommandsMixin')
@staticInterop
class GPUCommandsMixin {
  external factory GPUCommandsMixin();
}

@JS('GPUCommandEncoder')
@staticInterop
class GPUCommandEncoder
    implements GPUObjectBase, GPUCommandsMixin, GPUDebugCommandsMixin {
  external factory GPUCommandEncoder();
}

extension GPUCommandEncoderExtension on GPUCommandEncoder {
  external GPURenderPassEncoder beginRenderPass(
      GPURenderPassDescriptor descriptor);
  external GPUComputePassEncoder beginComputePass();
  external GPUComputePassEncoder beginComputePass1(
      GPUComputePassDescriptor descriptor);
  external JSVoid copyBufferToBuffer(
    GPUBuffer source,
    GPUSize64 sourceOffset,
    GPUBuffer destination,
    GPUSize64 destinationOffset,
    GPUSize64 size,
  );
  external JSVoid copyBufferToTexture(
    GPUImageCopyBuffer source,
    GPUImageCopyTexture destination,
    GPUExtent3D copySize,
  );
  external JSVoid copyTextureToBuffer(
    GPUImageCopyTexture source,
    GPUImageCopyBuffer destination,
    GPUExtent3D copySize,
  );
  external JSVoid copyTextureToTexture(
    GPUImageCopyTexture source,
    GPUImageCopyTexture destination,
    GPUExtent3D copySize,
  );
  external JSVoid clearBuffer(GPUBuffer buffer);
  external JSVoid clearBuffer1(
    GPUBuffer buffer,
    GPUSize64 offset,
  );
  external JSVoid clearBuffer2(
    GPUBuffer buffer,
    GPUSize64 offset,
    GPUSize64 size,
  );
  external JSVoid writeTimestamp(
    GPUQuerySet querySet,
    GPUSize32 queryIndex,
  );
  external JSVoid resolveQuerySet(
    GPUQuerySet querySet,
    GPUSize32 firstQuery,
    GPUSize32 queryCount,
    GPUBuffer destination,
    GPUSize64 destinationOffset,
  );
  external GPUCommandBuffer finish();
  external GPUCommandBuffer finish1(GPUCommandBufferDescriptor descriptor);
}

@JS('GPUCommandEncoderDescriptor')
@staticInterop
class GPUCommandEncoderDescriptor extends GPUObjectDescriptorBase {
  external factory GPUCommandEncoderDescriptor();
}

@JS('GPUBindingCommandsMixin')
@staticInterop
class GPUBindingCommandsMixin {
  external factory GPUBindingCommandsMixin();
}

extension GPUBindingCommandsMixinExtension on GPUBindingCommandsMixin {
  external JSVoid setBindGroup(
    GPUIndex32 index,
    GPUBindGroup bindGroup,
  );
  external JSVoid setBindGroup1(
    GPUIndex32 index,
    GPUBindGroup bindGroup,
    JSArray dynamicOffsets,
  );
  @JS('setBindGroup')
  external JSVoid setBindGroup_1_(
    GPUIndex32 index,
    GPUBindGroup bindGroup,
    JSUint32Array dynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  );
}

@JS('GPUDebugCommandsMixin')
@staticInterop
class GPUDebugCommandsMixin {
  external factory GPUDebugCommandsMixin();
}

extension GPUDebugCommandsMixinExtension on GPUDebugCommandsMixin {
  external JSVoid pushDebugGroup(JSString groupLabel);
  external JSVoid popDebugGroup();
  external JSVoid insertDebugMarker(JSString markerLabel);
}

@JS('GPUComputePassEncoder')
@staticInterop
class GPUComputePassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin {
  external factory GPUComputePassEncoder();
}

extension GPUComputePassEncoderExtension on GPUComputePassEncoder {
  external JSVoid setPipeline(GPUComputePipeline pipeline);
  external JSVoid dispatchWorkgroups(GPUSize32 workgroupCountX);
  external JSVoid dispatchWorkgroups1(
    GPUSize32 workgroupCountX,
    GPUSize32 workgroupCountY,
  );
  external JSVoid dispatchWorkgroups2(
    GPUSize32 workgroupCountX,
    GPUSize32 workgroupCountY,
    GPUSize32 workgroupCountZ,
  );
  external JSVoid dispatchWorkgroupsIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external JSVoid end();
}

@JS('GPUComputePassTimestampWrite')
@staticInterop
class GPUComputePassTimestampWrite {
  external factory GPUComputePassTimestampWrite();
}

extension GPUComputePassTimestampWriteExtension
    on GPUComputePassTimestampWrite {}

@JS('GPUComputePassDescriptor')
@staticInterop
class GPUComputePassDescriptor extends GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor();
}

extension GPUComputePassDescriptorExtension on GPUComputePassDescriptor {}

@JS('GPURenderPassEncoder')
@staticInterop
class GPURenderPassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {
  external factory GPURenderPassEncoder();
}

extension GPURenderPassEncoderExtension on GPURenderPassEncoder {
  external JSVoid setViewport(
    JSNumber x,
    JSNumber y,
    JSNumber width,
    JSNumber height,
    JSNumber minDepth,
    JSNumber maxDepth,
  );
  external JSVoid setScissorRect(
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
    GPUIntegerCoordinate width,
    GPUIntegerCoordinate height,
  );
  external JSVoid setBlendConstant(GPUColor color);
  external JSVoid setStencilReference(GPUStencilValue reference);
  external JSVoid beginOcclusionQuery(GPUSize32 queryIndex);
  external JSVoid endOcclusionQuery();
  external JSVoid executeBundles(JSArray bundles);
  external JSVoid end();
}

@JS('GPURenderPassTimestampWrite')
@staticInterop
class GPURenderPassTimestampWrite {
  external factory GPURenderPassTimestampWrite();
}

extension GPURenderPassTimestampWriteExtension on GPURenderPassTimestampWrite {}

@JS('GPURenderPassDescriptor')
@staticInterop
class GPURenderPassDescriptor extends GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor();
}

extension GPURenderPassDescriptorExtension on GPURenderPassDescriptor {}

@JS('GPURenderPassColorAttachment')
@staticInterop
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment();
}

extension GPURenderPassColorAttachmentExtension
    on GPURenderPassColorAttachment {}

@JS('GPURenderPassDepthStencilAttachment')
@staticInterop
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment();
}

extension GPURenderPassDepthStencilAttachmentExtension
    on GPURenderPassDepthStencilAttachment {}

@JS('GPURenderPassLayout')
@staticInterop
class GPURenderPassLayout extends GPUObjectDescriptorBase {
  external factory GPURenderPassLayout();
}

extension GPURenderPassLayoutExtension on GPURenderPassLayout {}

@JS('GPURenderCommandsMixin')
@staticInterop
class GPURenderCommandsMixin {
  external factory GPURenderCommandsMixin();
}

extension GPURenderCommandsMixinExtension on GPURenderCommandsMixin {
  external JSVoid setPipeline(GPURenderPipeline pipeline);
  external JSVoid setIndexBuffer(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat,
  );
  external JSVoid setIndexBuffer1(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat,
    GPUSize64 offset,
  );
  external JSVoid setIndexBuffer2(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat,
    GPUSize64 offset,
    GPUSize64 size,
  );
  external JSVoid setVertexBuffer(
    GPUIndex32 slot,
    GPUBuffer buffer,
  );
  external JSVoid setVertexBuffer1(
    GPUIndex32 slot,
    GPUBuffer buffer,
    GPUSize64 offset,
  );
  external JSVoid setVertexBuffer2(
    GPUIndex32 slot,
    GPUBuffer buffer,
    GPUSize64 offset,
    GPUSize64 size,
  );
  external JSVoid draw(GPUSize32 vertexCount);
  external JSVoid draw1(
    GPUSize32 vertexCount,
    GPUSize32 instanceCount,
  );
  external JSVoid draw2(
    GPUSize32 vertexCount,
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
  );
  external JSVoid draw3(
    GPUSize32 vertexCount,
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
    GPUSize32 firstInstance,
  );
  external JSVoid drawIndexed(GPUSize32 indexCount);
  external JSVoid drawIndexed1(
    GPUSize32 indexCount,
    GPUSize32 instanceCount,
  );
  external JSVoid drawIndexed2(
    GPUSize32 indexCount,
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
  );
  external JSVoid drawIndexed3(
    GPUSize32 indexCount,
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
  );
  external JSVoid drawIndexed4(
    GPUSize32 indexCount,
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
    GPUSize32 firstInstance,
  );
  external JSVoid drawIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external JSVoid drawIndexedIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
}

@JS('GPURenderBundle')
@staticInterop
class GPURenderBundle implements GPUObjectBase {
  external factory GPURenderBundle();
}

@JS('GPURenderBundleDescriptor')
@staticInterop
class GPURenderBundleDescriptor extends GPUObjectDescriptorBase {
  external factory GPURenderBundleDescriptor();
}

@JS('GPURenderBundleEncoder')
@staticInterop
class GPURenderBundleEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {
  external factory GPURenderBundleEncoder();
}

extension GPURenderBundleEncoderExtension on GPURenderBundleEncoder {
  external GPURenderBundle finish();
  external GPURenderBundle finish1(GPURenderBundleDescriptor descriptor);
}

@JS('GPURenderBundleEncoderDescriptor')
@staticInterop
class GPURenderBundleEncoderDescriptor extends GPURenderPassLayout {
  external factory GPURenderBundleEncoderDescriptor();
}

extension GPURenderBundleEncoderDescriptorExtension
    on GPURenderBundleEncoderDescriptor {}

@JS('GPUQueueDescriptor')
@staticInterop
class GPUQueueDescriptor extends GPUObjectDescriptorBase {
  external factory GPUQueueDescriptor();
}

@JS('GPUQueue')
@staticInterop
class GPUQueue implements GPUObjectBase {
  external factory GPUQueue();
}

extension GPUQueueExtension on GPUQueue {
  external JSVoid submit(JSArray commandBuffers);
  external JSPromise onSubmittedWorkDone();
  external JSVoid writeBuffer(
    GPUBuffer buffer,
    GPUSize64 bufferOffset,
    BufferSource data,
  );
  external JSVoid writeBuffer1(
    GPUBuffer buffer,
    GPUSize64 bufferOffset,
    BufferSource data,
    GPUSize64 dataOffset,
  );
  external JSVoid writeBuffer2(
    GPUBuffer buffer,
    GPUSize64 bufferOffset,
    BufferSource data,
    GPUSize64 dataOffset,
    GPUSize64 size,
  );
  external JSVoid writeTexture(
    GPUImageCopyTexture destination,
    BufferSource data,
    GPUImageDataLayout dataLayout,
    GPUExtent3D size,
  );
  external JSVoid copyExternalImageToTexture(
    GPUImageCopyExternalImage source,
    GPUImageCopyTextureTagged destination,
    GPUExtent3D copySize,
  );
}

@JS('GPUQuerySet')
@staticInterop
class GPUQuerySet implements GPUObjectBase {
  external factory GPUQuerySet();
}

extension GPUQuerySetExtension on GPUQuerySet {
  external JSVoid destroy();
  external GPUQueryType get type;
  external GPUSize32 get count;
}

@JS('GPUQuerySetDescriptor')
@staticInterop
class GPUQuerySetDescriptor extends GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor();
}

extension GPUQuerySetDescriptorExtension on GPUQuerySetDescriptor {}

@JS('GPUCanvasContext')
@staticInterop
class GPUCanvasContext {
  external factory GPUCanvasContext();
}

extension GPUCanvasContextExtension on GPUCanvasContext {
  external JSAny get canvas;
  external JSVoid configure(GPUCanvasConfiguration configuration);
  external JSVoid unconfigure();
  external GPUTexture getCurrentTexture();
}

@JS('GPUCanvasConfiguration')
@staticInterop
class GPUCanvasConfiguration {
  external factory GPUCanvasConfiguration();
}

extension GPUCanvasConfigurationExtension on GPUCanvasConfiguration {}

@JS('GPUDeviceLostInfo')
@staticInterop
class GPUDeviceLostInfo {
  external factory GPUDeviceLostInfo();
}

extension GPUDeviceLostInfoExtension on GPUDeviceLostInfo {
  external JSAny get reason;
  external JSString get message;
}

@JS('GPUError')
@staticInterop
class GPUError {
  external factory GPUError();
}

extension GPUErrorExtension on GPUError {
  external JSString get message;
}

@JS('GPUValidationError')
@staticInterop
class GPUValidationError extends GPUError {
  external factory GPUValidationError();

  external factory GPUValidationError.a1(JSString message);
}

@JS('GPUOutOfMemoryError')
@staticInterop
class GPUOutOfMemoryError extends GPUError {
  external factory GPUOutOfMemoryError();

  external factory GPUOutOfMemoryError.a1(JSString message);
}

@JS('GPUInternalError')
@staticInterop
class GPUInternalError extends GPUError {
  external factory GPUInternalError();

  external factory GPUInternalError.a1(JSString message);
}

@JS('GPUUncapturedErrorEvent')
@staticInterop
class GPUUncapturedErrorEvent extends Event {
  external factory GPUUncapturedErrorEvent();

  external factory GPUUncapturedErrorEvent.a1(
    JSString type,
    GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict,
  );
}

extension GPUUncapturedErrorEventExtension on GPUUncapturedErrorEvent {
  external GPUError get error;
}

@JS('GPUUncapturedErrorEventInit')
@staticInterop
class GPUUncapturedErrorEventInit extends EventInit {
  external factory GPUUncapturedErrorEventInit();
}

extension GPUUncapturedErrorEventInitExtension on GPUUncapturedErrorEventInit {}

@JS('GPUColorDict')
@staticInterop
class GPUColorDict {
  external factory GPUColorDict();
}

extension GPUColorDictExtension on GPUColorDict {}

@JS('GPUOrigin2DDict')
@staticInterop
class GPUOrigin2DDict {
  external factory GPUOrigin2DDict();
}

extension GPUOrigin2DDictExtension on GPUOrigin2DDict {}

@JS('GPUOrigin3DDict')
@staticInterop
class GPUOrigin3DDict {
  external factory GPUOrigin3DDict();
}

extension GPUOrigin3DDictExtension on GPUOrigin3DDict {}

@JS('GPUExtent3DDict')
@staticInterop
class GPUExtent3DDict {
  external factory GPUExtent3DDict();
}

extension GPUExtent3DDictExtension on GPUExtent3DDict {}
