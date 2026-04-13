// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

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
typedef GPUColorWriteFlags = int;
typedef GPUCopyExternalImageSource = JSObject;
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
typedef GPUCanvasToneMappingMode = String;
typedef GPUDeviceLostReason = String;
typedef GPUErrorFilter = String;
extension type GPUObjectDescriptorBase._(JSObject _) implements JSObject {
  external factory GPUObjectDescriptorBase({String label});

  external String get label;
  external set label(String value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUSupportedLimits).
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
/// the [GPUAdapter.features] property — use this to test what features your
/// current setup supports. To create a [GPUDevice] with a specific feature
/// enabled, you need to specify it in the
/// [`requiredFeatures`](https://developer.mozilla.org/en-US/docs/Web/API/GPUAdapter/requestDevice#requiredfeatures)
/// array of the [GPUAdapter.requestDevice] descriptor.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUSupportedFeatures).
extension type GPUSupportedFeatures._(JSObject _) implements JSObject {}

/// The **`WGSLLanguageFeatures`** interface of the [WebGPU API] is a
/// [setlike](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set)
/// object that reports the
/// [WGSL language extensions](https://gpuweb.github.io/gpuweb/wgsl/#language-extension)
/// supported by the WebGPU implementation.
///
/// The `WGSLLanguageFeatures` object is accessed via the
/// [GPU.wgslLanguageFeatures] property.
///
/// > [!NOTE]
/// > Not all WGSL language extensions are available to WebGPU in all browsers
/// > that support the API. We recommend you thoroughly test any extensions you
/// > choose to use.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WGSLLanguageFeatures).
extension type WGSLLanguageFeatures._(JSObject _) implements JSObject {}

/// The **`GPUAdapterInfo`** interface of the [WebGPU API] contains identifying
/// information about a [GPUAdapter].
///
/// A `GPUAdapterInfo` object instance is retrieved using the [GPUAdapter.info]
/// property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUAdapterInfo).
extension type GPUAdapterInfo._(JSObject _) implements JSObject {
  /// The **`vendor`** read-only property of the
  /// [GPUAdapterInfo] interface returns the name of the adapter vendor, or an
  /// empty string if it is not available.
  external String get vendor;

  /// The **`architecture`** read-only property of the
  /// [GPUAdapterInfo] interface returns the name of the family or class of GPUs
  /// the adapter belongs to, or an empty string if it is not available.
  external String get architecture;

  /// The **`device`** read-only property of the
  /// [GPUAdapterInfo] interface returns a vendor-specific identifier for the
  /// adapter, or an empty string if it is not available.
  external String get device;

  /// The **`description`** read-only property of the
  /// [GPUAdapterInfo] interface returns a human-readable string describing the
  /// adapter, or an empty string if it is not available.
  external String get description;
  external int get subgroupMinSize;
  external int get subgroupMaxSize;
  external bool get isFallbackAdapter;
}

/// The **`GPU`** interface of the [WebGPU API] is the starting point for using
/// WebGPU. It can be used to return a [GPUAdapter] from which you can request
/// devices, configure features and limits, and more.
///
/// The `GPU` object for the current context is accessed via the [Navigator.gpu]
/// or [WorkerNavigator.gpu] properties.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPU).
extension type GPU._(JSObject _) implements JSObject {
  /// The **`requestAdapter()`** method of the
  /// [GPU] interface returns a `Promise` that fulfills with a [GPUAdapter]
  /// object instance. From this you can request a [GPUDevice], adapter info,
  /// features, and limits.
  ///
  /// Note that the user agent chooses whether to return an adapter. If so, it
  /// chooses according to the provided options. If no options are provided, the
  /// device will provide access to the default adapter, which is usually good
  /// enough for most purposes.
  external JSPromise<GPUAdapter?> requestAdapter(
      [GPURequestAdapterOptions options]);

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

  /// The **`wgslLanguageFeatures`** read-only property of the
  /// [GPU] interface returns a [WGSLLanguageFeatures] object that reports the
  /// [WGSL language extensions](https://gpuweb.github.io/gpuweb/wgsl/#language-extension)
  /// supported by the WebGPU implementation.
  ///
  /// > [!NOTE]
  /// > Not all WGSL language extensions are available to WebGPU in all browsers
  /// > that support the API. We recommend you thoroughly test any extensions
  /// > you choose to use.
  external WGSLLanguageFeatures get wgslLanguageFeatures;
}
extension type GPURequestAdapterOptions._(JSObject _) implements JSObject {
  external factory GPURequestAdapterOptions({
    String featureLevel,
    GPUPowerPreference powerPreference,
    bool forceFallbackAdapter,
    bool xrCompatible,
  });

  external String get featureLevel;
  external set featureLevel(String value);
  external GPUPowerPreference get powerPreference;
  external set powerPreference(GPUPowerPreference value);
  external bool get forceFallbackAdapter;
  external set forceFallbackAdapter(bool value);
  external bool get xrCompatible;
  external set xrCompatible(bool value);
}

/// The **`GPUAdapter`** interface of the [WebGPU API] represents a GPU adapter.
/// From this you can request a [GPUDevice], adapter info, features, and limits.
///
/// A `GPUAdapter` object is requested using the [GPU.requestAdapter] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUAdapter).
extension type GPUAdapter._(JSObject _) implements JSObject {
  /// The **`requestDevice()`** method of the
  /// [GPUAdapter] interface returns a `Promise` that fulfills with a
  /// [GPUDevice] object, which is the primary interface for communicating with
  /// the GPU.
  external JSPromise<GPUDevice> requestDevice([GPUDeviceDescriptor descriptor]);

  /// The **`features`** read-only property of the
  /// [GPUAdapter] interface returns a [GPUSupportedFeatures] object that
  /// describes additional functionality supported by the adapter.
  ///
  /// You should note that not all features will be available to WebGPU in all
  /// browsers that support it, even if the features are supported by the
  /// underlying hardware. This could be due to constraints in the underlying
  /// system, browser, or adapter. For example:
  ///
  /// - The underlying system might not be able to guarantee exposure of a
  ///   feature in a way that is compatible with a certain browser.
  /// - The browser vendor might not have found a secure way to implement
  ///   support for that feature, or might just not have gotten round to it yet.
  ///
  /// If you are hoping to take advantage of a specific additional feature in a
  /// WebGPU app, thorough testing is advised.
  external GPUSupportedFeatures get features;

  /// The **`limits`** read-only property of the
  /// [GPUAdapter] interface returns a [GPUSupportedLimits] object that
  /// describes the limits supported by the adapter.
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
  external GPUSupportedLimits get limits;

  /// The **`info`** read-only property of the
  /// [GPUAdapter] interface returns a [GPUAdapterInfo] object containing
  /// identifying information about the adapter.
  ///
  /// The intention behind this property is to allow developers to request
  /// specific details about the user's GPU so that they can preemptively apply
  /// workarounds for GPU-specific bugs, or provide different codepaths to
  /// better suit different GPU architectures. Providing such information does
  /// present a security risk — it could be used for fingerprinting — therefore
  /// the information shared is to be kept at a minimum, and different browser
  /// vendors are likely to share different information types and granularities.
  external GPUAdapterInfo get info;
}
extension type GPUDeviceDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUDeviceDescriptor({
    String label,
    JSArray<JSString> requiredFeatures,
    JSObject requiredLimits,
    GPUQueueDescriptor defaultQueue,
  });

  external JSArray<JSString> get requiredFeatures;
  external set requiredFeatures(JSArray<JSString> value);
  external JSObject get requiredLimits;
  external set requiredLimits(JSObject value);
  external GPUQueueDescriptor get defaultQueue;
  external set defaultQueue(GPUQueueDescriptor value);
}

