// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
extension type XRCompositionLayer._(JSObject _) implements XRLayer, JSObject {}

extension XRCompositionLayerExtension on XRCompositionLayer {
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

extension type XRProjectionLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {}

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

extension type XRQuadLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {}

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

extension type XRCylinderLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {}

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

extension type XREquirectLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {}

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

extension type XRCubeLayer._(JSObject _)
    implements XRCompositionLayer, JSObject {}

extension XRCubeLayerExtension on XRCubeLayer {
  external set space(XRSpace value);
  external XRSpace get space;
  external set orientation(DOMPointReadOnly value);
  external DOMPointReadOnly get orientation;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
}

extension type XRSubImage._(JSObject _) implements JSObject {}

extension XRSubImageExtension on XRSubImage {
  external XRViewport get viewport;
}

extension type XRWebGLSubImage._(JSObject _) implements XRSubImage, JSObject {}

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

extension type XRProjectionLayerInit._(JSObject _) implements JSObject {
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

extension type XRQuadLayerInit._(JSObject _) implements XRLayerInit, JSObject {
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

extension type XRCylinderLayerInit._(JSObject _)
    implements XRLayerInit, JSObject {
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

extension type XRCubeLayerInit._(JSObject _) implements XRLayerInit, JSObject {
  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});
}

extension XRCubeLayerInitExtension on XRCubeLayerInit {
  external set orientation(DOMPointReadOnly? value);
  external DOMPointReadOnly? get orientation;
}

extension type XRWebGLBinding._(JSObject _) implements JSObject {
  external factory XRWebGLBinding(
    XRSession session,
    XRWebGLRenderingContext context,
  );
}

extension XRWebGLBindingExtension on XRWebGLBinding {
  external WebGLTexture? getCameraImage(XRCamera camera);
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
  external WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe);
  external XRProjectionLayer createProjectionLayer(
      [XRProjectionLayerInit init]);
  external XRQuadLayer createQuadLayer([XRQuadLayerInit init]);
  external XRCylinderLayer createCylinderLayer([XRCylinderLayerInit init]);
  external XREquirectLayer createEquirectLayer([XREquirectLayerInit init]);
  external XRCubeLayer createCubeLayer([XRCubeLayerInit init]);
  external XRWebGLSubImage getSubImage(
    XRCompositionLayer layer,
    XRFrame frame, [
    XREye eye,
  ]);
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
}

extension XRMediaLayerInitExtension on XRMediaLayerInit {
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
}

extension XRMediaQuadLayerInitExtension on XRMediaQuadLayerInit {
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

extension type XRMediaEquirectLayerInit._(JSObject _)
    implements XRMediaLayerInit, JSObject {
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

extension type XRMediaBinding._(JSObject _) implements JSObject {
  external factory XRMediaBinding(XRSession session);
}

extension XRMediaBindingExtension on XRMediaBinding {
  external XRQuadLayer createQuadLayer(
    HTMLVideoElement video, [
    XRMediaQuadLayerInit init,
  ]);
  external XRCylinderLayer createCylinderLayer(
    HTMLVideoElement video, [
    XRMediaCylinderLayerInit init,
  ]);
  external XREquirectLayer createEquirectLayer(
    HTMLVideoElement video, [
    XRMediaEquirectLayerInit init,
  ]);
}

extension type XRLayerEvent._(JSObject _) implements Event, JSObject {
  external factory XRLayerEvent(
    String type,
    XRLayerEventInit eventInitDict,
  );
}

extension XRLayerEventExtension on XRLayerEvent {
  external XRLayer get layer;
}

extension type XRLayerEventInit._(JSObject _) implements EventInit, JSObject {
  external factory XRLayerEventInit({required XRLayer layer});
}

extension XRLayerEventInitExtension on XRLayerEventInit {
  external set layer(XRLayer value);
  external XRLayer get layer;
}
