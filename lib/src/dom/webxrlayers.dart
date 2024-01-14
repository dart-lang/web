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
@JS('XRCompositionLayer')
@staticInterop
class XRCompositionLayer implements XRLayer {}

extension XRCompositionLayerExtension on XRCompositionLayer {
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
@JS('XRProjectionLayer')
@staticInterop
class XRProjectionLayer implements XRCompositionLayer {}

extension XRProjectionLayerExtension on XRProjectionLayer {
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
@JS('XRQuadLayer')
@staticInterop
class XRQuadLayer implements XRCompositionLayer {}

extension XRQuadLayerExtension on XRQuadLayer {
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
@JS('XRCylinderLayer')
@staticInterop
class XRCylinderLayer implements XRCompositionLayer {}

extension XRCylinderLayerExtension on XRCylinderLayer {
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
@JS('XREquirectLayer')
@staticInterop
class XREquirectLayer implements XRCompositionLayer {}

extension XREquirectLayerExtension on XREquirectLayer {
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
@JS('XRCubeLayer')
@staticInterop
class XRCubeLayer implements XRCompositionLayer {}

extension XRCubeLayerExtension on XRCubeLayer {
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
@JS('XRSubImage')
@staticInterop
class XRSubImage {}

extension XRSubImageExtension on XRSubImage {
  external XRViewport get viewport;
}

/// The **`XRWebGLSubImage`** interface is used during rendering of WebGL
/// layers.
@JS('XRWebGLSubImage')
@staticInterop
class XRWebGLSubImage implements XRSubImage {}

extension XRWebGLSubImageExtension on XRWebGLSubImage {
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

@JS()
@staticInterop
@anonymous
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit({
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum depthFormat,
    num scaleFactor,
    bool clearOnAccess,
  });
}

extension XRProjectionLayerInitExtension on XRProjectionLayerInit {
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

@JS()
@staticInterop
@anonymous
class XRLayerInit {
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
}

extension XRLayerInitExtension on XRLayerInit {
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

@JS()
@staticInterop
@anonymous
class XRQuadLayerInit implements XRLayerInit {
  external factory XRQuadLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    num width,
    num height,
  });
}

extension XRQuadLayerInitExtension on XRQuadLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(num value);
  external num get width;
  external set height(num value);
  external num get height;
}

@JS()
@staticInterop
@anonymous
class XRCylinderLayerInit implements XRLayerInit {
  external factory XRCylinderLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    num radius,
    num centralAngle,
    num aspectRatio,
  });
}

extension XRCylinderLayerInitExtension on XRCylinderLayerInit {
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

@JS()
@staticInterop
@anonymous
class XREquirectLayerInit implements XRLayerInit {
  external factory XREquirectLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    num radius,
    num centralHorizontalAngle,
    num upperVerticalAngle,
    num lowerVerticalAngle,
  });
}

extension XREquirectLayerInitExtension on XREquirectLayerInit {
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

@JS()
@staticInterop
@anonymous
class XRCubeLayerInit implements XRLayerInit {
  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});
}

extension XRCubeLayerInitExtension on XRCubeLayerInit {
  external set orientation(DOMPointReadOnly? value);
  external DOMPointReadOnly? get orientation;
}

/// The **`XRWebGLBinding`** interface is used to create layers that have a GPU
/// backend.
@JS('XRWebGLBinding')
@staticInterop
class XRWebGLBinding {
  external factory XRWebGLBinding(
    XRSession session,
    XRWebGLRenderingContext context,
  );
}

extension XRWebGLBindingExtension on XRWebGLBinding {
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

@JS()
@staticInterop
@anonymous
class XRMediaLayerInit {
  external factory XRMediaLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    bool invertStereo,
  });
}

extension XRMediaLayerInitExtension on XRMediaLayerInit {
  external set space(XRSpace value);
  external XRSpace get space;
  external set layout(XRLayerLayout value);
  external XRLayerLayout get layout;
  external set invertStereo(bool value);
  external bool get invertStereo;
}

@JS()
@staticInterop
@anonymous
class XRMediaQuadLayerInit implements XRMediaLayerInit {
  external factory XRMediaQuadLayerInit({
    XRRigidTransform? transform,
    num? width,
    num? height,
  });
}

extension XRMediaQuadLayerInitExtension on XRMediaQuadLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(num? value);
  external num? get width;
  external set height(num? value);
  external num? get height;
}

@JS()
@staticInterop
@anonymous
class XRMediaCylinderLayerInit implements XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit({
    XRRigidTransform? transform,
    num radius,
    num centralAngle,
    num? aspectRatio,
  });
}

extension XRMediaCylinderLayerInitExtension on XRMediaCylinderLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(num value);
  external num get radius;
  external set centralAngle(num value);
  external num get centralAngle;
  external set aspectRatio(num? value);
  external num? get aspectRatio;
}

@JS()
@staticInterop
@anonymous
class XRMediaEquirectLayerInit implements XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit({
    XRRigidTransform? transform,
    num radius,
    num centralHorizontalAngle,
    num upperVerticalAngle,
    num lowerVerticalAngle,
  });
}

extension XRMediaEquirectLayerInitExtension on XRMediaEquirectLayerInit {
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
@JS('XRMediaBinding')
@staticInterop
class XRMediaBinding {
  external factory XRMediaBinding(XRSession session);
}

extension XRMediaBindingExtension on XRMediaBinding {
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
@JS('XRLayerEvent')
@staticInterop
class XRLayerEvent implements Event {
  external factory XRLayerEvent(
    String type,
    XRLayerEventInit eventInitDict,
  );
}

extension XRLayerEventExtension on XRLayerEvent {
  external XRLayer get layer;
}

@JS()
@staticInterop
@anonymous
class XRLayerEventInit implements EventInit {
  external factory XRLayerEventInit({required XRLayer layer});
}

extension XRLayerEventInitExtension on XRLayerEventInit {
  external set layer(XRLayer value);
  external XRLayer get layer;
}
