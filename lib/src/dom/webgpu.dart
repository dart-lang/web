// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
  external JSString get label;
  external set label(JSString value);
}

@JS('GPUObjectDescriptorBase')
@staticInterop
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase();
}

extension GPUObjectDescriptorBaseExtension on GPUObjectDescriptorBase {
  // TODO
}

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

extension GPUSupportedFeaturesExtension on GPUSupportedFeatures {
  // TODO
}

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
  external JSPromise requestAdapter_1(GPURequestAdapterOptions options);
  external GPUTextureFormat getPreferredCanvasFormat();
}

@JS('GPURequestAdapterOptions')
@staticInterop
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions();
}

extension GPURequestAdapterOptionsExtension on GPURequestAdapterOptions {
  // TODO
  // TODO
}

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
  external JSPromise requestDevice_1(GPUDeviceDescriptor descriptor);
  external JSPromise requestAdapterInfo();
  external JSPromise requestAdapterInfo_1(JSArray unmaskHints);
}

@JS('GPUDeviceDescriptor')
@staticInterop
class GPUDeviceDescriptor extends GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor();
}

extension GPUDeviceDescriptorExtension on GPUDeviceDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('GPUDevice')
@staticInterop
class GPUDevice extends EventTarget implements GPUObjectBase {
  external factory GPUDevice();
}

extension GPUDeviceExtension on GPUDevice {
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external JSUndefined destroy();
  external GPUBuffer createBuffer(GPUBufferDescriptor descriptor);
  external GPUTexture createTexture(GPUTextureDescriptor descriptor);
  external GPUSampler createSampler();
  external GPUSampler createSampler_1(GPUSamplerDescriptor descriptor);
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
  external GPUCommandEncoder createCommandEncoder_1(
      GPUCommandEncoderDescriptor descriptor);
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);
  external JSPromise get lost;
  external JSUndefined pushErrorScope(GPUErrorFilter filter);
  external JSPromise popErrorScope();
  external EventHandler get onuncapturederror;
  external set onuncapturederror(EventHandler value);
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
  external JSPromise mapAsync_1(GPUMapModeFlags mode, GPUSize64 offset);
  external JSPromise mapAsync_2(
      GPUMapModeFlags mode, GPUSize64 offset, GPUSize64 size);
  external JSArrayBuffer getMappedRange();
  external JSArrayBuffer getMappedRange_1(GPUSize64 offset);
  external JSArrayBuffer getMappedRange_2(GPUSize64 offset, GPUSize64 size);
  external JSUndefined unmap();
  external JSUndefined destroy();
}

@JS('GPUBufferDescriptor')
@staticInterop
class GPUBufferDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor();
}

extension GPUBufferDescriptorExtension on GPUBufferDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS()
external _GPUBufferUsage get GPUBufferUsage;

@JS('GPUBufferUsage')
@staticInterop
class _GPUBufferUsage {
  external factory _GPUBufferUsage();
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
external _GPUMapMode get GPUMapMode;

@JS('GPUMapMode')
@staticInterop
class _GPUMapMode {
  external factory _GPUMapMode();
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
  external GPUTextureView createView_1(GPUTextureViewDescriptor descriptor);
  external JSUndefined destroy();
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

extension GPUTextureDescriptorExtension on GPUTextureDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS()
external _GPUTextureUsage get GPUTextureUsage;

@JS('GPUTextureUsage')
@staticInterop
class _GPUTextureUsage {
  external factory _GPUTextureUsage();
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

extension GPUTextureViewDescriptorExtension on GPUTextureViewDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

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
    on GPUExternalTextureDescriptor {
  // TODO
  // TODO
}

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

extension GPUSamplerDescriptorExtension on GPUSamplerDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

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
    on GPUBindGroupLayoutDescriptor {
  // TODO
}

@JS('GPUBindGroupLayoutEntry')
@staticInterop
class GPUBindGroupLayoutEntry {
  external factory GPUBindGroupLayoutEntry();
}

extension GPUBindGroupLayoutEntryExtension on GPUBindGroupLayoutEntry {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS()
external _GPUShaderStage get GPUShaderStage;

@JS('GPUShaderStage')
@staticInterop
class _GPUShaderStage {
  external factory _GPUShaderStage();
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get FRAGMENT;
  external static GPUFlagsConstant get COMPUTE;
}

@JS('GPUBufferBindingLayout')
@staticInterop
class GPUBufferBindingLayout {
  external factory GPUBufferBindingLayout();
}

extension GPUBufferBindingLayoutExtension on GPUBufferBindingLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUSamplerBindingLayout')
@staticInterop
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout();
}

extension GPUSamplerBindingLayoutExtension on GPUSamplerBindingLayout {
  // TODO
}

@JS('GPUTextureBindingLayout')
@staticInterop
class GPUTextureBindingLayout {
  external factory GPUTextureBindingLayout();
}

extension GPUTextureBindingLayoutExtension on GPUTextureBindingLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUStorageTextureBindingLayout')
@staticInterop
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout();
}

extension GPUStorageTextureBindingLayoutExtension
    on GPUStorageTextureBindingLayout {
  // TODO
  // TODO
  // TODO
}

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

extension GPUBindGroupDescriptorExtension on GPUBindGroupDescriptor {
  // TODO
  // TODO
}

@JS('GPUBindGroupEntry')
@staticInterop
class GPUBindGroupEntry {
  external factory GPUBindGroupEntry();
}

extension GPUBindGroupEntryExtension on GPUBindGroupEntry {
  // TODO
  // TODO
}

@JS('GPUBufferBinding')
@staticInterop
class GPUBufferBinding {
  external factory GPUBufferBinding();
}

extension GPUBufferBindingExtension on GPUBufferBinding {
  // TODO
  // TODO
  // TODO
}

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

extension GPUPipelineLayoutDescriptorExtension on GPUPipelineLayoutDescriptor {
  // TODO
}

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

extension GPUShaderModuleDescriptorExtension on GPUShaderModuleDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('GPUShaderModuleCompilationHint')
@staticInterop
class GPUShaderModuleCompilationHint {
  external factory GPUShaderModuleCompilationHint();
}

extension GPUShaderModuleCompilationHintExtension
    on GPUShaderModuleCompilationHint {
  // TODO
}

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
      JSString message, GPUPipelineErrorInit options);
}