/// The **`GPUDevice`** interface of the [WebGPU API] represents a logical GPU
/// device. This is the main interface through which the majority of WebGPU
/// functionality is accessed.
///
/// A `GPUDevice` object is requested using the [GPUAdapter.requestDevice]
/// method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUDevice).
extension type GPUDevice._(JSObject _) implements EventTarget, JSObject {
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
  /// > [!NOTE]
  /// > It is generally preferable to use this method over
  /// > [GPUDevice.createComputePipeline] whenever possible, as it prevents
  /// > blocking of GPU operation execution on pipeline compilation.
  external JSPromise<GPUComputePipeline> createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);

  /// The **`createRenderPipelineAsync()`** method of the
  /// [GPUDevice] interface returns a `Promise` that fulfills with a
  /// [GPURenderPipeline], which can control the vertex and fragment shader
  /// stages and be used in a [GPURenderPassEncoder] or
  /// [GPURenderBundleEncoder], once the pipeline can be used without any
  /// stalling.
  ///
  /// > [!NOTE]
  /// > It is generally preferable to use this method over
  /// > [GPUDevice.createRenderPipeline] whenever possible, as it prevents
  /// > blocking of GPU operation execution on pipeline compilation.
  external JSPromise<GPURenderPipeline> createRenderPipelineAsync(
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
  external JSPromise<GPUError?> popErrorScope();

  /// The **`features`** read-only property of the
  /// [GPUDevice] interface returns a [GPUSupportedFeatures] object that
  /// describes additional functionality supported by the device. Only features
  /// requested during the creation of the device (i.e. when
  /// [GPUAdapter.requestDevice] is called) are included.
  ///
  /// > [!NOTE]
  /// > Not all features will be available to WebGPU in all browsers that
  /// > support it, even if the features are supported by the underlying
  /// > hardware. See [GPUAdapter.features] for more details.
  external GPUSupportedFeatures get features;

  /// The **`limits`** read-only property of the
  /// [GPUDevice] interface returns a [GPUSupportedLimits] object that describes
  /// the limits supported by the device. All limit values will be included, and
  /// the limits requested during the creation of the device (i.e. when
  /// [GPUAdapter.requestDevice] is called) will be reflected in those values.
  ///
  /// > [!NOTE]
  /// > Not all limits will be reported as expected, even if they are supported
  /// > by the underlying hardware. See [GPUAdapter.limits] for more details.
  external GPUSupportedLimits get limits;
  external GPUAdapterInfo get adapterInfo;

  /// The **`queue`** read-only property of the
  /// [GPUDevice] interface returns the primary [GPUQueue] for the device.
  external GPUQueue get queue;

  /// The **`lost`** read-only property of the
  /// [GPUDevice] interface contains a `Promise` that remains pending throughout
  /// the device's lifetime and resolves with a [GPUDeviceLostInfo] object when
  /// the device is lost.
  ///
  /// [GPUAdapter.requestDevice] will never return `null`, and it will reject
  /// only if the request is invalid, i.e. it exceeds the capabilities of the
  /// [GPUAdapter]. If a valid device request can't be fulfilled for some reason
  /// however it may resolve to a device that has already been lost.
  /// Additionally, devices can be lost at any time after creation for a variety
  /// of reasons (such as browser resource management or driver updates), so
  /// it's a good idea to always handle lost devices gracefully.
  ///
  /// Many causes for lost devices are transient, so you should try getting a
  /// new device once a previous one has been lost unless the loss was caused by
  /// the application intentionally destroying the device (i.e. with
  /// [GPUDevice.destroy]). Note that any WebGPU resources created with a
  /// previous device (buffers, textures, etc.) will need to be re-created with
  /// the new one.
  ///
  /// > [!NOTE]
  /// > Also bear in mind that a `GPUAdapter` may become unavailable, e.g. if
  /// > the physical GPU is unplugged from the system or disabled to save power.
  /// > From then on, the adapter can no longer return valid devices, and will
  /// > always return already-lost devices.
  external JSPromise<GPUDeviceLostInfo> get lost;
  external EventHandler get onuncapturederror;
  external set onuncapturederror(EventHandler value);

  /// The **`label`** read-only property of the
  /// [GPUDevice] interface is a string providing a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  external String get label;
  external set label(String value);
}

/// The **`GPUBuffer`** interface of the [WebGPU API] represents a block of
/// memory that can be used to store raw data to use in GPU operations.
///
/// A `GPUBuffer` object instance is created using the [GPUDevice.createBuffer]
/// method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUBuffer).
extension type GPUBuffer._(JSObject _) implements JSObject {
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
  external JSPromise<JSAny?> mapAsync(
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

  /// The **`size`** read-only property of the
  /// [GPUBuffer] interface represents the length of the `GPUBuffer`'s memory
  /// allocation, in bytes.
  ///
  /// `size` is set via the `size` property in the descriptor object passed into
  /// the originating [GPUDevice.createBuffer] call.
  external GPUSize64Out get size;

  /// The **`usage`** read-only property of the
  /// [GPUBuffer] interface contains the  representing the allowed usages of the
  /// `GPUBuffer`.
  ///
  /// `usage` is set via the `usage` property in the descriptor object passed
  /// into the originating [GPUDevice.createBuffer] call.
  external GPUFlagsConstant get usage;

  /// The **`mapState`** read-only property of the
  /// [GPUBuffer] interface represents the mapped state of the `GPUBuffer`.
  external GPUBufferMapState get mapState;

  /// The **`label`** property of the
  /// [GPUBuffer] interface provides a label that can be used to identify the
  /// object, for example in [GPUError] messages or console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createBuffer] call, or you can get
  /// and set it directly on the `GPUBuffer` object.
  external String get label;
  external set label(String value);
}
extension type GPUBufferDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUBufferDescriptor({
    String label,
    required GPUSize64 size,
    required GPUBufferUsageFlags usage,
    bool mappedAtCreation,
  });

  external GPUSize64 get size;
  external set size(GPUSize64 value);
  external GPUBufferUsageFlags get usage;
  external set usage(GPUBufferUsageFlags value);
  external bool get mappedAtCreation;
  external set mappedAtCreation(bool value);
}
@JS()
external $GPUBufferUsage get GPUBufferUsage;
@JS('GPUBufferUsage')
extension type $GPUBufferUsage._(JSObject _) implements JSObject {
  static const GPUFlagsConstant MAP_READ = 1;

  static const GPUFlagsConstant MAP_WRITE = 2;

  static const GPUFlagsConstant COPY_SRC = 4;

  static const GPUFlagsConstant COPY_DST = 8;

  static const GPUFlagsConstant INDEX = 16;

  static const GPUFlagsConstant VERTEX = 32;

  static const GPUFlagsConstant UNIFORM = 64;

  static const GPUFlagsConstant STORAGE = 128;

  static const GPUFlagsConstant INDIRECT = 256;

  static const GPUFlagsConstant QUERY_RESOLVE = 512;
}
@JS()
external $GPUMapMode get GPUMapMode;
@JS('GPUMapMode')
extension type $GPUMapMode._(JSObject _) implements JSObject {
  static const GPUFlagsConstant READ = 1;

  static const GPUFlagsConstant WRITE = 2;
}

/// The **`GPUTexture`** interface of the [WebGPU API] represents a container
/// used to store 1D, 2D, or 3D arrays of data, such as images, to use in GPU
/// rendering operations.
///
/// A `GPUTexture` object instance is created using the
/// [GPUDevice.createTexture] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUTexture).
extension type GPUTexture._(JSObject _) implements JSObject {
  /// The **`createView()`** method of the
  /// [GPUTexture] interface creates a [GPUTextureView] representing a specific
  /// view of the `GPUTexture`.
  external GPUTextureView createView([GPUTextureViewDescriptor descriptor]);

  /// The **`destroy()`** method of the
  /// [GPUTexture] interface destroys the `GPUTexture`.
  external void destroy();

  /// The **`width`** read-only property of the
  /// [GPUTexture] interface represents the width of the `GPUTexture`.
  ///
  /// This is set based on the value of the `size` property in the descriptor
  /// object passed into the originating [GPUDevice.createTexture] call.
  external GPUIntegerCoordinateOut get width;

  /// The **`height`** read-only property of the
  /// [GPUTexture] interface represents the height of the `GPUTexture`.
  ///
  /// This is set based on the value of the `size` property in the descriptor
  /// object passed into the originating [GPUDevice.createTexture] call.
  external GPUIntegerCoordinateOut get height;

  /// The **`depthOrArrayLayers`** read-only property of the
  /// [GPUTexture] interface represents the depth or layer count of the
  /// `GPUTexture`.
  ///
  /// This is set based on the `size` property in the descriptor object passed
  /// into the originating [GPUDevice.createTexture] call.
  external GPUIntegerCoordinateOut get depthOrArrayLayers;

  /// The **`mipLevelCount`** read-only property of the
  /// [GPUTexture] interface represents the number of mip levels of the
  /// `GPUTexture`.
  ///
  /// This is set via the `mipLevelCount` property in the descriptor object
  /// passed into the originating [GPUDevice.createTexture] call. If omitted,
  /// this defaults to 1.
  external GPUIntegerCoordinateOut get mipLevelCount;

  /// The **`sampleCount`** read-only property of the
  /// [GPUTexture] interface represents the sample count of the `GPUTexture`.
  ///
  /// This is set via the `sampleCount` property in the descriptor object passed
  /// into the originating [GPUDevice.createTexture] call. If omitted, this
  /// defaults to 1.
  external GPUSize32Out get sampleCount;

  /// The **`dimension`** read-only property of the
  /// [GPUTexture] interface represents the dimension of the set of texels for
  /// each `GPUTexture` subresource.
  ///
  /// This is set via the `dimension` property in the descriptor object passed
  /// into the originating [GPUDevice.createTexture] call, which defaults to
  /// `"2d"` if omitted.
  external GPUTextureDimension get dimension;

  /// The **`format`** read-only property of the
  /// [GPUTexture] interface represents the format of the `GPUTexture`.
  ///
  /// This is set via the `format` property in the descriptor object passed into
  /// the originating [GPUDevice.createTexture] call.
  external GPUTextureFormat get format;

