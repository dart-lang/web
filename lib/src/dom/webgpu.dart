// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef GPUBufferUsageFlags = int;
typedef GPUMapModeFlags = int;
typedef GPUTextureUsageFlags = int;
typedef GPUShaderStageFlags = int;
typedef GPUBindingResource = JSObject;
typedef GPUPipelineConstantValue = num;
typedef GPUColorWriteFlags = int;
typedef GPUImageCopyExternalImageSource = JSObject;
typedef GPUBufferDynamicOffset = int;
typedef GPUStencilValue = int;
typedef GPUSampleMask = int;
typedef GPUDepthBias = int;
typedef GPUSize64 = int;
typedef GPUIntegerCoordinate = int;
typedef GPUIndex32 = int;
typedef GPUSize32 = int;
typedef GPUSignedOffset32 = int;
typedef GPUSize64Out = int;
typedef GPUIntegerCoordinateOut = int;
typedef GPUSize32Out = int;
typedef GPUFlagsConstant = int;
typedef GPUColor = JSObject;
typedef GPUOrigin2D = JSObject;
typedef GPUOrigin3D = JSObject;
typedef GPUExtent3D = JSObject;
typedef GPUPowerPreference = String;
typedef GPUFeatureName = String;
typedef GPUBufferMapState = String;
typedef GPUTextureDimension = String;
typedef GPUTextureViewDimension = String;
typedef GPUTextureAspect = String;
typedef GPUTextureFormat = String;
typedef GPUAddressMode = String;
typedef GPUFilterMode = String;
typedef GPUMipmapFilterMode = String;
typedef GPUCompareFunction = String;
typedef GPUBufferBindingType = String;
typedef GPUSamplerBindingType = String;
typedef GPUTextureSampleType = String;
typedef GPUStorageTextureAccess = String;
typedef GPUCompilationMessageType = String;
typedef GPUPipelineErrorReason = String;
typedef GPUAutoLayoutMode = String;
typedef GPUPrimitiveTopology = String;
typedef GPUFrontFace = String;
typedef GPUCullMode = String;
typedef GPUBlendFactor = String;
typedef GPUBlendOperation = String;
typedef GPUStencilOperation = String;
typedef GPUIndexFormat = String;
typedef GPUVertexFormat = String;
typedef GPUVertexStepMode = String;
typedef GPULoadOp = String;
typedef GPUStoreOp = String;
typedef GPUQueryType = String;
typedef GPUCanvasAlphaMode = String;
typedef GPUDeviceLostReason = String;
typedef GPUErrorFilter = String;
extension type GPUObjectDescriptorBase._(JSObject _) implements JSObject {
  external factory GPUObjectDescriptorBase({String label});

  external set label(String value);
  external String get label;
}
extension type GPUSupportedLimits._(JSObject _) implements JSObject {
  external int get maxTextureDimension1D;
  external int get maxTextureDimension2D;
  external int get maxTextureDimension3D;
  external int get maxTextureArrayLayers;
  external int get maxBindGroups;
  external int get maxBindGroupsPlusVertexBuffers;
  external int get maxBindingsPerBindGroup;
  external int get maxDynamicUniformBuffersPerPipelineLayout;
  external int get maxDynamicStorageBuffersPerPipelineLayout;
  external int get maxSampledTexturesPerShaderStage;
  external int get maxSamplersPerShaderStage;
  external int get maxStorageBuffersPerShaderStage;
  external int get maxStorageTexturesPerShaderStage;
  external int get maxUniformBuffersPerShaderStage;
  external int get maxUniformBufferBindingSize;
  external int get maxStorageBufferBindingSize;
  external int get minUniformBufferOffsetAlignment;
  external int get minStorageBufferOffsetAlignment;
  external int get maxVertexBuffers;
  external int get maxBufferSize;
  external int get maxVertexAttributes;
  external int get maxVertexBufferArrayStride;
  external int get maxInterStageShaderComponents;
  external int get maxInterStageShaderVariables;
  external int get maxColorAttachments;
  external int get maxColorAttachmentBytesPerSample;
  external int get maxComputeWorkgroupStorageSize;
  external int get maxComputeInvocationsPerWorkgroup;
  external int get maxComputeWorkgroupSizeX;
  external int get maxComputeWorkgroupSizeY;
  external int get maxComputeWorkgroupSizeZ;
  external int get maxComputeWorkgroupsPerDimension;
}
extension type GPUSupportedFeatures._(JSObject _) implements JSObject {}
extension type WGSLLanguageFeatures._(JSObject _) implements JSObject {}
extension type GPUAdapterInfo._(JSObject _) implements JSObject {
  external String get vendor;
  external String get architecture;
  external String get device;
  external String get description;
}
extension type GPU._(JSObject _) implements JSObject {
  external JSPromise<GPUAdapter?> requestAdapter(
      [GPURequestAdapterOptions options]);
  external GPUTextureFormat getPreferredCanvasFormat();
  external WGSLLanguageFeatures get wgslLanguageFeatures;
}
extension type GPURequestAdapterOptions._(JSObject _) implements JSObject {
  external factory GPURequestAdapterOptions({
    GPUPowerPreference powerPreference,
    bool forceFallbackAdapter,
  });

