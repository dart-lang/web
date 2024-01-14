// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

@JS()
@staticInterop
@anonymous
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase({String label});
}

extension GPUObjectDescriptorBaseExtension on GPUObjectDescriptorBase {
  external set label(String value);
  external String get label;
}

/// The **`GPUSupportedLimits`** interface of the [WebGPU API] describes the
/// limits supported by a [GPUAdapter].
///
/// The `GPUSupportedLimits` object for the current adapter is accessed via the
/// [GPUAdapter.limits] property.
///
/// You should note that, rather than reporting the exact limits of each GPU,
/// browsers will likely report different tier values of different limits to
/// reduce the unique information available to drive-by fingerprinting. For
/// example, the tiers of a certain limit might be 2048, 8192, and 32768. If
/// your GPU's actual limit is 16384, the browser will still report 8192.
///
/// Given that different browsers will handle this differently and the tier
/// values may change over time, it is hard to provide an accurate account of
/// what limit values to expect — thorough testing is advised.
@JS('GPUSupportedLimits')
@staticInterop
class GPUSupportedLimits {}

extension GPUSupportedLimitsExtension on GPUSupportedLimits {
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

/// The **`GPUSupportedFeatures`** interface of the [WebGPU API] is a
/// [`Set`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set#set-like_browser_apis)
/// that describes additional functionality supported by a [GPUAdapter].
///
/// The `GPUSupportedFeatures` object for the current adapter is accessed via
/// the [GPUAdapter.features] property.
///
/// You should note that not all features will be available to WebGPU in all
/// browsers that support it, even if the features are supported by the
/// underlying hardware. This could be due to constraints in the underlying
/// system, browser, or adapter. For example:
///
/// - The underlying system might not be able to guarantee exposure of a feature
///   in a way that is compatible with a certain browser.
/// - The browser vendor might not have found a secure way to implement support
///   for that feature, or might just not have gotten round to it yet.
///
/// If you are hoping to take advantage of a specific additional feature in a
/// WebGPU app, thorough testing is advised.
@JS('GPUSupportedFeatures')
@staticInterop
class GPUSupportedFeatures {}

extension GPUSupportedFeaturesExtension on GPUSupportedFeatures {}

/// The **`WGSLLanguageFeatures`** interface of the [WebGPU API] is a
/// [setlike](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set)
/// object that reports the
/// [WGSL language extensions](https://gpuweb.github.io/gpuweb/wgsl/#language-extension)
/// supported by the WebGPU implementation.
///
/// The `WGSLLanguageFeatures` object is accessed via the
/// [GPU.wgslLanguageFeatures] property.
///
/// > **Note:** Not all WGSL language extensions are available to WebGPU in all
/// > browsers that support the API. We recommend you thoroughly test any
/// > extensions you choose to use.
@JS('WGSLLanguageFeatures')
@staticInterop
class WGSLLanguageFeatures {}

extension WGSLLanguageFeaturesExtension on WGSLLanguageFeatures {}

/// The **`GPUAdapterInfo`** interface of the [WebGPU API] contains identifying
/// information about a [GPUAdapter].
///
/// A `GPUAdapterInfo` object instance is requested using the
/// [GPUAdapter.requestAdapterInfo] method.
@JS('GPUAdapterInfo')
@staticInterop
class GPUAdapterInfo {}

extension GPUAdapterInfoExtension on GPUAdapterInfo {
  external String get vendor;
  external String get architecture;
  external String get device;
  external String get description;
}

/// The **`GPU`** interface of the [WebGPU API] is the starting point for using
/// WebGPU. It can be used to return a [GPUAdapter] from which you can request
/// devices, configure features and limits, and more.
///
/// The `GPU` object for the current context is accessed via the [Navigator.gpu]
/// or [WorkerNavigator.gpu] properties.
@JS('GPU')
@staticInterop
class GPU {}

extension GPUExtension on GPU {
  /// The **`requestAdapter()`** method of the
  /// [GPU] interface returns a `Promise` that fulfills with a [GPUAdapter]
  /// object instance. From this you can request a [GPUDevice], adapter info,
  /// features, and limits.
  ///
  /// Note that the user agent chooses whether to return an adapter. If so, it
  /// chooses according to the provided options. If no options are provided, the
  /// device will provide access to the default adapter, which is usually good
  /// enough for most purposes.
  external JSPromise requestAdapter([GPURequestAdapterOptions options]);

  /// The **`getPreferredCanvasFormat()`** method of the
  /// [GPU] interface returns the optimal canvas texture format for displaying
  /// 8-bit depth, standard dynamic range content on the current system.
  ///
  /// This is commonly used to provide a [GPUCanvasContext.configure] call with
  /// the optimal `format` value for the current system. This is recommended —
  /// if you don't use the preferred format when configuring the canvas context,
  /// you may incur additional overhead, such as additional texture copies,
  /// depending on the platform.
  external GPUTextureFormat getPreferredCanvasFormat();
  external WGSLLanguageFeatures get wgslLanguageFeatures;
}

@JS()
@staticInterop
@anonymous
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions({
    GPUPowerPreference powerPreference,
    bool forceFallbackAdapter,
  });
}

extension GPURequestAdapterOptionsExtension on GPURequestAdapterOptions {
  external set powerPreference(GPUPowerPreference value);
  external GPUPowerPreference get powerPreference;
  external set forceFallbackAdapter(bool value);
  external bool get forceFallbackAdapter;
}

/// The **`GPUAdapter`** interface of the [WebGPU API] represents a GPU adapter.
/// From this you can request a [GPUDevice], adapter info, features, and limits.
///
/// A `GPUAdapter` object is requested using the [GPU.requestAdapter] method.
@JS('GPUAdapter')
@staticInterop
class GPUAdapter {}

extension GPUAdapterExtension on GPUAdapter {
  /// The **`requestDevice()`** method of the
  /// [GPUAdapter] interface returns a `Promise` that fulfills with a
  /// [GPUDevice] object, which is the primary interface for communicating with
  /// the GPU.
  external JSPromise requestDevice([GPUDeviceDescriptor descriptor]);

  /// The **`requestAdapterInfo()`** method of the
  /// [GPUAdapter] interface returns a `Promise` that fulfills with a
  /// [GPUAdapterInfo] object containing identifying information about an
  /// adapter.
  ///
  /// The intention behind this method is to allow developers to request
  /// specific details about the user's GPU so that they can preemptively apply
  /// workarounds for GPU-specific bugs, or provide different codepaths to
  /// better suit different GPU architectures. Providing such information does
  /// present a security risk — it could be used for fingerprinting — therefore
  /// the information shared is to be kept at a minimum, and different browser
  /// vendors are likely to share different information types and granularities.
  ///
  /// > **Note:** The specification includes an `unmaskHints` parameter for
  /// > `requestAdapterInfo()`, which is intended to mitigate the security risk
  /// > mentioned above. Once it is supported, developers will be able to
  /// > specify the values they really need to know, and users will be given a
  /// > permission prompt asking them if they are OK to share this information
  /// > when the method is invoked. Browser vendors are likely to share more
  /// > useful information if it is guarded by a permissions prompt, as it makes
  /// > the method a less viable target for fingerprinting.
  external JSPromise requestAdapterInfo([JSArray unmaskHints]);
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external bool get isFallbackAdapter;
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

/// The **`GPUDevice`** interface of the [WebGPU API] represents a logical GPU
/// device. This is the main interface through which the majority of WebGPU
/// functionality is accessed.
///
/// A `GPUDevice` object is requested using the [GPUAdapter.requestDevice]
/// method.
@JS('GPUDevice')
@staticInterop
class GPUDevice implements EventTarget {}

extension GPUDeviceExtension on GPUDevice {
  /// The **`destroy()`** method of the
  /// [GPUDevice] interface destroys the device, preventing further operations
  /// on it.
  ///
  /// Note that:
  ///
  /// - Any commands currently enqueued on the device's [GPUQueue] will be
  ///   executed before the device is destroyed.
  /// - Any WebGPU resources created using the device (buffers, textures, etc.)
  ///   are also destroyed.
  /// - Any mapped buffers created using the device will be unmapped.
  external void destroy();