  /// The **`usage`** read-only property of the
  /// [GPUTexture] interface is the  representing the allowed usages of the
  /// `GPUTexture`.
  ///
  /// This is set via the `usage` property in the descriptor object passed into
  /// the originating [GPUDevice.createTexture] call.
  external GPUFlagsConstant get usage;

  /// The **`label`** property of the
  /// [GPUTexture] interface provides a label that can be used to identify the
  /// object, for example in [GPUError] messages or console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createTexture] call, or you can get
  /// and set it directly on the `GPUTexture` object.
  external String get label;
  external set label(String value);
}
extension type GPUTextureDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUTextureDescriptor({
    String label,
    required GPUExtent3D size,
    GPUIntegerCoordinate mipLevelCount,
    GPUSize32 sampleCount,
    GPUTextureDimension dimension,
    required GPUTextureFormat format,
    required GPUTextureUsageFlags usage,
    JSArray<JSString> viewFormats,
    GPUTextureViewDimension textureBindingViewDimension,
  });

  external GPUExtent3D get size;
  external set size(GPUExtent3D value);
  external GPUIntegerCoordinate get mipLevelCount;
  external set mipLevelCount(GPUIntegerCoordinate value);
  external GPUSize32 get sampleCount;
  external set sampleCount(GPUSize32 value);
  external GPUTextureDimension get dimension;
  external set dimension(GPUTextureDimension value);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat value);
  external GPUTextureUsageFlags get usage;
  external set usage(GPUTextureUsageFlags value);
  external JSArray<JSString> get viewFormats;
  external set viewFormats(JSArray<JSString> value);
  external GPUTextureViewDimension get textureBindingViewDimension;
  external set textureBindingViewDimension(GPUTextureViewDimension value);
}
@JS()
external $GPUTextureUsage get GPUTextureUsage;
@JS('GPUTextureUsage')
extension type $GPUTextureUsage._(JSObject _) implements JSObject {
  static const GPUFlagsConstant COPY_SRC = 1;

  static const GPUFlagsConstant COPY_DST = 2;

  static const GPUFlagsConstant TEXTURE_BINDING = 4;

  static const GPUFlagsConstant STORAGE_BINDING = 8;

  static const GPUFlagsConstant RENDER_ATTACHMENT = 16;
}

/// The **`GPUTextureView`** interface of the [WebGPU API] represents a view
/// into a subset of the texture resources defined by a particular [GPUTexture].
///
/// A `GPUTextureView` object instance is created using the
/// [GPUTexture.createView] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUTextureView).
extension type GPUTextureView._(JSObject _) implements JSObject {
  /// The **`label`** property of the
  /// [GPUTextureView] interface provides a label that can be used to identify
  /// the object, for example in [GPUError] messages or console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUTexture.createView] call, or you can get
  /// and set it directly on the `GPUTextureView` object.
  external String get label;
  external set label(String value);
}
extension type GPUTextureViewDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUTextureViewDescriptor({
    String label,
    GPUTextureFormat format,
    GPUTextureViewDimension dimension,
    GPUTextureUsageFlags usage,
    GPUTextureAspect aspect,
    GPUIntegerCoordinate baseMipLevel,
    GPUIntegerCoordinate mipLevelCount,
    GPUIntegerCoordinate baseArrayLayer,
    GPUIntegerCoordinate arrayLayerCount,
    String swizzle,
  });

  external GPUTextureFormat get format;
  external set format(GPUTextureFormat value);
  external GPUTextureViewDimension get dimension;
  external set dimension(GPUTextureViewDimension value);
  external GPUTextureUsageFlags get usage;
  external set usage(GPUTextureUsageFlags value);
  external GPUTextureAspect get aspect;
  external set aspect(GPUTextureAspect value);
  external GPUIntegerCoordinate get baseMipLevel;
  external set baseMipLevel(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get mipLevelCount;
  external set mipLevelCount(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get baseArrayLayer;
  external set baseArrayLayer(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get arrayLayerCount;
  external set arrayLayerCount(GPUIntegerCoordinate value);
  external String get swizzle;
  external set swizzle(String value);
}

/// The **`GPUExternalTexture`** interface of the [WebGPU API] represents a
/// wrapper object containing an [HTMLVideoElement] snapshot that can be used as
/// a texture in GPU rendering operations.
///
/// A `GPUExternalTexture` object instance is created using
/// [GPUDevice.importExternalTexture].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUExternalTexture).
extension type GPUExternalTexture._(JSObject _) implements JSObject {
  /// The **`label`** property of the
  /// [GPUExternalTexture] interface provides a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.importExternalTexture] call, or you
  /// can get and set it directly on the `GPUExternalTexture` object.
  external String get label;
  external set label(String value);
}
extension type GPUExternalTextureDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUExternalTextureDescriptor({
    String label,
    required JSObject source,
    PredefinedColorSpace colorSpace,
  });

  external JSObject get source;
  external set source(JSObject value);
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
}

/// The **`GPUSampler`** interface of the [WebGPU API] represents an object that
/// can control how shaders transform and filter texture resource data.
///
/// A `GPUSampler` object instance is created using the
/// [GPUDevice.createSampler] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUSampler).
extension type GPUSampler._(JSObject _) implements JSObject {
  /// The **`label`** property of the
  /// [GPUSampler] interface provides a label that can be used to identify the
  /// object, for example in [GPUError] messages or console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createSampler] call, or you can get
  /// and set it directly on the `GPUSampler` object.
  external String get label;
  external set label(String value);
}
extension type GPUSamplerDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUSamplerDescriptor({
    String label,
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

  external GPUAddressMode get addressModeU;
  external set addressModeU(GPUAddressMode value);
  external GPUAddressMode get addressModeV;
  external set addressModeV(GPUAddressMode value);
  external GPUAddressMode get addressModeW;
  external set addressModeW(GPUAddressMode value);
  external GPUFilterMode get magFilter;
  external set magFilter(GPUFilterMode value);
  external GPUFilterMode get minFilter;
  external set minFilter(GPUFilterMode value);
  external GPUMipmapFilterMode get mipmapFilter;
  external set mipmapFilter(GPUMipmapFilterMode value);
  external double get lodMinClamp;
  external set lodMinClamp(num value);
  external double get lodMaxClamp;
  external set lodMaxClamp(num value);
  external GPUCompareFunction get compare;
  external set compare(GPUCompareFunction value);
  external int get maxAnisotropy;
  external set maxAnisotropy(int value);
}

/// The **`GPUBindGroupLayout`** interface of the [WebGPU API] defines the
/// structure and purpose of related GPU resources such as buffers that will be
/// used in a pipeline, and is used as a template when creating [GPUBindGroup]s.
///
/// A `GPUBindGroupLayout` object instance is created using the
/// [GPUDevice.createBindGroupLayout] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUBindGroupLayout).
extension type GPUBindGroupLayout._(JSObject _) implements JSObject {
  /// The **`label`** property of the
  /// [GPUBindGroupLayout] interface provides a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createBindGroupLayout] call, or you
  /// can get and set it directly on the `GPUBindGroupLayout` object.
  external String get label;
  external set label(String value);
}
extension type GPUBindGroupLayoutDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUBindGroupLayoutDescriptor({
    String label,
    required JSArray<GPUBindGroupLayoutEntry> entries,
  });

  external JSArray<GPUBindGroupLayoutEntry> get entries;
  external set entries(JSArray<GPUBindGroupLayoutEntry> value);
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

  external GPUIndex32 get binding;
  external set binding(GPUIndex32 value);
  external GPUShaderStageFlags get visibility;
  external set visibility(GPUShaderStageFlags value);
  external GPUBufferBindingLayout get buffer;
  external set buffer(GPUBufferBindingLayout value);
  external GPUSamplerBindingLayout get sampler;
  external set sampler(GPUSamplerBindingLayout value);
  external GPUTextureBindingLayout get texture;
  external set texture(GPUTextureBindingLayout value);
  external GPUStorageTextureBindingLayout get storageTexture;
  external set storageTexture(GPUStorageTextureBindingLayout value);
  external GPUExternalTextureBindingLayout get externalTexture;
  external set externalTexture(GPUExternalTextureBindingLayout value);
}
@JS()
external $GPUShaderStage get GPUShaderStage;
@JS('GPUShaderStage')
extension type $GPUShaderStage._(JSObject _) implements JSObject {
  static const GPUFlagsConstant VERTEX = 1;

  static const GPUFlagsConstant FRAGMENT = 2;

  static const GPUFlagsConstant COMPUTE = 4;
}
extension type GPUBufferBindingLayout._(JSObject _) implements JSObject {
  external factory GPUBufferBindingLayout({
    GPUBufferBindingType type,
    bool hasDynamicOffset,
    GPUSize64 minBindingSize,
  });

  external GPUBufferBindingType get type;
  external set type(GPUBufferBindingType value);
  external bool get hasDynamicOffset;
  external set hasDynamicOffset(bool value);
  external GPUSize64 get minBindingSize;
  external set minBindingSize(GPUSize64 value);
}
extension type GPUSamplerBindingLayout._(JSObject _) implements JSObject {
  external factory GPUSamplerBindingLayout({GPUSamplerBindingType type});

  external GPUSamplerBindingType get type;
  external set type(GPUSamplerBindingType value);
}
extension type GPUTextureBindingLayout._(JSObject _) implements JSObject {
  external factory GPUTextureBindingLayout({
    GPUTextureSampleType sampleType,
    GPUTextureViewDimension viewDimension,
    bool multisampled,
  });

  external GPUTextureSampleType get sampleType;
  external set sampleType(GPUTextureSampleType value);
  external GPUTextureViewDimension get viewDimension;
  external set viewDimension(GPUTextureViewDimension value);
  external bool get multisampled;
  external set multisampled(bool value);
}
extension type GPUStorageTextureBindingLayout._(JSObject _)
    implements JSObject {
  external factory GPUStorageTextureBindingLayout({
    GPUStorageTextureAccess access,
    required GPUTextureFormat format,
    GPUTextureViewDimension viewDimension,
  });

  external GPUStorageTextureAccess get access;
  external set access(GPUStorageTextureAccess value);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat value);
  external GPUTextureViewDimension get viewDimension;
  external set viewDimension(GPUTextureViewDimension value);
}
extension type GPUExternalTextureBindingLayout._(JSObject _)
    implements JSObject {
  GPUExternalTextureBindingLayout() : _ = JSObject();
}