  external set powerPreference(GPUPowerPreference value);
  external GPUPowerPreference get powerPreference;
  external set forceFallbackAdapter(bool value);
  external bool get forceFallbackAdapter;
}
extension type GPUAdapter._(JSObject _) implements JSObject {
  external JSPromise<GPUDevice> requestDevice([GPUDeviceDescriptor descriptor]);
  external JSPromise<GPUAdapterInfo> requestAdapterInfo(
      [JSArray<JSString> unmaskHints]);
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external bool get isFallbackAdapter;
}
extension type GPUDeviceDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUDeviceDescriptor({
    JSArray<JSString> requiredFeatures,
    JSAny requiredLimits,
    GPUQueueDescriptor defaultQueue,
  });

  external set requiredFeatures(JSArray<JSString> value);
  external JSArray<JSString> get requiredFeatures;
  external set requiredLimits(JSAny value);
  external JSAny get requiredLimits;
  external set defaultQueue(GPUQueueDescriptor value);
  external GPUQueueDescriptor get defaultQueue;
}
extension type GPUDevice._(JSObject _) implements EventTarget, JSObject {
  external void destroy();
  external GPUBuffer createBuffer(GPUBufferDescriptor descriptor);
  external GPUTexture createTexture(GPUTextureDescriptor descriptor);
  external GPUSampler createSampler([GPUSamplerDescriptor descriptor]);
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
  external JSPromise<GPUComputePipeline> createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);
  external JSPromise<GPURenderPipeline> createRenderPipelineAsync(
      GPURenderPipelineDescriptor descriptor);
  external GPUCommandEncoder createCommandEncoder(
      [GPUCommandEncoderDescriptor descriptor]);
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);
  external void pushErrorScope(GPUErrorFilter filter);
  external JSPromise<GPUError?> popErrorScope();
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external JSPromise<GPUDeviceLostInfo> get lost;
  external set onuncapturederror(EventHandler value);
  external EventHandler get onuncapturederror;
  external set label(String value);
  external String get label;
}
extension type GPUBuffer._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> mapAsync(
    GPUMapModeFlags mode, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external JSArrayBuffer getMappedRange([
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external void unmap();
  external void destroy();
  external GPUSize64Out get size;
  external GPUFlagsConstant get usage;
  external GPUBufferMapState get mapState;
  external set label(String value);
  external String get label;
}
extension type GPUBufferDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUBufferDescriptor({
    required GPUSize64 size,
    required GPUBufferUsageFlags usage,
    bool mappedAtCreation,
  });

  external set size(GPUSize64 value);
  external GPUSize64 get size;
  external set usage(GPUBufferUsageFlags value);
  external GPUBufferUsageFlags get usage;
  external set mappedAtCreation(bool value);
  external bool get mappedAtCreation;
}
@JS()
external $GPUBufferUsage get GPUBufferUsage;
@JS('GPUBufferUsage')
extension type $GPUBufferUsage._(JSObject _) implements JSObject {
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
extension type $GPUMapMode._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get READ;
  external static GPUFlagsConstant get WRITE;
}
extension type GPUTexture._(JSObject _) implements JSObject {
  external GPUTextureView createView([GPUTextureViewDescriptor descriptor]);
  external void destroy();
  external GPUIntegerCoordinateOut get width;
  external GPUIntegerCoordinateOut get height;
  external GPUIntegerCoordinateOut get depthOrArrayLayers;
  external GPUIntegerCoordinateOut get mipLevelCount;
  external GPUSize32Out get sampleCount;
  external GPUTextureDimension get dimension;
  external GPUTextureFormat get format;
  external GPUFlagsConstant get usage;
  external set label(String value);
  external String get label;
}
extension type GPUTextureDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUTextureDescriptor({
    required GPUExtent3D size,
    GPUIntegerCoordinate mipLevelCount,
    GPUSize32 sampleCount,
    GPUTextureDimension dimension,
    required GPUTextureFormat format,
    required GPUTextureUsageFlags usage,
    JSArray<JSString> viewFormats,
  });

  external set size(GPUExtent3D value);
  external GPUExtent3D get size;
  external set mipLevelCount(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get mipLevelCount;
  external set sampleCount(GPUSize32 value);
  external GPUSize32 get sampleCount;
  external set dimension(GPUTextureDimension value);
  external GPUTextureDimension get dimension;
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set usage(GPUTextureUsageFlags value);
  external GPUTextureUsageFlags get usage;
  external set viewFormats(JSArray<JSString> value);
  external JSArray<JSString> get viewFormats;
}
@JS()
external $GPUTextureUsage get GPUTextureUsage;
@JS('GPUTextureUsage')
extension type $GPUTextureUsage._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get TEXTURE_BINDING;
  external static GPUFlagsConstant get STORAGE_BINDING;
  external static GPUFlagsConstant get RENDER_ATTACHMENT;
}
extension type GPUTextureView._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUTextureViewDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUTextureViewDescriptor({
    GPUTextureFormat format,
    GPUTextureViewDimension dimension,
    GPUTextureAspect aspect,
    GPUIntegerCoordinate baseMipLevel,
    GPUIntegerCoordinate mipLevelCount,
    GPUIntegerCoordinate baseArrayLayer,
    GPUIntegerCoordinate arrayLayerCount,
  });

  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set dimension(GPUTextureViewDimension value);
  external GPUTextureViewDimension get dimension;
  external set aspect(GPUTextureAspect value);
  external GPUTextureAspect get aspect;
  external set baseMipLevel(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get baseMipLevel;
  external set mipLevelCount(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get mipLevelCount;
  external set baseArrayLayer(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get baseArrayLayer;
  external set arrayLayerCount(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get arrayLayerCount;
}
extension type GPUExternalTexture._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUExternalTextureDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUExternalTextureDescriptor({
    required JSObject source,
    PredefinedColorSpace colorSpace,
  });

  external set source(JSObject value);
  external JSObject get source;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
}
extension type GPUSampler._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUSamplerDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUSamplerDescriptor({
    GPUAddressMode addressModeU,
    GPUAddressMode addressModeV,
    GPUAddressMode addressModeW,
    GPUFilterMode magFilter,
    GPUFilterMode minFilter,
    GPUMipmapFilterMode mipmapFilter,
    num lodMinClamp,
    num lodMaxClamp,
    GPUCompareFunction compare,
    int maxAnisotropy,
  });

  external set addressModeU(GPUAddressMode value);
  external GPUAddressMode get addressModeU;
  external set addressModeV(GPUAddressMode value);
  external GPUAddressMode get addressModeV;
  external set addressModeW(GPUAddressMode value);
  external GPUAddressMode get addressModeW;
  external set magFilter(GPUFilterMode value);
  external GPUFilterMode get magFilter;
  external set minFilter(GPUFilterMode value);
  external GPUFilterMode get minFilter;
  external set mipmapFilter(GPUMipmapFilterMode value);
  external GPUMipmapFilterMode get mipmapFilter;
  external set lodMinClamp(num value);
  external num get lodMinClamp;
  external set lodMaxClamp(num value);
  external num get lodMaxClamp;
  external set compare(GPUCompareFunction value);
  external GPUCompareFunction get compare;
  external set maxAnisotropy(int value);
  external int get maxAnisotropy;
}
extension type GPUBindGroupLayout._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUBindGroupLayoutDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUBindGroupLayoutDescriptor(
      {required JSArray<GPUBindGroupLayoutEntry> entries});

  external set entries(JSArray<GPUBindGroupLayoutEntry> value);
  external JSArray<GPUBindGroupLayoutEntry> get entries;
}
extension type GPUBindGroupLayoutEntry._(JSObject _) implements JSObject {
  external factory GPUBindGroupLayoutEntry({
    required GPUIndex32 binding,
    required GPUShaderStageFlags visibility,
    GPUBufferBindingLayout buffer,
    GPUSamplerBindingLayout sampler,
    GPUTextureBindingLayout texture,
    GPUStorageTextureBindingLayout storageTexture,
    GPUExternalTextureBindingLayout externalTexture,
  });

