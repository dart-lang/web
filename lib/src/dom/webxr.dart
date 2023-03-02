// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'anchors.dart';
import 'dom.dart';
import 'gamepad.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'html.dart';
import 'permissions.dart';
import 'raw_camera_access.dart';
import 'webgl1.dart';
import 'webxr_ar_module.dart';
import 'webxr_depth_sensing.dart';
import 'webxr_dom_overlays.dart';
import 'webxr_hand_input.dart';
import 'webxr_hit_test.dart';
import 'webxr_lighting_estimation.dart';

typedef XRWebGLRenderingContext = JSAny;
typedef XRFrameRequestCallback = JSFunction;
typedef XRSessionMode = JSString;
typedef XRVisibilityState = JSString;
typedef XRReferenceSpaceType = JSString;
typedef XREye = JSString;
typedef XRHandedness = JSString;
typedef XRTargetRayMode = JSString;

@JS('XRSystem')
@staticInterop
class XRSystem implements EventTarget {}

extension XRSystemExtension on XRSystem {
  external JSPromise isSessionSupported(XRSessionMode mode);
  external JSPromise requestSession(
    XRSessionMode mode, [
    XRSessionInit options,
  ]);
  external set ondevicechange(EventHandler value);
  external EventHandler get ondevicechange;
}

@JS()
@staticInterop
@anonymous
class XRSessionInit {
  external factory XRSessionInit({
    XRDepthStateInit depthSensing,
    XRDOMOverlayInit? domOverlay,
    JSArray requiredFeatures,
    JSArray optionalFeatures,
  });
}

extension XRSessionInitExtension on XRSessionInit {
  external set depthSensing(XRDepthStateInit value);
  external XRDepthStateInit get depthSensing;
  external set domOverlay(XRDOMOverlayInit? value);
  external XRDOMOverlayInit? get domOverlay;
  external set requiredFeatures(JSArray value);
  external JSArray get requiredFeatures;
  external set optionalFeatures(JSArray value);
  external JSArray get optionalFeatures;
}

@JS('XRSession')
@staticInterop
class XRSession implements EventTarget {}