extension GPUPipelineErrorExtension on GPUPipelineError {
  external GPUPipelineErrorReason get reason;
}

@JS('GPUPipelineErrorInit')
@staticInterop
class GPUPipelineErrorInit {
  external factory GPUPipelineErrorInit();
}

extension GPUPipelineErrorInitExtension on GPUPipelineErrorInit {
  // TODO
}

@JS('GPUPipelineDescriptorBase')
@staticInterop
class GPUPipelineDescriptorBase extends GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase();
}

extension GPUPipelineDescriptorBaseExtension on GPUPipelineDescriptorBase {
  // TODO
}

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

extension GPUProgrammableStageExtension on GPUProgrammableStage {
  // TODO
  // TODO
  // TODO
}

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
    on GPUComputePipelineDescriptor {
  // TODO
}

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

extension GPURenderPipelineDescriptorExtension on GPURenderPipelineDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUPrimitiveState')
@staticInterop
class GPUPrimitiveState {
  external factory GPUPrimitiveState();
}

extension GPUPrimitiveStateExtension on GPUPrimitiveState {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUMultisampleState')
@staticInterop
class GPUMultisampleState {
  external factory GPUMultisampleState();
}

extension GPUMultisampleStateExtension on GPUMultisampleState {
  // TODO
  // TODO
  // TODO
}

@JS('GPUFragmentState')
@staticInterop
class GPUFragmentState extends GPUProgrammableStage {
  external factory GPUFragmentState();
}

extension GPUFragmentStateExtension on GPUFragmentState {
  // TODO
}

@JS('GPUColorTargetState')
@staticInterop
class GPUColorTargetState {
  external factory GPUColorTargetState();
}

extension GPUColorTargetStateExtension on GPUColorTargetState {
  // TODO
  // TODO
  // TODO
}

@JS('GPUBlendState')
@staticInterop
class GPUBlendState {
  external factory GPUBlendState();
}

extension GPUBlendStateExtension on GPUBlendState {
  // TODO
  // TODO
}

@JS()
external _GPUColorWrite get GPUColorWrite;

@JS('GPUColorWrite')
@staticInterop
class _GPUColorWrite {
  external factory _GPUColorWrite();
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

extension GPUBlendComponentExtension on GPUBlendComponent {
  // TODO
  // TODO
  // TODO
}

@JS('GPUDepthStencilState')
@staticInterop
class GPUDepthStencilState {
  external factory GPUDepthStencilState();
}

extension GPUDepthStencilStateExtension on GPUDepthStencilState {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUStencilFaceState')
@staticInterop
class GPUStencilFaceState {
  external factory GPUStencilFaceState();
}

extension GPUStencilFaceStateExtension on GPUStencilFaceState {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUVertexState')
@staticInterop
class GPUVertexState extends GPUProgrammableStage {
  external factory GPUVertexState();
}

extension GPUVertexStateExtension on GPUVertexState {
  // TODO
}

@JS('GPUVertexBufferLayout')
@staticInterop
class GPUVertexBufferLayout {
  external factory GPUVertexBufferLayout();
}

extension GPUVertexBufferLayoutExtension on GPUVertexBufferLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUVertexAttribute')
@staticInterop
class GPUVertexAttribute {
  external factory GPUVertexAttribute();
}

extension GPUVertexAttributeExtension on GPUVertexAttribute {
  // TODO
  // TODO
  // TODO
}

@JS('GPUImageDataLayout')
@staticInterop
class GPUImageDataLayout {
  external factory GPUImageDataLayout();
}

extension GPUImageDataLayoutExtension on GPUImageDataLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUImageCopyBuffer')
@staticInterop
class GPUImageCopyBuffer extends GPUImageDataLayout {
  external factory GPUImageCopyBuffer();
}

extension GPUImageCopyBufferExtension on GPUImageCopyBuffer {
  // TODO
}

@JS('GPUImageCopyTexture')
@staticInterop
class GPUImageCopyTexture {
  external factory GPUImageCopyTexture();
}

extension GPUImageCopyTextureExtension on GPUImageCopyTexture {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUImageCopyTextureTagged')
@staticInterop
class GPUImageCopyTextureTagged extends GPUImageCopyTexture {
  external factory GPUImageCopyTextureTagged();
}

extension GPUImageCopyTextureTaggedExtension on GPUImageCopyTextureTagged {
  // TODO
  // TODO
}

@JS('GPUImageCopyExternalImage')
@staticInterop
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage();
}

extension GPUImageCopyExternalImageExtension on GPUImageCopyExternalImage {
  // TODO
  // TODO
  // TODO
}

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
  external GPUComputePassEncoder beginComputePass_1(
      GPUComputePassDescriptor descriptor);
  external JSUndefined copyBufferToBuffer(
      GPUBuffer source,
      GPUSize64 sourceOffset,
      GPUBuffer destination,
      GPUSize64 destinationOffset,
      GPUSize64 size);
  external JSUndefined copyBufferToTexture(GPUImageCopyBuffer source,
      GPUImageCopyTexture destination, GPUExtent3D copySize);
  external JSUndefined copyTextureToBuffer(GPUImageCopyTexture source,
      GPUImageCopyBuffer destination, GPUExtent3D copySize);
  external JSUndefined copyTextureToTexture(GPUImageCopyTexture source,
      GPUImageCopyTexture destination, GPUExtent3D copySize);
  external JSUndefined clearBuffer(GPUBuffer buffer);
  external JSUndefined clearBuffer_1(GPUBuffer buffer, GPUSize64 offset);
  external JSUndefined clearBuffer_2(
      GPUBuffer buffer, GPUSize64 offset, GPUSize64 size);
  external JSUndefined writeTimestamp(
      GPUQuerySet querySet, GPUSize32 queryIndex);
  external JSUndefined resolveQuerySet(
      GPUQuerySet querySet,
      GPUSize32 firstQuery,
      GPUSize32 queryCount,
      GPUBuffer destination,
      GPUSize64 destinationOffset);
  external GPUCommandBuffer finish();
  external GPUCommandBuffer finish_1(GPUCommandBufferDescriptor descriptor);
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
  external JSUndefined setBindGroup(GPUIndex32 index, GPUBindGroup bindGroup);
  external JSUndefined setBindGroup_1(
      GPUIndex32 index, GPUBindGroup bindGroup, JSArray dynamicOffsets);
  @JS('setBindGroup')
  external JSUndefined setBindGroup1(
      GPUIndex32 index,
      GPUBindGroup bindGroup,
      JSUint32Array dynamicOffsetsData,
      GPUSize64 dynamicOffsetsDataStart,
      GPUSize32 dynamicOffsetsDataLength);
}

@JS('GPUDebugCommandsMixin')
@staticInterop
class GPUDebugCommandsMixin {
  external factory GPUDebugCommandsMixin();
}

extension GPUDebugCommandsMixinExtension on GPUDebugCommandsMixin {
  external JSUndefined pushDebugGroup(JSString groupLabel);
  external JSUndefined popDebugGroup();
  external JSUndefined insertDebugMarker(JSString markerLabel);
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
  external JSUndefined setPipeline(GPUComputePipeline pipeline);
  external JSUndefined dispatchWorkgroups(GPUSize32 workgroupCountX);
  external JSUndefined dispatchWorkgroups_1(
      GPUSize32 workgroupCountX, GPUSize32 workgroupCountY);
  external JSUndefined dispatchWorkgroups_2(GPUSize32 workgroupCountX,
      GPUSize32 workgroupCountY, GPUSize32 workgroupCountZ);
  external JSUndefined dispatchWorkgroupsIndirect(
      GPUBuffer indirectBuffer, GPUSize64 indirectOffset);
  external JSUndefined end();
}

@JS('GPUComputePassTimestampWrite')
@staticInterop
class GPUComputePassTimestampWrite {
  external factory GPUComputePassTimestampWrite();
}

extension GPUComputePassTimestampWriteExtension
    on GPUComputePassTimestampWrite {
  // TODO
  // TODO
  // TODO
}

@JS('GPUComputePassDescriptor')
@staticInterop
class GPUComputePassDescriptor extends GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor();
}

extension GPUComputePassDescriptorExtension on GPUComputePassDescriptor {
  // TODO
}

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
  external JSUndefined setViewport(JSNumber x, JSNumber y, JSNumber width,
      JSNumber height, JSNumber minDepth, JSNumber maxDepth);
  external JSUndefined setScissorRect(
      GPUIntegerCoordinate x,
      GPUIntegerCoordinate y,
      GPUIntegerCoordinate width,
      GPUIntegerCoordinate height);
  external JSUndefined setBlendConstant(GPUColor color);
  external JSUndefined setStencilReference(GPUStencilValue reference);
  external JSUndefined beginOcclusionQuery(GPUSize32 queryIndex);
  external JSUndefined endOcclusionQuery();
  external JSUndefined executeBundles(JSArray bundles);
  external JSUndefined end();
}

@JS('GPURenderPassTimestampWrite')
@staticInterop
class GPURenderPassTimestampWrite {
  external factory GPURenderPassTimestampWrite();
}

extension GPURenderPassTimestampWriteExtension on GPURenderPassTimestampWrite {
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassDescriptor')
@staticInterop
class GPURenderPassDescriptor extends GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor();
}

extension GPURenderPassDescriptorExtension on GPURenderPassDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassColorAttachment')
@staticInterop
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment();
}