  external set binding(GPUIndex32 value);
  external GPUIndex32 get binding;
  external set visibility(GPUShaderStageFlags value);
  external GPUShaderStageFlags get visibility;
  external set buffer(GPUBufferBindingLayout value);
  external GPUBufferBindingLayout get buffer;
  external set sampler(GPUSamplerBindingLayout value);
  external GPUSamplerBindingLayout get sampler;
  external set texture(GPUTextureBindingLayout value);
  external GPUTextureBindingLayout get texture;
  external set storageTexture(GPUStorageTextureBindingLayout value);
  external GPUStorageTextureBindingLayout get storageTexture;
  external set externalTexture(GPUExternalTextureBindingLayout value);
  external GPUExternalTextureBindingLayout get externalTexture;
}
@JS()
external $GPUShaderStage get GPUShaderStage;
@JS('GPUShaderStage')
extension type $GPUShaderStage._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get FRAGMENT;
  external static GPUFlagsConstant get COMPUTE;
}
extension type GPUBufferBindingLayout._(JSObject _) implements JSObject {
  external factory GPUBufferBindingLayout({
    GPUBufferBindingType type,
    bool hasDynamicOffset,
    GPUSize64 minBindingSize,
  });

  external set type(GPUBufferBindingType value);
  external GPUBufferBindingType get type;
  external set hasDynamicOffset(bool value);
  external bool get hasDynamicOffset;
  external set minBindingSize(GPUSize64 value);
  external GPUSize64 get minBindingSize;
}
extension type GPUSamplerBindingLayout._(JSObject _) implements JSObject {
  external factory GPUSamplerBindingLayout({GPUSamplerBindingType type});

  external set type(GPUSamplerBindingType value);
  external GPUSamplerBindingType get type;
}
extension type GPUTextureBindingLayout._(JSObject _) implements JSObject {
  external factory GPUTextureBindingLayout({
    GPUTextureSampleType sampleType,
    GPUTextureViewDimension viewDimension,
    bool multisampled,
  });

  external set sampleType(GPUTextureSampleType value);
  external GPUTextureSampleType get sampleType;
  external set viewDimension(GPUTextureViewDimension value);
  external GPUTextureViewDimension get viewDimension;
  external set multisampled(bool value);
  external bool get multisampled;
}
extension type GPUStorageTextureBindingLayout._(JSObject _)
    implements JSObject {
  external factory GPUStorageTextureBindingLayout({
    GPUStorageTextureAccess access,
    required GPUTextureFormat format,
    GPUTextureViewDimension viewDimension,
  });

  external set access(GPUStorageTextureAccess value);
  external GPUStorageTextureAccess get access;
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set viewDimension(GPUTextureViewDimension value);
  external GPUTextureViewDimension get viewDimension;
}
extension type GPUExternalTextureBindingLayout._(JSObject _)
    implements JSObject {
  external factory GPUExternalTextureBindingLayout();
}
extension type GPUBindGroup._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUBindGroupDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUBindGroupDescriptor({
    required GPUBindGroupLayout layout,
    required JSArray<GPUBindGroupEntry> entries,
  });

  external set layout(GPUBindGroupLayout value);
  external GPUBindGroupLayout get layout;
  external set entries(JSArray<GPUBindGroupEntry> value);
  external JSArray<GPUBindGroupEntry> get entries;
}
extension type GPUBindGroupEntry._(JSObject _) implements JSObject {
  external factory GPUBindGroupEntry({
    required GPUIndex32 binding,
    required GPUBindingResource resource,
  });