/// The **`GPUBindGroup`** interface of the [WebGPU API] is based on a
/// [GPUBindGroupLayout] and defines a set of resources to be bound together in
/// a group and how those resources are used in shader stages.
///
/// A `GPUBindGroup` object instance is created using the
/// [GPUDevice.createBindGroup] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUBindGroup).
extension type GPUBindGroup._(JSObject _) implements JSObject {
  /// The **`label`** property of the
  /// [GPUBindGroup] interface provides a label that can be used to identify the
  /// object, for example in [GPUError] messages or console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createBindGroup] call, or you can
  /// get and set it directly on the `GPUBindGroup` object.
  external String get label;
  external set label(String value);
}
extension type GPUBindGroupDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUBindGroupDescriptor({
    String label,
    required GPUBindGroupLayout layout,
    required JSArray<GPUBindGroupEntry> entries,
  });

  external GPUBindGroupLayout get layout;
  external set layout(GPUBindGroupLayout value);
  external JSArray<GPUBindGroupEntry> get entries;
  external set entries(JSArray<GPUBindGroupEntry> value);
}
extension type GPUBindGroupEntry._(JSObject _) implements JSObject {
  external factory GPUBindGroupEntry({
    required GPUIndex32 binding,
    required GPUBindingResource resource,
  });

  external GPUIndex32 get binding;
  external set binding(GPUIndex32 value);
  external GPUBindingResource get resource;
  external set resource(GPUBindingResource value);
}
extension type GPUBufferBinding._(JSObject _) implements JSObject {
  external factory GPUBufferBinding({
    required GPUBuffer buffer,
    GPUSize64 offset,
    GPUSize64 size,
  });

  external GPUBuffer get buffer;
  external set buffer(GPUBuffer value);
  external GPUSize64 get offset;
  external set offset(GPUSize64 value);
  external GPUSize64 get size;
  external set size(GPUSize64 value);
}

/// The **`GPUPipelineLayout`** interface of the [WebGPU API] defines the
/// [GPUBindGroupLayout]s used by a pipeline. [GPUBindGroup]s used with the
/// pipeline during command encoding must have compatible [GPUBindGroupLayout]s.
///
/// A `GPUPipelineLayout` object instance is created using the
/// [GPUDevice.createPipelineLayout] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUPipelineLayout).
extension type GPUPipelineLayout._(JSObject _) implements JSObject {
  /// The **`label`** property of the
  /// [GPUPipelineLayout] interface provides a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createPipelineLayout] call, or you
  /// can get and set it directly on the `GPUPipelineLayout` object.
  external String get label;
  external set label(String value);
}
extension type GPUPipelineLayoutDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUPipelineLayoutDescriptor({
    String label,
    required JSArray<GPUBindGroupLayout?> bindGroupLayouts,
  });

  external JSArray<GPUBindGroupLayout?> get bindGroupLayouts;
  external set bindGroupLayouts(JSArray<GPUBindGroupLayout?> value);
}

/// The **`GPUShaderModule`** interface of the [WebGPU API] represents an
/// internal shader module object, a container for
/// [WGSL](https://gpuweb.github.io/gpuweb/wgsl/) shader code that can be
/// submitted to the GPU for execution by a pipeline.
///
/// A `GPUShaderModule` object instance is created using
/// [GPUDevice.createShaderModule].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUShaderModule).
extension type GPUShaderModule._(JSObject _) implements JSObject {
  /// The **`getCompilationInfo()`** method of the
  /// [GPUShaderModule] interface returns a `Promise` that fulfills with a
  /// [GPUCompilationInfo] object containing messages generated during the
  /// `GPUShaderModule`'s compilation.
  external JSPromise<GPUCompilationInfo> getCompilationInfo();

  /// The **`label`** property of the
  /// [GPUShaderModule] interface provides a label that can be used to identify
  /// the object, for example in [GPUError] messages or console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createShaderModule] call, or you
  /// can get and set it directly on the `GPUShaderModule` object.
  external String get label;
  external set label(String value);
}
extension type GPUShaderModuleDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUShaderModuleDescriptor({
    String label,
    required String code,
    JSArray<GPUShaderModuleCompilationHint> compilationHints,
  });

  external String get code;
  external set code(String value);
  external JSArray<GPUShaderModuleCompilationHint> get compilationHints;
  external set compilationHints(JSArray<GPUShaderModuleCompilationHint> value);
}
extension type GPUShaderModuleCompilationHint._(JSObject _)
    implements JSObject {
  external factory GPUShaderModuleCompilationHint({
    required String entryPoint,
    JSAny layout,
  });

  external String get entryPoint;
  external set entryPoint(String value);
  external JSAny get layout;
  external set layout(JSAny value);
}

/// The **`GPUCompilationMessage`** interface of the [WebGPU API] represents a
/// single informational, warning, or error message generated by the GPU shader
/// module compiler.
///
/// An array of `GPUCompilationMessage` objects is available in the `messages`
/// property of the [GPUCompilationInfo] object accessed via
/// [GPUShaderModule.getCompilationInfo].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUCompilationMessage).
extension type GPUCompilationMessage._(JSObject _) implements JSObject {
  /// The **`message`** read-only property of the
  /// [GPUCompilationMessage] interface is a string representing human-readable
  /// message text.
  external String get message;

  /// The **`type`** read-only property of the
  /// [GPUCompilationMessage] interface is an enumerated value representing the
  /// type of the message. Each type represents a different severity level.
  external GPUCompilationMessageType get type;

  /// The **`lineNum`** read-only property of the
  /// [GPUCompilationMessage] interface is a number representing the line number
  /// in the shader code that the message corresponds to.
  external int get lineNum;

  /// The **`linePos`** read-only property of the
  /// [GPUCompilationMessage] interface is a number representing the position in
  /// the code line that the message corresponds to. This could be an exact
  /// point, or the start of the relevant substring.
  external int get linePos;

  /// The **`offset`** read-only property of the
  /// [GPUCompilationMessage] interface is a number representing the offset from
  /// the start of the shader code to the exact point, or the start of the
  /// relevant substring, that the message corresponds to.
  external int get offset;

  /// The **`length`** read-only property of the
  /// [GPUCompilationMessage] interface is a number representing the length of
  /// the substring that the message corresponds to.
  external int get length;
}

/// The **`GPUCompilationInfo`** interface of the [WebGPU API] represents an
/// array of [GPUCompilationMessage] objects generated by the GPU shader module
/// compiler to help diagnose problems with shader code.
///
/// `GPUCompilationInfo` is accessed via [GPUShaderModule.getCompilationInfo].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUCompilationInfo).
extension type GPUCompilationInfo._(JSObject _) implements JSObject {
  /// The **`messages`** read-only property of the
  /// [GPUCompilationInfo] interface is an array of [GPUCompilationMessage]
  /// objects, each one containing the details of an individual shader
  /// compilation message. Messages can be informational, warnings, or errors.
  external JSArray<GPUCompilationMessage> get messages;
}

