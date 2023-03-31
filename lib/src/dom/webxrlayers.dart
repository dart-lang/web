// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'raw_camera_access.dart';
import 'webgl1.dart';
import 'webxr.dart';
import 'webxr_depth_sensing.dart';
import 'webxr_lighting_estimation.dart';

typedef XRLayerLayout = JSString;
typedef XRTextureType = JSString;

@JS('XRCompositionLayer')
@staticInterop
class XRCompositionLayer implements XRLayer {}

extension XRCompositionLayerExtension on XRCompositionLayer {
  external JSVoid destroy();
  external XRLayerLayout get layout;
  external set blendTextureSourceAlpha(JSBoolean value);
  external JSBoolean get blendTextureSourceAlpha;
  external set forceMonoPresentation(JSBoolean value);
  external JSBoolean get forceMonoPresentation;
  external set opacity(JSNumber value);
  external JSNumber get opacity;
  external JSNumber get mipLevels;
  external JSBoolean get needsRedraw;
}

@JS('XRProjectionLayer')
@staticInterop
class XRProjectionLayer implements XRCompositionLayer {}

extension XRProjectionLayerExtension on XRProjectionLayer {
  external JSNumber get textureWidth;
  external JSNumber get textureHeight;
  external JSNumber get textureArrayLength;
  external JSBoolean get ignoreDepthValues;
  external set fixedFoveation(JSNumber? value);
  external JSNumber? get fixedFoveation;
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
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
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
  external set radius(JSNumber value);
  external JSNumber get radius;
  external set centralAngle(JSNumber value);
  external JSNumber get centralAngle;
  external set aspectRatio(JSNumber value);
  external JSNumber get aspectRatio;
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
  external set radius(JSNumber value);
  external JSNumber get radius;
  external set centralHorizontalAngle(JSNumber value);
  external JSNumber get centralHorizontalAngle;
  external set upperVerticalAngle(JSNumber value);
  external JSNumber get upperVerticalAngle;
  external set lowerVerticalAngle(JSNumber value);
  external JSNumber get lowerVerticalAngle;
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
class XRSubImage {}

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
  external JSNumber? get imageIndex;
  external JSNumber get colorTextureWidth;
  external JSNumber get colorTextureHeight;
  external JSNumber? get depthStencilTextureWidth;
  external JSNumber? get depthStencilTextureHeight;
  external JSNumber? get motionVectorTextureWidth;
  external JSNumber? get motionVectorTextureHeight;
}

@JS()
@staticInterop
@anonymous
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit({
    XRTextureType textureType,
    GLenum colorFormat,
    GLenum depthFormat,
    JSNumber scaleFactor,
  });
}

extension XRProjectionLayerInitExtension on XRProjectionLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set colorFormat(GLenum value);
  external GLenum get colorFormat;
  external set depthFormat(GLenum value);
  external GLenum get depthFormat;
  external set scaleFactor(JSNumber value);
  external JSNumber get scaleFactor;
}

@JS()
@staticInterop
@anonymous
class XRLayerInit {
  external factory XRLayerInit({
    required XRSpace space,
    GLenum colorFormat,
    GLenum? depthFormat,
    JSNumber mipLevels,
    required JSNumber viewPixelWidth,
    required JSNumber viewPixelHeight,
    XRLayerLayout layout,
    JSBoolean isStatic,
  });
}

extension XRLayerInitExtension on XRLayerInit {
  external set space(XRSpace value);
  external XRSpace get space;
  external set colorFormat(GLenum value);
  external GLenum get colorFormat;
  external set depthFormat(GLenum? value);
  external GLenum? get depthFormat;
  external set mipLevels(JSNumber value);
  external JSNumber get mipLevels;
  external set viewPixelWidth(JSNumber value);
  external JSNumber get viewPixelWidth;
  external set viewPixelHeight(JSNumber value);
  external JSNumber get viewPixelHeight;
  external set layout(XRLayerLayout value);
  external XRLayerLayout get layout;
  external set isStatic(JSBoolean value);
  external JSBoolean get isStatic;
}

@JS()
@staticInterop
@anonymous
class XRQuadLayerInit implements XRLayerInit {
  external factory XRQuadLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    JSNumber width,
    JSNumber height,
  });
}