  external set binding(GPUIndex32 value);
  external GPUIndex32 get binding;
  external set resource(GPUBindingResource value);
  external GPUBindingResource get resource;
}
extension type GPUBufferBinding._(JSObject _) implements JSObject {
  external factory GPUBufferBinding({
    required GPUBuffer buffer,
    GPUSize64 offset,
    GPUSize64 size,
  });

  external set buffer(GPUBuffer value);
  external GPUBuffer get buffer;
  external set offset(GPUSize64 value);
  external GPUSize64 get offset;
  external set size(GPUSize64 value);
  external GPUSize64 get size;
}
extension type GPUPipelineLayout._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUPipelineLayoutDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUPipelineLayoutDescriptor(
      {required JSArray<GPUBindGroupLayout> bindGroupLayouts});

  external set bindGroupLayouts(JSArray<GPUBindGroupLayout> value);
  external JSArray<GPUBindGroupLayout> get bindGroupLayouts;
}
extension type GPUShaderModule._(JSObject _) implements JSObject {
  external JSPromise<GPUCompilationInfo> getCompilationInfo();
  external set label(String value);
  external String get label;
}
extension type GPUShaderModuleDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUShaderModuleDescriptor({
    required String code,
    JSObject sourceMap,
    JSAny hints,
  });

  external set code(String value);
  external String get code;
  external set sourceMap(JSObject value);
  external JSObject get sourceMap;
  external set hints(JSAny value);
  external JSAny get hints;
}
extension type GPUShaderModuleCompilationHint._(JSObject _)
    implements JSObject {
  external factory GPUShaderModuleCompilationHint({JSAny layout});

  external set layout(JSAny value);
  external JSAny get layout;
}
extension type GPUCompilationMessage._(JSObject _) implements JSObject {
  external String get message;
  external GPUCompilationMessageType get type;
  external int get lineNum;
  external int get linePos;
  external int get offset;
  external int get length;
}
extension type GPUCompilationInfo._(JSObject _) implements JSObject {
  external JSArray<GPUCompilationMessage> get messages;
}
extension type GPUPipelineError._(JSObject _)
    implements DOMException, JSObject {
  external factory GPUPipelineError(
    GPUPipelineErrorInit options, [
    String message,
  ]);

  external GPUPipelineErrorReason get reason;
}
extension type GPUPipelineErrorInit._(JSObject _) implements JSObject {
  external factory GPUPipelineErrorInit(
      {required GPUPipelineErrorReason reason});

  external set reason(GPUPipelineErrorReason value);
  external GPUPipelineErrorReason get reason;
}
extension type GPUPipelineDescriptorBase._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUPipelineDescriptorBase({required JSAny layout});

  external set layout(JSAny value);
  external JSAny get layout;
}
extension type GPUProgrammableStage._(JSObject _) implements JSObject {
  external factory GPUProgrammableStage({
    required GPUShaderModule module,
    required String entryPoint,
    JSAny constants,
  });

  external set module(GPUShaderModule value);
  external GPUShaderModule get module;
  external set entryPoint(String value);
  external String get entryPoint;
  external set constants(JSAny value);
  external JSAny get constants;
}
extension type GPUComputePipeline._(JSObject _) implements JSObject {
  external GPUBindGroupLayout getBindGroupLayout(int index);
  external set label(String value);
  external String get label;
}
extension type GPUComputePipelineDescriptor._(JSObject _)
    implements GPUPipelineDescriptorBase, JSObject {
  external factory GPUComputePipelineDescriptor(
      {required GPUProgrammableStage compute});

  external set compute(GPUProgrammableStage value);
  external GPUProgrammableStage get compute;
}
extension type GPURenderPipeline._(JSObject _) implements JSObject {
  external GPUBindGroupLayout getBindGroupLayout(int index);
  external set label(String value);
  external String get label;
}
extension type GPURenderPipelineDescriptor._(JSObject _)
    implements GPUPipelineDescriptorBase, JSObject {
  external factory GPURenderPipelineDescriptor({
    required GPUVertexState vertex,
    GPUPrimitiveState primitive,
    GPUDepthStencilState depthStencil,
    GPUMultisampleState multisample,
    GPUFragmentState fragment,
  });

  external set vertex(GPUVertexState value);
  external GPUVertexState get vertex;
  external set primitive(GPUPrimitiveState value);
  external GPUPrimitiveState get primitive;
  external set depthStencil(GPUDepthStencilState value);
  external GPUDepthStencilState get depthStencil;
  external set multisample(GPUMultisampleState value);
  external GPUMultisampleState get multisample;
  external set fragment(GPUFragmentState value);
  external GPUFragmentState get fragment;
}
extension type GPUPrimitiveState._(JSObject _) implements JSObject {
  external factory GPUPrimitiveState({
    GPUPrimitiveTopology topology,
    GPUIndexFormat stripIndexFormat,
    GPUFrontFace frontFace,
    GPUCullMode cullMode,
    bool unclippedDepth,
  });

  external set topology(GPUPrimitiveTopology value);
  external GPUPrimitiveTopology get topology;
  external set stripIndexFormat(GPUIndexFormat value);
  external GPUIndexFormat get stripIndexFormat;
  external set frontFace(GPUFrontFace value);
  external GPUFrontFace get frontFace;
  external set cullMode(GPUCullMode value);
  external GPUCullMode get cullMode;
  external set unclippedDepth(bool value);
  external bool get unclippedDepth;
}
extension type GPUMultisampleState._(JSObject _) implements JSObject {
  external factory GPUMultisampleState({
    GPUSize32 count,
    GPUSampleMask mask,
    bool alphaToCoverageEnabled,
  });