/// The **`GPUPipelineError`** interface of the [WebGPU API] describes a
/// pipeline failure. This is the value received when a `Promise` returned by a
/// [GPUDevice.createComputePipelineAsync] or
/// [GPUDevice.createRenderPipelineAsync] call rejects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUPipelineError).
extension type GPUPipelineError._(JSObject _)
    implements DOMException, JSObject {
  external factory GPUPipelineError(
    GPUPipelineErrorInit options, [
    String message,
  ]);

  /// The **`reason`** read-only property of the
  /// [GPUPipelineError] interface defines the reason the pipeline creation
  /// failed in a machine-readable way.
  external GPUPipelineErrorReason get reason;
}
extension type GPUPipelineErrorInit._(JSObject _) implements JSObject {
  external factory GPUPipelineErrorInit(
      {required GPUPipelineErrorReason reason});

  external GPUPipelineErrorReason get reason;
  external set reason(GPUPipelineErrorReason value);
}
extension type GPUPipelineDescriptorBase._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUPipelineDescriptorBase({
    String label,
    required JSAny layout,
  });

  external JSAny get layout;
  external set layout(JSAny value);
}
extension type GPUProgrammableStage._(JSObject _) implements JSObject {
  external factory GPUProgrammableStage({
    required GPUShaderModule module,
    String entryPoint,
    JSObject constants,
  });

  external GPUShaderModule get module;
  external set module(GPUShaderModule value);
  external String get entryPoint;
  external set entryPoint(String value);
  external JSObject get constants;
  external set constants(JSObject value);
}

/// The **`GPUComputePipeline`** interface of the [WebGPU API] represents a
/// pipeline that controls the compute shader stage and can be used in a
/// [GPUComputePassEncoder].
///
/// A `GPUComputePipeline` object instance can be created using the
/// [GPUDevice.createComputePipeline] or [GPUDevice.createComputePipelineAsync]
/// methods.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUComputePipeline).
extension type GPUComputePipeline._(JSObject _) implements JSObject {
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

  /// The **`label`** property of the
  /// [GPUComputePipeline] interface provides a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createComputePipeline] or
  /// [GPUDevice.createComputePipelineAsync] call, or you can get and set it
  /// directly on the `GPUComputePipeline` object.
  external String get label;
  external set label(String value);
}
extension type GPUComputePipelineDescriptor._(JSObject _)
    implements GPUPipelineDescriptorBase, JSObject {
  external factory GPUComputePipelineDescriptor({
    String label,
    required JSAny layout,
    required GPUProgrammableStage compute,
  });

  external GPUProgrammableStage get compute;
  external set compute(GPUProgrammableStage value);
}

/// The **`GPURenderPipeline`** interface of the [WebGPU API] represents a
/// pipeline that controls the vertex and fragment shader stages and can be used
/// in a [GPURenderPassEncoder] or [GPURenderBundleEncoder].
///
/// A `GPURenderPipeline` object instance can be created using the
/// [GPUDevice.createRenderPipeline] or [GPUDevice.createRenderPipelineAsync]
/// methods.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPURenderPipeline).
extension type GPURenderPipeline._(JSObject _) implements JSObject {
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

  /// The **`label`** property of the
  /// [GPURenderPipeline] interface provides a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createRenderPipeline] or
  /// [GPUDevice.createRenderPipelineAsync] call, or you can get and set it
  /// directly on the `GPURenderPipeline` object.
  external String get label;
  external set label(String value);
}
extension type GPURenderPipelineDescriptor._(JSObject _)
    implements GPUPipelineDescriptorBase, JSObject {
  external factory GPURenderPipelineDescriptor({
    String label,
    required JSAny layout,
    required GPUVertexState vertex,
    GPUPrimitiveState primitive,
    GPUDepthStencilState depthStencil,
    GPUMultisampleState multisample,
    GPUFragmentState fragment,
  });

  external GPUVertexState get vertex;
  external set vertex(GPUVertexState value);
  external GPUPrimitiveState get primitive;
  external set primitive(GPUPrimitiveState value);
  external GPUDepthStencilState get depthStencil;
  external set depthStencil(GPUDepthStencilState value);
  external GPUMultisampleState get multisample;
  external set multisample(GPUMultisampleState value);
  external GPUFragmentState get fragment;
  external set fragment(GPUFragmentState value);
}
extension type GPUPrimitiveState._(JSObject _) implements JSObject {
  external factory GPUPrimitiveState({
    GPUPrimitiveTopology topology,
    GPUIndexFormat stripIndexFormat,
    GPUFrontFace frontFace,
    GPUCullMode cullMode,
    bool unclippedDepth,
  });

  external GPUPrimitiveTopology get topology;
  external set topology(GPUPrimitiveTopology value);
  external GPUIndexFormat get stripIndexFormat;
  external set stripIndexFormat(GPUIndexFormat value);
  external GPUFrontFace get frontFace;
  external set frontFace(GPUFrontFace value);
  external GPUCullMode get cullMode;
  external set cullMode(GPUCullMode value);
  external bool get unclippedDepth;
  external set unclippedDepth(bool value);
}
extension type GPUMultisampleState._(JSObject _) implements JSObject {
  external factory GPUMultisampleState({
    GPUSize32 count,
    GPUSampleMask mask,
    bool alphaToCoverageEnabled,
  });

  external GPUSize32 get count;
  external set count(GPUSize32 value);
  external GPUSampleMask get mask;
  external set mask(GPUSampleMask value);
  external bool get alphaToCoverageEnabled;
  external set alphaToCoverageEnabled(bool value);
}
extension type GPUFragmentState._(JSObject _)
    implements GPUProgrammableStage, JSObject {
  external factory GPUFragmentState({
    required GPUShaderModule module,
    String entryPoint,
    JSObject constants,
    required JSArray<GPUColorTargetState?> targets,
  });

  external JSArray<GPUColorTargetState?> get targets;
  external set targets(JSArray<GPUColorTargetState?> value);
}
extension type GPUColorTargetState._(JSObject _) implements JSObject {
  external factory GPUColorTargetState({
    required GPUTextureFormat format,
    GPUBlendState blend,
    GPUColorWriteFlags writeMask,
  });

  external GPUTextureFormat get format;
  external set format(GPUTextureFormat value);
  external GPUBlendState get blend;
  external set blend(GPUBlendState value);
  external GPUColorWriteFlags get writeMask;
  external set writeMask(GPUColorWriteFlags value);
}
extension type GPUBlendState._(JSObject _) implements JSObject {
  external factory GPUBlendState({
    required GPUBlendComponent color,
    required GPUBlendComponent alpha,
  });

  external GPUBlendComponent get color;
  external set color(GPUBlendComponent value);
  external GPUBlendComponent get alpha;
  external set alpha(GPUBlendComponent value);
}
@JS()
external $GPUColorWrite get GPUColorWrite;
@JS('GPUColorWrite')
extension type $GPUColorWrite._(JSObject _) implements JSObject {
  static const GPUFlagsConstant RED = 1;

  static const GPUFlagsConstant GREEN = 2;

  static const GPUFlagsConstant BLUE = 4;

  static const GPUFlagsConstant ALPHA = 8;

  static const GPUFlagsConstant ALL = 15;
}
extension type GPUBlendComponent._(JSObject _) implements JSObject {
  external factory GPUBlendComponent({
    GPUBlendOperation operation,
    GPUBlendFactor srcFactor,
    GPUBlendFactor dstFactor,
  });

  external GPUBlendOperation get operation;
  external set operation(GPUBlendOperation value);
  external GPUBlendFactor get srcFactor;
  external set srcFactor(GPUBlendFactor value);
  external GPUBlendFactor get dstFactor;
  external set dstFactor(GPUBlendFactor value);
}
extension type GPUDepthStencilState._(JSObject _) implements JSObject {
  external factory GPUDepthStencilState({
    required GPUTextureFormat format,
    bool depthWriteEnabled,
    GPUCompareFunction depthCompare,
    GPUStencilFaceState stencilFront,
    GPUStencilFaceState stencilBack,
    GPUStencilValue stencilReadMask,
    GPUStencilValue stencilWriteMask,
    GPUDepthBias depthBias,
    num depthBiasSlopeScale,
    num depthBiasClamp,
  });

  external GPUTextureFormat get format;
  external set format(GPUTextureFormat value);
  external bool get depthWriteEnabled;
  external set depthWriteEnabled(bool value);
  external GPUCompareFunction get depthCompare;
  external set depthCompare(GPUCompareFunction value);
  external GPUStencilFaceState get stencilFront;
  external set stencilFront(GPUStencilFaceState value);
  external GPUStencilFaceState get stencilBack;
  external set stencilBack(GPUStencilFaceState value);
  external GPUStencilValue get stencilReadMask;
  external set stencilReadMask(GPUStencilValue value);
  external GPUStencilValue get stencilWriteMask;
  external set stencilWriteMask(GPUStencilValue value);
  external GPUDepthBias get depthBias;
  external set depthBias(GPUDepthBias value);
  external double get depthBiasSlopeScale;
  external set depthBiasSlopeScale(num value);
  external double get depthBiasClamp;
  external set depthBiasClamp(num value);
}
extension type GPUStencilFaceState._(JSObject _) implements JSObject {
  external factory GPUStencilFaceState({
    GPUCompareFunction compare,
    GPUStencilOperation failOp,
    GPUStencilOperation depthFailOp,
    GPUStencilOperation passOp,
  });