extension XRQuadLayerInitExtension on XRQuadLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
}

@JS()
@staticInterop
@anonymous
class XRCylinderLayerInit implements XRLayerInit {
  external factory XRCylinderLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    JSNumber radius,
    JSNumber centralAngle,
    JSNumber aspectRatio,
  });
}

extension XRCylinderLayerInitExtension on XRCylinderLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(JSNumber value);
  external JSNumber get radius;
  external set centralAngle(JSNumber value);
  external JSNumber get centralAngle;
  external set aspectRatio(JSNumber value);
  external JSNumber get aspectRatio;
}

@JS()
@staticInterop
@anonymous
class XREquirectLayerInit implements XRLayerInit {
  external factory XREquirectLayerInit({
    XRTextureType textureType,
    XRRigidTransform? transform,
    JSNumber radius,
    JSNumber centralHorizontalAngle,
    JSNumber upperVerticalAngle,
    JSNumber lowerVerticalAngle,
  });
}

extension XREquirectLayerInitExtension on XREquirectLayerInit {
  external set textureType(XRTextureType value);
  external XRTextureType get textureType;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(JSNumber value);
  external JSNumber get radius;
  external set centralHorizontalAngle(JSNumber value);
  external JSNumber get centralHorizontalAngle;
  external set upperVerticalAngle(JSNumber value);
  external JSNumber get upperVerticalAngle;
  external set lowerVerticalAngle(JSNumber value);
  external JSNumber get lowerVerticalAngle;
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
class XRWebGLBinding {
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
  external JSNumber get nativeProjectionScaleFactor;
  external JSBoolean get usesDepthValues;
}

@JS()
@staticInterop
@anonymous
class XRMediaLayerInit {
  external factory XRMediaLayerInit({
    required XRSpace space,
    XRLayerLayout layout,
    JSBoolean invertStereo,
  });
}

extension XRMediaLayerInitExtension on XRMediaLayerInit {
  external set space(XRSpace value);
  external XRSpace get space;
  external set layout(XRLayerLayout value);
  external XRLayerLayout get layout;
  external set invertStereo(JSBoolean value);
  external JSBoolean get invertStereo;
}

@JS()
@staticInterop
@anonymous
class XRMediaQuadLayerInit implements XRMediaLayerInit {
  external factory XRMediaQuadLayerInit({
    XRRigidTransform? transform,
    JSNumber? width,
    JSNumber? height,
  });
}

extension XRMediaQuadLayerInitExtension on XRMediaQuadLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set width(JSNumber? value);
  external JSNumber? get width;
  external set height(JSNumber? value);
  external JSNumber? get height;
}

@JS()
@staticInterop
@anonymous
class XRMediaCylinderLayerInit implements XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit({
    XRRigidTransform? transform,
    JSNumber radius,
    JSNumber centralAngle,
    JSNumber? aspectRatio,
  });
}

extension XRMediaCylinderLayerInitExtension on XRMediaCylinderLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(JSNumber value);
  external JSNumber get radius;
  external set centralAngle(JSNumber value);
  external JSNumber get centralAngle;
  external set aspectRatio(JSNumber? value);
  external JSNumber? get aspectRatio;
}

@JS()
@staticInterop
@anonymous
class XRMediaEquirectLayerInit implements XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit({
    XRRigidTransform? transform,
    JSNumber radius,
    JSNumber centralHorizontalAngle,
    JSNumber upperVerticalAngle,
    JSNumber lowerVerticalAngle,
  });
}

extension XRMediaEquirectLayerInitExtension on XRMediaEquirectLayerInit {
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
  external set radius(JSNumber value);
  external JSNumber get radius;
  external set centralHorizontalAngle(JSNumber value);
  external JSNumber get centralHorizontalAngle;
  external set upperVerticalAngle(JSNumber value);
  external JSNumber get upperVerticalAngle;
  external set lowerVerticalAngle(JSNumber value);
  external JSNumber get lowerVerticalAngle;
}

@JS('XRMediaBinding')
@staticInterop
class XRMediaBinding {
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
    JSString type,
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
