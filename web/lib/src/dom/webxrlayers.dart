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
import 'geometry.dart';
import 'html.dart';
import 'raw_camera_access.dart';
import 'webgl1.dart';
import 'webxr.dart';
import 'webxr_depth_sensing.dart';
import 'webxr_lighting_estimation.dart';

typedef XRLayerLayout = String;
typedef XRLayerQuality = String;
typedef XRTextureType = String;

/// The **`XRCompositionLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a base class that defines a set of common properties and behaviors for
/// WebXR layer types. It is not constructable on its own.
///
/// Several layer types inherit from `XRCompositionLayer`:
///
/// - [XREquirectLayer]
/// - [XRCubeLayer]
/// - [XRCylinderLayer]
/// - [XRProjectionLayer]
/// - [XRQuadLayer]
///
/// `XRCompositionLayer` itself inherits from the general [XRLayer] class (which
/// inherits from [EventTarget]).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRCompositionLayer).
extension type XRCompositionLayer._(JSObject _) implements XRLayer, JSObject {
  /// The **`destroy()`** method of the [XRCompositionLayer] interface deletes
  /// the references to the underlying graphics library for the layer. It also
  /// sets the color textures and depth stencil texture arrays to an empty
  /// array.
  external void destroy();

  /// The read-only **`layout`** property of the [XRCompositionLayer] interface
  /// is the layout type of the layer.
  ///
  /// To specify the layout type of a layer, use one of the layer creation
  /// methods and their `layout` option:
  ///
  /// - [XRWebGLBinding.createQuadLayer]
  /// - [XRWebGLBinding.createCylinderLayer]
  /// - [XRWebGLBinding.createEquirectLayer]
  /// - [XRWebGLBinding.createCubeLayer]
  external XRLayerLayout get layout;

  /// The **`blendTextureSourceAlpha`** property of the [XRCompositionLayer]
  /// interface is a boolean enabling the layer's texture .
  external bool get blendTextureSourceAlpha;
  external set blendTextureSourceAlpha(bool value);
  external bool get forceMonoPresentation;
  external set forceMonoPresentation(bool value);
  external double get opacity;
  external set opacity(num value);

  /// The read-only **`mipLevels`** property of the [XRCompositionLayer]
  /// interface is a layer's number of mip levels in the color and texture data.
  /// See also [Mipmap](https://en.wikipedia.org/wiki/Mipmap) on Wikipedia.
  ///
  /// The desired number of mip levels can be specified when creating layers.
  /// However, if the user agent can't create the requested number, it can
  /// create less. Use `mipLevels` to determine the actual number of mip levels
  /// for a layer.
  ///
  /// The `viewPixelWidth` and `viewPixelHeight` need to be powers of two as
  /// they get successively halved at each mip level.
  external int get mipLevels;
  external XRLayerQuality get quality;
  external set quality(XRLayerQuality value);

  /// The read-only **`needsRedraw`** property of the [XRCompositionLayer]
  /// interface is a boolean signaling that the layer should be re-rendered in
  /// the next frame.
  ///
  /// The need for redrawing can occur when the underlying resources of a layer
  /// are lost due to textures that might have been freed by the compositor
  /// under the hood. This might happen when the device falls asleep or when the
  /// browser switches context (to an operating system dialog or similar) and
  /// then comes back.
  ///
  /// Redrawing is not a problem for layers which are updated with every frame.
  /// However, for layers updated infrequently, or for static layers (where you
  /// can only draw once after creation or after a `redraw` event), the layer's
  /// content might be lost and need to be redrawn. If the layer's resources are
  /// lost, the `needsRedraw` property will be `true` and a `redraw` event is
  /// fired on the layer.
  external bool get needsRedraw;
}

