// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

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
class GPUObjectBase {}

extension GPUObjectBaseExtension on GPUObjectBase {
  external set label(JSString value);
  external JSString get label;
}

@JS()
@staticInterop
@anonymous
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase({JSString label});
}

extension GPUObjectDescriptorBaseExtension on GPUObjectDescriptorBase {
  external set label(JSString value);
  external JSString get label;
}

@JS('GPUSupportedLimits')
@staticInterop
class GPUSupportedLimits {}

extension GPUSupportedLimitsExtension on GPUSupportedLimits {
  external JSNumber get maxTextureDimension1D;
  external JSNumber get maxTextureDimension2D;
  external JSNumber get maxTextureDimension3D;
  external JSNumber get maxTextureArrayLayers;
  external JSNumber get maxBindGroups;
  external JSNumber get maxBindGroupsPlusVertexBuffers;
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
class GPUSupportedFeatures {}

extension GPUSupportedFeaturesExtension on GPUSupportedFeatures {}

@JS('WGSLLanguageFeatures')
@staticInterop
class WGSLLanguageFeatures {}

extension WGSLLanguageFeaturesExtension on WGSLLanguageFeatures {}

@JS('GPUAdapterInfo')
@staticInterop
class GPUAdapterInfo {}

extension GPUAdapterInfoExtension on GPUAdapterInfo {
  external JSString get vendor;
  external JSString get architecture;
  external JSString get device;
  external JSString get description;
}

@JS('NavigatorGPU')
@staticInterop
class NavigatorGPU {}

extension NavigatorGPUExtension on NavigatorGPU {
  external GPU get gpu;
}

@JS('GPU')
@staticInterop
class GPU {}

extension GPUExtension on GPU {
  external JSPromise requestAdapter([GPURequestAdapterOptions options]);
  external GPUTextureFormat getPreferredCanvasFormat();
  external WGSLLanguageFeatures get wgslLanguageFeatures;
}

@JS()
@staticInterop
@anonymous
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions({
    GPUPowerPreference powerPreference,
    JSBoolean forceFallbackAdapter,
  });
}

extension GPURequestAdapterOptionsExtension on GPURequestAdapterOptions {
  external set powerPreference(GPUPowerPreference value);
  external GPUPowerPreference get powerPreference;
  external set forceFallbackAdapter(JSBoolean value);
  external JSBoolean get forceFallbackAdapter;
}

@JS('GPUAdapter')
@staticInterop
class GPUAdapter {}

extension GPUAdapterExtension on GPUAdapter {
  external JSPromise requestDevice([GPUDeviceDescriptor descriptor]);
  external JSPromise requestAdapterInfo([JSArray unmaskHints]);
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external JSBoolean get isFallbackAdapter;
}

@JS()
@staticInterop
@anonymous
class GPUDeviceDescriptor implements GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor({
    JSArray requiredFeatures,
    JSAny requiredLimits,
    GPUQueueDescriptor defaultQueue,
  });
}

extension GPUDeviceDescriptorExtension on GPUDeviceDescriptor {
  external set requiredFeatures(JSArray value);
  external JSArray get requiredFeatures;
  external set requiredLimits(JSAny value);
  external JSAny get requiredLimits;
  external set defaultQueue(GPUQueueDescriptor value);
  external GPUQueueDescriptor get defaultQueue;
}

@JS('GPUDevice')
@staticInterop
class GPUDevice implements EventTarget, GPUObjectBase {}

extension GPUDeviceExtension on GPUDevice {
  external JSVoid destroy();
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
  external JSPromise createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);
  external JSPromise createRenderPipelineAsync(
      GPURenderPipelineDescriptor descriptor);
  external GPUCommandEncoder createCommandEncoder(
      [GPUCommandEncoderDescriptor descriptor]);
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);
  external JSVoid pushErrorScope(GPUErrorFilter filter);
  external JSPromise popErrorScope();
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external JSPromise get lost;
  external set onuncapturederror(EventHandler value);
  external EventHandler get onuncapturederror;
}

@JS('GPUBuffer')
@staticInterop
class GPUBuffer implements GPUObjectBase {}