  /// The **`createBuffer()`** method of the
  /// [GPUDevice] interface creates a [GPUBuffer] in which to store raw data to
  /// use in GPU operations.
  external GPUBuffer createBuffer(GPUBufferDescriptor descriptor);

  /// The **`createTexture()`** method of the
  /// [GPUDevice] interface creates a [GPUTexture] in which to store 1D, 2D, or
  /// 3D arrays of data, such as images, to use in GPU rendering operations.
  external GPUTexture createTexture(GPUTextureDescriptor descriptor);

  /// The **`createSampler()`** method of the
  /// [GPUDevice] interface creates a [GPUSampler], which controls how shaders
  /// transform and filter texture resource data.
  external GPUSampler createSampler([GPUSamplerDescriptor descriptor]);

  /// The **`importExternalTexture()`** method of the
  /// [GPUDevice] interface takes an [HTMLVideoElement] or a [VideoFrame] object
  /// as an input and returns a [GPUExternalTexture] wrapper object containing a
  /// snapshot of the video that can be used as a frame in GPU rendering
  /// operations.
  external GPUExternalTexture importExternalTexture(
      GPUExternalTextureDescriptor descriptor);

  /// The **`createBindGroupLayout()`** method of the
  /// [GPUDevice] interface creates a [GPUBindGroupLayout] that defines the
  /// structure and purpose of related GPU resources such as buffers that will
  /// be used in a pipeline, and is used as a template when creating
  /// [GPUBindGroup]s.
  external GPUBindGroupLayout createBindGroupLayout(
      GPUBindGroupLayoutDescriptor descriptor);

  /// The **`createPipelineLayout()`** method of the
  /// [GPUDevice] interface creates a [GPUPipelineLayout] that defines the
  /// [GPUBindGroupLayout]s used by a pipeline. [GPUBindGroup]s used with the
  /// pipeline during command encoding must have compatible
  /// [GPUBindGroupLayout]s.
  external GPUPipelineLayout createPipelineLayout(
      GPUPipelineLayoutDescriptor descriptor);

  /// The **`createBindGroup()`** method of the
  /// [GPUDevice] interface creates a [GPUBindGroup] based on a
  /// [GPUBindGroupLayout] that defines a set of resources to be bound together
  /// in a group and how those resources are used in shader stages.
  external GPUBindGroup createBindGroup(GPUBindGroupDescriptor descriptor);

  /// The **`createShaderModule()`** method of the
  /// [GPUDevice] interface creates a [GPUShaderModule] from a string of
  /// [WGSL](https://gpuweb.github.io/gpuweb/wgsl/) source code.
  external GPUShaderModule createShaderModule(
      GPUShaderModuleDescriptor descriptor);

  /// The **`createComputePipeline()`** method of the
  /// [GPUDevice] interface creates a [GPUComputePipeline] that can control the
  /// compute shader stage and be used in a [GPUComputePassEncoder].
  external GPUComputePipeline createComputePipeline(
      GPUComputePipelineDescriptor descriptor);

  /// The **`createRenderPipeline()`** method of the
  /// [GPUDevice] interface creates a [GPURenderPipeline] that can control the
  /// vertex and fragment shader stages and be used in a [GPURenderPassEncoder]
  /// or [GPURenderBundleEncoder].
  external GPURenderPipeline createRenderPipeline(
      GPURenderPipelineDescriptor descriptor);

  /// The **`createComputePipelineAsync()`** method of the
  /// [GPUDevice] interface returns a `Promise` that fulfills with a
  /// [GPUComputePipeline], which can control the compute shader stage and be
  /// used in a [GPUComputePassEncoder], once the pipeline can be used without
  /// any stalling.
  ///
  /// > **Note:** It is generally preferable to use this method over
  /// > [GPUDevice.createComputePipeline] whenever possible, as it prevents
  /// > blocking of GPU operation execution on pipeline compilation.
  external JSPromise createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);

  /// The **`createRenderPipelineAsync()`** method of the
  /// [GPUDevice] interface returns a `Promise` that fulfills with a
  /// [GPURenderPipeline], which can control the vertex and fragment shader
  /// stages and be used in a [GPURenderPassEncoder] or
  /// [GPURenderBundleEncoder], once the pipeline can be used without any
  /// stalling.
  ///
  /// > **Note:** It is generally preferable to use this method over
  /// > [GPUDevice.createRenderPipeline] whenever possible, as it prevents
  /// > blocking of GPU operation execution on pipeline compilation.
  external JSPromise createRenderPipelineAsync(
      GPURenderPipelineDescriptor descriptor);

  /// The **`createCommandEncoder()`** method of the
  /// [GPUDevice] interface creates a [GPUCommandEncoder], used to encode
  /// commands to be issued to the GPU.
  external GPUCommandEncoder createCommandEncoder(
      [GPUCommandEncoderDescriptor descriptor]);

  /// The **`createRenderBundleEncoder()`** method of the
  /// [GPUDevice] interface creates a [GPURenderBundleEncoder] that can be used
  /// to pre-record bundles of commands. These can be reused in
  /// [GPURenderPassEncoder]s via the [GPURenderPassEncoder.executeBundles]
  /// method, as many times as required.
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);

  /// The **`createQuerySet()`** method of the
  /// [GPUDevice] interface creates a [GPUQuerySet] that can be used to record
  /// the results of queries on passes, such as occlusion or timestamp queries.
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);

  /// The **`pushErrorScope()`** method of the
  /// [GPUDevice] interface pushes a new GPU error scope onto the device's error
  /// scope stack, allowing you to capture errors of a particular type.
  ///
  /// Once you are done capturing errors, you can end capture by invoking
  /// [GPUDevice.popErrorScope]. This pops the scope from the stack and returns
  /// a `Promise` that resolves to an object describing the first error captured
  /// in the scope, or `null` if no errors were captured.
  external void pushErrorScope(GPUErrorFilter filter);

  /// The **`popErrorScope()`** method of the
  /// [GPUDevice] interface pops an existing GPU error scope from the error
  /// scope stack (originally pushed using [GPUDevice.pushErrorScope]) and
  /// returns a `Promise` that resolves to an object describing the first error
  /// captured in the scope, or `null` if no error occurred.
  external JSPromise popErrorScope();
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external JSPromise get lost;
  external set onuncapturederror(EventHandler value);
  external EventHandler get onuncapturederror;
  external set label(String value);
  external String get label;
}

/// The **`GPUBuffer`** interface of the [WebGPU API] represents a block of
/// memory that can be used to store raw data to use in GPU operations.
///
/// A `GPUBuffer` object instance is created using the [GPUDevice.createBuffer]
/// method.
@JS('GPUBuffer')
@staticInterop
class GPUBuffer {}