  external set count(GPUSize32 value);
  external GPUSize32 get count;
  external set mask(GPUSampleMask value);
  external GPUSampleMask get mask;
  external set alphaToCoverageEnabled(bool value);
  external bool get alphaToCoverageEnabled;
}
extension type GPUFragmentState._(JSObject _)
    implements GPUProgrammableStage, JSObject {
  external factory GPUFragmentState(
      {required JSArray<GPUColorTargetState?> targets});

  external set targets(JSArray<GPUColorTargetState?> value);
  external JSArray<GPUColorTargetState?> get targets;
}
extension type GPUColorTargetState._(JSObject _) implements JSObject {
  external factory GPUColorTargetState({
    required GPUTextureFormat format,
    GPUBlendState blend,
    GPUColorWriteFlags writeMask,
  });

  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set blend(GPUBlendState value);
  external GPUBlendState get blend;
  external set writeMask(GPUColorWriteFlags value);
  external GPUColorWriteFlags get writeMask;
}
extension type GPUBlendState._(JSObject _) implements JSObject {
  external factory GPUBlendState({
    required GPUBlendComponent color,
    required GPUBlendComponent alpha,
  });

  external set color(GPUBlendComponent value);
  external GPUBlendComponent get color;
  external set alpha(GPUBlendComponent value);
  external GPUBlendComponent get alpha;
}
@JS()
external $GPUColorWrite get GPUColorWrite;
@JS('GPUColorWrite')
extension type $GPUColorWrite._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get RED;
  external static GPUFlagsConstant get GREEN;
  external static GPUFlagsConstant get BLUE;
  external static GPUFlagsConstant get ALPHA;
  external static GPUFlagsConstant get ALL;
}
extension type GPUBlendComponent._(JSObject _) implements JSObject {
  external factory GPUBlendComponent({
    GPUBlendOperation operation,
    GPUBlendFactor srcFactor,
    GPUBlendFactor dstFactor,
  });

  external set operation(GPUBlendOperation value);
  external GPUBlendOperation get operation;
  external set srcFactor(GPUBlendFactor value);
  external GPUBlendFactor get srcFactor;
  external set dstFactor(GPUBlendFactor value);
  external GPUBlendFactor get dstFactor;
}
extension type GPUDepthStencilState._(JSObject _) implements JSObject {
  external factory GPUDepthStencilState({
    required GPUTextureFormat format,
    required bool depthWriteEnabled,
    required GPUCompareFunction depthCompare,
    GPUStencilFaceState stencilFront,
    GPUStencilFaceState stencilBack,
    GPUStencilValue stencilReadMask,
    GPUStencilValue stencilWriteMask,
    GPUDepthBias depthBias,
    num depthBiasSlopeScale,
    num depthBiasClamp,
  });

  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set depthWriteEnabled(bool value);
  external bool get depthWriteEnabled;
  external set depthCompare(GPUCompareFunction value);
  external GPUCompareFunction get depthCompare;
  external set stencilFront(GPUStencilFaceState value);
  external GPUStencilFaceState get stencilFront;
  external set stencilBack(GPUStencilFaceState value);
  external GPUStencilFaceState get stencilBack;
  external set stencilReadMask(GPUStencilValue value);
  external GPUStencilValue get stencilReadMask;
  external set stencilWriteMask(GPUStencilValue value);
  external GPUStencilValue get stencilWriteMask;
  external set depthBias(GPUDepthBias value);
  external GPUDepthBias get depthBias;
  external set depthBiasSlopeScale(num value);
  external num get depthBiasSlopeScale;
  external set depthBiasClamp(num value);
  external num get depthBiasClamp;
}
extension type GPUStencilFaceState._(JSObject _) implements JSObject {
  external factory GPUStencilFaceState({
    GPUCompareFunction compare,
    GPUStencilOperation failOp,
    GPUStencilOperation depthFailOp,
    GPUStencilOperation passOp,
  });

  external set compare(GPUCompareFunction value);
  external GPUCompareFunction get compare;
  external set failOp(GPUStencilOperation value);
  external GPUStencilOperation get failOp;
  external set depthFailOp(GPUStencilOperation value);
  external GPUStencilOperation get depthFailOp;
  external set passOp(GPUStencilOperation value);
  external GPUStencilOperation get passOp;
}
extension type GPUVertexState._(JSObject _)
    implements GPUProgrammableStage, JSObject {
  external factory GPUVertexState({JSArray<GPUVertexBufferLayout?> buffers});

  external set buffers(JSArray<GPUVertexBufferLayout?> value);
  external JSArray<GPUVertexBufferLayout?> get buffers;
}
extension type GPUVertexBufferLayout._(JSObject _) implements JSObject {
  external factory GPUVertexBufferLayout({
    required GPUSize64 arrayStride,
    GPUVertexStepMode stepMode,
    required JSArray<GPUVertexAttribute> attributes,
  });

  external set arrayStride(GPUSize64 value);
  external GPUSize64 get arrayStride;
  external set stepMode(GPUVertexStepMode value);
  external GPUVertexStepMode get stepMode;
  external set attributes(JSArray<GPUVertexAttribute> value);
  external JSArray<GPUVertexAttribute> get attributes;
}
extension type GPUVertexAttribute._(JSObject _) implements JSObject {
  external factory GPUVertexAttribute({
    required GPUVertexFormat format,
    required GPUSize64 offset,
    required GPUIndex32 shaderLocation,
  });

  external set format(GPUVertexFormat value);
  external GPUVertexFormat get format;
  external set offset(GPUSize64 value);
  external GPUSize64 get offset;
  external set shaderLocation(GPUIndex32 value);
  external GPUIndex32 get shaderLocation;
}
extension type GPUImageDataLayout._(JSObject _) implements JSObject {
  external factory GPUImageDataLayout({
    GPUSize64 offset,
    GPUSize32 bytesPerRow,
    GPUSize32 rowsPerImage,
  });