/// The **`XRProjectionLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a layer that fills the entire view of the observer and is refreshed close
/// to the device's native frame rate.
///
/// `XRProjectionLayer` is supported by all [XRSession] objects (no `layers`
/// feature descriptor is needed).
///
/// To create a new `XRProjectionLayer`, call
/// [XRWebGLBinding.createProjectionLayer].
/// To present layers to the XR device, add them to the `layers` render state
/// using [XRSession.updateRenderState].
///
/// `XRProjectionLayer` objects don't have an associated [XRSpace], because they
/// render to the full frame.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRProjectionLayer).
extension type XRProjectionLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  /// The read-only **`textureWidth`** property of the [XRProjectionLayer]
  /// interface indicates the width in pixels of the color textures of this
  /// layer.
  ///
  /// The projection layer's texture width is determined by the user agent or
  /// the device. It is reported in the [XRSubImage], which can only be accessed
  /// inside the frame loop. If you want to manage your own depth buffers and
  /// don't want to wait for first frame after layer creation to determine the
  /// required dimensions for those buffers, the `textureWidth` property allows
  /// access to layer texture width outside the frame loop. Allocation of these
  /// buffers can happen directly after layer creation.
  external int get textureWidth;

  /// The read-only **`textureHeight`** property of the [XRProjectionLayer]
  /// interface indicates the height in pixels of the color textures of this
  /// layer.
  ///
  /// The projection layer's texture height is determined by the user agent or
  /// the device. It is reported in the [XRSubImage], which can only be accessed
  /// inside the frame loop. If you want to manage your own depth buffers and
  /// don't want to wait for first frame after layer creation to determine the
  /// required dimensions for those buffers, the `textureHeight` property allows
  /// access to layer texture height outside the frame loop. Allocation of these
  /// buffers can happen directly after layer creation.
  external int get textureHeight;

  /// The read-only **`textureArrayLength`** property of the [XRProjectionLayer]
  /// interface indicates layer's layer count for array textures when using
  /// `texture-array` as the `textureType`.
  ///
  /// The projection layer's layer count for array textures is determined by the
  /// user agent or the device. It is reported in the [XRSubImage], which can
  /// only be accessed inside the frame loop. If you want to manage your own
  /// depth buffers and don't want to wait for first frame after layer creation
  /// to determine the required dimensions for those buffers, the
  /// `textureArrayLength` property allows access to layer count for array
  /// textures outside the frame loop. Allocation of these buffers can happen
  /// directly after layer creation.
  external int get textureArrayLength;

  /// The read-only **`ignoreDepthValues`** property of the [XRProjectionLayer]
  /// interface is a boolean indicating if the XR compositor is not making use
  /// of depth buffer values when rendering the layer.
  external bool get ignoreDepthValues;

  /// The **`fixedFoveation`** property of the [XRProjectionLayer] interface is
  /// a number indicating the amount of foveation used by the XR compositor for
  /// the layer. Fixed Foveated Rendering (FFR) renders the edges of the eye
  /// textures at a lower resolution than the center and reduces the GPU load.
  ///
  /// It is most useful for low-contrast textures such as background images, but
  /// less for high-contrast ones such as text or detailed images. Authors can
  /// adjust the level on a per-frame basis to achieve the best tradeoff between
  /// performance and visual quality.
  external double? get fixedFoveation;
  external set fixedFoveation(num? value);
  external XRRigidTransform? get deltaPose;
  external set deltaPose(XRRigidTransform? value);
}

