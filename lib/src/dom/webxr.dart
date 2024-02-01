// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'anchors.dart';
import 'dom.dart';
import 'gamepad.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'html.dart';
import 'permissions.dart';
import 'raw_camera_access.dart';
import 'real_world_meshing.dart';
import 'webgl1.dart';
import 'webxr_ar_module.dart';
import 'webxr_depth_sensing.dart';
import 'webxr_dom_overlays.dart';
import 'webxr_hand_input.dart';
import 'webxr_hit_test.dart';
import 'webxr_lighting_estimation.dart';

typedef XRWebGLRenderingContext = JSObject;
typedef XRFrameRequestCallback = JSFunction;
typedef XRSessionMode = String;
typedef XRVisibilityState = String;
typedef XRReferenceSpaceType = String;
typedef XREye = String;
typedef XRHandedness = String;
typedef XRTargetRayMode = String;
extension type XRSystem._(JSObject _) implements EventTarget, JSObject {
  external JSPromise isSessionSupported(XRSessionMode mode);
  external JSPromise requestSession(
    XRSessionMode mode, [
    XRSessionInit options,
  ]);
  external set ondevicechange(EventHandler value);
  external EventHandler get ondevicechange;
}
extension type XRSessionInit._(JSObject _) implements JSObject {
  external factory XRSessionInit({
    XRDepthStateInit depthSensing,
    XRDOMOverlayInit? domOverlay,
    JSArray requiredFeatures,
    JSArray optionalFeatures,
  });

  external set depthSensing(XRDepthStateInit value);
  external XRDepthStateInit get depthSensing;
  external set domOverlay(XRDOMOverlayInit? value);
  external XRDOMOverlayInit? get domOverlay;
  external set requiredFeatures(JSArray value);
  external JSArray get requiredFeatures;
  external set optionalFeatures(JSArray value);
  external JSArray get optionalFeatures;
}
extension type XRSession._(JSObject _) implements EventTarget, JSObject {
  external JSPromise restorePersistentAnchor(String uuid);
  external JSPromise deletePersistentAnchor(String uuid);
  external JSPromise requestHitTestSource(XRHitTestOptionsInit options);
  external JSPromise requestHitTestSourceForTransientInput(
      XRTransientInputHitTestOptionsInit options);
  external JSPromise requestLightProbe([XRLightProbeInit options]);
  external void updateRenderState([XRRenderStateInit state]);
  external JSPromise updateTargetFrameRate(num rate);
  external JSPromise requestReferenceSpace(XRReferenceSpaceType type);
  external int requestAnimationFrame(XRFrameRequestCallback callback);
  external void cancelAnimationFrame(int handle);
  external JSPromise end();
  external JSArray get persistentAnchors;
  external XREnvironmentBlendMode get environmentBlendMode;
  external XRInteractionMode get interactionMode;
  external XRDepthUsage get depthUsage;
  external XRDepthDataFormat get depthDataFormat;
  external XRDOMOverlayState? get domOverlayState;
  external XRReflectionFormat get preferredReflectionFormat;
  external XRVisibilityState get visibilityState;
  external num? get frameRate;
  external JSFloat32Array? get supportedFrameRates;
  external XRRenderState get renderState;
  external XRInputSourceArray get inputSources;
  external JSArray get enabledFeatures;
  external bool get isSystemKeyboardSupported;
  external set onend(EventHandler value);
  external EventHandler get onend;
  external set oninputsourceschange(EventHandler value);
  external EventHandler get oninputsourceschange;
  external set onselect(EventHandler value);
  external EventHandler get onselect;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectend(EventHandler value);
  external EventHandler get onselectend;
  external set onsqueeze(EventHandler value);
  external EventHandler get onsqueeze;
  external set onsqueezestart(EventHandler value);
  external EventHandler get onsqueezestart;
  external set onsqueezeend(EventHandler value);
  external EventHandler get onsqueezeend;
  external set onvisibilitychange(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set onframeratechange(EventHandler value);
  external EventHandler get onframeratechange;
}
extension type XRRenderStateInit._(JSObject _) implements JSObject {
  external factory XRRenderStateInit({
    num depthNear,
    num depthFar,
    num inlineVerticalFieldOfView,
    XRWebGLLayer? baseLayer,
    JSArray? layers,
  });