extension GPUBufferExtension on GPUBuffer {
  external JSPromise mapAsync(
    GPUMapModeFlags mode, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external JSArrayBuffer getMappedRange([
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external JSVoid unmap();
  external JSVoid destroy();
  external GPUSize64 get size;
  external GPUBufferUsageFlags get usage;
  external GPUBufferMapState get mapState;
}

@JS()
@staticInterop
@anonymous
class GPUBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor({
    required GPUSize64 size,
    required GPUBufferUsageFlags usage,
    JSBoolean mappedAtCreation,
  });
}

extension GPUBufferDescriptorExtension on GPUBufferDescriptor {
  external set size(GPUSize64 value);
  external GPUSize64 get size;
  external set usage(GPUBufferUsageFlags value);
  external GPUBufferUsageFlags get usage;
  external set mappedAtCreation(JSBoolean value);
  external JSBoolean get mappedAtCreation;
}

@JS()
external $GPUBufferUsage get GPUBufferUsage;

@JS('GPUBufferUsage')
@staticInterop
abstract class $GPUBufferUsage {
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
  external static GPUFlagsConstant get READ;
  external static GPUFlagsConstant get WRITE;
}

@JS('GPUTexture')
@staticInterop
class GPUTexture implements GPUObjectBase {}

extension GPUTextureExtension on GPUTexture {
  external GPUTextureView createView([GPUTextureViewDescriptor descriptor]);
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

@JS()
@staticInterop
@anonymous
class GPUTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUTextureDescriptor({
    required GPUExtent3D size,
    GPUIntegerCoordinate mipLevelCount,
    GPUSize32 sampleCount,
    GPUTextureDimension dimension,
    required GPUTextureFormat format,
    required GPUTextureUsageFlags usage,
    JSArray viewFormats,
  });
}

extension GPUTextureDescriptorExtension on GPUTextureDescriptor {
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
  external set viewFormats(JSArray value);
  external JSArray get viewFormats;
}

@JS()
external $GPUTextureUsage get GPUTextureUsage;

@JS('GPUTextureUsage')
@staticInterop
abstract class $GPUTextureUsage {
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get TEXTURE_BINDING;
  external static GPUFlagsConstant get STORAGE_BINDING;
  external static GPUFlagsConstant get RENDER_ATTACHMENT;
}

@JS('GPUTextureView')
@staticInterop
class GPUTextureView implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUTextureViewDescriptor implements GPUObjectDescriptorBase {
  external factory GPUTextureViewDescriptor({
    GPUTextureFormat format,
    GPUTextureViewDimension dimension,
    GPUTextureAspect aspect,
    GPUIntegerCoordinate baseMipLevel,
    GPUIntegerCoordinate mipLevelCount,
    GPUIntegerCoordinate baseArrayLayer,
    GPUIntegerCoordinate arrayLayerCount,
  });
}

extension GPUTextureViewDescriptorExtension on GPUTextureViewDescriptor {
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

@JS('GPUExternalTexture')
@staticInterop
class GPUExternalTexture implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUExternalTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor({
    required HTMLVideoElement source,
    PredefinedColorSpace colorSpace,
  });
}

extension GPUExternalTextureDescriptorExtension
    on GPUExternalTextureDescriptor {
  external set source(HTMLVideoElement value);
  external HTMLVideoElement get source;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
}

@JS('GPUSampler')
@staticInterop
class GPUSampler implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUSamplerDescriptor implements GPUObjectDescriptorBase {
  external factory GPUSamplerDescriptor({
    GPUAddressMode addressModeU,
    GPUAddressMode addressModeV,
    GPUAddressMode addressModeW,
    GPUFilterMode magFilter,
    GPUFilterMode minFilter,
    GPUMipmapFilterMode mipmapFilter,
    JSNumber lodMinClamp,
    JSNumber lodMaxClamp,
    GPUCompareFunction compare,
    JSNumber maxAnisotropy,
  });
}

extension GPUSamplerDescriptorExtension on GPUSamplerDescriptor {
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
  external set lodMinClamp(JSNumber value);
  external JSNumber get lodMinClamp;
  external set lodMaxClamp(JSNumber value);
  external JSNumber get lodMaxClamp;
  external set compare(GPUCompareFunction value);
  external GPUCompareFunction get compare;
  external set maxAnisotropy(JSNumber value);
  external JSNumber get maxAnisotropy;
}

@JS('GPUBindGroupLayout')
@staticInterop
class GPUBindGroupLayout implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUBindGroupLayoutDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBindGroupLayoutDescriptor({required JSArray entries});
}

extension GPUBindGroupLayoutDescriptorExtension
    on GPUBindGroupLayoutDescriptor {
  external set entries(JSArray value);
  external JSArray get entries;
}

@JS()
@staticInterop
@anonymous
class GPUBindGroupLayoutEntry {
  external factory GPUBindGroupLayoutEntry({
    required GPUIndex32 binding,
    required GPUShaderStageFlags visibility,
    GPUBufferBindingLayout buffer,
    GPUSamplerBindingLayout sampler,
    GPUTextureBindingLayout texture,
    GPUStorageTextureBindingLayout storageTexture,
    GPUExternalTextureBindingLayout externalTexture,
  });
}

extension GPUBindGroupLayoutEntryExtension on GPUBindGroupLayoutEntry {
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
@staticInterop
abstract class $GPUShaderStage {
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get FRAGMENT;
  external static GPUFlagsConstant get COMPUTE;
}

@JS()
@staticInterop
@anonymous
class GPUBufferBindingLayout {
  external factory GPUBufferBindingLayout({
    GPUBufferBindingType type,
    JSBoolean hasDynamicOffset,
    GPUSize64 minBindingSize,
  });
}

extension GPUBufferBindingLayoutExtension on GPUBufferBindingLayout {
  external set type(GPUBufferBindingType value);
  external GPUBufferBindingType get type;
  external set hasDynamicOffset(JSBoolean value);
  external JSBoolean get hasDynamicOffset;
  external set minBindingSize(GPUSize64 value);
  external GPUSize64 get minBindingSize;
}

@JS()
@staticInterop
@anonymous
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout({GPUSamplerBindingType type});
}

extension GPUSamplerBindingLayoutExtension on GPUSamplerBindingLayout {
  external set type(GPUSamplerBindingType value);
  external GPUSamplerBindingType get type;
}

@JS()
@staticInterop
@anonymous
class GPUTextureBindingLayout {
  external factory GPUTextureBindingLayout({
    GPUTextureSampleType sampleType,
    GPUTextureViewDimension viewDimension,
    JSBoolean multisampled,
  });
}

extension GPUTextureBindingLayoutExtension on GPUTextureBindingLayout {
  external set sampleType(GPUTextureSampleType value);
  external GPUTextureSampleType get sampleType;
  external set viewDimension(GPUTextureViewDimension value);
  external GPUTextureViewDimension get viewDimension;
  external set multisampled(JSBoolean value);
  external JSBoolean get multisampled;
}

@JS()
@staticInterop
@anonymous
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout({
    GPUStorageTextureAccess access,
    required GPUTextureFormat format,
    GPUTextureViewDimension viewDimension,
  });
}

