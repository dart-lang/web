// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/raw_camera_access.dart';
import 'package:web/src/dom/webgl1.dart';
import 'package:web/src/dom/webxr.dart';
import 'package:web/src/dom/webxr_depth_sensing.dart';
import 'package:web/src/dom/webxr_lighting_estimation.dart';

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

@JS('XRProjectionLayerInit')
@staticInterop
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit();
}

extension XRProjectionLayerInitExtension on XRProjectionLayerInit {}

@JS('XRLayerInit')
@staticInterop
class XRLayerInit {
  external factory XRLayerInit();
}

extension XRLayerInitExtension on XRLayerInit {}

@JS('XRQuadLayerInit')
@staticInterop
class XRQuadLayerInit extends XRLayerInit {
  external factory XRQuadLayerInit();
}

extension XRQuadLayerInitExtension on XRQuadLayerInit {}

@JS('XRCylinderLayerInit')
@staticInterop
class XRCylinderLayerInit extends XRLayerInit {
  external factory XRCylinderLayerInit();
}

extension XRCylinderLayerInitExtension on XRCylinderLayerInit {}

@JS('XREquirectLayerInit')
@staticInterop
class XREquirectLayerInit extends XRLayerInit {
  external factory XREquirectLayerInit();
}

extension XREquirectLayerInitExtension on XREquirectLayerInit {}

@JS('XRCubeLayerInit')
@staticInterop
class XRCubeLayerInit extends XRLayerInit {
  external factory XRCubeLayerInit();
}

extension XRCubeLayerInitExtension on XRCubeLayerInit {}

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

@JS('XRMediaLayerInit')
@staticInterop
class XRMediaLayerInit {
  external factory XRMediaLayerInit();
}

extension XRMediaLayerInitExtension on XRMediaLayerInit {}

@JS('XRMediaQuadLayerInit')
@staticInterop
class XRMediaQuadLayerInit extends XRMediaLayerInit {
  external factory XRMediaQuadLayerInit();
}

extension XRMediaQuadLayerInitExtension on XRMediaQuadLayerInit {}

@JS('XRMediaCylinderLayerInit')
@staticInterop
class XRMediaCylinderLayerInit extends XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit();
}

extension XRMediaCylinderLayerInitExtension on XRMediaCylinderLayerInit {}

@JS('XRMediaEquirectLayerInit')
@staticInterop
class XRMediaEquirectLayerInit extends XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit();
}

extension XRMediaEquirectLayerInitExtension on XRMediaEquirectLayerInit {}

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

@JS('XRLayerEventInit')
@staticInterop
class XRLayerEventInit extends EventInit {
  external factory XRLayerEventInit();
}

extension XRLayerEventInitExtension on XRLayerEventInit {}