extension GPUBufferExtension on GPUBuffer {
  /// The **`mapAsync()`** method of the
  /// [GPUBuffer] interface maps the specified range of the `GPUBuffer`. It
  /// returns a `Promise` that resolves when the `GPUBuffer`'s content is ready
  /// to be accessed. While the `GPUBuffer` is mapped it cannot be used in any
  /// GPU commands.
  ///
  /// Once the buffer is successfully mapped (which can be checked via
  /// [GPUBuffer.mapState]), calls to [GPUBuffer.getMappedRange] will return an
  /// `ArrayBuffer` containing the `GPUBuffer`'s current values, to be read and
  /// updated by JavaScript as required.
  ///
  /// When you have finished working with the `GPUBuffer` values, call
  /// [GPUBuffer.unmap] to unmap it, making it accessible to the GPU again.
  external JSPromise mapAsync(
    GPUMapModeFlags mode, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`getMappedRange()`** method of the
  /// [GPUBuffer] interface returns an `ArrayBuffer` containing the mapped
  /// contents of the `GPUBuffer` in the specified range.
  ///
  /// This can only happen once the `GPUBuffer` has been successfully mapped
  /// with [GPUBuffer.mapAsync] (this can be checked via [GPUBuffer.mapState]).
  /// While the `GPUBuffer` is mapped it cannot be used in any GPU commands.
  ///
  /// When you have finished working with the `GPUBuffer` values, call
  /// [GPUBuffer.unmap] to unmap it, making it accessible to the GPU again.
  external JSArrayBuffer getMappedRange([
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`unmap()`** method of the
  /// [GPUBuffer] interface unmaps the mapped range of the `GPUBuffer`, making
  /// its contents available for use by the GPU again after it has previously
  /// been mapped with [GPUBuffer.mapAsync] (the GPU cannot access a mapped
  /// `GPUBuffer`).
  ///
  /// When `unmap()` is called, any `ArrayBuffer`s created via
  /// [GPUBuffer.getMappedRange] are detached.
  external void unmap();

  /// The **`destroy()`** method of the
  /// [GPUBuffer] interface destroys the `GPUBuffer`.
  external void destroy();
  external GPUSize64Out get size;
  external GPUFlagsConstant get usage;
  external GPUBufferMapState get mapState;
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPUBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor({
    required GPUSize64 size,
    required GPUBufferUsageFlags usage,
    bool mappedAtCreation,
  });
}

extension GPUBufferDescriptorExtension on GPUBufferDescriptor {
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

/// The **`GPUTexture`** interface of the [WebGPU API] represents a container
/// used to store 1D, 2D, or 3D arrays of data, such as images, to use in GPU
/// rendering operations.
///
/// A `GPUTexture` object instance is created using the
/// [GPUDevice.createTexture] method.
@JS('GPUTexture')
@staticInterop
class GPUTexture {}

extension GPUTextureExtension on GPUTexture {
  /// The **`createView()`** method of the
  /// [GPUTexture] interface creates a [GPUTextureView] representing a specific
  /// view of the `GPUTexture`.
  external GPUTextureView createView([GPUTextureViewDescriptor descriptor]);

  /// The **`destroy()`** method of the
  /// [GPUTexture] interface destroys the `GPUTexture`.
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

/// The **`GPUTextureView`** interface of the [WebGPU API] represents a view
/// into a subset of the texture resources defined by a particular [GPUTexture].
///
/// A `GPUTextureView` object instance is created using the
/// [GPUTexture.createView] method.
@JS('GPUTextureView')
@staticInterop
class GPUTextureView {}

extension GPUTextureViewExtension on GPUTextureView {
  external set label(String value);
  external String get label;
}

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

/// The **`GPUExternalTexture`** interface of the [WebGPU API] represents a
/// wrapper object containing an [HTMLVideoElement] snapshot that can be used as
/// a texture in GPU rendering operations.
///
/// A `GPUExternalTexture` object instance is created using
/// [GPUDevice.importExternalTexture].
@JS('GPUExternalTexture')
@staticInterop
class GPUExternalTexture {}

extension GPUExternalTextureExtension on GPUExternalTexture {
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPUExternalTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor({
    required JSObject source,
    PredefinedColorSpace colorSpace,
  });
}

extension GPUExternalTextureDescriptorExtension
    on GPUExternalTextureDescriptor {
  external set source(JSObject value);
  external JSObject get source;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
}

/// The **`GPUSampler`** interface of the [WebGPU API] represents an object that
/// can control how shaders transform and filter texture resource data.
///
/// A `GPUSampler` object instance is created using the
/// [GPUDevice.createSampler] method.
@JS('GPUSampler')
@staticInterop
class GPUSampler {}

extension GPUSamplerExtension on GPUSampler {
  external set label(String value);
  external String get label;
}

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
    num lodMinClamp,
    num lodMaxClamp,
    GPUCompareFunction compare,
    int maxAnisotropy,
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
  external set lodMinClamp(num value);
  external num get lodMinClamp;
  external set lodMaxClamp(num value);
  external num get lodMaxClamp;
  external set compare(GPUCompareFunction value);
  external GPUCompareFunction get compare;
  external set maxAnisotropy(int value);
  external int get maxAnisotropy;
}

/// The **`GPUBindGroupLayout`** interface of the [WebGPU API] defines the
/// structure and purpose of related GPU resources such as buffers that will be
/// used in a pipeline, and is used as a template when creating [GPUBindGroup]s.
///
/// A `GPUBindGroupLayout` object instance is created using the
/// [GPUDevice.createBindGroupLayout] method.
@JS('GPUBindGroupLayout')
@staticInterop
class GPUBindGroupLayout {}

extension GPUBindGroupLayoutExtension on GPUBindGroupLayout {
  external set label(String value);
  external String get label;
}

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
    bool hasDynamicOffset,
    GPUSize64 minBindingSize,
  });
}

extension GPUBufferBindingLayoutExtension on GPUBufferBindingLayout {
  external set type(GPUBufferBindingType value);
  external GPUBufferBindingType get type;
  external set hasDynamicOffset(bool value);
  external bool get hasDynamicOffset;
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
    bool multisampled,
  });
}