  external GPUCompareFunction get compare;
  external set compare(GPUCompareFunction value);
  external GPUStencilOperation get failOp;
  external set failOp(GPUStencilOperation value);
  external GPUStencilOperation get depthFailOp;
  external set depthFailOp(GPUStencilOperation value);
  external GPUStencilOperation get passOp;
  external set passOp(GPUStencilOperation value);
}
extension type GPUVertexState._(JSObject _)
    implements GPUProgrammableStage, JSObject {
  external factory GPUVertexState({
    required GPUShaderModule module,
    String entryPoint,
    JSObject constants,
    JSArray<GPUVertexBufferLayout?> buffers,
  });

  external JSArray<GPUVertexBufferLayout?> get buffers;
  external set buffers(JSArray<GPUVertexBufferLayout?> value);
}
extension type GPUVertexBufferLayout._(JSObject _) implements JSObject {
  external factory GPUVertexBufferLayout({
    required GPUSize64 arrayStride,
    GPUVertexStepMode stepMode,
    required JSArray<GPUVertexAttribute> attributes,
  });

  external GPUSize64 get arrayStride;
  external set arrayStride(GPUSize64 value);
  external GPUVertexStepMode get stepMode;
  external set stepMode(GPUVertexStepMode value);
  external JSArray<GPUVertexAttribute> get attributes;
  external set attributes(JSArray<GPUVertexAttribute> value);
}
extension type GPUVertexAttribute._(JSObject _) implements JSObject {
  external factory GPUVertexAttribute({
    required GPUVertexFormat format,
    required GPUSize64 offset,
    required GPUIndex32 shaderLocation,
  });

  external GPUVertexFormat get format;
  external set format(GPUVertexFormat value);
  external GPUSize64 get offset;
  external set offset(GPUSize64 value);
  external GPUIndex32 get shaderLocation;
  external set shaderLocation(GPUIndex32 value);
}
extension type GPUTexelCopyBufferLayout._(JSObject _) implements JSObject {
  external factory GPUTexelCopyBufferLayout({
    GPUSize64 offset,
    GPUSize32 bytesPerRow,
    GPUSize32 rowsPerImage,
  });

  external GPUSize64 get offset;
  external set offset(GPUSize64 value);
  external GPUSize32 get bytesPerRow;
  external set bytesPerRow(GPUSize32 value);
  external GPUSize32 get rowsPerImage;
  external set rowsPerImage(GPUSize32 value);
}
extension type GPUTexelCopyBufferInfo._(JSObject _)
    implements GPUTexelCopyBufferLayout, JSObject {
  external factory GPUTexelCopyBufferInfo({
    GPUSize64 offset,
    GPUSize32 bytesPerRow,
    GPUSize32 rowsPerImage,
    required GPUBuffer buffer,
  });

  external GPUBuffer get buffer;
  external set buffer(GPUBuffer value);
}
extension type GPUTexelCopyTextureInfo._(JSObject _) implements JSObject {
  external factory GPUTexelCopyTextureInfo({
    required GPUTexture texture,
    GPUIntegerCoordinate mipLevel,
    GPUOrigin3D origin,
    GPUTextureAspect aspect,
  });

  external GPUTexture get texture;
  external set texture(GPUTexture value);
  external GPUIntegerCoordinate get mipLevel;
  external set mipLevel(GPUIntegerCoordinate value);
  external GPUOrigin3D get origin;
  external set origin(GPUOrigin3D value);
  external GPUTextureAspect get aspect;
  external set aspect(GPUTextureAspect value);
}
extension type GPUCopyExternalImageDestInfo._(JSObject _)
    implements GPUTexelCopyTextureInfo, JSObject {
  external factory GPUCopyExternalImageDestInfo({
    required GPUTexture texture,
    GPUIntegerCoordinate mipLevel,
    GPUOrigin3D origin,
    GPUTextureAspect aspect,
    PredefinedColorSpace colorSpace,
    bool premultipliedAlpha,
  });

  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool value);
}
extension type GPUCopyExternalImageSourceInfo._(JSObject _)
    implements JSObject {
  external factory GPUCopyExternalImageSourceInfo({
    required GPUCopyExternalImageSource source,
    GPUOrigin2D origin,
    bool flipY,
  });

  external GPUCopyExternalImageSource get source;
  external set source(GPUCopyExternalImageSource value);
  external GPUOrigin2D get origin;
  external set origin(GPUOrigin2D value);
  external bool get flipY;
  external set flipY(bool value);
}

/// The **`GPUCommandBuffer`** interface of the [WebGPU API] represents a
/// pre-recorded list of GPU commands that can be submitted to a [GPUQueue] for
/// execution.
///
/// A `GPUCommandBuffer` is created via the [GPUCommandEncoder.finish] method;
/// the GPU commands recorded within are submitted for execution by passing the
/// `GPUCommandBuffer` into the parameter of a [GPUQueue.submit] call.
///
/// > [!NOTE]
/// > Once a `GPUCommandBuffer` object has been submitted, it cannot be used
/// > again.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUCommandBuffer).
extension type GPUCommandBuffer._(JSObject _) implements JSObject {
  /// The **`label`** read-only property of the
  /// [GPUCommandBuffer] interface is a string providing a label that can be
  /// used to identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUCommandEncoder.finish] call, or you can
  /// get and set it directly on the `GPUCommandBuffer` object.
  external String get label;
  external set label(String value);
}
extension type GPUCommandBufferDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUCommandBufferDescriptor({String label});
}

/// The **`GPUCommandEncoder`** interface of the [WebGPU API] represents a
/// command encoder, used to encode commands to be issued to the GPU.
///
/// A `GPUCommandEncoder` object instance is created via the
/// [GPUDevice.createCommandEncoder] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUCommandEncoder).
extension type GPUCommandEncoder._(JSObject _) implements JSObject {
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
    JSAny destinationOrSourceOffset, [
    JSAny destinationOrSize,
    GPUSize64 destinationOffset,
    GPUSize64 size,
  ]);

  /// The **`copyBufferToTexture()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from a
  /// [GPUBuffer] to a [GPUTexture].
  external void copyBufferToTexture(
    GPUTexelCopyBufferInfo source,
    GPUTexelCopyTextureInfo destination,
    GPUExtent3D copySize,
  );

  /// The **`copyTextureToBuffer()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from a
  /// [GPUTexture] to a [GPUBuffer].
  external void copyTextureToBuffer(
    GPUTexelCopyTextureInfo source,
    GPUTexelCopyBufferInfo destination,
    GPUExtent3D copySize,
  );

  /// The **`copyTextureToTexture()`** method of the
  /// [GPUCommandEncoder] interface encodes a command that copies data from one
  /// [GPUTexture] to another.
  external void copyTextureToTexture(
    GPUTexelCopyTextureInfo source,
    GPUTexelCopyTextureInfo destination,
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

  /// The **`label`** read-only property of the
  /// [GPUCommandEncoder] interface is a string providing a label that can be
  /// used to identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createCommandEncoder] call, or you
  /// can get and set it directly on the `GPUCommandEncoder` object.
  external String get label;
  external set label(String value);
}
extension type GPUCommandEncoderDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUCommandEncoderDescriptor({String label});
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUComputePassEncoder).
extension type GPUComputePassEncoder._(JSObject _) implements JSObject {
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

  /// The **`label`** read-only property of the
  /// [GPUComputePassEncoder] interface is a string providing a label that can
  /// be used to identify the object, for example in [GPUError] messages or
  /// console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUCommandEncoder.beginComputePass] call, or
  /// you can get and set it directly on the `GPUComputePassEncoder` object.
  external String get label;
  external set label(String value);
}
extension type GPUComputePassTimestampWrites._(JSObject _) implements JSObject {
  external factory GPUComputePassTimestampWrites({
    required GPUQuerySet querySet,
    GPUSize32 beginningOfPassWriteIndex,
    GPUSize32 endOfPassWriteIndex,
  });

  external GPUQuerySet get querySet;
  external set querySet(GPUQuerySet value);
  external GPUSize32 get beginningOfPassWriteIndex;
  external set beginningOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get endOfPassWriteIndex;
  external set endOfPassWriteIndex(GPUSize32 value);
}
extension type GPUComputePassDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUComputePassDescriptor({
    String label,
    GPUComputePassTimestampWrites timestampWrites,
  });

  external GPUComputePassTimestampWrites get timestampWrites;
  external set timestampWrites(GPUComputePassTimestampWrites value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPURenderPassEncoder).
extension type GPURenderPassEncoder._(JSObject _) implements JSObject {
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
  /// > [!NOTE]
  /// > After calling `executeBundles()` the currently set vertex buffers, index
  /// > buffers, bind groups, and pipeline are all cleared, even if no bundles
  /// > are actually executed.
  external void executeBundles(JSArray<GPURenderBundle> bundles);

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