/// The **`XRQuadLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a layer that takes up a flat rectangular space in the virtual
/// environment. An `XRQuadLayer` has no thickness. It is a two-dimensional
/// object positioned and oriented in 3D space. The position of a quad refers to
/// the center of the quad. Only the front of the layer is visible.
///
/// `XRQuadLayer` requires the `layers` feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession].
///
/// To create a new `XRQuadLayer`, call either:
///
/// - [XRWebGLBinding.createQuadLayer] for a WebGL opaque texture quad layer, or
/// - [XRMediaBinding.createQuadLayer] for an HTML `video` playback quad layer.
///
/// To present layers to the XR device, add them to the `layers` render state
/// using [XRSession.updateRenderState].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRQuadLayer).
extension type XRQuadLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  /// The **`space`** property of the [XRQuadLayer] interface represents the
  /// layer's spatial relationship with the user's physical environment.
  external XRSpace get space;
  external set space(XRSpace value);

  /// The **`transform`** property of the [XRQuadLayer] interface represents the
  /// offset and orientation relative to the layer's [XRQuadLayer.space].
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform value);

  /// The **`width`** property of the [XRQuadLayer] interface represents the
  /// width of the layer in meters.
  external double get width;
  external set width(num value);

  /// The **`height`** property of the [XRQuadLayer] interface represents the
  /// height of the layer in meters.
  external double get height;
  external set height(num value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

/// The **`XRCylinderLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a layer that takes up a curved rectangular space in the virtual
/// environment. Only the front of the layer is visible.
///
/// `XRCylinderLayer` requires the `layers` feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession].
///
/// To create a new `XRCylinderLayer`, call either:
///
/// - [XRWebGLBinding.createCylinderLayer] for a WebGL opaque texture layer, or
/// - [XRMediaBinding.createCylinderLayer] for an HTML `video` playback layer.
///
/// To present layers to the XR device, add them to the `layers` render state
/// using [XRSession.updateRenderState].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRCylinderLayer).
extension type XRCylinderLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  /// The **`space`** property of the [XRCylinderLayer] interface represents the
  /// layer's spatial relationship with the user's physical environment.
  external XRSpace get space;
  external set space(XRSpace value);

  /// The **`transform`** property of the [XRCylinderLayer] interface represents
  /// the offset and orientation relative to the layer's
  /// [XRCylinderLayer.space].
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform value);

  /// The **`radius`** property of the [XRCylinderLayer] interface represents
  /// the radius of the cylinder.
  external double get radius;
  external set radius(num value);

  /// The **`centralAngle`** property of the [XRCylinderLayer] interface
  /// represents the angle in radians of the visible section of the cylinder.
  external double get centralAngle;
  external set centralAngle(num value);

  /// The **`aspectRatio`** property of the [XRCylinderLayer] interface
  /// represents the ratio of the visible cylinder section. It is the ratio of
  /// the width of the visible section of the cylinder divided by its height.
  /// The width is calculated by multiplying the [XRCylinderLayer.radius] with
  /// the [XRCylinderLayer.centralAngle].
  external double get aspectRatio;
  external set aspectRatio(num value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

/// The **`XREquirectLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a layer that maps
/// [equirectangular](https://en.wikipedia.org/wiki/Equirectangular_projection)
/// coded data onto the inside of a sphere.
///
/// `XREquirectLayer` requires the `layers` feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession].
///
/// To create a new `XREquirectLayer`, call either:
///
/// - [XRWebGLBinding.createEquirectLayer] for a WebGL opaque texture layer, or
/// - [XRMediaBinding.createEquirectLayer] for an HTML `video` playback layer.
///
/// To present layers to the XR device, add them to the `layers` render state
/// using [XRSession.updateRenderState].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XREquirectLayer).
extension type XREquirectLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  /// The **`space`** property of the [XREquirectLayer] interface represents the
  /// layer's spatial relationship with the user's physical environment.
  external XRSpace get space;
  external set space(XRSpace value);

  /// The **`transform`** property of the [XREquirectLayer] interface represents
  /// the offset and orientation relative to the layer's
  /// [XREquirectLayer.space].
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform value);

  /// The **`radius`** property of the [XREquirectLayer] interface represents
  /// the radius of the sphere.
  external double get radius;
  external set radius(num value);

  /// The **`centralHorizontalAngle`** property of the [XREquirectLayer]
  /// interface represents the central horizontal angle in radians for the
  /// sphere.
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(num value);

  /// The **`upperVerticalAngle`** property of the [XREquirectLayer] interface
  /// represents the upper vertical angle in radians for the sphere.
  external double get upperVerticalAngle;
  external set upperVerticalAngle(num value);

  /// The **`lowerVerticalAngle`** property of the [XREquirectLayer] interface
  /// represents the lower vertical angle in radians for the sphere.
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(num value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

/// The **`XRCubeLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a layer that renders directly from a
/// [cubemap](https://en.wikipedia.org/wiki/Cube_mapping) and projects it onto
/// the inside faces of a cube.
///
/// `XRCubeLayer` requires the `layers` feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession].
///
/// To create a new `XRCubeLayer`, call [XRWebGLBinding.createCubeLayer].
///
/// To present layers to the XR device, add them to the `layers` render state
/// using [XRSession.updateRenderState].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRCubeLayer).
extension type XRCubeLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  /// The **`space`** property of the [XRCubeLayer] interface represents the
  /// layer's spatial relationship with the user's physical environment.
  external XRSpace get space;
  external set space(XRSpace value);

  /// The **`orientation`** property of the [XRCubeLayer] interface represents
  /// the orientation relative to the `space` property.
  external DOMPointReadOnly get orientation;
  external set orientation(DOMPointReadOnly value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

/// The **`XRSubImage`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// represents what viewport of the GPU texture to use for rendering.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRSubImage).
extension type XRSubImage._(JSObject _) implements JSObject {
  /// The read-only **`viewport`** property of the [XRSubImage] interface
  /// represents the [XRViewport] that is used when rendering the sub image.
  external XRViewport get viewport;
}

/// The **`XRWebGLSubImage`** interface is used during rendering of WebGL
/// layers.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRWebGLSubImage).
extension type XRWebGLSubImage._(JSObject _) implements XRSubImage, JSObject {
  /// The read-only **`colorTexture`** property of the [XRWebGLSubImage]
  /// interface represents the color [WebGLTexture] object for the
  /// [XRCompositionLayer] to render.
  external WebGLTexture get colorTexture;

  /// The read-only **`depthStencilTexture`** property of the [XRWebGLSubImage]
  /// interface represents the depth/stencil [WebGLTexture] object for the
  /// [XRCompositionLayer] to render.
  external WebGLTexture? get depthStencilTexture;
  external WebGLTexture? get motionVectorTexture;

  /// The read-only **`imageIndex`** property of the [XRWebGLSubImage] interface
  /// is a number representing the offset into the texture array if the layer
  /// was requested with `texture-array`;
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// otherwise.
  external int? get imageIndex;

  /// The read-only **`colorTextureWidth`** property of the [XRWebGLSubImage]
  /// interface is a number representing the width in pixels of the GL
  /// attachment.
  external int get colorTextureWidth;

  /// The read-only **`colorTextureHeight`** property of the [XRWebGLSubImage]
  /// interface is a number representing the height in pixels of the GL
  /// attachment.
  external int get colorTextureHeight;
  external int? get depthStencilTextureWidth;
  external int? get depthStencilTextureHeight;
  external int? get motionVectorTextureWidth;
  external int? get motionVectorTextureHeight;
}
extension type XRProjectionLayerInit._(JSObject _) implements JSObject {
  external factory XRProjectionLayerInit({
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum depthFormat,
    num scaleFactor,
    bool clearOnAccess,
  });

  external XRTextureType get textureType;
  external set textureType(XRTextureType value);
  external GLenum get colorFormat;
  external set colorFormat(GLenum value);
  external GLenum get depthFormat;
  external set depthFormat(GLenum value);
  external double get scaleFactor;
  external set scaleFactor(num value);
  external bool get clearOnAccess;
  external set clearOnAccess(bool value);
}
extension type XRLayerInit._(JSObject _) implements JSObject {
  external factory XRLayerInit({
    required XRSpace space,
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
    bool clearOnAccess,
  });

  external XRSpace get space;
  external set space(XRSpace value);
  external XRTextureType get textureType;
  external set textureType(XRTextureType value);
  external GLenum get colorFormat;
  external set colorFormat(GLenum value);
  external GLenum? get depthFormat;
  external set depthFormat(GLenum? value);
  external int get mipLevels;
  external set mipLevels(int value);
  external int get viewPixelWidth;
  external set viewPixelWidth(int value);
  external int get viewPixelHeight;
  external set viewPixelHeight(int value);
  external XRLayerLayout get layout;
  external set layout(XRLayerLayout value);
  external bool get isStatic;
  external set isStatic(bool value);
  external bool get clearOnAccess;
  external set clearOnAccess(bool value);
}
extension type XRQuadLayerInit._(JSObject _) implements XRLayerInit, JSObject {
  external factory XRQuadLayerInit({
    required XRSpace space,
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
    bool clearOnAccess,
    XRRigidTransform? transform,
    num width,
    num height,
  });

  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
  external double get width;
  external set width(num value);
  external double get height;
  external set height(num value);
}
extension type XRCylinderLayerInit._(JSObject _)
    implements XRLayerInit, JSObject {
  external factory XRCylinderLayerInit({
    required XRSpace space,
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
    bool clearOnAccess,
    XRRigidTransform? transform,
    num radius,
    num centralAngle,
    num aspectRatio,
  });

  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
  external double get radius;
  external set radius(num value);
  external double get centralAngle;
  external set centralAngle(num value);
  external double get aspectRatio;
  external set aspectRatio(num value);
}
extension type XREquirectLayerInit._(JSObject _)
    implements XRLayerInit, JSObject {
  external factory XREquirectLayerInit({
    required XRSpace space,
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
    bool clearOnAccess,
    XRRigidTransform? transform,
    num radius,
    num centralHorizontalAngle,
    num upperVerticalAngle,
    num lowerVerticalAngle,
  });

  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
  external double get radius;
  external set radius(num value);
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(num value);
  external double get upperVerticalAngle;
  external set upperVerticalAngle(num value);
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(num value);
}
extension type XRCubeLayerInit._(JSObject _) implements XRLayerInit, JSObject {
  external factory XRCubeLayerInit({
    required XRSpace space,
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
    bool clearOnAccess,
    DOMPointReadOnly? orientation,
  });

  external DOMPointReadOnly? get orientation;
  external set orientation(DOMPointReadOnly? value);
}

/// The **`XRWebGLBinding`** interface is used to create layers that have a GPU
/// backend.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRWebGLBinding).
extension type XRWebGLBinding._(JSObject _) implements JSObject {
  external factory XRWebGLBinding(
    XRSession session,
    XRWebGLRenderingContext context,
  );

  /// The **`createProjectionLayer()`** method of the [XRWebGLBinding] interface
  /// returns an [XRProjectionLayer] object which is a layer that fills the
  /// entire view of the observer and is refreshed close to the device's native
  /// frame rate.
  external XRProjectionLayer createProjectionLayer(
      [XRProjectionLayerInit init]);

  /// The **`createQuadLayer()`** method of the [XRWebGLBinding] interface
  /// returns an [XRQuadLayer] object which is a layer that takes up a flat
  /// rectangular space in the virtual environment.
  external XRQuadLayer createQuadLayer([XRQuadLayerInit init]);

  /// The **`createCylinderLayer()`** method of the [XRWebGLBinding] interface
  /// returns an [XRCylinderLayer] object, which is a layer that takes up a
  /// curved rectangular space in the virtual environment.
  external XRCylinderLayer createCylinderLayer([XRCylinderLayerInit init]);

  /// The **`createEquirectLayer()`** method of the [XRWebGLBinding] interface
  /// returns an [XREquirectLayer] object, which is a layer that maps
  /// [equirectangular](https://en.wikipedia.org/wiki/Equirectangular_projection)
  /// coded data onto the inside of a sphere.
  external XREquirectLayer createEquirectLayer([XREquirectLayerInit init]);

  /// The **`createCubeLayer()`** method of the [XRWebGLBinding] interface
  /// returns an [XRCubeLayer] object, which is a layer that renders directly
  /// from a [cubemap](https://en.wikipedia.org/wiki/Cube_mapping), and projects
  /// it onto the inside faces of a cube.
  external XRCubeLayer createCubeLayer([XRCubeLayerInit init]);

  /// The **`getSubImage()`** method of the [XRWebGLBinding] interface returns a
  /// [XRWebGLSubImage] object representing the WebGL texture to render.
  external XRWebGLSubImage getSubImage(
    XRCompositionLayer layer,
    XRFrame frame, [
    XREye eye,
  ]);

  /// The **`getViewSubImage()`** method of the [XRWebGLBinding] interface
  /// returns a [XRWebGLSubImage] object representing the WebGL texture to
  /// render for a view.
  external XRWebGLSubImage getViewSubImage(
    XRProjectionLayer layer,
    XRView view,
  );
  external void foveateBoundTexture(
    GLenum target,
    num fixed_foveation,
  );
  external WebGLTexture? getCameraImage(XRCamera camera);

  /// The **`getDepthInformation()`** method of the [XRWebGLBinding] interface
  /// returns an [XRWebGLDepthInformation] object containing WebGL depth
  /// information.
  external XRWebGLDepthInformation? getDepthInformation(XRView view);

  /// The **`getReflectionCubeMap()`** method of the [XRWebGLBinding] interface
  /// returns a [WebGLTexture] object containing a reflection cube map texture.
  ///
  /// The texture format is specified by the session's `reflectionFormat`. See
  /// the `options` parameter on [XRSession.requestLightProbe] and
  /// [XRSession.preferredReflectionFormat] for more details. By default, the
  /// `srgba8` format is used. When using a `rgba16f` format, you need to be
  /// within a WebGL 2.0 context or enable the [OES_texture_half_float]
  /// extension within WebGL 1.0 contexts.
  external WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe);

  /// The read-only **`nativeProjectionScaleFactor`** property of the
  /// [XRWebGLBinding] interface represents the scaling factor by which the
  /// projection layer's resolution is multiplied by to get the native
  /// resolution of the WebXR device's frame buffer.
  ///
  /// For more details, see
  /// [XRWebGLLayer.getNativeFramebufferScaleFactor_static].
  external double get nativeProjectionScaleFactor;
  external bool get usesDepthValues;
}
extension type XRMediaLayerInit._(JSObject _) implements JSObject {
  external factory XRMediaLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    bool invertStereo,
  });

  external XRSpace get space;
  external set space(XRSpace value);
  external XRLayerLayout get layout;
  external set layout(XRLayerLayout value);
  external bool get invertStereo;
  external set invertStereo(bool value);
}
extension type XRMediaQuadLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
  external factory XRMediaQuadLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    bool invertStereo,
    XRRigidTransform? transform,
    num? width,
    num? height,
  });

  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
  external double? get width;
  external set width(num? value);
  external double? get height;
  external set height(num? value);
}
extension type XRMediaCylinderLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
  external factory XRMediaCylinderLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    bool invertStereo,
    XRRigidTransform? transform,
    num radius,
    num centralAngle,
    num? aspectRatio,
  });

  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
  external double get radius;
  external set radius(num value);
  external double get centralAngle;
  external set centralAngle(num value);
  external double? get aspectRatio;
  external set aspectRatio(num? value);
}
extension type XRMediaEquirectLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
  external factory XRMediaEquirectLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    bool invertStereo,
    XRRigidTransform? transform,
    num radius,
    num centralHorizontalAngle,
    num upperVerticalAngle,
    num lowerVerticalAngle,
  });

  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
  external double get radius;
  external set radius(num value);
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(num value);
  external double get upperVerticalAngle;
  external set upperVerticalAngle(num value);
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(num value);
}