extension GPUTextureBindingLayoutExtension on GPUTextureBindingLayout {
  external set sampleType(GPUTextureSampleType value);
  external GPUTextureSampleType get sampleType;
  external set viewDimension(GPUTextureViewDimension value);
  external GPUTextureViewDimension get viewDimension;
  external set multisampled(bool value);
  external bool get multisampled;
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

/// The **`GPUBindGroup`** interface of the [WebGPU API] is based on a
/// [GPUBindGroupLayout] and defines a set of resources to be bound together in
/// a group and how those resources are used in shader stages.
///
/// A `GPUBindGroup` object instance is created using the
/// [GPUDevice.createBindGroup] method.
@JS('GPUBindGroup')
@staticInterop
class GPUBindGroup {}

extension GPUBindGroupExtension on GPUBindGroup {
  external set label(String value);
  external String get label;
}

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

/// The **`GPUPipelineLayout`** interface of the [WebGPU API] defines the
/// [GPUBindGroupLayout]s used by a pipeline. [GPUBindGroup]s used with the
/// pipeline during command encoding must have compatible [GPUBindGroupLayout]s.
///
/// A `GPUPipelineLayout` object instance is created using the
/// [GPUDevice.createPipelineLayout] method.
@JS('GPUPipelineLayout')
@staticInterop
class GPUPipelineLayout {}

extension GPUPipelineLayoutExtension on GPUPipelineLayout {
  external set label(String value);
  external String get label;
}

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

/// The **`GPUShaderModule`** interface of the [WebGPU API] represents an
/// internal shader module object, a container for
/// [WGSL](https://gpuweb.github.io/gpuweb/wgsl/) shader code that can be
/// submitted to the GPU for execution by a pipeline.
///
/// A `GPUShaderModule` object instance is created using
/// [GPUDevice.createShaderModule].
@JS('GPUShaderModule')
@staticInterop
class GPUShaderModule {}

extension GPUShaderModuleExtension on GPUShaderModule {
  /// The **`getCompilationInfo()`** method of the
  /// [GPUShaderModule] interface returns a `Promise` that fulfills with a
  /// [GPUCompilationInfo] object containing messages generated during the
  /// `GPUShaderModule`'s compilation.
  external JSPromise getCompilationInfo();
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPUShaderModuleDescriptor implements GPUObjectDescriptorBase {
  external factory GPUShaderModuleDescriptor({
    required String code,
    JSObject sourceMap,
    JSAny hints,
  });
}

extension GPUShaderModuleDescriptorExtension on GPUShaderModuleDescriptor {
  external set code(String value);
  external String get code;
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

/// The **`GPUCompilationMessage`** interface of the [WebGPU API] represents a
/// single informational, warning, or error message generated by the GPU shader
/// module compiler.
///
/// An array of `GPUCompilationMessage` objects is available in the `messages`
/// property of the [GPUCompilationInfo] object accessed via
/// [GPUShaderModule.getCompilationInfo].
@JS('GPUCompilationMessage')
@staticInterop
class GPUCompilationMessage {}

extension GPUCompilationMessageExtension on GPUCompilationMessage {
  external String get message;
  external GPUCompilationMessageType get type;
  external int get lineNum;
  external int get linePos;
  external int get offset;
  external int get length;
}

/// The **`GPUCompilationInfo`** interface of the [WebGPU API] represents an
/// array of [GPUCompilationMessage] objects generated by the GPU shader module
/// compiler to help diagnose problems with shader code.
///
/// `GPUCompilationInfo` is accessed via [GPUShaderModule.getCompilationInfo].
@JS('GPUCompilationInfo')
@staticInterop
class GPUCompilationInfo {}

extension GPUCompilationInfoExtension on GPUCompilationInfo {
  external JSArray get messages;
}

/// The **`GPUPipelineError`** interface of the [WebGPU API] describes a
/// pipeline failure. This is the value received when a `Promise` returned by a
/// [GPUDevice.createComputePipelineAsync] or
/// [GPUDevice.createRenderPipelineAsync] call rejects.
@JS('GPUPipelineError')
@staticInterop
class GPUPipelineError implements DOMException {
  external factory GPUPipelineError(
    GPUPipelineErrorInit options, [
    String message,
  ]);
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

@JS()
@staticInterop
@anonymous
class GPUProgrammableStage {
  external factory GPUProgrammableStage({
    required GPUShaderModule module,
    required String entryPoint,
    JSAny constants,
  });
}

extension GPUProgrammableStageExtension on GPUProgrammableStage {
  external set module(GPUShaderModule value);
  external GPUShaderModule get module;
  external set entryPoint(String value);
  external String get entryPoint;
  external set constants(JSAny value);
  external JSAny get constants;
}

/// The **`GPUComputePipeline`** interface of the [WebGPU API] represents a
/// pipeline that controls the compute shader stage and can be used in a
/// [GPUComputePassEncoder].
///
/// A `GPUComputePipeline` object instance can be created using the
/// [GPUDevice.createComputePipeline] or [GPUDevice.createComputePipelineAsync]
/// methods.
@JS('GPUComputePipeline')
@staticInterop
class GPUComputePipeline {}

extension GPUComputePipelineExtension on GPUComputePipeline {
  /// The **`getBindGroupLayout()`** method of the
  /// [GPUComputePipeline] interface returns the pipeline's [GPUBindGroupLayout]
  /// object with the given index (i.e. included in the originating
  /// [GPUDevice.createComputePipeline] or
  /// [GPUDevice.createComputePipelineAsync] call's pipeline layout).
  ///
  /// If the [GPUComputePipeline] was created with `layout: "auto"`, this method
  /// is the only way to retrieve the [GPUBindGroupLayout]s generated by the
  /// pipeline.
  external GPUBindGroupLayout getBindGroupLayout(int index);
  external set label(String value);
  external String get label;
}

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

/// The **`GPURenderPipeline`** interface of the [WebGPU API] represents a
/// pipeline that controls the vertex and fragment shader stages and can be used
/// in a [GPURenderPassEncoder] or [GPURenderBundleEncoder].
///
/// A `GPURenderPipeline` object instance can be created using the
/// [GPUDevice.createRenderPipeline] or [GPUDevice.createRenderPipelineAsync]
/// methods.
@JS('GPURenderPipeline')
@staticInterop
class GPURenderPipeline {}

extension GPURenderPipelineExtension on GPURenderPipeline {
  /// The **`getBindGroupLayout()`** method of the
  /// [GPURenderPipeline] interface returns the pipeline's [GPUBindGroupLayout]
  /// object with the given index (i.e. included in the originating
  /// [GPUDevice.createRenderPipeline] or [GPUDevice.createRenderPipelineAsync]
  /// call's pipeline layout).
  ///
  /// If the [GPURenderPipeline] was created with `layout: "auto"`, this method
  /// is the only way to retrieve the [GPUBindGroupLayout]s generated by the
  /// pipeline.
  external GPUBindGroupLayout getBindGroupLayout(int index);
  external set label(String value);
  external String get label;
}

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
    bool unclippedDepth,
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
  external set unclippedDepth(bool value);
  external bool get unclippedDepth;
}

@JS()
@staticInterop
@anonymous
class GPUMultisampleState {
  external factory GPUMultisampleState({
    GPUSize32 count,
    GPUSampleMask mask,
    bool alphaToCoverageEnabled,
  });
}

extension GPUMultisampleStateExtension on GPUMultisampleState {
  external set count(GPUSize32 value);
  external GPUSize32 get count;
  external set mask(GPUSampleMask value);
  external GPUSampleMask get mask;
  external set alphaToCoverageEnabled(bool value);
  external bool get alphaToCoverageEnabled;
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
}

extension GPUDepthStencilStateExtension on GPUDepthStencilState {
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
    bool premultipliedAlpha,
  });
}

extension GPUImageCopyTextureTaggedExtension on GPUImageCopyTextureTagged {
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set premultipliedAlpha(bool value);
  external bool get premultipliedAlpha;
}

@JS()
@staticInterop
@anonymous
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage({
    required GPUImageCopyExternalImageSource source,
    GPUOrigin2D origin,
    bool flipY,
  });
}

extension GPUImageCopyExternalImageExtension on GPUImageCopyExternalImage {
  external set source(GPUImageCopyExternalImageSource value);
  external GPUImageCopyExternalImageSource get source;
  external set origin(GPUOrigin2D value);
  external GPUOrigin2D get origin;
  external set flipY(bool value);
  external bool get flipY;
}

/// The **`GPUCommandBuffer`** interface of the [WebGPU API] represents a
/// pre-recorded list of GPU commands that can be submitted to a [GPUQueue] for
/// execution.
///
/// A `GPUCommandBuffer` is created via the [GPUCommandEncoder.finish] method;
/// the GPU commands recorded within are submitted for execution by passing the
/// `GPUCommandBuffer` into the parameter of a [GPUQueue.submit] call.
///
/// > **Note:** Once a `GPUCommandBuffer` object has been submitted, it cannot
/// > be used again.
@JS('GPUCommandBuffer')
@staticInterop
class GPUCommandBuffer {}

extension GPUCommandBufferExtension on GPUCommandBuffer {
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPUCommandBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

/// The **`GPUCommandEncoder`** interface of the [WebGPU API] represents a
/// command encoder, used to encode commands to be issued to the GPU.
///
/// A `GPUCommandEncoder` object instance is created via the
/// [GPUDevice.createCommandEncoder] property.
@JS('GPUCommandEncoder')
@staticInterop
class GPUCommandEncoder {}

extension GPUCommandEncoderExtension on GPUCommandEncoder {
  /// The **`beginRenderPass()`** method of the
  /// [GPUCommandEncoder] interface starts encoding a render pass, returning a
  /// [GPURenderPassEncoder] that can be used to control rendering.
  external GPURenderPassEncoder beginRenderPass(
      GPURenderPassDescriptor descriptor);

  /// The **`beginComputePass()`** method of the
  /// [GPUCommandEncoder] interface starts encoding a compute pass, returning a
  /// [GPUComputePassEncoder] that can be used to control computation.
  external GPUComputePassEncoder beginComputePass(
      [GPUComputePassDescriptor descriptor]);

  /// The **`copyBufferToBuffer()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from one
  /// [GPUBuffer] to another.
  external void copyBufferToBuffer(
    GPUBuffer source,
    GPUSize64 sourceOffset,
    GPUBuffer destination,
    GPUSize64 destinationOffset,
    GPUSize64 size,
  );

  /// The **`copyBufferToTexture()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from a
  /// [GPUBuffer] to a [GPUTexture].
  external void copyBufferToTexture(
    GPUImageCopyBuffer source,
    GPUImageCopyTexture destination,
    GPUExtent3D copySize,
  );

  /// The **`copyTextureToBuffer()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from a
  /// [GPUTexture] to a [GPUBuffer].
  external void copyTextureToBuffer(
    GPUImageCopyTexture source,
    GPUImageCopyBuffer destination,
    GPUExtent3D copySize,
  );

  /// The **`copyTextureToTexture()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from one
  /// [GPUTexture] to another.
  external void copyTextureToTexture(
    GPUImageCopyTexture source,
    GPUImageCopyTexture destination,
    GPUExtent3D copySize,
  );