  external set offset(GPUSize64 value);
  external GPUSize64 get offset;
  external set bytesPerRow(GPUSize32 value);
  external GPUSize32 get bytesPerRow;
  external set rowsPerImage(GPUSize32 value);
  external GPUSize32 get rowsPerImage;
}
extension type GPUImageCopyBuffer._(JSObject _)
    implements GPUImageDataLayout, JSObject {
  external factory GPUImageCopyBuffer({required GPUBuffer buffer});

  external set buffer(GPUBuffer value);
  external GPUBuffer get buffer;
}
extension type GPUImageCopyTexture._(JSObject _) implements JSObject {
  external factory GPUImageCopyTexture({
    required GPUTexture texture,
    GPUIntegerCoordinate mipLevel,
    GPUOrigin3D origin,
    GPUTextureAspect aspect,
  });

  external set texture(GPUTexture value);
  external GPUTexture get texture;
  external set mipLevel(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get mipLevel;
  external set origin(GPUOrigin3D value);
  external GPUOrigin3D get origin;
  external set aspect(GPUTextureAspect value);
  external GPUTextureAspect get aspect;
}
extension type GPUImageCopyTextureTagged._(JSObject _)
    implements GPUImageCopyTexture, JSObject {
  external factory GPUImageCopyTextureTagged({
    PredefinedColorSpace colorSpace,
    bool premultipliedAlpha,
  });

  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set premultipliedAlpha(bool value);
  external bool get premultipliedAlpha;
}
extension type GPUImageCopyExternalImage._(JSObject _) implements JSObject {
  external factory GPUImageCopyExternalImage({
    required GPUImageCopyExternalImageSource source,
    GPUOrigin2D origin,
    bool flipY,
  });

  external set source(GPUImageCopyExternalImageSource value);
  external GPUImageCopyExternalImageSource get source;
  external set origin(GPUOrigin2D value);
  external GPUOrigin2D get origin;
  external set flipY(bool value);
  external bool get flipY;
}
extension type GPUCommandBuffer._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPUCommandBufferDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUCommandBufferDescriptor();
}
extension type GPUCommandEncoder._(JSObject _) implements JSObject {
  external GPURenderPassEncoder beginRenderPass(
      GPURenderPassDescriptor descriptor);
  external GPUComputePassEncoder beginComputePass(
      [GPUComputePassDescriptor descriptor]);
  external void copyBufferToBuffer(
    GPUBuffer source,
    GPUSize64 sourceOffset,
    GPUBuffer destination,
    GPUSize64 destinationOffset,
    GPUSize64 size,
  );
  external void copyBufferToTexture(
    GPUImageCopyBuffer source,
    GPUImageCopyTexture destination,
    GPUExtent3D copySize,
  );
  external void copyTextureToBuffer(
    GPUImageCopyTexture source,
    GPUImageCopyBuffer destination,
    GPUExtent3D copySize,
  );
  external void copyTextureToTexture(
    GPUImageCopyTexture source,
    GPUImageCopyTexture destination,
    GPUExtent3D copySize,
  );
  external void clearBuffer(
    GPUBuffer buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external void writeTimestamp(
    GPUQuerySet querySet,
    GPUSize32 queryIndex,
  );
  external void resolveQuerySet(
    GPUQuerySet querySet,
    GPUSize32 firstQuery,
    GPUSize32 queryCount,
    GPUBuffer destination,
    GPUSize64 destinationOffset,
  );
  external GPUCommandBuffer finish([GPUCommandBufferDescriptor descriptor]);
  external void pushDebugGroup(String groupLabel);
  external void popDebugGroup();
  external void insertDebugMarker(String markerLabel);
  external set label(String value);
  external String get label;
}
extension type GPUCommandEncoderDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUCommandEncoderDescriptor();
}
extension type GPUComputePassEncoder._(JSObject _) implements JSObject {
  external void setPipeline(GPUComputePipeline pipeline);
  external void dispatchWorkgroups(
    GPUSize32 workgroupCountX, [
    GPUSize32 workgroupCountY,
    GPUSize32 workgroupCountZ,
  ]);
  external void dispatchWorkgroupsIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external void end();
  external void pushDebugGroup(String groupLabel);
  external void popDebugGroup();
  external void insertDebugMarker(String markerLabel);
  external void setBindGroup(
    GPUIndex32 index,
    GPUBindGroup? bindGroup, [
    JSObject dynamicOffsetsOrDynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  ]);
  external set label(String value);
  external String get label;
}
extension type GPUComputePassTimestampWrites._(JSObject _) implements JSObject {
  external factory GPUComputePassTimestampWrites({
    required GPUQuerySet querySet,
    GPUSize32 beginningOfPassWriteIndex,
    GPUSize32 endOfPassWriteIndex,
  });