extension GPURenderPassColorAttachmentExtension
    on GPURenderPassColorAttachment {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassDepthStencilAttachment')
@staticInterop
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment();
}

extension GPURenderPassDepthStencilAttachmentExtension
    on GPURenderPassDepthStencilAttachment {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassLayout')
@staticInterop
class GPURenderPassLayout extends GPUObjectDescriptorBase {
  external factory GPURenderPassLayout();
}

extension GPURenderPassLayoutExtension on GPURenderPassLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderCommandsMixin')
@staticInterop
class GPURenderCommandsMixin {
  external factory GPURenderCommandsMixin();
}

extension GPURenderCommandsMixinExtension on GPURenderCommandsMixin {
  external JSUndefined setPipeline(GPURenderPipeline pipeline);
  external JSUndefined setIndexBuffer(
      GPUBuffer buffer, GPUIndexFormat indexFormat);
  external JSUndefined setIndexBuffer_1(
      GPUBuffer buffer, GPUIndexFormat indexFormat, GPUSize64 offset);
  external JSUndefined setIndexBuffer_2(GPUBuffer buffer,
      GPUIndexFormat indexFormat, GPUSize64 offset, GPUSize64 size);
  external JSUndefined setVertexBuffer(GPUIndex32 slot, GPUBuffer buffer);
  external JSUndefined setVertexBuffer_1(
      GPUIndex32 slot, GPUBuffer buffer, GPUSize64 offset);
  external JSUndefined setVertexBuffer_2(
      GPUIndex32 slot, GPUBuffer buffer, GPUSize64 offset, GPUSize64 size);
  external JSUndefined draw(GPUSize32 vertexCount);
  external JSUndefined draw_1(GPUSize32 vertexCount, GPUSize32 instanceCount);
  external JSUndefined draw_2(
      GPUSize32 vertexCount, GPUSize32 instanceCount, GPUSize32 firstVertex);
  external JSUndefined draw_3(GPUSize32 vertexCount, GPUSize32 instanceCount,
      GPUSize32 firstVertex, GPUSize32 firstInstance);
  external JSUndefined drawIndexed(GPUSize32 indexCount);
  external JSUndefined drawIndexed_1(
      GPUSize32 indexCount, GPUSize32 instanceCount);
  external JSUndefined drawIndexed_2(
      GPUSize32 indexCount, GPUSize32 instanceCount, GPUSize32 firstIndex);
  external JSUndefined drawIndexed_3(
      GPUSize32 indexCount,
      GPUSize32 instanceCount,
      GPUSize32 firstIndex,
      GPUSignedOffset32 baseVertex);
  external JSUndefined drawIndexed_4(
      GPUSize32 indexCount,
      GPUSize32 instanceCount,
      GPUSize32 firstIndex,
      GPUSignedOffset32 baseVertex,
      GPUSize32 firstInstance);
  external JSUndefined drawIndirect(
      GPUBuffer indirectBuffer, GPUSize64 indirectOffset);
  external JSUndefined drawIndexedIndirect(
      GPUBuffer indirectBuffer, GPUSize64 indirectOffset);
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
  external GPURenderBundle finish_1(GPURenderBundleDescriptor descriptor);
}

@JS('GPURenderBundleEncoderDescriptor')
@staticInterop
class GPURenderBundleEncoderDescriptor extends GPURenderPassLayout {
  external factory GPURenderBundleEncoderDescriptor();
}

extension GPURenderBundleEncoderDescriptorExtension
    on GPURenderBundleEncoderDescriptor {
  // TODO
  // TODO
}

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
  external JSUndefined submit(JSArray commandBuffers);
  external JSPromise onSubmittedWorkDone();
  external JSUndefined writeBuffer(
      GPUBuffer buffer, GPUSize64 bufferOffset, BufferSource data);
  external JSUndefined writeBuffer_1(GPUBuffer buffer, GPUSize64 bufferOffset,
      BufferSource data, GPUSize64 dataOffset);
  external JSUndefined writeBuffer_2(GPUBuffer buffer, GPUSize64 bufferOffset,
      BufferSource data, GPUSize64 dataOffset, GPUSize64 size);
  external JSUndefined writeTexture(GPUImageCopyTexture destination,
      BufferSource data, GPUImageDataLayout dataLayout, GPUExtent3D size);
  external JSUndefined copyExternalImageToTexture(
      GPUImageCopyExternalImage source,
      GPUImageCopyTextureTagged destination,
      GPUExtent3D copySize);
}