  /// The **`clearBuffer()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that fills a region of a
  /// [GPUBuffer] with zeroes.
  external void clearBuffer(
    GPUBuffer buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`writeTimestamp()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that writes a timestamp
  /// into a [GPUQuerySet] once the previous commands recorded into the same
  /// queued [GPUCommandBuffer] have been executed by the GPU.
  ///
  /// > **Note:** To use timestamp queries, the `timestamp-query`
  /// > [GPUSupportedFeatures] must be enabled in the [GPUDevice].
  external void writeTimestamp(
    GPUQuerySet querySet,
    GPUSize32 queryIndex,
  );

  /// The **`resolveQuerySet()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that resolves a
  /// [GPUQuerySet], copying the results into a specified [GPUBuffer].
  external void resolveQuerySet(
    GPUQuerySet querySet,
    GPUSize32 firstQuery,
    GPUSize32 queryCount,
    GPUBuffer destination,
    GPUSize64 destinationOffset,
  );

  /// The **`finish()`** method of the
  /// [GPUCommandEncoder] interface completes recording of the command sequence
  /// encoded on this `GPUCommandEncoder`, returning a corresponding
  /// [GPUCommandBuffer].
  external GPUCommandBuffer finish([GPUCommandBufferDescriptor descriptor]);

  /// The **`pushDebugGroup()`** method of the
  /// [GPUCommandEncoder] interface begins a debug group, which is marked with a
  /// specified label, and will contain all subsequent encoded commands up until
  /// a [GPUCommandEncoder.popDebugGroup] method is invoked.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void pushDebugGroup(String groupLabel);

  /// The **`popDebugGroup()`** method of the
  /// [GPUCommandEncoder] interface ends a debug group, which is begun with a
  /// [GPUCommandEncoder.pushDebugGroup] call.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void popDebugGroup();

  /// The **`insertDebugMarker()`** method of the
  /// [GPUCommandEncoder] interface marks a specific point in a series of
  /// encoded commands with a label.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void insertDebugMarker(String markerLabel);
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPUCommandEncoderDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandEncoderDescriptor();
}

/// The **`GPUComputePassEncoder`** interface of the [WebGPU API] encodes
/// commands related to controlling the compute shader stage, as issued by a
/// [GPUComputePipeline]. It forms part of the overall encoding activity of a
/// [GPUCommandEncoder].
///
/// A compute pipeline contains a single compute stage in which a compute shader
/// takes general data, processes it in parallel across a specified number of
/// workgroups, then returns the result in one or more buffers.
///
/// A `GPUComputePassEncoder` object instance is created via the
/// [GPUCommandEncoder.beginComputePass] property.
@JS('GPUComputePassEncoder')
@staticInterop
class GPUComputePassEncoder {}

extension GPUComputePassEncoderExtension on GPUComputePassEncoder {
  /// The **`setPipeline()`** method of the
  /// [GPUComputePassEncoder] interface sets the [GPUComputePipeline] to use for
  /// this compute pass.
  external void setPipeline(GPUComputePipeline pipeline);

  /// The **`dispatchWorkgroups()`** method of the
  /// [GPUComputePassEncoder] interface dispatches a specific grid of workgroups
  /// to perform the work being done by the current [GPUComputePipeline] (i.e.
  /// set via [GPUComputePassEncoder.setPipeline]).
  external void dispatchWorkgroups(
    GPUSize32 workgroupCountX, [
    GPUSize32 workgroupCountY,
    GPUSize32 workgroupCountZ,
  ]);

  /// The **`dispatchWorkgroupsIndirect()`** method of the
  /// [GPUComputePassEncoder] interface dispatches a grid of workgroups, defined
  /// by the parameters of a [GPUBuffer], to perform the work being done by the
  /// current [GPUComputePipeline] (i.e. set via
  /// [GPUComputePassEncoder.setPipeline]).
  external void dispatchWorkgroupsIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );

  /// The **`end()`** method of the
  /// [GPUComputePassEncoder] interface completes recording of the current
  /// compute pass command sequence.
  external void end();

  /// The **`pushDebugGroup()`** method of the
  /// [GPUComputePassEncoder] interface begins a compute pass debug group, which
  /// is marked with a specified label, and will contain all subsequent encoded
  /// commands up until a [GPUComputePassEncoder.popDebugGroup] method is
  /// invoked.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void pushDebugGroup(String groupLabel);

  /// The **`popDebugGroup()`** method of the
  /// [GPUComputePassEncoder] interface ends a compute pass debug group, which
  /// is begun with a [GPUComputePassEncoder.pushDebugGroup] call.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void popDebugGroup();

  /// The **`insertDebugMarker()`** method of the
  /// [GPUComputePassEncoder] interface marks a specific point in a series of
  /// encoded compute pass commands with a label.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void insertDebugMarker(String markerLabel);