  /// The **`label`** read-only property of the
  /// [GPURenderPassEncoder] interface is a string providing a label that can be
  /// used to identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUCommandEncoder.beginRenderPass] call, or
  /// you can get and set it directly on the `GPURenderPassEncoder` object.
  external String get label;
  external set label(String value);
}
extension type GPURenderPassTimestampWrites._(JSObject _) implements JSObject {
  external factory GPURenderPassTimestampWrites({
    required GPUQuerySet querySet,
    GPUSize32 beginningOfPassWriteIndex,
    GPUSize32 endOfPassWriteIndex,
  });

  external GPUQuerySet get querySet;
  external set querySet(GPUQuerySet value);
  external GPUSize32 get beginningOfPassWriteIndex;
  external set beginningOfPassWriteIndex(GPUSize32 value);
  external GPUSize32 get endOfPassWriteIndex;
  external set endOfPassWriteIndex(GPUSize32 value);
}
extension type GPURenderPassDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPURenderPassDescriptor({
    String label,
    required JSArray<GPURenderPassColorAttachment?> colorAttachments,
    GPURenderPassDepthStencilAttachment depthStencilAttachment,
    GPUQuerySet occlusionQuerySet,
    GPURenderPassTimestampWrites timestampWrites,
    GPUSize64 maxDrawCount,
  });

  external JSArray<GPURenderPassColorAttachment?> get colorAttachments;
  external set colorAttachments(JSArray<GPURenderPassColorAttachment?> value);
  external GPURenderPassDepthStencilAttachment get depthStencilAttachment;
  external set depthStencilAttachment(
      GPURenderPassDepthStencilAttachment value);
  external GPUQuerySet get occlusionQuerySet;
  external set occlusionQuerySet(GPUQuerySet value);
  external GPURenderPassTimestampWrites get timestampWrites;
  external set timestampWrites(GPURenderPassTimestampWrites value);
  external GPUSize64 get maxDrawCount;
  external set maxDrawCount(GPUSize64 value);
}
extension type GPURenderPassColorAttachment._(JSObject _) implements JSObject {
  external factory GPURenderPassColorAttachment({
    required JSObject view,
    GPUIntegerCoordinate depthSlice,
    JSObject resolveTarget,
    GPUColor clearValue,
    required GPULoadOp loadOp,
    required GPUStoreOp storeOp,
  });

  external JSObject get view;
  external set view(JSObject value);
  external GPUIntegerCoordinate get depthSlice;
  external set depthSlice(GPUIntegerCoordinate value);
  external JSObject get resolveTarget;
  external set resolveTarget(JSObject value);
  external GPUColor get clearValue;
  external set clearValue(GPUColor value);
  external GPULoadOp get loadOp;
  external set loadOp(GPULoadOp value);
  external GPUStoreOp get storeOp;
  external set storeOp(GPUStoreOp value);
}
extension type GPURenderPassDepthStencilAttachment._(JSObject _)
    implements JSObject {
  external factory GPURenderPassDepthStencilAttachment({
    required JSObject view,
    num depthClearValue,
    GPULoadOp depthLoadOp,
    GPUStoreOp depthStoreOp,
    bool depthReadOnly,
    GPUStencilValue stencilClearValue,
    GPULoadOp stencilLoadOp,
    GPUStoreOp stencilStoreOp,
    bool stencilReadOnly,
  });

  external JSObject get view;
  external set view(JSObject value);
  external double get depthClearValue;
  external set depthClearValue(num value);
  external GPULoadOp get depthLoadOp;
  external set depthLoadOp(GPULoadOp value);
  external GPUStoreOp get depthStoreOp;
  external set depthStoreOp(GPUStoreOp value);
  external bool get depthReadOnly;
  external set depthReadOnly(bool value);
  external GPUStencilValue get stencilClearValue;
  external set stencilClearValue(GPUStencilValue value);
  external GPULoadOp get stencilLoadOp;
  external set stencilLoadOp(GPULoadOp value);
  external GPUStoreOp get stencilStoreOp;
  external set stencilStoreOp(GPUStoreOp value);
  external bool get stencilReadOnly;
  external set stencilReadOnly(bool value);
}
extension type GPURenderPassLayout._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPURenderPassLayout({
    String label,
    required JSArray<JSString?> colorFormats,
    GPUTextureFormat depthStencilFormat,
    GPUSize32 sampleCount,
  });

  external JSArray<JSString?> get colorFormats;
  external set colorFormats(JSArray<JSString?> value);
  external GPUTextureFormat get depthStencilFormat;
  external set depthStencilFormat(GPUTextureFormat value);
  external GPUSize32 get sampleCount;
  external set sampleCount(GPUSize32 value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPURenderBundle).
extension type GPURenderBundle._(JSObject _) implements JSObject {
  /// The **`label`** read-only property of the
  /// [GPURenderBundle] interface is a string providing a label that can be used
  /// to identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPURenderBundleEncoder.finish] call, or you
  /// can get and set it directly on the `GPURenderBundle` object.
  external String get label;
  external set label(String value);
}
extension type GPURenderBundleDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPURenderBundleDescriptor({String label});
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
/// > [!NOTE]
/// > Currently set vertex buffers, index buffers, bind groups, and pipeline are
/// > all cleared prior to executing a render bundle, and once the render bundle
/// > has finished executing.
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
/// > [!NOTE]
/// > The methods of `GPURenderBundleEncoder` are functionally identical to
/// > their equivalents available on [GPURenderPassEncoder], except for
/// > [GPURenderBundleEncoder.finish], which is similar in purpose to
/// > [GPUCommandEncoder.finish].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPURenderBundleEncoder).
extension type GPURenderBundleEncoder._(JSObject _) implements JSObject {
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.InsertDebugMarker].
  external void insertDebugMarker(String markerLabel);

  /// The **`setBindGroup()`** method of the
  /// [GPURenderBundleEncoder] interface sets the [GPUBindGroup] to use for
  /// subsequent render bundle commands, for a given index.
  ///
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.setPipeline].
  external void setPipeline(GPURenderPipeline pipeline);

  /// The **`setIndexBuffer()`** method of the
  /// [GPURenderBundleEncoder] interface sets the current [GPUBuffer] that will
  /// provide index data for subsequent drawing commands.
  ///
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
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
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.drawIndirect].
  external void drawIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );

  /// The **`drawIndexedIndirect()`** method of the
  /// [GPURenderBundleEncoder] interface draws indexed primitives using
  /// parameters read from a [GPUBuffer].
  ///
  /// > [!NOTE]
  /// > This method is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.drawIndexedIndirect].
  external void drawIndexedIndirect(
    GPUBuffer indirectBuffer,
    GPUSize64 indirectOffset,
  );

  /// The **`label`** read-only property of the
  /// [GPURenderBundleEncoder] interface is a string providing a label that can
  /// be used to identify the object, for example in [GPUError] messages or
  /// console warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createRenderBundleEncoder] call, or
  /// you can get and set it directly on the `GPURenderBundleEncoder` object.
  ///
  /// > [!NOTE]
  /// > This property is functionally identical to its equivalent on
  /// > [GPURenderPassEncoder] — [GPURenderPassEncoder.label].
  external String get label;
  external set label(String value);
}
extension type GPURenderBundleEncoderDescriptor._(JSObject _)
    implements GPURenderPassLayout, JSObject {
  external factory GPURenderBundleEncoderDescriptor({
    String label,
    required JSArray<JSString?> colorFormats,
    GPUTextureFormat depthStencilFormat,
    GPUSize32 sampleCount,
    bool depthReadOnly,
    bool stencilReadOnly,
  });

  external bool get depthReadOnly;
  external set depthReadOnly(bool value);
  external bool get stencilReadOnly;
  external set stencilReadOnly(bool value);
}
extension type GPUQueueDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUQueueDescriptor({String label});
}