extension XRSessionExtension on XRSession {
  external JSPromise restorePersistentAnchor(JSString uuid);
  external JSPromise deletePersistentAnchor(JSString uuid);
  external JSPromise requestHitTestSource(XRHitTestOptionsInit options);
  external JSPromise requestHitTestSourceForTransientInput(
      XRTransientInputHitTestOptionsInit options);
  external JSPromise requestLightProbe([XRLightProbeInit options]);
  external JSVoid updateRenderState([XRRenderStateInit state]);
  external JSPromise updateTargetFrameRate(JSNumber rate);
  external JSPromise requestReferenceSpace(XRReferenceSpaceType type);
  external JSNumber requestAnimationFrame(XRFrameRequestCallback callback);
  external JSVoid cancelAnimationFrame(JSNumber handle);
  external JSPromise end();
  external XREnvironmentBlendMode get environmentBlendMode;
  external XRInteractionMode get interactionMode;
  external XRDepthUsage get depthUsage;
  external XRDepthDataFormat get depthDataFormat;
  external XRDOMOverlayState? get domOverlayState;
  external XRReflectionFormat get preferredReflectionFormat;
  external XRVisibilityState get visibilityState;
  external JSNumber? get frameRate;
  external JSFloat32Array? get supportedFrameRates;
  external XRRenderState get renderState;
  external XRInputSourceArray get inputSources;
  external JSArray get enabledFeatures;
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

@JS()
@staticInterop
@anonymous
class XRRenderStateInit {
  external factory XRRenderStateInit({
    JSNumber depthNear,
    JSNumber depthFar,
    JSNumber inlineVerticalFieldOfView,
    XRWebGLLayer? baseLayer,
    JSArray? layers,
  });
}

extension XRRenderStateInitExtension on XRRenderStateInit {
  external set depthNear(JSNumber value);
  external JSNumber get depthNear;
  external set depthFar(JSNumber value);
  external JSNumber get depthFar;
  external set inlineVerticalFieldOfView(JSNumber value);
  external JSNumber get inlineVerticalFieldOfView;
  external set baseLayer(XRWebGLLayer? value);
  external XRWebGLLayer? get baseLayer;
  external set layers(JSArray? value);
  external JSArray? get layers;
}

@JS('XRRenderState')
@staticInterop
class XRRenderState {}

extension XRRenderStateExtension on XRRenderState {
  external JSNumber get depthNear;
  external JSNumber get depthFar;
  external JSNumber? get inlineVerticalFieldOfView;
  external XRWebGLLayer? get baseLayer;
  external JSArray get layers;
}

@JS('XRFrame')
@staticInterop
class XRFrame {}

extension XRFrameExtension on XRFrame {
  external JSPromise createAnchor(
    XRRigidTransform pose,
    XRSpace space,
  );
  external XRCPUDepthInformation? getDepthInformation(XRView view);
  external XRJointPose? getJointPose(
    XRJointSpace joint,
    XRSpace baseSpace,
  );
  external JSBoolean fillJointRadii(
    JSArray jointSpaces,
    JSFloat32Array radii,
  );
  external JSBoolean fillPoses(
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
  external XRSession get session;
  external DOMHighResTimeStamp get predictedDisplayTime;
}

@JS('XRSpace')
@staticInterop
class XRSpace implements EventTarget {}

@JS('XRReferenceSpace')
@staticInterop
class XRReferenceSpace implements XRSpace {}

extension XRReferenceSpaceExtension on XRReferenceSpace {
  external XRReferenceSpace getOffsetReferenceSpace(
      XRRigidTransform originOffset);
  external set onreset(EventHandler value);
  external EventHandler get onreset;
}

@JS('XRBoundedReferenceSpace')
@staticInterop
class XRBoundedReferenceSpace implements XRReferenceSpace {}

extension XRBoundedReferenceSpaceExtension on XRBoundedReferenceSpace {
  external JSArray get boundsGeometry;
}

@JS('XRView')
@staticInterop
class XRView {}

extension XRViewExtension on XRView {
  external JSVoid requestViewportScale(JSNumber? scale);
  external XRCamera? get camera;
  external JSBoolean get isFirstPersonObserver;
  external XREye get eye;
  external JSFloat32Array get projectionMatrix;
  external XRRigidTransform get transform;
  external JSNumber? get recommendedViewportScale;
}

@JS('XRViewport')
@staticInterop
class XRViewport {}

extension XRViewportExtension on XRViewport {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get width;
  external JSNumber get height;
}

@JS('XRRigidTransform')
@staticInterop
class XRRigidTransform {
  external factory XRRigidTransform([
    DOMPointInit position,
    DOMPointInit orientation,
  ]);
}

extension XRRigidTransformExtension on XRRigidTransform {
  external DOMPointReadOnly get position;
  external DOMPointReadOnly get orientation;
  external JSFloat32Array get matrix;
  external XRRigidTransform get inverse;
}

@JS('XRPose')
@staticInterop
class XRPose {}

extension XRPoseExtension on XRPose {
  external XRRigidTransform get transform;
  external DOMPointReadOnly? get linearVelocity;
  external DOMPointReadOnly? get angularVelocity;
  external JSBoolean get emulatedPosition;
}

@JS('XRViewerPose')
@staticInterop
class XRViewerPose implements XRPose {}

extension XRViewerPoseExtension on XRViewerPose {
  external JSArray get views;
}

@JS('XRInputSource')
@staticInterop
class XRInputSource {}

extension XRInputSourceExtension on XRInputSource {
  external Gamepad? get gamepad;
  external XRHand? get hand;
  external XRHandedness get handedness;
  external XRTargetRayMode get targetRayMode;
  external XRSpace get targetRaySpace;
  external XRSpace? get gripSpace;
  external JSArray get profiles;
}

@JS('XRInputSourceArray')
@staticInterop
class XRInputSourceArray {}

extension XRInputSourceArrayExtension on XRInputSourceArray {
  external JSNumber get length;
}

@JS('XRLayer')
@staticInterop
class XRLayer implements EventTarget {}

@JS()
@staticInterop
@anonymous
class XRWebGLLayerInit {
  external factory XRWebGLLayerInit({
    JSBoolean antialias,
    JSBoolean depth,
    JSBoolean stencil,
    JSBoolean alpha,
    JSBoolean ignoreDepthValues,
    JSNumber framebufferScaleFactor,
  });
}

extension XRWebGLLayerInitExtension on XRWebGLLayerInit {
  external set antialias(JSBoolean value);
  external JSBoolean get antialias;
  external set depth(JSBoolean value);
  external JSBoolean get depth;
  external set stencil(JSBoolean value);
  external JSBoolean get stencil;
  external set alpha(JSBoolean value);
  external JSBoolean get alpha;
  external set ignoreDepthValues(JSBoolean value);
  external JSBoolean get ignoreDepthValues;
  external set framebufferScaleFactor(JSNumber value);
  external JSNumber get framebufferScaleFactor;
}

@JS('XRWebGLLayer')
@staticInterop
class XRWebGLLayer implements XRLayer {
  external factory XRWebGLLayer(
    XRSession session,
    XRWebGLRenderingContext context, [
    XRWebGLLayerInit layerInit,
  ]);