  /// The **`setBindGroup()`** method of the
  /// [GPUComputePassEncoder] interface sets the [GPUBindGroup] to use for
  /// subsequent compute commands, for a given index.
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

@JS()
@staticInterop
@anonymous
class GPUComputePassTimestampWrites {
  external factory GPUComputePassTimestampWrites({
    required GPUQuerySet querySet,
    GPUSize32 beginningOfPassWriteIndex,
    GPUSize32 endOfPassWriteIndex,
  });
}

extension GPUComputePassTimestampWritesExtension
    on GPUComputePassTimestampWrites {
  external set querySet(GPUQuerySet value);
  external GPUQuerySet get querySet;
  external set beginningOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get beginningOfPassWriteIndex;
  external set endOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get endOfPassWriteIndex;
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

/// The **`GPURenderPassEncoder`** interface of the [WebGPU API] encodes
/// commands related to controlling the vertex and fragment shader stages, as
/// issued by a [GPURenderPipeline]. It forms part of the overall encoding
/// activity of a [GPUCommandEncoder].
///
/// A render pipeline renders graphics to [GPUTexture] attachments, typically
/// intended for display in a `canvas` element, but it could also render to
/// textures used for other purposes that never appear onscreen. It has two main
/// stages:
///
/// - A vertex stage, in which a vertex shader takes positioning data fed into
///   the GPU and uses it to position a series of vertices in 3D space by
///   applying specified effects like rotation, translation, or perspective. The
///   vertices are then assembled into primitives such as triangles (the basic
///   building block of rendered graphics) and rasterized by the GPU to figure
///   out what pixels each one should cover on the drawing canvas.
///
/// - A fragment stage, in which a fragment shader computes the color for each
///   pixel covered by the primitives produced by the vertex shader. These
///   computations frequently use inputs such as images (in the form of
///   textures) that provide surface details and the position and color of
///   virtual lights.
///
/// A `GPURenderPassEncoder` object instance is created via the
/// [GPUCommandEncoder.beginRenderPass] property.
@JS('GPURenderPassEncoder')
@staticInterop
class GPURenderPassEncoder {}

extension GPURenderPassEncoderExtension on GPURenderPassEncoder {
  /// The **`setViewport()`** method of the
  /// [GPURenderPassEncoder] interface sets the viewport used during the
  /// rasterization stage to linearly map from normalized device coordinates to
  /// viewport coordinates.
  external void setViewport(
    num x,
    num y,
    num width,
    num height,
    num minDepth,
    num maxDepth,
  );

  /// The **`setScissorRect()`** method of the
  /// [GPURenderPassEncoder] interface sets the scissor rectangle used during
  /// the rasterization stage. After transformation into viewport coordinates
  /// any fragments that fall outside the scissor rectangle will be discarded.
  external void setScissorRect(
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
    GPUIntegerCoordinate width,
    GPUIntegerCoordinate height,
  );

  /// The **`setBlendConstant()`** method of the
  /// [GPURenderPassEncoder] interface sets the constant blend color and alpha
  /// values used with `"constant"` and `"one-minus-constant"` blend factors (as
  /// set in the descriptor of the [GPUDevice.createRenderPipeline] method, in
  /// the `blend` property).
  external void setBlendConstant(GPUColor color);

  /// The **`setStencilReference()`** method of the
  /// [GPURenderPassEncoder] interface sets the stencil reference value using
  /// during stencil tests with the `"replace"` stencil operation (as set in the
  /// descriptor of the [GPUDevice.createRenderPipeline] method, in the
  /// properties defining the various stencil operations).
  external void setStencilReference(GPUStencilValue reference);

  /// The **`beginOcclusionQuery()`** method of the
  /// [GPURenderPassEncoder] interface begins an occlusion query at the
  /// specified index of the relevant [GPUQuerySet] (provided as the value of
  /// the `occlusionQuerySet` descriptor property when invoking
  /// [GPUCommandEncoder.beginRenderPass] to run the render pass).
  external void beginOcclusionQuery(GPUSize32 queryIndex);

  /// The **`endOcclusionQuery()`** method of the
  /// [GPURenderPassEncoder] interface ends an active occlusion query previously
  /// started with [GPURenderPassEncoder.beginOcclusionQuery].
  external void endOcclusionQuery();

  /// The **`executeBundles()`** method of the
  /// [GPURenderPassEncoder] interface executes commands previously recorded
  /// into the referenced [GPURenderBundle]s, as part of this render pass.
  ///
  /// > **Note:** After calling `executeBundles()` the currently set vertex
  /// > buffers, index buffers, bind groups, and pipeline are all cleared, even
  /// > if no bundles are actually executed.
  external void executeBundles(JSArray bundles);

  /// The **`end()`** method of the
  /// [GPURenderPassEncoder] interface completes recording of the current render
  /// pass command sequence.
  external void end();

  /// The **`pushDebugGroup()`** method of the
  /// [GPURenderPassEncoder] interface begins a render pass debug group, which
  /// is marked with a specified label, and will contain all subsequent encoded
  /// commands up until a [GPURenderPassEncoder.popDebugGroup] method is
  /// invoked.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void pushDebugGroup(String groupLabel);

  /// The **`popDebugGroup()`** method of the
  /// [GPURenderPassEncoder] interface ends a render pass debug group, which is
  /// begun with a [GPURenderPassEncoder.pushDebugGroup] call.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void popDebugGroup();

  /// The **`insertDebugMarker()`** method of the
  /// [GPURenderPassEncoder] interface marks a specific point in a series of
  /// encoded render pass commands with a label.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  external void insertDebugMarker(String markerLabel);

  /// The **`setBindGroup()`** method of the
  /// [GPURenderPassEncoder] interface sets the [GPUBindGroup] to use for
  /// subsequent render commands, for a given index.
  external void setBindGroup(
    GPUIndex32 index,
    GPUBindGroup? bindGroup, [
    JSObject dynamicOffsetsOrDynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  ]);

  /// The **`setPipeline()`** method of the
  /// [GPURenderPassEncoder] interface sets the [GPURenderPipeline] to use for
  /// subsequent render pass commands.
  external void setPipeline(GPURenderPipeline pipeline);

  /// The **`setIndexBuffer()`** method of the
  /// [GPURenderPassEncoder] interface sets the current [GPUBuffer] that will
  /// provide index data for subsequent drawing commands.
  external void setIndexBuffer(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`setVertexBuffer()`** method of the
  /// [GPURenderPassEncoder] interface sets or unsets the current [GPUBuffer]
  /// for the given slot that will provide vertex data for subsequent drawing
  /// commands.
  external void setVertexBuffer(
    GPUIndex32 slot,
    GPUBuffer? buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`draw()`** method of the
  /// [GPURenderPassEncoder] interface draws primitives based on the vertex
  /// buffers provided by [GPURenderPassEncoder.setVertexBuffer].
  external void draw(
    GPUSize32 vertexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
    GPUSize32 firstInstance,
  ]);

  /// The **`drawIndexed()`** method of the
  /// [GPURenderPassEncoder] interface draws indexed primitives based on the
  /// vertex and index buffers provided by
  /// [GPURenderPassEncoder.setVertexBuffer] and
  /// [GPURenderPassEncoder.setIndexBuffer].
  external void drawIndexed(
    GPUSize32 indexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
    GPUSize32 firstInstance,
  ]);

  /// The **`drawIndirect()`** method of the
  /// [GPURenderPassEncoder] interface draws primitives using parameters read
  /// from a [GPUBuffer].
  external void drawIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );

  /// The **`drawIndexedIndirect()`** method of the
  /// [GPURenderPassEncoder] interface draws indexed primitives using parameters
  /// read from a [GPUBuffer].
  external void drawIndexedIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPURenderPassTimestampWrites {
  external factory GPURenderPassTimestampWrites({
    required GPUQuerySet querySet,
    GPUSize32 beginningOfPassWriteIndex,
    GPUSize32 endOfPassWriteIndex,
  });
}

extension GPURenderPassTimestampWritesExtension
    on GPURenderPassTimestampWrites {
  external set querySet(GPUQuerySet value);
  external GPUQuerySet get querySet;
  external set beginningOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get beginningOfPassWriteIndex;
  external set endOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get endOfPassWriteIndex;
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
    num depthClearValue,
    GPULoadOp depthLoadOp,
    GPUStoreOp depthStoreOp,
    bool depthReadOnly,
    GPUStencilValue stencilClearValue,
    GPULoadOp stencilLoadOp,
    GPUStoreOp stencilStoreOp,
    bool stencilReadOnly,
  });
}

extension GPURenderPassDepthStencilAttachmentExtension
    on GPURenderPassDepthStencilAttachment {
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

/// The **`GPURenderBundle`** interface of the [WebGPU API] represents a
/// container for pre-recorded bundles of commands.
///
/// The command bundles are encoded using a [GPURenderBundleEncoder]; once the
/// desired commands have been encoded, they are recorded into a
/// `GPURenderBundle` object instance using the [GPURenderBundleEncoder.finish]
/// method.
///
/// These command bundles can then be reused across multiple render passes by
/// passing the `GPURenderBundle` objects into
/// [GPURenderPassEncoder.executeBundles] calls. Reusing pre-recoded commands
/// can significantly improve app performance in situations where JavaScript
/// draw call overhead is a bottleneck. Render bundles are most effective in
/// situations where a batch of objects will be drawn the same way across
/// multiple views or frames, with the only differences being the buffer content
/// being used (such as updated matrix uniforms).
///
/// A good example is VR rendering. Recording the rendering as a render bundle
/// and then tweaking the view matrix and replaying it for each eye is a more
/// efficient way to issue draw calls for both renderings of the scene.
@JS('GPURenderBundle')
@staticInterop
class GPURenderBundle {}

extension GPURenderBundleExtension on GPURenderBundle {
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPURenderBundleDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderBundleDescriptor();
}

/// The **`GPURenderBundleEncoder`** interface of the [WebGPU API] is used to
/// pre-record bundles of commands.
///
/// The command bundles are encoded by calling the methods of
/// `GPURenderBundleEncoder`; once the desired commands have been encoded, they
/// are recorded into a [GPURenderBundle] object instance using the
/// [GPURenderBundleEncoder.finish] method. These render bundles can then be
/// reused across multiple render passes by passing the `GPURenderBundle`
/// objects into [GPURenderPassEncoder.executeBundles] calls.
///
/// In effect, this is like a partial render pass — `GPURenderBundleEncoder`s
/// have all the same functionality available as [GPURenderPassEncoder]s, except
/// that they can't begin and end occlusion queries, and can't set the scissor
/// rect, viewport, blend constant, and stencil reference. The `GPURenderBundle`
/// will inherit all these values from the [GPURenderPassEncoder] that executes
/// it.
///
/// > **Note:** Currently set vertex buffers, index buffers, bind groups, and
/// > pipeline are all cleared prior to executing a render bundle, and once the
/// > render bundle has finished executing.
///
/// Reusing pre-recoded commands can significantly improve app performance in
/// situations where JavaScript draw call overhead is a bottleneck. Render
/// bundles are most effective in situations where a batch of objects will be
/// drawn the same way across multiple views or frames, with the only
/// differences being the buffer content being used (such as updated matrix
/// uniforms). A good example is VR rendering. Recording the rendering as a
/// render bundle and then tweaking the view matrix and replaying it for each
/// eye is a more efficient way to issue draw calls for both renderings of the
/// scene.
///
/// A `GPURenderBundleEncoder` object instance is created via the
/// [GPUDevice.createRenderBundleEncoder] property.
///
/// > **Note:** The methods of `GPURenderBundleEncoder` are functionally
/// > identical to their equivalents available on [GPURenderPassEncoder], except
/// > for [GPURenderBundleEncoder.finish], which is similar in purpose to
/// > [GPUCommandEncoder.finish].
@JS('GPURenderBundleEncoder')
@staticInterop
class GPURenderBundleEncoder {}

extension GPURenderBundleEncoderExtension on GPURenderBundleEncoder {
  /// The **`finish()`** method of the
  /// [GPURenderBundleEncoder] interface completes recording of the current
  /// render bundle command sequence, returning a [GPURenderBundle] object that
  /// can be passed into a [GPURenderPassEncoder.executeBundles] call to execute
  /// those commands in a specific render pass.
  external GPURenderBundle finish([GPURenderBundleDescriptor descriptor]);

  /// The **`pushDebugGroup()`** method of the
  /// [GPURenderBundleEncoder] interface begins a render bundle debug group,
  /// which is marked with a specified label, and will contain all subsequent
  /// encoded commands up until a [GPURenderBundleEncoder.popDebugGroup] method
  /// is invoked.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.pushDebugGroup].
  external void pushDebugGroup(String groupLabel);

  /// The **`popDebugGroup()`** method of the
  /// [GPURenderBundleEncoder] interface ends a render bundle debug group, which
  /// is begun with a [GPURenderBundleEncoder.pushDebugGroup] call.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.popDebugGroup].
  external void popDebugGroup();

  /// The **`insertDebugMarker()`** method of the
  /// [GPURenderBundleEncoder] interface marks a specific point in a series of
  /// encoded render bundle pass commands with a label.
  ///
  /// This could be used for telemetry, or may be utilized in [GPUError]
  /// messages, browser dev tools, or other services in the future to help with
  /// debugging.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.InsertDebugMarker].
  external void insertDebugMarker(String markerLabel);

  /// The **`setBindGroup()`** method of the
  /// [GPURenderBundleEncoder] interface sets the [GPUBindGroup] to use for
  /// subsequent render bundle commands, for a given index.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.setBindGroup].
  external void setBindGroup(
    GPUIndex32 index,
    GPUBindGroup? bindGroup, [
    JSObject dynamicOffsetsOrDynamicOffsetsData,
    GPUSize64 dynamicOffsetsDataStart,
    GPUSize32 dynamicOffsetsDataLength,
  ]);

  /// The **`setPipeline()`** method of the
  /// [GPURenderBundleEncoder] interface sets the [GPURenderPipeline] to use for
  /// subsequent render bundle commands.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.setPipeline].
  external void setPipeline(GPURenderPipeline pipeline);

  /// The **`setIndexBuffer()`** method of the
  /// [GPURenderBundleEncoder] interface sets the current [GPUBuffer] that will
  /// provide index data for subsequent drawing commands.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.setIndexBuffer].
  external void setIndexBuffer(
    GPUBuffer buffer,
    GPUIndexFormat indexFormat, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`setVertexBuffer()`** method of the
  /// [GPURenderBundleEncoder] interface sets or unsets the current [GPUBuffer]
  /// for the given slot that will provide vertex data for subsequent drawing
  /// commands.
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.setVertexBuffer].
  external void setVertexBuffer(
    GPUIndex32 slot,
    GPUBuffer? buffer, [
    GPUSize64 offset,
    GPUSize64 size,
  ]);

  /// The **`draw()`** method of the
  /// [GPURenderBundleEncoder] interface draws primitives based on the vertex
  /// buffers provided by [GPURenderBundleEncoder.setVertexBuffer].
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.draw].
  external void draw(
    GPUSize32 vertexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstVertex,
    GPUSize32 firstInstance,
  ]);