/// The **`GPUQueue`** interface of the [WebGPU API] controls execution of
/// encoded commands on the GPU.
///
/// A device's primary queue is accessed via the [GPUDevice.queue] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUQueue).
extension type GPUQueue._(JSObject _) implements JSObject {
  /// The **`submit()`** method of the
  /// [GPUQueue] interface schedules the execution of command buffers
  /// represented by one or more [GPUCommandBuffer] objects by the GPU.
  external void submit(JSArray<GPUCommandBuffer> commandBuffers);

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
  external JSPromise<JSAny?> onSubmittedWorkDone();

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
    GPUTexelCopyTextureInfo destination,
    AllowSharedBufferSource data,
    GPUTexelCopyBufferLayout dataLayout,
    GPUExtent3D size,
  );

  /// The **`copyExternalImageToTexture()`** method of the
  /// [GPUQueue] interface copies a snapshot taken from a source image, video,
  /// or canvas into a given [GPUTexture].
  ///
  /// Using this function allows the user agent to determine the most efficient
  /// way to copy the data over for each source type.
  external void copyExternalImageToTexture(
    GPUCopyExternalImageSourceInfo source,
    GPUCopyExternalImageDestInfo destination,
    GPUExtent3D copySize,
  );

  /// The **`label`** read-only property of the
  /// [GPUQueue] interface is a string providing a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// You can get and set it directly on the `GPUQueue` object.
  external String get label;
  external set label(String value);
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
///   [GPUCommandEncoder.beginComputePass] to run a compute pass.
///
/// > [!NOTE]
/// > The `timestamp-query`
/// > [feature](https://developer.mozilla.org/en-US/docs/Web/API/GPUSupportedFeatures)
/// > needs to be enabled to use timestamp queries.
///
/// A `GPUQuerySet` object instance is created using the
/// [GPUDevice.createQuerySet] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUQuerySet).
extension type GPUQuerySet._(JSObject _) implements JSObject {
  /// The **`destroy()`** method of the
  /// [GPUQuerySet] interface destroys the `GPUQuerySet`.
  external void destroy();

  /// The **`type`** read-only property of the
  /// [GPUQuerySet] interface is an enumerated value specifying the type of
  /// queries managed by the `GPUQuerySet`.
  external GPUQueryType get type;

  /// The **`count`** read-only property of the
  /// [GPUQuerySet] interface is a number specifying the number of queries
  /// managed by the `GPUQuerySet`.
  external GPUSize32Out get count;

  /// The **`label`** property of the
  /// [GPUQuerySet] interface is a string providing a label that can be used to
  /// identify the object, for example in [GPUError] messages or console
  /// warnings.
  ///
  /// This can be set by providing a `label` property in the descriptor object
  /// passed into the originating [GPUDevice.createQuerySet] call, or you can
  /// get and set it directly on the `GPUQuerySet` object.
  external String get label;
  external set label(String value);
}
extension type GPUQuerySetDescriptor._(JSObject _)
    implements GPUObjectDescriptorBase, JSObject {
  external factory GPUQuerySetDescriptor({
    String label,
    required GPUQueryType type,
    required GPUSize32 count,
  });

  external GPUQueryType get type;
  external set type(GPUQueryType value);
  external GPUSize32 get count;
  external set count(GPUSize32 value);
}

/// The **`GPUCanvasContext`** interface of the [WebGPU API] represents the
/// WebGPU rendering context of a `canvas` element, returned via an
/// [HTMLCanvasElement.getContext] call with a `contextType` of `"webgpu"`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUCanvasContext).
extension type GPUCanvasContext._(JSObject _) implements JSObject {
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

  /// The **`getConfiguration()`** method of the
  /// [GPUCanvasContext] interface returns the current configuration set for the
  /// context.
  external GPUCanvasConfiguration? getConfiguration();

  /// The **`getCurrentTexture()`** method of the
  /// [GPUCanvasContext] interface returns the next [GPUTexture] to be
  /// composited to the document by the canvas context.
  external GPUTexture getCurrentTexture();

  /// The **`canvas`** read-only property of the
  /// [GPUCanvasContext] interface returns a reference to the canvas that the
  /// context was created from.
  external JSObject get canvas;
}
extension type GPUCanvasToneMapping._(JSObject _) implements JSObject {
  external factory GPUCanvasToneMapping({GPUCanvasToneMappingMode mode});

  external GPUCanvasToneMappingMode get mode;
  external set mode(GPUCanvasToneMappingMode value);
}
extension type GPUCanvasConfiguration._(JSObject _) implements JSObject {
  external factory GPUCanvasConfiguration({
    required GPUDevice device,
    required GPUTextureFormat format,
    GPUTextureUsageFlags usage,
    JSArray<JSString> viewFormats,
    PredefinedColorSpace colorSpace,
    GPUCanvasToneMapping toneMapping,
    GPUCanvasAlphaMode alphaMode,
  });

  external GPUDevice get device;
  external set device(GPUDevice value);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat value);
  external GPUTextureUsageFlags get usage;
  external set usage(GPUTextureUsageFlags value);
  external JSArray<JSString> get viewFormats;
  external set viewFormats(JSArray<JSString> value);
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
  external GPUCanvasToneMapping get toneMapping;
  external set toneMapping(GPUCanvasToneMapping value);
  external GPUCanvasAlphaMode get alphaMode;
  external set alphaMode(GPUCanvasAlphaMode value);
}

/// The **`GPUDeviceLostInfo`** interface of the [WebGPU API] represents the
/// object returned when the [GPUDevice.lost] `Promise` resolves. This provides
/// information as to why a device has been lost.
///
/// See the [GPUDevice.lost] page for more information about "lost" state.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUDeviceLostInfo).
extension type GPUDeviceLostInfo._(JSObject _) implements JSObject {
  /// The **`reason`** read-only property of the
  /// [GPUDeviceLostInfo] interface defines the reason the device was lost in a
  /// machine-readable way.
  external GPUDeviceLostReason get reason;

  /// The **`message`** read-only property of the
  /// [GPUDeviceLostInfo] interface provides a human-readable message that
  /// explains why the device was lost.
  external String get message;
}

/// The **`GPUError`** interface of the [WebGPU API] is the base interface for
/// errors surfaced by [GPUDevice.popErrorScope] and the
/// [GPUDevice.uncapturederror_event] event.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUError).
extension type GPUError._(JSObject _) implements JSObject {
  /// The **`message`** read-only property of the
  /// [GPUError] interface provides a human-readable message that explains why
  /// the error occurred.
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
/// > [!NOTE]
/// > We have attempted to provide useful information to help you understand why
/// > validation errors are occurring in your WebGPU code in "Validation"
/// > sections where appropriate, which list criteria to meet to avoid
/// > validation errors. See for example the [`GPUDevice.createBindGroup()`
/// > Validation
/// > section](/en-US/docs/Web/API/GPUDevice/createBindGroup#validation).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUValidationError).
extension type GPUValidationError._(JSObject _) implements GPUError, JSObject {
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUOutOfMemoryError).
extension type GPUOutOfMemoryError._(JSObject _) implements GPUError, JSObject {
  external factory GPUOutOfMemoryError(String message);
}

/// The **`GPUInternalError`** interface of the [WebGPU API] describes an
/// application error indicating that an operation failed for a system or
/// implementation-specific reason, even when all validation requirements were
/// satisfied.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUInternalError).
extension type GPUInternalError._(JSObject _) implements GPUError, JSObject {
  external factory GPUInternalError(String message);
}

/// The **`GPUUncapturedErrorEvent`** interface of the [WebGPU API] is the event
/// object type for the [GPUDevice] [GPUDevice.uncapturederror_event] event,
/// used for telemetry and to report unexpected errors.
///
/// Known error cases should be handled using [GPUDevice.pushErrorScope] and
/// [GPUDevice.popErrorScope].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GPUUncapturedErrorEvent).
extension type GPUUncapturedErrorEvent._(JSObject _)
    implements Event, JSObject {
  external factory GPUUncapturedErrorEvent(
    String type,
    GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict,
  );

  /// The **`error`** read-only property of the
  /// [GPUUncapturedErrorEvent] interface is a [GPUError] object instance
  /// providing access to the details of the error.
  external GPUError get error;
}
extension type GPUUncapturedErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory GPUUncapturedErrorEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required GPUError error,
  });

  external GPUError get error;
  external set error(GPUError value);
}
extension type GPUColorDict._(JSObject _) implements JSObject {
  external factory GPUColorDict({
    required num r,
    required num g,
    required num b,
    required num a,
  });

  external double get r;
  external set r(num value);
  external double get g;
  external set g(num value);
  external double get b;
  external set b(num value);
  external double get a;
  external set a(num value);
}
extension type GPUOrigin2DDict._(JSObject _) implements JSObject {
  external factory GPUOrigin2DDict({
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
  });

  external GPUIntegerCoordinate get x;
  external set x(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get y;
  external set y(GPUIntegerCoordinate value);
}
extension type GPUOrigin3DDict._(JSObject _) implements JSObject {
  external factory GPUOrigin3DDict({
    GPUIntegerCoordinate x,
    GPUIntegerCoordinate y,
    GPUIntegerCoordinate z,
  });

  external GPUIntegerCoordinate get x;
  external set x(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get y;
  external set y(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get z;
  external set z(GPUIntegerCoordinate value);
}
extension type GPUExtent3DDict._(JSObject _) implements JSObject {
  external factory GPUExtent3DDict({
    required GPUIntegerCoordinate width,
    GPUIntegerCoordinate height,
    GPUIntegerCoordinate depthOrArrayLayers,
  });

  external GPUIntegerCoordinate get width;
  external set width(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get height;
  external set height(GPUIntegerCoordinate value);
  external GPUIntegerCoordinate get depthOrArrayLayers;
  external set depthOrArrayLayers(GPUIntegerCoordinate value);
}
