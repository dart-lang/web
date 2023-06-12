// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
typedef XRTextureType = String;

@JS('XRCompositionLayer')
@staticInterop
class XRCompositionLayer implements XRLayer {}

extension XRCompositionLayerExtension on XRCompositionLayer {
  external JSVoid destroy();
  external XRLayerLayout get layout;
  external set blendTextureSourceAlpha(bool value);
  external bool get blendTextureSourceAlpha;
  external set forceMonoPresentation(bool value);
  external bool get forceMonoPresentation;
  external set opacity(double value);
  external double get opacity;
  external int get mipLevels;
  external bool get needsRedraw;
}

@JS('XRProjectionLayer')
@staticInterop
class XRProjectionLayer implements XRCompositionLayer {}

extension XRProjectionLayerExtension on XRProjectionLayer {
  external int get textureWidth;
  external int get textureHeight;
  external int get textureArrayLength;
  external bool get ignoreDepthValues;
  external set fixedFoveation(double? value);
  external double? get fixedFoveation;
  external set deltaPose(XRRigidTransform? value);
  external XRRigidTransform? get deltaPose;
}

@JS('XRQuadLayer')
@staticInterop
class XRQuadLayer implements XRCompositionLayer {}

extension XRQuadLayerExtension on XRQuadLayer {
  external set space(XRSpace value);
  external XRSpace get space;
  external set transform(XRRigidTransform value);
  external XRRigidTransform get transform;
  external set width(double value);
  external double get width;
  external set height(double value);
  external double get height;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
}

@JS('XRCylinderLayer')
@staticInterop
class XRCylinderLayer implements XRCompositionLayer {}

extension XRCylinderLayerExtension on XRCylinderLayer {
  external set space(XRSpace value);
  external XRSpace get space;
  external set transform(XRRigidTransform value);
  external XRRigidTransform get transform;
  external set radius(double value);
  external double get radius;
  external set centralAngle(double value);
  external double get centralAngle;
  external set aspectRatio(double value);
  external double get aspectRatio;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
}

@JS('XREquirectLayer')
@staticInterop
class XREquirectLayer implements XRCompositionLayer {}

extension XREquirectLayerExtension on XREquirectLayer {
  external set space(XRSpace value);
  external XRSpace get space;
  external set transform(XRRigidTransform value);
  external XRRigidTransform get transform;
  external set radius(double value);
  external double get radius;
  external set centralHorizontalAngle(double value);
  external double get centralHorizontalAngle;
  external set upperVerticalAngle(double value);
  external double get upperVerticalAngle;
  external set lowerVerticalAngle(double value);
  external double get lowerVerticalAngle;
  external set onredraw(EventHandler value);
  external EventHandler get onredraw;
}

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

@JS('XRSubImage')
@staticInterop
class XRSubImage implements JSObject {}

extension XRSubImageExtension on XRSubImage {
  external XRViewport get viewport;
}

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
class XRProjectionLayerInit implements JSObject {
  external factory XRProjectionLayerInit({
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum depthFormat,
    double scaleFactor,
  });
}

extension XRProjectionLayerInitExtension on XRProjectionLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set colorFormat(GLenum value);
  external GLenum get colorFormat;
  external set depthFormat(GLenum value);
  external GLenum get depthFormat;
  external set scaleFactor(double value);
  external double get scaleFactor;
}

@JS()
@staticInterop
@anonymous
class XRLayerInit implements JSObject {
  external factory XRLayerInit({
    required XRSpace space,
    GLenum colorFormat,
    GLenum? depthFormat,
    int mipLevels,
    required int viewPixelWidth,
    required int viewPixelHeight,
    XRLayerLayout layout,
    bool isStatic,
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
}

@JS()
@staticInterop
@anonymous
class XRQuadLayerInit implements XRLayerInit {
  external factory XRQuadLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    double width,
    double height,
  });
}

extension XRQuadLayerInitExtension on XRQuadLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(double value);
  external double get width;
  external set height(double value);
  external double get height;
}

@JS()
@staticInterop
@anonymous
class XRCylinderLayerInit implements XRLayerInit {
  external factory XRCylinderLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    double radius,
    double centralAngle,
    double aspectRatio,
  });
}

extension XRCylinderLayerInitExtension on XRCylinderLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(double value);
  external double get radius;
  external set centralAngle(double value);
  external double get centralAngle;
  external set aspectRatio(double value);
  external double get aspectRatio;
}

@JS()
@staticInterop
@anonymous
class XREquirectLayerInit implements XRLayerInit {
  external factory XREquirectLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    double radius,
    double centralHorizontalAngle,
    double upperVerticalAngle,
    double lowerVerticalAngle,
  });
}

extension XREquirectLayerInitExtension on XREquirectLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(double value);
  external double get radius;
  external set centralHorizontalAngle(double value);
  external double get centralHorizontalAngle;
  external set upperVerticalAngle(double value);
  external double get upperVerticalAngle;
  external set lowerVerticalAngle(double value);
  external double get lowerVerticalAngle;
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

@JS('XRWebGLBinding')
@staticInterop
class XRWebGLBinding implements JSObject {
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
  external double get nativeProjectionScaleFactor;
  external bool get usesDepthValues;
}

@JS()
@staticInterop
@anonymous
class XRMediaLayerInit implements JSObject {
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
    double? width,
    double? height,
  });
}

extension XRMediaQuadLayerInitExtension on XRMediaQuadLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(double? value);
  external double? get width;
  external set height(double? value);
  external double? get height;
}

@JS()
@staticInterop
@anonymous
class XRMediaCylinderLayerInit implements XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit({
    XRRigidTransform? transform,
    double radius,
    double centralAngle,
    double? aspectRatio,
  });
}

extension XRMediaCylinderLayerInitExtension on XRMediaCylinderLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(double value);
  external double get radius;
  external set centralAngle(double value);
  external double get centralAngle;
  external set aspectRatio(double? value);
  external double? get aspectRatio;
}

@JS()
@staticInterop
@anonymous
class XRMediaEquirectLayerInit implements XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit({
    XRRigidTransform? transform,
    double radius,
    double centralHorizontalAngle,
    double upperVerticalAngle,
    double lowerVerticalAngle,
  });
}

extension XRMediaEquirectLayerInitExtension on XRMediaEquirectLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(double value);
  external double get radius;
  external set centralHorizontalAngle(double value);
  external double get centralHorizontalAngle;
  external set upperVerticalAngle(double value);
  external double get upperVerticalAngle;
  external set lowerVerticalAngle(double value);
  external double get lowerVerticalAngle;
}

@JS('XRMediaBinding')
@staticInterop
class XRMediaBinding implements JSObject {
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
