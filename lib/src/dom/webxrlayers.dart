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
extension type XRCompositionLayer._(JSObject _) implements XRLayer, JSObject {
  /// The **`destroy()`** method of the [XRCompositionLayer] interface deletes
  /// the references to the underlying graphics library for the layer. It also
  /// sets the color textures and depth stencil texture arrays to an empty
  /// array.
  external void destroy();
  external XRLayerLayout get layout;
  external set blendTextureSourceAlpha(bool value);
  external bool get blendTextureSourceAlpha;
  external set forceMonoPresentation(bool value);
  external bool get forceMonoPresentation;
  external set opacity(num value);
  external num get opacity;
  external int get mipLevels;
  external set quality(XRLayerQuality value);
  external XRLayerQuality get quality;
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
extension type XRProjectionLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  external int get textureWidth;
  external int get textureHeight;
  external int get textureArrayLength;
  external bool get ignoreDepthValues;
  external set fixedFoveation(num? value);
  external num? get fixedFoveation;
  external set deltaPose(XRRigidTransform? value);
  external XRRigidTransform? get deltaPose;
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
extension type XRQuadLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  external set space(XRSpace value);
  external XRSpace get space;
  external set transform(XRRigidTransform value);
  external XRRigidTransform get transform;
  external set width(num value);
  external num get width;
  external set height(num value);
  external num get height;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
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
extension type XRCylinderLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  external set space(XRSpace value);
  external XRSpace get space;
  external set transform(XRRigidTransform value);
  external XRRigidTransform get transform;
  external set radius(num value);
  external num get radius;
  external set centralAngle(num value);
  external num get centralAngle;
  external set aspectRatio(num value);
  external num get aspectRatio;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
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
extension type XREquirectLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  external set space(XRSpace value);
  external XRSpace get space;
  external set transform(XRRigidTransform value);
  external XRRigidTransform get transform;
  external set radius(num value);
  external num get radius;
  external set centralHorizontalAngle(num value);
  external num get centralHorizontalAngle;
  external set upperVerticalAngle(num value);
  external num get upperVerticalAngle;
  external set lowerVerticalAngle(num value);
  external num get lowerVerticalAngle;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
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
extension type XRCubeLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {
  external set space(XRSpace value);
  external XRSpace get space;
  external set orientation(DOMPointReadOnly value);
  external DOMPointReadOnly get orientation;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
}

/// The **`XRSubImage`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// represents what viewport of the GPU texture to use for rendering.
extension type XRSubImage._(JSObject _) implements JSObject {
  external XRViewport get viewport;
}

/// The **`XRWebGLSubImage`** interface is used during rendering of WebGL
/// layers.
extension type XRWebGLSubImage._(JSObject _) implements XRSubImage, JSObject {
  external WebGLTexture get colorTexture;
  external WebGLTexture? get depthStencilTexture;
  external WebGLTexture? get motionVectorTexture;
  external int? get imageIndex;
  external int get colorTextureWidth;
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

  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set colorFormat(GLenum value);
  external GLenum get colorFormat;
  external set depthFormat(GLenum value);
  external GLenum get depthFormat;
  external set scaleFactor(num value);
  external num get scaleFactor;
  external set clearOnAccess(bool value);
  external bool get clearOnAccess;
}
extension type XRLayerInit._(JSObject _) implements JSObject {
  external factory XRLayerInit({
    required XRSpace space,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
    bool clearOnAccess,
  });