@JS('GPUQuerySet')
@staticInterop
class GPUQuerySet implements GPUObjectBase {
  external factory GPUQuerySet();
}

extension GPUQuerySetExtension on GPUQuerySet {
  external JSUndefined destroy();
  external GPUQueryType get type;
  external GPUSize32 get count;
}

@JS('GPUQuerySetDescriptor')
@staticInterop
class GPUQuerySetDescriptor extends GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor();
}

extension GPUQuerySetDescriptorExtension on GPUQuerySetDescriptor {
  // TODO
  // TODO
}

@JS('GPUCanvasContext')
@staticInterop
class GPUCanvasContext {
  external factory GPUCanvasContext();
}

extension GPUCanvasContextExtension on GPUCanvasContext {
  external JSAny get canvas;
  external JSUndefined configure(GPUCanvasConfiguration configuration);
  external JSUndefined unconfigure();
  external GPUTexture getCurrentTexture();
}

@JS('GPUCanvasConfiguration')
@staticInterop
class GPUCanvasConfiguration {
  external factory GPUCanvasConfiguration();
}

extension GPUCanvasConfigurationExtension on GPUCanvasConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

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
  external factory GPUUncapturedErrorEvent.a1(JSString type,
      GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict);
}

extension GPUUncapturedErrorEventExtension on GPUUncapturedErrorEvent {
  external GPUError get error;
}

@JS('GPUUncapturedErrorEventInit')
@staticInterop
class GPUUncapturedErrorEventInit extends EventInit {
  external factory GPUUncapturedErrorEventInit();
}

extension GPUUncapturedErrorEventInitExtension on GPUUncapturedErrorEventInit {
  // TODO
}

@JS('GPUColorDict')
@staticInterop
class GPUColorDict {
  external factory GPUColorDict();
}

extension GPUColorDictExtension on GPUColorDict {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUOrigin2DDict')
@staticInterop
class GPUOrigin2DDict {
  external factory GPUOrigin2DDict();
}

extension GPUOrigin2DDictExtension on GPUOrigin2DDict {
  // TODO
  // TODO
}

@JS('GPUOrigin3DDict')
@staticInterop
class GPUOrigin3DDict {
  external factory GPUOrigin3DDict();
}

extension GPUOrigin3DDictExtension on GPUOrigin3DDict {
  // TODO
  // TODO
  // TODO
}

@JS('GPUExtent3DDict')
@staticInterop
class GPUExtent3DDict {
  external factory GPUExtent3DDict();
}

extension GPUExtent3DDictExtension on GPUExtent3DDict {
  // TODO
  // TODO
  // TODO
}