  external static JSNumber getNativeFramebufferScaleFactor(XRSession session);
}

extension XRWebGLLayerExtension on XRWebGLLayer {
  external XRViewport? getViewport(XRView view);
  external JSBoolean get antialias;
  external JSBoolean get ignoreDepthValues;
  external set fixedFoveation(JSNumber? value);
  external JSNumber? get fixedFoveation;
  external WebGLFramebuffer? get framebuffer;
  external JSNumber get framebufferWidth;
  external JSNumber get framebufferHeight;
}

@JS('XRSessionEvent')
@staticInterop
class XRSessionEvent implements Event {
  external factory XRSessionEvent(
    JSString type,
    XRSessionEventInit eventInitDict,
  );
}

extension XRSessionEventExtension on XRSessionEvent {
  external XRSession get session;
}

@JS()
@staticInterop
@anonymous
class XRSessionEventInit implements EventInit {
  external factory XRSessionEventInit({required XRSession session});
}

extension XRSessionEventInitExtension on XRSessionEventInit {
  external set session(XRSession value);
  external XRSession get session;
}

@JS('XRInputSourceEvent')
@staticInterop
class XRInputSourceEvent implements Event {
  external factory XRInputSourceEvent(
    JSString type,
    XRInputSourceEventInit eventInitDict,
  );
}

extension XRInputSourceEventExtension on XRInputSourceEvent {
  external XRFrame get frame;
  external XRInputSource get inputSource;
}

@JS()
@staticInterop
@anonymous
class XRInputSourceEventInit implements EventInit {
  external factory XRInputSourceEventInit({
    required XRFrame frame,
    required XRInputSource inputSource,
  });
}

extension XRInputSourceEventInitExtension on XRInputSourceEventInit {
  external set frame(XRFrame value);
  external XRFrame get frame;
  external set inputSource(XRInputSource value);
  external XRInputSource get inputSource;
}

@JS('XRInputSourcesChangeEvent')
@staticInterop
class XRInputSourcesChangeEvent implements Event {
  external factory XRInputSourcesChangeEvent(
    JSString type,
    XRInputSourcesChangeEventInit eventInitDict,
  );
}

extension XRInputSourcesChangeEventExtension on XRInputSourcesChangeEvent {
  external XRSession get session;
  external JSArray get added;
  external JSArray get removed;
}

@JS()
@staticInterop
@anonymous
class XRInputSourcesChangeEventInit implements EventInit {
  external factory XRInputSourcesChangeEventInit({
    required XRSession session,
    required JSArray added,
    required JSArray removed,
  });
}

extension XRInputSourcesChangeEventInitExtension
    on XRInputSourcesChangeEventInit {
  external set session(XRSession value);
  external XRSession get session;
  external set added(JSArray value);
  external JSArray get added;
  external set removed(JSArray value);
  external JSArray get removed;
}

@JS('XRReferenceSpaceEvent')
@staticInterop
class XRReferenceSpaceEvent implements Event {
  external factory XRReferenceSpaceEvent(
    JSString type,
    XRReferenceSpaceEventInit eventInitDict,
  );
}

extension XRReferenceSpaceEventExtension on XRReferenceSpaceEvent {
  external XRReferenceSpace get referenceSpace;
  external XRRigidTransform? get transform;
}

@JS()
@staticInterop
@anonymous
class XRReferenceSpaceEventInit implements EventInit {
  external factory XRReferenceSpaceEventInit({
    required XRReferenceSpace referenceSpace,
    XRRigidTransform? transform,
  });
}

extension XRReferenceSpaceEventInitExtension on XRReferenceSpaceEventInit {
  external set referenceSpace(XRReferenceSpace value);
  external XRReferenceSpace get referenceSpace;
  external set transform(XRRigidTransform? value);
  external XRRigidTransform? get transform;
}

@JS()
@staticInterop
@anonymous
class XRSessionSupportedPermissionDescriptor implements PermissionDescriptor {
  external factory XRSessionSupportedPermissionDescriptor({XRSessionMode mode});
}

extension XRSessionSupportedPermissionDescriptorExtension
    on XRSessionSupportedPermissionDescriptor {
  external set mode(XRSessionMode value);
  external XRSessionMode get mode;
}

@JS()
@staticInterop
@anonymous
class XRPermissionDescriptor implements PermissionDescriptor {
  external factory XRPermissionDescriptor({
    XRSessionMode mode,
    JSArray requiredFeatures,
    JSArray optionalFeatures,
  });
}

extension XRPermissionDescriptorExtension on XRPermissionDescriptor {
  external set mode(XRSessionMode value);
  external XRSessionMode get mode;
  external set requiredFeatures(JSArray value);
  external JSArray get requiredFeatures;
  external set optionalFeatures(JSArray value);
  external JSArray get optionalFeatures;
}

@JS('XRPermissionStatus')
@staticInterop
class XRPermissionStatus implements PermissionStatus {}

extension XRPermissionStatusExtension on XRPermissionStatus {
  external set granted(JSArray value);
  external JSArray get granted;
}