extension GPUStorageTextureBindingLayoutExtension
    on GPUStorageTextureBindingLayout {
  external set access(GPUStorageTextureAccess value);
  external GPUStorageTextureAccess get access;
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set viewDimension(GPUTextureViewDimension value);
  external GPUTextureViewDimension get viewDimension;
}

@JS()
@staticInterop
@anonymous
class GPUExternalTextureBindingLayout {
  external factory GPUExternalTextureBindingLayout();
}

@JS('GPUBindGroup')
@staticInterop
class GPUBindGroup implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUBindGroupDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBindGroupDescriptor({
    required GPUBindGroupLayout layout,
    required JSArray entries,
  });
}

extension GPUBindGroupDescriptorExtension on GPUBindGroupDescriptor {
  external set layout(GPUBindGroupLayout value);
  external GPUBindGroupLayout get layout;
  external set entries(JSArray value);
  external JSArray get entries;
}

@JS()
@staticInterop
@anonymous
class GPUBindGroupEntry {
  external factory GPUBindGroupEntry({
    required GPUIndex32 binding,
    required GPUBindingResource resource,
  });
}

extension GPUBindGroupEntryExtension on GPUBindGroupEntry {
  external set binding(GPUIndex32 value);
  external GPUIndex32 get binding;
  external set resource(GPUBindingResource value);
  external GPUBindingResource get resource;
}

@JS()
@staticInterop
@anonymous
class GPUBufferBinding {
  external factory GPUBufferBinding({
    required GPUBuffer buffer,
    GPUSize64 offset,
    GPUSize64 size,
  });
}

extension GPUBufferBindingExtension on GPUBufferBinding {
  external set buffer(GPUBuffer value);
  external GPUBuffer get buffer;
  external set offset(GPUSize64 value);
  external GPUSize64 get offset;
  external set size(GPUSize64 value);
  external GPUSize64 get size;
}

@JS('GPUPipelineLayout')
@staticInterop
class GPUPipelineLayout implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUPipelineLayoutDescriptor implements GPUObjectDescriptorBase {
  external factory GPUPipelineLayoutDescriptor(
      {required JSArray bindGroupLayouts});
}

extension GPUPipelineLayoutDescriptorExtension on GPUPipelineLayoutDescriptor {
  external set bindGroupLayouts(JSArray value);
  external JSArray get bindGroupLayouts;
}

@JS('GPUShaderModule')
@staticInterop
class GPUShaderModule implements GPUObjectBase {}

extension GPUShaderModuleExtension on GPUShaderModule {
  external JSPromise getCompilationInfo();
}

@JS()
@staticInterop
@anonymous
class GPUShaderModuleDescriptor implements GPUObjectDescriptorBase {
  external factory GPUShaderModuleDescriptor({
    required JSString code,
    JSObject sourceMap,
    JSAny hints,
  });
}

extension GPUShaderModuleDescriptorExtension on GPUShaderModuleDescriptor {
  external set code(JSString value);
  external JSString get code;
  external set sourceMap(JSObject value);
  external JSObject get sourceMap;
  external set hints(JSAny value);
  external JSAny get hints;
}

@JS()
@staticInterop
@anonymous
class GPUShaderModuleCompilationHint {
  external factory GPUShaderModuleCompilationHint({JSAny layout});
}

extension GPUShaderModuleCompilationHintExtension
    on GPUShaderModuleCompilationHint {
  external set layout(JSAny value);
  external JSAny get layout;
}

@JS('GPUCompilationMessage')
@staticInterop
class GPUCompilationMessage {}

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
class GPUCompilationInfo {}

extension GPUCompilationInfoExtension on GPUCompilationInfo {
  external JSArray get messages;
}

@JS('GPUPipelineError')
@staticInterop
class GPUPipelineError implements DOMException {
  external factory GPUPipelineError(
    JSAny message,
    GPUPipelineErrorInit options,
  );
}

extension GPUPipelineErrorExtension on GPUPipelineError {
  external GPUPipelineErrorReason get reason;
}