  external set querySet(GPUQuerySet value);
  external GPUQuerySet get querySet;
  external set beginningOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get beginningOfPassWriteIndex;
  external set endOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get endOfPassWriteIndex;
}
extension type GPUComputePassDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUComputePassDescriptor(
      {GPUComputePassTimestampWrites timestampWrites});

  external set timestampWrites(GPUComputePassTimestampWrites value);
  external GPUComputePassTimestampWrites get timestampWrites;
}
extension type GPURenderPassEncoder._(JSObject _) implements JSObject {
  external void setViewport(
    num x,
    num y,
    num width,
    num height,
    num minDepth,
    num maxDepth,
  );
  external void setScissorRect(
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
    GPUIntegerCoordinate width,
    GPUIntegerCoordinate height,
  );
  external void setBlendConstant(GPUColor color);
  external void setStencilReference(GPUStencilValue reference);
  external void beginOcclusionQuery(GPUSize32 queryIndex);
  external void endOcclusionQuery();
  external void executeBundles(JSArray<GPURenderBundle> bundles);
  external void end();
  external void pushDebugGroup(String groupLabel);
  external void popDebugGroup();
  external void insertDebugMarker(String markerLabel);
  external void setBindGroup(
    GPUIndex32 index,
    GPUBindGroup? bindGroup, [
    JSObject dynamicOffsetsOrDynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  ]);
  external void setPipeline(GPURenderPipeline pipeline);
  external void setIndexBuffer(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external void setVertexBuffer(
    GPUIndex32 slot,
    GPUBuffer? buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external void draw(
    GPUSize32 vertexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
    GPUSize32 firstInstance,
  ]);
  external void drawIndexed(
    GPUSize32 indexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
    GPUSize32 firstInstance,
  ]);
  external void drawIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external void drawIndexedIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external set label(String value);
  external String get label;
}
extension type GPURenderPassTimestampWrites._(JSObject _) implements JSObject {
  external factory GPURenderPassTimestampWrites({
    required GPUQuerySet querySet,
    GPUSize32 beginningOfPassWriteIndex,
    GPUSize32 endOfPassWriteIndex,
  });

  external set querySet(GPUQuerySet value);
  external GPUQuerySet get querySet;
  external set beginningOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get beginningOfPassWriteIndex;
  external set endOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get endOfPassWriteIndex;
}
extension type GPURenderPassDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPURenderPassDescriptor({
    required JSArray<GPURenderPassColorAttachment?> colorAttachments,
    GPURenderPassDepthStencilAttachment depthStencilAttachment,
    GPUQuerySet occlusionQuerySet,
    GPURenderPassTimestampWrites timestampWrites,
    GPUSize64 maxDrawCount,
  });

  external set colorAttachments(JSArray<GPURenderPassColorAttachment?> value);
  external JSArray<GPURenderPassColorAttachment?> get colorAttachments;
  external set depthStencilAttachment(
      GPURenderPassDepthStencilAttachment value);
  external GPURenderPassDepthStencilAttachment get depthStencilAttachment;
  external set occlusionQuerySet(GPUQuerySet value);
  external GPUQuerySet get occlusionQuerySet;
  external set timestampWrites(GPURenderPassTimestampWrites value);
  external GPURenderPassTimestampWrites get timestampWrites;
  external set maxDrawCount(GPUSize64 value);
  external GPUSize64 get maxDrawCount;
}
extension type GPURenderPassColorAttachment._(JSObject _) implements JSObject {
  external factory GPURenderPassColorAttachment({
    required GPUTextureView view,
    GPUTextureView resolveTarget,
    GPUColor clearValue,
    required GPULoadOp loadOp,
    required GPUStoreOp storeOp,
  });