  /// The **`drawIndexed()`** method of the
  /// [GPURenderBundleEncoder] interface draws indexed primitives based on the
  /// vertex and index buffers provided by
  /// [GPURenderBundleEncoder.setVertexBuffer] and
  /// [GPURenderBundleEncoder.setIndexBuffer].
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.drawIndexed].
  external void drawIndexed(
    GPUSize32 indexCount, [
    GPUSize32 instanceCount,
    GPUSize32 firstIndex,
    GPUSignedOffset32 baseVertex,
    GPUSize32 firstInstance,
  ]);

  /// The **`drawIndirect()`** method of the
  /// [GPURenderBundleEncoder] interface draws primitives using parameters read
  /// from a [GPUBuffer].
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.drawIndirect].
  external void drawIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );

  /// The **`drawIndexedIndirect()`** method of the
  /// [GPURenderBundleEncoder] interface draws indexed primitives using
  /// parameters read from a [GPUBuffer].
  ///
  /// > **Note:** This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.drawIndexedIndirect].
  external void drawIndexedIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );
  external set label(String value);
  external String get label;
}

@JS()
@staticInterop
@anonymous
class GPURenderBundleEncoderDescriptor implements GPURenderPassLayout {
  external factory GPURenderBundleEncoderDescriptor({
    bool depthReadOnly,
    bool stencilReadOnly,
  });
}

extension GPURenderBundleEncoderDescriptorExtension
    on GPURenderBundleEncoderDescriptor {
  external set depthReadOnly(bool value);
  external bool get depthReadOnly;
  external set stencilReadOnly(bool value);
  external bool get stencilReadOnly;
}

@JS()
@staticInterop
@anonymous
class GPUQueueDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQueueDescriptor();
}

/// The **`GPUQueue`** interface of the [WebGPU API] controls execution of
/// encoded commands on the GPU.
///
/// A device's primary queue is accessed via the [GPUDevice.queue] property.
@JS('GPUQueue')
@staticInterop
class GPUQueue {}

extension GPUQueueExtension on GPUQueue {
  /// The **`submit()`** method of the
  /// [GPUQueue] interface schedules the execution of command buffers
  /// represented by one or more [GPUCommandBuffer] objects by the GPU.
  external void submit(JSArray commandBuffers);

  /// The **`onSubmittedWorkDone()`** method of the
  /// [GPUQueue] interface returns a `Promise` that resolves when all the work
  /// submitted to the GPU via this `GPUQueue` at the point the method is called
  /// has been processed.
  ///
  /// This includes the completion of any [GPUBuffer.mapAsync] calls made on
  /// `GPUBuffer`s used in commands submitted to the queue, before
  /// `onSubmittedWorkDone()` is called.
  ///
  /// Note: In most cases, you do _not_ need to call `onSubmittedWorkDone()`.
  /// You do **_not_** need to call it for mapping a buffer. `mapAsync`
  /// guarantees work submitted
  /// to the queue before calling `mapAsync` happens before the `mapAsync`
  /// returns (see [WebGPU spec: section
  /// 5.2](https://www.w3.org/TR/webgpu/#buffer-mapping))
  ///
  /// The two use cases for `onSubmittedWorkDone`
  ///
  /// 1. Waiting for multiple buffer mapping (slow)
  ///
  /// ```js
  /// // good
  /// await Promise.all([
  /// buffer1.mapAsync(),
  /// buffer2.mapAsync(),
  /// buffer3.mapAsync(),
  /// ]);
  /// data1 = buffer1.getMappedRange();
  /// data2 = buffer2.getMappedRange();
  /// data3 = buffer3.getMappedRange();
  /// ```
  ///
  /// ```js
  /// // works but slow
  /// buffer1.mapAsync();
  /// buffer2.mapAsync();
  /// buffer3.mapAsync();
  /// await device.queue.onSubmittedWorkDone();
  /// data1 = buffer1.getMappedRange();
  /// data2 = buffer2.getMappedRange();
  /// data3 = buffer3.getMappedRange();
  /// ```
  ///
  /// The reason the second method is slow is, the implementation may be able to
  /// map the buffers before all the submitted work is done.
  /// For example, if all the buffers are finished being used, but more work
  /// (unrelated to the buffers) is already submitted, then
  /// you'll end up waiting longer using the second method than the first.
  ///
  /// 2. Throttling work
  ///
  /// If you are doing heavy compute work and you submit too much work at once,
  /// the browser may kill your work.
  /// You can throttle the work by only submitting more work when the work
  /// you've already submitted is done.
  external JSPromise onSubmittedWorkDone();

  /// The **`writeBuffer()`** method of the
  /// [GPUQueue] interface writes a provided data source into a given
  /// [GPUBuffer].
  ///
  /// This is a convenience function, which provides an alternative to setting
  /// buffer data via buffer mapping and buffer-to-buffer copies. It lets the
  /// user agent determine the most efficient way to copy the data over.
  external void writeBuffer(
    GPUBuffer buffer,
    GPUSize64 bufferOffset,
    AllowSharedBufferSource data, [
    GPUSize64 dataOffset,
    GPUSize64 size,
  ]);

  /// The **`writeTexture()`** method of the
  /// [GPUQueue] interface writes a provided data source into a given
  /// [GPUTexture].
  ///
  /// This is a convenience function, which provides an alternative to setting
  /// texture data via buffer mapping and buffer-to-texture copies. It lets the
  /// user agent determine the most efficient way to copy the data over.
  external void writeTexture(
    GPUImageCopyTexture destination,
    AllowSharedBufferSource data,
    GPUImageDataLayout dataLayout,
    GPUExtent3D size,
  );