@JS()
@staticInterop
@anonymous
class GPUPipelineErrorInit {
  external factory GPUPipelineErrorInit(
      {required GPUPipelineErrorReason reason});
}

extension GPUPipelineErrorInitExtension on GPUPipelineErrorInit {
  external set reason(GPUPipelineErrorReason value);
  external GPUPipelineErrorReason get reason;
}

@JS()
@staticInterop
@anonymous
class GPUPipelineDescriptorBase implements GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase({required JSAny layout});
}

extension GPUPipelineDescriptorBaseExtension on GPUPipelineDescriptorBase {
  external set layout(JSAny value);
  external JSAny get layout;
}

@JS('GPUPipelineBase')
@staticInterop
class GPUPipelineBase {}

extension GPUPipelineBaseExtension on GPUPipelineBase {
  external GPUBindGroupLayout getBindGroupLayout(JSNumber index);
}

@JS()
@staticInterop
@anonymous
class GPUProgrammableStage {
  external factory GPUProgrammableStage({
    required GPUShaderModule module,
    required JSString entryPoint,
    JSAny constants,
  });
}

extension GPUProgrammableStageExtension on GPUProgrammableStage {
  external set module(GPUShaderModule value);
  external GPUShaderModule get module;
  external set entryPoint(JSString value);
  external JSString get entryPoint;
  external set constants(JSAny value);
  external JSAny get constants;
}

@JS('GPUComputePipeline')
@staticInterop
class GPUComputePipeline implements GPUObjectBase, GPUPipelineBase {}

@JS()
@staticInterop
@anonymous
class GPUComputePipelineDescriptor implements GPUPipelineDescriptorBase {
  external factory GPUComputePipelineDescriptor(
      {required GPUProgrammableStage compute});
}

extension GPUComputePipelineDescriptorExtension
    on GPUComputePipelineDescriptor {
  external set compute(GPUProgrammableStage value);
  external GPUProgrammableStage get compute;
}

@JS('GPURenderPipeline')
@staticInterop
class GPURenderPipeline implements GPUObjectBase, GPUPipelineBase {}

@JS()
@staticInterop
@anonymous
class GPURenderPipelineDescriptor implements GPUPipelineDescriptorBase {
  external factory GPURenderPipelineDescriptor({
    required GPUVertexState vertex,
    GPUPrimitiveState primitive,
    GPUDepthStencilState depthStencil,
    GPUMultisampleState multisample,
    GPUFragmentState fragment,
  });
}