  external set view(GPUTextureView value);
  external GPUTextureView get view;
  external set resolveTarget(GPUTextureView value);
  external GPUTextureView get resolveTarget;
  external set clearValue(GPUColor value);
  external GPUColor get clearValue;
  external set loadOp(GPULoadOp value);
  external GPULoadOp get loadOp;
  external set storeOp(GPUStoreOp value);
  external GPUStoreOp get storeOp;
}
extension type GPURenderPassDepthStencilAttachment._(JSObject _)
    implements JSObject {
  external factory GPURenderPassDepthStencilAttachment({
    required GPUTextureView view,
    num depthClearValue,
    GPULoadOp depthLoadOp,
    GPUStoreOp depthStoreOp,
    bool depthReadOnly,
    GPUStencilValue stencilClearValue,
    GPULoadOp stencilLoadOp,
    GPUStoreOp stencilStoreOp,
    bool stencilReadOnly,
  });

  external set view(GPUTextureView value);
  external GPUTextureView get view;
  external set depthClearValue(num value);
  external num get depthClearValue;
  external set depthLoadOp(GPULoadOp value);
  external GPULoadOp get depthLoadOp;
  external set depthStoreOp(GPUStoreOp value);
  external GPUStoreOp get depthStoreOp;
  external set depthReadOnly(bool value);
  external bool get depthReadOnly;
  external set stencilClearValue(GPUStencilValue value);
  external GPUStencilValue get stencilClearValue;
  external set stencilLoadOp(GPULoadOp value);
  external GPULoadOp get stencilLoadOp;
  external set stencilStoreOp(GPUStoreOp value);
  external GPUStoreOp get stencilStoreOp;
  external set stencilReadOnly(bool value);
  external bool get stencilReadOnly;
}
extension type GPURenderPassLayout._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPURenderPassLayout({
    required JSArray<JSString> colorFormats,
    GPUTextureFormat depthStencilFormat,
    GPUSize32 sampleCount,
  });

  external set colorFormats(JSArray<JSString> value);
  external JSArray<JSString> get colorFormats;
  external set depthStencilFormat(GPUTextureFormat value);
  external GPUTextureFormat get depthStencilFormat;
  external set sampleCount(GPUSize32 value);
  external GPUSize32 get sampleCount;
}
extension type GPURenderBundle._(JSObject _) implements JSObject {
  external set label(String value);
  external String get label;
}
extension type GPURenderBundleDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPURenderBundleDescriptor();
}
extension type GPURenderBundleEncoder._(JSObject _) implements JSObject {
  external GPURenderBundle finish([GPURenderBundleDescriptor descriptor]);
  external void pushDebugGroup(String groupLabel);
  external void popDebugGroup();
  external void insertDebugMarker(String markerLabel);
  external void setBindGroup(
    GPUIndex32 index,
    GPUBindGroup? bindGroup, [
    JSObject dynamicOffsetsOrDynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  ]);
  external void setPipeline(GPURenderPipeline pipeline);
  external void setIndexBuffer(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external void setVertexBuffer(
    GPUIndex32 slot,
    GPUBuffer? buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external void draw(
    GPUSize32 vertexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
    GPUSize32 firstInstance,
  ]);
  external void drawIndexed(
    GPUSize32 indexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
    GPUSize32 firstInstance,
  ]);
  external void drawIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external void drawIndexedIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external set label(String value);
  external String get label;
}
extension type GPURenderBundleEncoderDescriptor._(JSObject _)
    implements GPURenderPassLayout, JSObject {
  external factory GPURenderBundleEncoderDescriptor({
    bool depthReadOnly,
    bool stencilReadOnly,
  });

  external set depthReadOnly(bool value);
  external bool get depthReadOnly;
  external set stencilReadOnly(bool value);
  external bool get stencilReadOnly;
}
extension type GPUQueueDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUQueueDescriptor();
}
extension type GPUQueue._(JSObject _) implements JSObject {
  external void submit(JSArray<GPUCommandBuffer> commandBuffers);
  external JSPromise<JSAny?> onSubmittedWorkDone();
  external void writeBuffer(
    GPUBuffer buffer,
    GPUSize64 bufferOffset,
    AllowSharedBufferSource data, [
    GPUSize64 dataOffset,
    GPUSize64 size,
  ]);
  external void writeTexture(
    GPUImageCopyTexture destination,
    AllowSharedBufferSource data,
    GPUImageDataLayout dataLayout,
    GPUExtent3D size,
  );
  external void copyExternalImageToTexture(
    GPUImageCopyExternalImage source,
    GPUImageCopyTextureTagged destination,
    GPUExtent3D copySize,
  );
  external set label(String value);
  external String get label;
}
extension type GPUQuerySet._(JSObject _) implements JSObject {
  external void destroy();
  external GPUQueryType get type;
  external GPUSize32Out get count;
  external set label(String value);
  external String get label;
}
extension type GPUQuerySetDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUQuerySetDescriptor({
    required GPUQueryType type,
    required GPUSize32 count,
  });

  external set type(GPUQueryType value);
  external GPUQueryType get type;
  external set count(GPUSize32 value);
  external GPUSize32 get count;
}
extension type GPUCanvasContext._(JSObject _) implements JSObject {
  external void configure(GPUCanvasConfiguration configuration);
  external void unconfigure();
  external GPUTexture getCurrentTexture();
  external JSObject get canvas;
}
extension type GPUCanvasConfiguration._(JSObject _) implements JSObject {
  external factory GPUCanvasConfiguration({
    required GPUDevice device,
    required GPUTextureFormat format,
    GPUTextureUsageFlags usage,
    JSArray<JSString> viewFormats,
    PredefinedColorSpace colorSpace,
    GPUCanvasAlphaMode alphaMode,
  });

  external set device(GPUDevice value);
  external GPUDevice get device;
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set usage(GPUTextureUsageFlags value);
  external GPUTextureUsageFlags get usage;
  external set viewFormats(JSArray<JSString> value);
  external JSArray<JSString> get viewFormats;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set alphaMode(GPUCanvasAlphaMode value);
  external GPUCanvasAlphaMode get alphaMode;
}
extension type GPUDeviceLostInfo._(JSObject _) implements JSObject {
  external GPUDeviceLostReason get reason;
  external String get message;
}
extension type GPUError._(JSObject _) implements JSObject {
  external String get message;
}
extension type GPUValidationError._(JSObject _) implements GPUError, JSObject {
  external factory GPUValidationError(String message);
}
extension type GPUOutOfMemoryError._(JSObject _) implements GPUError, JSObject {
  external factory GPUOutOfMemoryError(String message);
}
extension type GPUInternalError._(JSObject _) implements GPUError, JSObject {
  external factory GPUInternalError(String message);
}
extension type GPUUncapturedErrorEvent._(JSObject _)
    implements Event, JSObject {
  external factory GPUUncapturedErrorEvent(
    String type,
    GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict,
  );

  external GPUError get error;
}
extension type GPUUncapturedErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory GPUUncapturedErrorEventInit({required GPUError error});

  external set error(GPUError value);
  external GPUError get error;
}
extension type GPUColorDict._(JSObject _) implements JSObject {
  external factory GPUColorDict({
    required num r,
    required num g,
    required num b,
    required num a,
  });

  external set r(num value);
  external num get r;
  external set g(num value);
  external num get g;
  external set b(num value);
  external num get b;
  external set a(num value);
  external num get a;
}
extension type GPUOrigin2DDict._(JSObject _) implements JSObject {
  external factory GPUOrigin2DDict({
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
  });

  external set x(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get x;
  external set y(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get y;
}
extension type GPUOrigin3DDict._(JSObject _) implements JSObject {
  external factory GPUOrigin3DDict({
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
    GPUIntegerCoordinate z,
  });

  external set x(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get x;
  external set y(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get y;
  external set z(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get z;
}
extension type GPUExtent3DDict._(JSObject _) implements JSObject {
  external factory GPUExtent3DDict({
    required GPUIntegerCoordinate width,
    GPUIntegerCoordinate height,
    GPUIntegerCoordinate depthOrArrayLayers,
  });

  external set width(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get width;
  external set height(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get height;
  external set depthOrArrayLayers(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get depthOrArrayLayers;
}