  external set depthNear(num value);
  external num get depthNear;
  external set depthFar(num value);
  external num get depthFar;
  external set inlineVerticalFieldOfView(num value);
  external num get inlineVerticalFieldOfView;
  external set baseLayer(XRWebGLLayer? value);
  external XRWebGLLayer? get baseLayer;
  external set layers(JSArray? value);
  external JSArray? get layers;
}
extension type XRRenderState._(JSObject _) implements JSObject {
  external num get depthNear;
  external num get depthFar;
  external num? get inlineVerticalFieldOfView;
  external XRWebGLLayer? get baseLayer;
  external JSArray get layers;
}
extension type XRFrame._(JSObject _) implements JSObject {
  external JSPromise createAnchor(
    XRRigidTransform pose,
    XRSpace space,
  );
  external XRCPUDepthInformation? getDepthInformation(XRView view);
  external XRJointPose? getJointPose(
    XRJointSpace joint,
    XRSpace baseSpace,
  );
  external bool fillJointRadii(
    JSArray jointSpaces,
    JSFloat32Array radii,
  );
  external bool fillPoses(
    JSArray spaces,
    XRSpace baseSpace,
    JSFloat32Array transforms,
  );
  external JSArray getHitTestResults(XRHitTestSource hitTestSource);
  external JSArray getHitTestResultsForTransientInput(
      XRTransientInputHitTestSource hitTestSource);
  external XRLightEstimate? getLightEstimate(XRLightProbe lightProbe);
  external XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);
  external XRPose? getPose(
    XRSpace space,
    XRSpace baseSpace,
  );
  external XRAnchorSet get trackedAnchors;
  external XRMeshSet get detectedMeshes;
  external XRSession get session;
  external DOMHighResTimeStamp get predictedDisplayTime;
}
extension type XRSpace._(JSObject _) implements EventTarget, JSObject {}
extension type XRReferenceSpace._(JSObject _) implements XRSpace, JSObject {
  external XRReferenceSpace getOffsetReferenceSpace(
      XRRigidTransform originOffset);
  external set onreset(EventHandler value);
  external EventHandler get onreset;
}
extension type XRBoundedReferenceSpace._(JSObject _)
    implements XRReferenceSpace, JSObject {
  external JSArray get boundsGeometry;
}
extension type XRView._(JSObject _) implements JSObject {
  external void requestViewportScale(num? scale);
  external XRCamera? get camera;
  external bool get isFirstPersonObserver;
  external XREye get eye;
  external JSFloat32Array get projectionMatrix;
  external XRRigidTransform get transform;
  external num? get recommendedViewportScale;
}
extension type XRViewport._(JSObject _) implements JSObject {
  external int get x;
  external int get y;
  external int get width;
  external int get height;
}
extension type XRRigidTransform._(JSObject _) implements JSObject {
  external factory XRRigidTransform([
    DOMPointInit position,
    DOMPointInit orientation,
  ]);

  external DOMPointReadOnly get position;
  external DOMPointReadOnly get orientation;
  external JSFloat32Array get matrix;
  external XRRigidTransform get inverse;
}
extension type XRPose._(JSObject _) implements JSObject {
  external XRRigidTransform get transform;
  external DOMPointReadOnly? get linearVelocity;
  external DOMPointReadOnly? get angularVelocity;
  external bool get emulatedPosition;
}
extension type XRViewerPose._(JSObject _) implements XRPose, JSObject {
  external JSArray get views;
}
extension type XRInputSource._(JSObject _) implements JSObject {
  external Gamepad? get gamepad;
  external XRHand? get hand;
  external XRHandedness get handedness;
  external XRTargetRayMode get targetRayMode;
  external XRSpace get targetRaySpace;
  external XRSpace? get gripSpace;
  external JSArray get profiles;
}
extension type XRInputSourceArray._(JSObject _) implements JSObject {
  external int get length;
}
extension type XRLayer._(JSObject _) implements EventTarget, JSObject {}
extension type XRWebGLLayerInit._(JSObject _) implements JSObject {
  external factory XRWebGLLayerInit({
    bool antialias,
    bool depth,
    bool stencil,
    bool alpha,
    bool ignoreDepthValues,
    num framebufferScaleFactor,
  });