extension GPURenderPipelineDescriptorExtension on GPURenderPipelineDescriptor {
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

@JS()
@staticInterop
@anonymous
class GPUPrimitiveState {
  external factory GPUPrimitiveState({
    GPUPrimitiveTopology topology,
    GPUIndexFormat stripIndexFormat,
    GPUFrontFace frontFace,
    GPUCullMode cullMode,
    JSBoolean unclippedDepth,
  });
}

extension GPUPrimitiveStateExtension on GPUPrimitiveState {
  external set topology(GPUPrimitiveTopology value);
  external GPUPrimitiveTopology get topology;
  external set stripIndexFormat(GPUIndexFormat value);
  external GPUIndexFormat get stripIndexFormat;
  external set frontFace(GPUFrontFace value);
  external GPUFrontFace get frontFace;
  external set cullMode(GPUCullMode value);
  external GPUCullMode get cullMode;
  external set unclippedDepth(JSBoolean value);
  external JSBoolean get unclippedDepth;
}

@JS()
@staticInterop
@anonymous
class GPUMultisampleState {
  external factory GPUMultisampleState({
    GPUSize32 count,
    GPUSampleMask mask,
    JSBoolean alphaToCoverageEnabled,
  });
}

extension GPUMultisampleStateExtension on GPUMultisampleState {
  external set count(GPUSize32 value);
  external GPUSize32 get count;
  external set mask(GPUSampleMask value);
  external GPUSampleMask get mask;
  external set alphaToCoverageEnabled(JSBoolean value);
  external JSBoolean get alphaToCoverageEnabled;
}

@JS()
@staticInterop
@anonymous
class GPUFragmentState implements GPUProgrammableStage {
  external factory GPUFragmentState({required JSArray targets});
}

extension GPUFragmentStateExtension on GPUFragmentState {
  external set targets(JSArray value);
  external JSArray get targets;
}

@JS()
@staticInterop
@anonymous
class GPUColorTargetState {
  external factory GPUColorTargetState({
    required GPUTextureFormat format,
    GPUBlendState blend,
    GPUColorWriteFlags writeMask,
  });
}

extension GPUColorTargetStateExtension on GPUColorTargetState {
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set blend(GPUBlendState value);
  external GPUBlendState get blend;
  external set writeMask(GPUColorWriteFlags value);
  external GPUColorWriteFlags get writeMask;
}

@JS()
@staticInterop
@anonymous
class GPUBlendState {
  external factory GPUBlendState({
    required GPUBlendComponent color,
    required GPUBlendComponent alpha,
  });
}

extension GPUBlendStateExtension on GPUBlendState {
  external set color(GPUBlendComponent value);
  external GPUBlendComponent get color;
  external set alpha(GPUBlendComponent value);
  external GPUBlendComponent get alpha;
}

@JS()
external $GPUColorWrite get GPUColorWrite;

@JS('GPUColorWrite')
@staticInterop
abstract class $GPUColorWrite {
  external static GPUFlagsConstant get RED;
  external static GPUFlagsConstant get GREEN;
  external static GPUFlagsConstant get BLUE;
  external static GPUFlagsConstant get ALPHA;
  external static GPUFlagsConstant get ALL;
}

@JS()
@staticInterop
@anonymous
class GPUBlendComponent {
  external factory GPUBlendComponent({
    GPUBlendOperation operation,
    GPUBlendFactor srcFactor,
    GPUBlendFactor dstFactor,
  });
}

extension GPUBlendComponentExtension on GPUBlendComponent {
  external set operation(GPUBlendOperation value);
  external GPUBlendOperation get operation;
  external set srcFactor(GPUBlendFactor value);
  external GPUBlendFactor get srcFactor;
  external set dstFactor(GPUBlendFactor value);
  external GPUBlendFactor get dstFactor;
}

@JS()
@staticInterop
@anonymous
class GPUDepthStencilState {
  external factory GPUDepthStencilState({
    required GPUTextureFormat format,
    required JSBoolean depthWriteEnabled,
    required GPUCompareFunction depthCompare,
    GPUStencilFaceState stencilFront,
    GPUStencilFaceState stencilBack,
    GPUStencilValue stencilReadMask,
    GPUStencilValue stencilWriteMask,
    GPUDepthBias depthBias,
    JSNumber depthBiasSlopeScale,
    JSNumber depthBiasClamp,
  });
}

extension GPUDepthStencilStateExtension on GPUDepthStencilState {
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set depthWriteEnabled(JSBoolean value);
  external JSBoolean get depthWriteEnabled;
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
  external set depthBiasSlopeScale(JSNumber value);
  external JSNumber get depthBiasSlopeScale;
  external set depthBiasClamp(JSNumber value);
  external JSNumber get depthBiasClamp;
}

@JS()
@staticInterop
@anonymous
class GPUStencilFaceState {
  external factory GPUStencilFaceState({
    GPUCompareFunction compare,
    GPUStencilOperation failOp,
    GPUStencilOperation depthFailOp,
    GPUStencilOperation passOp,
  });
}

extension GPUStencilFaceStateExtension on GPUStencilFaceState {
  external set compare(GPUCompareFunction value);
  external GPUCompareFunction get compare;
  external set failOp(GPUStencilOperation value);
  external GPUStencilOperation get failOp;
  external set depthFailOp(GPUStencilOperation value);
  external GPUStencilOperation get depthFailOp;
  external set passOp(GPUStencilOperation value);
  external GPUStencilOperation get passOp;
}

@JS()
@staticInterop
@anonymous
class GPUVertexState implements GPUProgrammableStage {
  external factory GPUVertexState({JSArray buffers});
}

extension GPUVertexStateExtension on GPUVertexState {
  external set buffers(JSArray value);
  external JSArray get buffers;
}

@JS()
@staticInterop
@anonymous
class GPUVertexBufferLayout {
  external factory GPUVertexBufferLayout({
    required GPUSize64 arrayStride,
    GPUVertexStepMode stepMode,
    required JSArray attributes,
  });
}

extension GPUVertexBufferLayoutExtension on GPUVertexBufferLayout {
  external set arrayStride(GPUSize64 value);
  external GPUSize64 get arrayStride;
  external set stepMode(GPUVertexStepMode value);
  external GPUVertexStepMode get stepMode;
  external set attributes(JSArray value);
  external JSArray get attributes;
}

@JS()
@staticInterop
@anonymous
class GPUVertexAttribute {
  external factory GPUVertexAttribute({
    required GPUVertexFormat format,
    required GPUSize64 offset,
    required GPUIndex32 shaderLocation,
  });
}

extension GPUVertexAttributeExtension on GPUVertexAttribute {
  external set format(GPUVertexFormat value);
  external GPUVertexFormat get format;
  external set offset(GPUSize64 value);
  external GPUSize64 get offset;
  external set shaderLocation(GPUIndex32 value);
  external GPUIndex32 get shaderLocation;
}

@JS()
@staticInterop
@anonymous
class GPUImageDataLayout {
  external factory GPUImageDataLayout({
    GPUSize64 offset,
    GPUSize32 bytesPerRow,
    GPUSize32 rowsPerImage,
  });
}

extension GPUImageDataLayoutExtension on GPUImageDataLayout {
  external set offset(GPUSize64 value);
  external GPUSize64 get offset;
  external set bytesPerRow(GPUSize32 value);
  external GPUSize32 get bytesPerRow;
  external set rowsPerImage(GPUSize32 value);
  external GPUSize32 get rowsPerImage;
}

@JS()
@staticInterop
@anonymous
class GPUImageCopyBuffer implements GPUImageDataLayout {
  external factory GPUImageCopyBuffer({required GPUBuffer buffer});
}

extension GPUImageCopyBufferExtension on GPUImageCopyBuffer {
  external set buffer(GPUBuffer value);
  external GPUBuffer get buffer;
}

@JS()
@staticInterop
@anonymous
class GPUImageCopyTexture {
  external factory GPUImageCopyTexture({
    required GPUTexture texture,
    GPUIntegerCoordinate mipLevel,
    GPUOrigin3D origin,
    GPUTextureAspect aspect,
  });
}

extension GPUImageCopyTextureExtension on GPUImageCopyTexture {
  external set texture(GPUTexture value);
  external GPUTexture get texture;
  external set mipLevel(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get mipLevel;
  external set origin(GPUOrigin3D value);
  external GPUOrigin3D get origin;
  external set aspect(GPUTextureAspect value);
  external GPUTextureAspect get aspect;
}

@JS()
@staticInterop
@anonymous
class GPUImageCopyTextureTagged implements GPUImageCopyTexture {
  external factory GPUImageCopyTextureTagged({
    PredefinedColorSpace colorSpace,
    JSBoolean premultipliedAlpha,
  });
}

extension GPUImageCopyTextureTaggedExtension on GPUImageCopyTextureTagged {
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set premultipliedAlpha(JSBoolean value);
  external JSBoolean get premultipliedAlpha;
}

@JS()
@staticInterop
@anonymous
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage({
    required JSAny source,
    GPUOrigin2D origin,
    JSBoolean flipY,
  });
}

extension GPUImageCopyExternalImageExtension on GPUImageCopyExternalImage {
  external set source(JSAny value);
  external JSAny get source;
  external set origin(GPUOrigin2D value);
  external GPUOrigin2D get origin;
  external set flipY(JSBoolean value);
  external JSBoolean get flipY;
}

@JS('GPUCommandBuffer')
@staticInterop
class GPUCommandBuffer implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPUCommandBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

@JS('GPUCommandsMixin')
@staticInterop
class GPUCommandsMixin {}

@JS('GPUCommandEncoder')
@staticInterop
class GPUCommandEncoder
    implements GPUObjectBase, GPUCommandsMixin, GPUDebugCommandsMixin {}

extension GPUCommandEncoderExtension on GPUCommandEncoder {
  external GPURenderPassEncoder beginRenderPass(
      GPURenderPassDescriptor descriptor);
  external GPUComputePassEncoder beginComputePass(
      [GPUComputePassDescriptor descriptor]);
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
  external JSVoid clearBuffer(
    GPUBuffer buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
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
  external GPUCommandBuffer finish([GPUCommandBufferDescriptor descriptor]);
}

@JS()
@staticInterop
@anonymous
class GPUCommandEncoderDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandEncoderDescriptor();
}

@JS('GPUBindingCommandsMixin')
@staticInterop
class GPUBindingCommandsMixin {}

extension GPUBindingCommandsMixinExtension on GPUBindingCommandsMixin {
  external JSVoid setBindGroup(
    GPUIndex32 index,
    GPUBindGroup? bindGroup, [
    JSAny dynamicOffsetsOrDynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  ]);
}

@JS('GPUDebugCommandsMixin')
@staticInterop
class GPUDebugCommandsMixin {}

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
        GPUBindingCommandsMixin {}

extension GPUComputePassEncoderExtension on GPUComputePassEncoder {
  external JSVoid setPipeline(GPUComputePipeline pipeline);
  external JSVoid dispatchWorkgroups(
    GPUSize32 workgroupCountX, [
    GPUSize32 workgroupCountY,
    GPUSize32 workgroupCountZ,
  ]);
  external JSVoid dispatchWorkgroupsIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external JSVoid end();
}

@JS()
@staticInterop
@anonymous
class GPUComputePassTimestampWrite {
  external factory GPUComputePassTimestampWrite({
    required GPUQuerySet querySet,
    required GPUSize32 queryIndex,
    required GPUComputePassTimestampLocation location,
  });
}

extension GPUComputePassTimestampWriteExtension
    on GPUComputePassTimestampWrite {
  external set querySet(GPUQuerySet value);
  external GPUQuerySet get querySet;
  external set queryIndex(GPUSize32 value);
  external GPUSize32 get queryIndex;
  external set location(GPUComputePassTimestampLocation value);
  external GPUComputePassTimestampLocation get location;
}

@JS()
@staticInterop
@anonymous
class GPUComputePassDescriptor implements GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor(
      {GPUComputePassTimestampWrites timestampWrites});
}