/// The **`XRMediaBinding`** interface is used to create layers that display the
/// content of an [HTMLVideoElement].
///
/// > [!NOTE]
/// > Only the video frames will be displayed in the layer. Video controls need
/// > to be implemented separately and must be drawn in another layer.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRMediaBinding).
extension type XRMediaBinding._(JSObject _) implements JSObject {
  external factory XRMediaBinding(XRSession session);

  /// The **`createQuadLayer()`** method of the [XRMediaBinding] interface
  /// returns an [XRQuadLayer] object which is a layer that takes up a flat
  /// rectangular space in the virtual environment.
  external XRQuadLayer createQuadLayer(
    HTMLVideoElement video, [
    XRMediaQuadLayerInit init,
  ]);

  /// The **`createCylinderLayer()`** method of the [XRMediaBinding] interface
  /// returns an [XRCylinderLayer] object which is a layer that takes up a
  /// curved rectangular space in the virtual environment.
  external XRCylinderLayer createCylinderLayer(
    HTMLVideoElement video, [
    XRMediaCylinderLayerInit init,
  ]);

  /// The **`createEquirectLayer()`** method of the [XRMediaBinding] interface
  /// returns an [XREquirectLayer] object which is a layer that maps an
  /// equirectangular coded data onto the inside of a sphere.
  external XREquirectLayer createEquirectLayer(
    HTMLVideoElement video, [
    XRMediaEquirectLayerInit init,
  ]);
}

/// The **`XRLayerEvent`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is the event type for events related to a change of state of an [XRLayer]
/// object. These events occur, for example, when the layer needs to be redrawn.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRLayerEvent).
extension type XRLayerEvent._(JSObject _) implements Event, JSObject {
  external factory XRLayerEvent(
    String type,
    XRLayerEventInit eventInitDict,
  );

  /// The **`layer`** property of the [XRLayerEvent] interface is a reference to
  /// the [XRLayer] which generated the event.
  external XRLayer get layer;
}
extension type XRLayerEventInit._(JSObject _) implements EventInit, JSObject {
  external factory XRLayerEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required XRLayer layer,
  });

  external XRLayer get layer;
  external set layer(XRLayer value);
}