  external set space(XRSpace value);
  external XRSpace get space;
  external set colorFormat(GLenum value);
  external GLenum get colorFormat;
  external set depthFormat(GLenum? value);
  external GLenum? get depthFormat;
  external set mipLevels(int value);
  external int get mipLevels;
  external set viewPixelWidth(int value);
  external int get viewPixelWidth;
  external set viewPixelHeight(int value);
  external int get viewPixelHeight;
  external set layout(XRLayerLayout value);
  external XRLayerLayout get layout;
  external set isStatic(bool value);
  external bool get isStatic;
  external set clearOnAccess(bool value);
  external bool get clearOnAccess;
}
extension type XRQuadLayerInit._(JSObject _) implements XRLayerInit, JSObject {
  external factory XRQuadLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    num width,
    num height,
  });

  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(num value);
  external num get width;
  external set height(num value);
  external num get height;
}
extension type XRCylinderLayerInit._(JSObject _)
    implements XRLayerInit, JSObject {
  external factory XRCylinderLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    num radius,
    num centralAngle,
    num aspectRatio,
  });

  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(num value);
  external num get radius;
  external set centralAngle(num value);
  external num get centralAngle;
  external set aspectRatio(num value);
  external num get aspectRatio;
}
extension type XREquirectLayerInit._(JSObject _)
    implements XRLayerInit, JSObject {
  external factory XREquirectLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    num radius,
    num centralHorizontalAngle,
    num upperVerticalAngle,
    num lowerVerticalAngle,
  });

  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(num value);
  external num get radius;
  external set centralHorizontalAngle(num value);
  external num get centralHorizontalAngle;
  external set upperVerticalAngle(num value);
  external num get upperVerticalAngle;
  external set lowerVerticalAngle(num value);
  external num get lowerVerticalAngle;
}
extension type XRCubeLayerInit._(JSObject _) implements XRLayerInit, JSObject {
  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});

  external set orientation(DOMPointReadOnly? value);
  external DOMPointReadOnly? get orientation;
}

/// The **`XRWebGLBinding`** interface is used to create layers that have a GPU
/// backend.
extension type XRWebGLBinding._(JSObject _) implements JSObject {
  external factory XRWebGLBinding(
    XRSession session,
    XRWebGLRenderingContext context,
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
  external num get nativeProjectionScaleFactor;
  external bool get usesDepthValues;
}
extension type XRMediaLayerInit._(JSObject _) implements JSObject {
  external factory XRMediaLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    bool invertStereo,
  });

  external set space(XRSpace value);
  external XRSpace get space;
  external set layout(XRLayerLayout value);
  external XRLayerLayout get layout;
  external set invertStereo(bool value);
  external bool get invertStereo;
}
extension type XRMediaQuadLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
  external factory XRMediaQuadLayerInit({
    XRRigidTransform? transform,
    num? width,
    num? height,
  });

  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(num? value);
  external num? get width;
  external set height(num? value);
  external num? get height;
}
extension type XRMediaCylinderLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
  external factory XRMediaCylinderLayerInit({
    XRRigidTransform? transform,
    num radius,
    num centralAngle,
    num? aspectRatio,
  });

  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(num value);
  external num get radius;
  external set centralAngle(num value);
  external num get centralAngle;
  external set aspectRatio(num? value);
  external num? get aspectRatio;
}
extension type XRMediaEquirectLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
  external factory XRMediaEquirectLayerInit({
    XRRigidTransform? transform,
    num radius,
    num centralHorizontalAngle,
    num upperVerticalAngle,
    num lowerVerticalAngle,
  });

  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(num value);
  external num get radius;
  external set centralHorizontalAngle(num value);
  external num get centralHorizontalAngle;
  external set upperVerticalAngle(num value);
  external num get upperVerticalAngle;
  external set lowerVerticalAngle(num value);
  external num get lowerVerticalAngle;
}

/// The **`XRMediaBinding`** interface is used to create layers that display the
/// content of an [HTMLVideoElement].
///
/// > **Note:**
/// > Only the video frames will be displayed in the layer. Video controls need
/// > to be implemented separately and must be drawn in another layer.
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
extension type XRLayerEvent._(JSObject _) implements Event, JSObject {
  external factory XRLayerEvent(
    String type,
    XRLayerEventInit eventInitDict,
  );

  external XRLayer get layer;
}
extension type XRLayerEventInit._(JSObject _) implements EventInit, JSObject {
  external factory XRLayerEventInit({required XRLayer layer});

  external set layer(XRLayer value);
  external XRLayer get layer;
}