  /// The **`copyExternalImageToTexture()`** method of the
  /// [GPUQueue] interface copies a snapshot taken from a source image, video,
  /// or canvas into a given [GPUTexture].
  ///
  /// Using this function allows the user agent to determine the most efficient
  /// way to copy the data over for each source type.
  external void copyExternalImageToTexture(
    GPUImageCopyExternalImage source,
    GPUImageCopyTextureTagged destination,
    GPUExtent3D copySize,
  );
  external set label(String value);
  external String get label;
}

/// The **`GPUQuerySet`** interface of the [WebGPU API] is used to record the
/// results of queries on passes, such as occlusion or timestamp queries.
///
/// - Occlusion queries are available on render passes to query whether any
///   fragment samples pass all the per-fragment tests for a set of drawing
///   commands (including scissor, sample mask, alpha to coverage, stencil, and
///   depth tests). To run an occlusion query, an appropriate `GPUQuerySet` must
///   be provided as the value of the `occlusionQuerySet` descriptor property
///   when invoking [GPUCommandEncoder.beginRenderPass] to run a render pass.
///
/// - Timestamp queries allow applications to write timestamps to a
///   `GPUQuerySet`. To run a timestamp query, appropriate `GPUQuerySet`s must
///   be provided inside the value of the `timestampWrites` descriptor property
///   when invoking [GPUCommandEncoder.beginRenderPass] to run a render pass, or
///   [GPUCommandEncoder.beginComputePass] to run a compute pass. Alternatively,
///   you can run a single timestamp query at any time by invoking
///   [GPUCommandEncoder.writeTimeStamp] with an appropriate `GPUQuerySet` as a
///   parameter.
///
/// > **Note:** To use timestamp queries, the `timestamp-query`
/// > [GPUSupportedFeatures] must be enabled in the [GPUDevice].
///
/// A `GPUQuerySet` object instance is created using the
/// [GPUDevice.createQuerySet] method.
@JS('GPUQuerySet')
@staticInterop
class GPUQuerySet {}

extension GPUQuerySetExtension on GPUQuerySet {
  /// The **`destroy()`** method of the
  /// [GPUQuerySet] interface destroys the `GPUQuerySet`.
  external void destroy();
  external GPUQueryType get type;
  external GPUSize32Out get count;
  external set label(String value);
  external String get label;
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

/// The **`GPUCanvasContext`** interface of the [WebGPU API] represents the
/// WebGPU rendering context of a `canvas` element, returned via an
/// [HTMLCanvasElement.getContext] call with a `contextType` of `"webgpu"`.
@JS('GPUCanvasContext')
@staticInterop
class GPUCanvasContext {}

extension GPUCanvasContextExtension on GPUCanvasContext {
  /// The **`configure()`** method of the
  /// [GPUCanvasContext] interface configures the context to use for rendering
  /// with a given [GPUDevice]. When called the canvas will initially be cleared
  /// to transparent black.
  external void configure(GPUCanvasConfiguration configuration);

  /// The **`unconfigure()`** method of the
  /// [GPUCanvasContext] interface removes any previously-set context
  /// configuration, and destroys any textures returned via
  /// [GPUCanvasContext.getCurrentTexture] while the canvas context was
  /// configured.
  external void unconfigure();

  /// The **`getCurrentTexture()`** method of the
  /// [GPUCanvasContext] interface returns the next [GPUTexture] to be
  /// composited to the document by the canvas context.
  external GPUTexture getCurrentTexture();
  external JSObject get canvas;
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

/// The **`GPUDeviceLostInfo`** interface of the [WebGPU API] represents the
/// object returned when the [GPUDevice.lost] `Promise` resolves. This provides
/// information as to why a device has been lost.
///
/// See the [GPUDevice.lost] page for more information about "lost" state.
@JS('GPUDeviceLostInfo')
@staticInterop
class GPUDeviceLostInfo {}

extension GPUDeviceLostInfoExtension on GPUDeviceLostInfo {
  external GPUDeviceLostReason get reason;
  external String get message;
}

/// The **`GPUError`** interface of the [WebGPU API] is the base interface for
/// errors surfaced by [GPUDevice.popErrorScope] and the
/// [GPUDevice.uncapturederror_event] event.
@JS('GPUError')
@staticInterop
class GPUError {}

extension GPUErrorExtension on GPUError {
  external String get message;
}

/// The **`GPUValidationError`** interface of the [WebGPU API] describes an
/// application error indicating that an operation did not pass the WebGPU API's
/// validation constraints.
///
/// It represents one of the types of errors surfaced by
/// [GPUDevice.popErrorScope] and the [GPUDevice.uncapturederror_event] event.
///
/// Validation errors occur whenever invalid inputs are given to a WebGPU call.
/// These are consistent, predictable, and should not occur provided your app is
/// well-formed. They will occur in the same way on every device your code runs
/// on, so once you've fixed any errors that show up during development you
/// probably don't need to observe them directly most of the time. An exception
/// to that rule is if you're consuming user-supplied assets, shaders, etc., in
/// which case watching for validation errors while loading could be helpful.
///
/// > **Note:** We have attempted to provide useful information to help you
/// > understand why validation errors are occurring in your WebGPU code in
/// > "Validation" sections where appropriate, which list criteria to meet to
/// > avoid validation errors. See for example the
/// > [`GPUDevice.createBindGroup()` Validation
/// > section](/en-US/docs/Web/API/GPUDevice/createBindGroup#validation).
@JS('GPUValidationError')
@staticInterop
class GPUValidationError implements GPUError {
  external factory GPUValidationError(String message);
}

/// The **`GPUOutOfMemoryError`** interface of the [WebGPU API] describes an
/// out-of-memory (oom) error indicating that there was not enough free memory
/// to complete the requested operation.
///
/// It represents one of the types of errors surfaced by
/// [GPUDevice.popErrorScope] and the [GPUDevice.uncapturederror_event] event.
///
/// Out-of-memory errors should be relatively rare in a well-behaved app but are
/// less predictable than [GPUValidationError]s. This is because they are
/// dependent on the device your app is running on as well as other apps that
/// are using GPU resources at the time.
@JS('GPUOutOfMemoryError')
@staticInterop
class GPUOutOfMemoryError implements GPUError {
  external factory GPUOutOfMemoryError(String message);
}

/// The **`GPUInternalError`** interface of the [WebGPU API] describes an
/// application error indicating that an operation did not pass the WebGPU API's
/// validation constraints.
///
/// It represents one of the types of errors surfaced by
/// [GPUDevice.popErrorScope] and the [GPUDevice.uncapturederror_event] event.
///
/// Internal errors occur when something happens in the WebGPU implementation
/// that wasn't caught by validation and wasn't clearly identifiable as an
/// out-of-memory error. It generally means that an operation your code
/// performed hit a system limit in a way that was difficult to express with
/// WebGPU's
/// [supported limits](https://developer.mozilla.org/en-US/docs/Web/API/GPUSupportedLimits).
/// The same operation might succeed on a different device. These can only be
/// raised by pipeline creation, usually if the shader is too complex for the
/// device.
@JS('GPUInternalError')
@staticInterop
class GPUInternalError implements GPUError {
  external factory GPUInternalError(String message);
}

/// The **`GPUUncapturedErrorEvent`** interface of the [WebGPU API] is the event
/// object type for the [GPUDevice] [GPUDevice.uncapturederror_event] event,
/// used for telemetry and to report unexpected errors.
///
/// Known error cases should be handled using [GPUDevice.pushErrorScope] and
/// [GPUDevice.popErrorScope].
@JS('GPUUncapturedErrorEvent')
@staticInterop
class GPUUncapturedErrorEvent implements Event {
  external factory GPUUncapturedErrorEvent(
    String type,
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
    required num r,
    required num g,
    required num b,
    required num a,
  });
}

extension GPUColorDictExtension on GPUColorDict {
  external set r(num value);
  external num get r;
  external set g(num value);
  external num get g;
  external set b(num value);
  external num get b;
  external set a(num value);
  external num get a;
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
