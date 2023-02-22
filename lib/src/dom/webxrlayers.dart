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
class XRCompositionLayer extends XRLayer {
  external factory XRCompositionLayer();
}

extension XRCompositionLayerExtension on XRCompositionLayer {
  external XRLayerLayout get layout;
  external set blendTextureSourceAlpha(JSBoolean value);
  external JSBoolean get blendTextureSourceAlpha;
  external set forceMonoPresentation(JSBoolean value);
  external JSBoolean get forceMonoPresentation;
  external set opacity(JSNumber value);
  external JSNumber get opacity;
  external JSNumber get mipLevels;
  external JSBoolean get needsRedraw;
  external JSVoid destroy();
}

@JS('XRProjectionLayer')
@staticInterop
class XRProjectionLayer extends XRCompositionLayer {
  external factory XRProjectionLayer();
}

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
class XRQuadLayer extends XRCompositionLayer {
  external factory XRQuadLayer();
}

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
class XRCylinderLayer extends XRCompositionLayer {
  external factory XRCylinderLayer();
}

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
class XREquirectLayer extends XRCompositionLayer {
  external factory XREquirectLayer();
}

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
class XRCubeLayer extends XRCompositionLayer {
  external factory XRCubeLayer();
}

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
class XRSubImage {
  external factory XRSubImage();
}

extension XRSubImageExtension on XRSubImage {
  external XRViewport get viewport;
}

@JS('XRWebGLSubImage')
@staticInterop
class XRWebGLSubImage extends XRSubImage {
  external factory XRWebGLSubImage();
}

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
    XRTextureType textureType = 'texture',
    GLenum colorFormat = 0x1908,
    GLenum depthFormat = 0x1902,
    JSNumber scaleFactor = 1.0,
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
    GLenum colorFormat = 0x1908,
    GLenum? depthFormat,
    JSNumber mipLevels = 1,
    required JSNumber viewPixelWidth,
    required JSNumber viewPixelHeight,
    XRLayerLayout layout = 'mono',
    JSBoolean isStatic = false,
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
class XRQuadLayerInit extends XRLayerInit {
  external factory XRQuadLayerInit({
    XRTextureType textureType = 'texture',
    XRRigidTransform? transform,
    JSNumber width = 1.0,
    JSNumber height = 1.0,
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
class XRCylinderLayerInit extends XRLayerInit {
  external factory XRCylinderLayerInit({
    XRTextureType textureType = 'texture',
    XRRigidTransform? transform,
    JSNumber radius = 2.0,
    JSNumber centralAngle = 0.78539,
    JSNumber aspectRatio = 2.0,
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
class XREquirectLayerInit extends XRLayerInit {
  external factory XREquirectLayerInit({
    XRTextureType textureType = 'texture',
    XRRigidTransform? transform,
    JSNumber radius = 0,
    JSNumber centralHorizontalAngle = 6.28318,
    JSNumber upperVerticalAngle = 1.570795,
    JSNumber lowerVerticalAngle = -1.570795,
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
class XRCubeLayerInit extends XRLayerInit {
  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});
}

extension XRCubeLayerInitExtension on XRCubeLayerInit {
  external set orientation(DOMPointReadOnly? value);
  external DOMPointReadOnly? get orientation;
}

@JS('XRWebGLBinding')
@staticInterop
class XRWebGLBinding {
  external factory XRWebGLBinding();

  external factory XRWebGLBinding.a1(
    XRSession session,
    XRWebGLRenderingContext context,
  );
}

extension XRWebGLBindingExtension on XRWebGLBinding {
  external WebGLTexture? getCameraImage(XRCamera camera);
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
  external WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe);
  external JSNumber get nativeProjectionScaleFactor;
  external JSBoolean get usesDepthValues;
  external XRProjectionLayer createProjectionLayer();
  external XRProjectionLayer createProjectionLayer1(XRProjectionLayerInit init);
  external XRQuadLayer createQuadLayer();
  external XRQuadLayer createQuadLayer1(XRQuadLayerInit init);
  external XRCylinderLayer createCylinderLayer();
  external XRCylinderLayer createCylinderLayer1(XRCylinderLayerInit init);
  external XREquirectLayer createEquirectLayer();
  external XREquirectLayer createEquirectLayer1(XREquirectLayerInit init);
  external XRCubeLayer createCubeLayer();
  external XRCubeLayer createCubeLayer1(XRCubeLayerInit init);
  external XRWebGLSubImage getSubImage(
    XRCompositionLayer layer,
    XRFrame frame,
  );
  external XRWebGLSubImage getSubImage1(
    XRCompositionLayer layer,
    XRFrame frame,
    XREye eye,
  );
  external XRWebGLSubImage getViewSubImage(
    XRProjectionLayer layer,
    XRView view,
  );
}

@JS()
@staticInterop
@anonymous
class XRMediaLayerInit {
  external factory XRMediaLayerInit({
    required XRSpace space,
    XRLayerLayout layout = 'mono',
    JSBoolean invertStereo = false,
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
class XRMediaQuadLayerInit extends XRMediaLayerInit {
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
class XRMediaCylinderLayerInit extends XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit({
    XRRigidTransform? transform,
    JSNumber radius = 2.0,
    JSNumber centralAngle = 0.78539,
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
class XRMediaEquirectLayerInit extends XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit({
    XRRigidTransform? transform,
    JSNumber radius = 0.0,
    JSNumber centralHorizontalAngle = 6.28318,
    JSNumber upperVerticalAngle = 1.570795,
    JSNumber lowerVerticalAngle = -1.570795,
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
  external factory XRMediaBinding();

  external factory XRMediaBinding.a1(XRSession session);
}

extension XRMediaBindingExtension on XRMediaBinding {
  external XRQuadLayer createQuadLayer(HTMLVideoElement video);
  external XRQuadLayer createQuadLayer1(
    HTMLVideoElement video,
    XRMediaQuadLayerInit init,
  );
  external XRCylinderLayer createCylinderLayer(HTMLVideoElement video);
  external XRCylinderLayer createCylinderLayer1(
    HTMLVideoElement video,
    XRMediaCylinderLayerInit init,
  );
  external XREquirectLayer createEquirectLayer(HTMLVideoElement video);
  external XREquirectLayer createEquirectLayer1(
    HTMLVideoElement video,
    XRMediaEquirectLayerInit init,
  );
}

@JS('XRLayerEvent')
@staticInterop
class XRLayerEvent extends Event {
  external factory XRLayerEvent();

  external factory XRLayerEvent.a1(
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
class XRLayerEventInit extends EventInit {
  external factory XRLayerEventInit({required XRLayer layer});
}

extension XRLayerEventInitExtension on XRLayerEventInit {
  external set layer(XRLayer value);
  external XRLayer get layer;
}