  external set antialias(bool value);
  external bool get antialias;
  external set depth(bool value);
  external bool get depth;
  external set stencil(bool value);
  external bool get stencil;
  external set alpha(bool value);
  external bool get alpha;
  external set ignoreDepthValues(bool value);
  external bool get ignoreDepthValues;
  external set framebufferScaleFactor(num value);
  external num get framebufferScaleFactor;
}
extension type XRWebGLLayer._(JSObject _) implements XRLayer, JSObject {
  external factory XRWebGLLayer(
    XRSession session,
    XRWebGLRenderingContext context, [
    XRWebGLLayerInit layerInit,
  ]);

  external static num getNativeFramebufferScaleFactor(XRSession session);
  external XRViewport? getViewport(XRView view);
  external bool get antialias;
  external bool get ignoreDepthValues;
  external set fixedFoveation(num? value);
  external num? get fixedFoveation;
  external WebGLFramebuffer? get framebuffer;
  external int get framebufferWidth;
  external int get framebufferHeight;
}
extension type XRSessionEvent._(JSObject _) implements Event, JSObject {
  external factory XRSessionEvent(
    String type,
    XRSessionEventInit eventInitDict,
  );

  external XRSession get session;
}
extension type XRSessionEventInit._(JSObject _) implements EventInit, JSObject {
  external factory XRSessionEventInit({required XRSession session});

  external set session(XRSession value);
  external XRSession get session;
}
extension type XRInputSourceEvent._(JSObject _) implements Event, JSObject {
  external factory XRInputSourceEvent(
    String type,
    XRInputSourceEventInit eventInitDict,
  );

  external XRFrame get frame;
  external XRInputSource get inputSource;
}
extension type XRInputSourceEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRInputSourceEventInit({
    required XRFrame frame,
    required XRInputSource inputSource,
  });

  external set frame(XRFrame value);
  external XRFrame get frame;
  external set inputSource(XRInputSource value);
  external XRInputSource get inputSource;
}
extension type XRInputSourcesChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory XRInputSourcesChangeEvent(
    String type,
    XRInputSourcesChangeEventInit eventInitDict,
  );

  external XRSession get session;
  external JSArray get added;
  external JSArray get removed;
}
extension type XRInputSourcesChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRInputSourcesChangeEventInit({
    required XRSession session,
    required JSArray added,
    required JSArray removed,
  });

  external set session(XRSession value);
  external XRSession get session;
  external set added(JSArray value);
  external JSArray get added;
  external set removed(JSArray value);
  external JSArray get removed;
}
extension type XRReferenceSpaceEvent._(JSObject _) implements Event, JSObject {
  external factory XRReferenceSpaceEvent(
    String type,
    XRReferenceSpaceEventInit eventInitDict,
  );

  external XRReferenceSpace get referenceSpace;
  external XRRigidTransform? get transform;
}
extension type XRReferenceSpaceEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRReferenceSpaceEventInit({
    required XRReferenceSpace referenceSpace,
    XRRigidTransform? transform,
  });

  external set referenceSpace(XRReferenceSpace value);
  external XRReferenceSpace get referenceSpace;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
}
extension type XRSessionSupportedPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory XRSessionSupportedPermissionDescriptor({XRSessionMode mode});

  external set mode(XRSessionMode value);
  external XRSessionMode get mode;
}
extension type XRPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory XRPermissionDescriptor({
    XRSessionMode mode,
    JSArray requiredFeatures,
    JSArray optionalFeatures,
  });

  external set mode(XRSessionMode value);
  external XRSessionMode get mode;
  external set requiredFeatures(JSArray value);
  external JSArray get requiredFeatures;
  external set optionalFeatures(JSArray value);
  external JSArray get optionalFeatures;
}
extension type XRPermissionStatus._(JSObject _)
    implements PermissionStatus, JSObject {
  external set granted(JSArray value);
  external JSArray get granted;
}