extension GPUComputePassDescriptorExtension on GPUComputePassDescriptor {
  external set timestampWrites(GPUComputePassTimestampWrites value);
  external GPUComputePassTimestampWrites get timestampWrites;
}

@JS('GPURenderPassEncoder')
@staticInterop
class GPURenderPassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {}

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

@JS()
@staticInterop
@anonymous
class GPURenderPassTimestampWrite {
  external factory GPURenderPassTimestampWrite({
    required GPUQuerySet querySet,
    required GPUSize32 queryIndex,
    required GPURenderPassTimestampLocation location,
  });
}

extension GPURenderPassTimestampWriteExtension on GPURenderPassTimestampWrite {
  external set querySet(GPUQuerySet value);
  external GPUQuerySet get querySet;
  external set queryIndex(GPUSize32 value);
  external GPUSize32 get queryIndex;
  external set location(GPURenderPassTimestampLocation value);
  external GPURenderPassTimestampLocation get location;
}

@JS()
@staticInterop
@anonymous
class GPURenderPassDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor({
    required JSArray colorAttachments,
    GPURenderPassDepthStencilAttachment depthStencilAttachment,
    GPUQuerySet occlusionQuerySet,
    GPURenderPassTimestampWrites timestampWrites,
    GPUSize64 maxDrawCount,
  });
}

extension GPURenderPassDescriptorExtension on GPURenderPassDescriptor {
  external set colorAttachments(JSArray value);
  external JSArray get colorAttachments;
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

@JS()
@staticInterop
@anonymous
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment({
    required GPUTextureView view,
    GPUTextureView resolveTarget,
    GPUColor clearValue,
    required GPULoadOp loadOp,
    required GPUStoreOp storeOp,
  });
}

extension GPURenderPassColorAttachmentExtension
    on GPURenderPassColorAttachment {
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

@JS()
@staticInterop
@anonymous
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment({
    required GPUTextureView view,
    JSNumber depthClearValue,
    GPULoadOp depthLoadOp,
    GPUStoreOp depthStoreOp,
    JSBoolean depthReadOnly,
    GPUStencilValue stencilClearValue,
    GPULoadOp stencilLoadOp,
    GPUStoreOp stencilStoreOp,
    JSBoolean stencilReadOnly,
  });
}

extension GPURenderPassDepthStencilAttachmentExtension
    on GPURenderPassDepthStencilAttachment {
  external set view(GPUTextureView value);
  external GPUTextureView get view;
  external set depthClearValue(JSNumber value);
  external JSNumber get depthClearValue;
  external set depthLoadOp(GPULoadOp value);
  external GPULoadOp get depthLoadOp;
  external set depthStoreOp(GPUStoreOp value);
  external GPUStoreOp get depthStoreOp;
  external set depthReadOnly(JSBoolean value);
  external JSBoolean get depthReadOnly;
  external set stencilClearValue(GPUStencilValue value);
  external GPUStencilValue get stencilClearValue;
  external set stencilLoadOp(GPULoadOp value);
  external GPULoadOp get stencilLoadOp;
  external set stencilStoreOp(GPUStoreOp value);
  external GPUStoreOp get stencilStoreOp;
  external set stencilReadOnly(JSBoolean value);
  external JSBoolean get stencilReadOnly;
}

@JS()
@staticInterop
@anonymous
class GPURenderPassLayout implements GPUObjectDescriptorBase {
  external factory GPURenderPassLayout({
    required JSArray colorFormats,
    GPUTextureFormat depthStencilFormat,
    GPUSize32 sampleCount,
  });
}

extension GPURenderPassLayoutExtension on GPURenderPassLayout {
  external set colorFormats(JSArray value);
  external JSArray get colorFormats;
  external set depthStencilFormat(GPUTextureFormat value);
  external GPUTextureFormat get depthStencilFormat;
  external set sampleCount(GPUSize32 value);
  external GPUSize32 get sampleCount;
}

@JS('GPURenderCommandsMixin')
@staticInterop
class GPURenderCommandsMixin {}

extension GPURenderCommandsMixinExtension on GPURenderCommandsMixin {
  external JSVoid setPipeline(GPURenderPipeline pipeline);
  external JSVoid setIndexBuffer(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external JSVoid setVertexBuffer(
    GPUIndex32 slot,
    GPUBuffer? buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);
  external JSVoid draw(
    GPUSize32 vertexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
    GPUSize32 firstInstance,
  ]);
  external JSVoid drawIndexed(
    GPUSize32 indexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
    GPUSize32 firstInstance,
  ]);
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
class GPURenderBundle implements GPUObjectBase {}

@JS()
@staticInterop
@anonymous
class GPURenderBundleDescriptor implements GPUObjectDescriptorBase {
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
        GPURenderCommandsMixin {}

extension GPURenderBundleEncoderExtension on GPURenderBundleEncoder {
  external GPURenderBundle finish([GPURenderBundleDescriptor descriptor]);
}

@JS()
@staticInterop
@anonymous
class GPURenderBundleEncoderDescriptor implements GPURenderPassLayout {
  external factory GPURenderBundleEncoderDescriptor({
    JSBoolean depthReadOnly,
    JSBoolean stencilReadOnly,
  });
}

extension GPURenderBundleEncoderDescriptorExtension
    on GPURenderBundleEncoderDescriptor {
  external set depthReadOnly(JSBoolean value);
  external JSBoolean get depthReadOnly;
  external set stencilReadOnly(JSBoolean value);
  external JSBoolean get stencilReadOnly;
}

@JS()
@staticInterop
@anonymous
class GPUQueueDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQueueDescriptor();
}

@JS('GPUQueue')
@staticInterop
class GPUQueue implements GPUObjectBase {}

extension GPUQueueExtension on GPUQueue {
  external JSVoid submit(JSArray commandBuffers);
  external JSPromise onSubmittedWorkDone();
  external JSVoid writeBuffer(
    GPUBuffer buffer,
    GPUSize64 bufferOffset,
    BufferSource data, [
    GPUSize64 dataOffset,
    GPUSize64 size,
  ]);
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
class GPUQuerySet implements GPUObjectBase {}

extension GPUQuerySetExtension on GPUQuerySet {
  external JSVoid destroy();
  external GPUQueryType get type;
  external GPUSize32 get count;
}

@JS()
@staticInterop
@anonymous
class GPUQuerySetDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor({
    required GPUQueryType type,
    required GPUSize32 count,
  });
}

extension GPUQuerySetDescriptorExtension on GPUQuerySetDescriptor {
  external set type(GPUQueryType value);
  external GPUQueryType get type;
  external set count(GPUSize32 value);
  external GPUSize32 get count;
}

@JS('GPUCanvasContext')
@staticInterop
class GPUCanvasContext {}

extension GPUCanvasContextExtension on GPUCanvasContext {
  external JSVoid configure(GPUCanvasConfiguration configuration);
  external JSVoid unconfigure();
  external GPUTexture getCurrentTexture();
  external JSAny get canvas;
}

@JS()
@staticInterop
@anonymous
class GPUCanvasConfiguration {
  external factory GPUCanvasConfiguration({
    required GPUDevice device,
    required GPUTextureFormat format,
    GPUTextureUsageFlags usage,
    JSArray viewFormats,
    PredefinedColorSpace colorSpace,
    GPUCanvasAlphaMode alphaMode,
  });
}

extension GPUCanvasConfigurationExtension on GPUCanvasConfiguration {
  external set device(GPUDevice value);
  external GPUDevice get device;
  external set format(GPUTextureFormat value);
  external GPUTextureFormat get format;
  external set usage(GPUTextureUsageFlags value);
  external GPUTextureUsageFlags get usage;
  external set viewFormats(JSArray value);
  external JSArray get viewFormats;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set alphaMode(GPUCanvasAlphaMode value);
  external GPUCanvasAlphaMode get alphaMode;
}

@JS('GPUDeviceLostInfo')
@staticInterop
class GPUDeviceLostInfo {}

extension GPUDeviceLostInfoExtension on GPUDeviceLostInfo {
  external GPUDeviceLostReason get reason;
  external JSString get message;
}

@JS('GPUError')
@staticInterop
class GPUError {}

extension GPUErrorExtension on GPUError {
  external JSString get message;
}

@JS('GPUValidationError')
@staticInterop
class GPUValidationError implements GPUError {
  external factory GPUValidationError(JSString message);
}

@JS('GPUOutOfMemoryError')
@staticInterop
class GPUOutOfMemoryError implements GPUError {
  external factory GPUOutOfMemoryError(JSString message);
}

@JS('GPUInternalError')
@staticInterop
class GPUInternalError implements GPUError {
  external factory GPUInternalError(JSString message);
}

@JS('GPUUncapturedErrorEvent')
@staticInterop
class GPUUncapturedErrorEvent implements Event {
  external factory GPUUncapturedErrorEvent(
    JSString type,
    GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict,
  );
}

extension GPUUncapturedErrorEventExtension on GPUUncapturedErrorEvent {
  external GPUError get error;
}

@JS()
@staticInterop
@anonymous
class GPUUncapturedErrorEventInit implements EventInit {
  external factory GPUUncapturedErrorEventInit({required GPUError error});
}

extension GPUUncapturedErrorEventInitExtension on GPUUncapturedErrorEventInit {
  external set error(GPUError value);
  external GPUError get error;
}

@JS()
@staticInterop
@anonymous
class GPUColorDict {
  external factory GPUColorDict({
    required JSNumber r,
    required JSNumber g,
    required JSNumber b,
    required JSNumber a,
  });
}

extension GPUColorDictExtension on GPUColorDict {
  external set r(JSNumber value);
  external JSNumber get r;
  external set g(JSNumber value);
  external JSNumber get g;
  external set b(JSNumber value);
  external JSNumber get b;
  external set a(JSNumber value);
  external JSNumber get a;
}

@JS()
@staticInterop
@anonymous
class GPUOrigin2DDict {
  external factory GPUOrigin2DDict({
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
  });
}

extension GPUOrigin2DDictExtension on GPUOrigin2DDict {
  external set x(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get x;
  external set y(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get y;
}

@JS()
@staticInterop
@anonymous
class GPUOrigin3DDict {
  external factory GPUOrigin3DDict({
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
    GPUIntegerCoordinate z,
  });
}

extension GPUOrigin3DDictExtension on GPUOrigin3DDict {
  external set x(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get x;
  external set y(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get y;
  external set z(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get z;
}

@JS()
@staticInterop
@anonymous
class GPUExtent3DDict {
  external factory GPUExtent3DDict({
    required GPUIntegerCoordinate width,
    GPUIntegerCoordinate height,
    GPUIntegerCoordinate depthOrArrayLayers,
  });
}

extension GPUExtent3DDictExtension on GPUExtent3DDict {
  external set width(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get width;
  external set height(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get height;
  external set depthOrArrayLayers(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get depthOrArrayLayers;
}
