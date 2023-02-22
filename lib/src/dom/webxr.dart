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
class XRSystem extends EventTarget {
  external factory XRSystem();
}

extension XRSystemExtension on XRSystem {
  external JSPromise isSessionSupported(XRSessionMode mode);
  external JSPromise requestSession(XRSessionMode mode);
  external JSPromise requestSession1(
    XRSessionMode mode,
    XRSessionInit options,
  );
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
class XRSession extends EventTarget {
  external factory XRSession();
}

extension XRSessionExtension on XRSession {
  external JSPromise restorePersistentAnchor(JSString uuid);
  external JSPromise deletePersistentAnchor(JSString uuid);
  external XREnvironmentBlendMode get environmentBlendMode;
  external XRInteractionMode get interactionMode;
  external XRDepthUsage get depthUsage;
  external XRDepthDataFormat get depthDataFormat;
  external XRDOMOverlayState? get domOverlayState;
  external JSPromise requestHitTestSource(XRHitTestOptionsInit options);
  external JSPromise requestHitTestSourceForTransientInput(
      XRTransientInputHitTestOptionsInit options);
  external JSPromise requestLightProbe();
  external JSPromise requestLightProbe1(XRLightProbeInit options);
  external XRReflectionFormat get preferredReflectionFormat;
  external XRVisibilityState get visibilityState;
  external JSNumber? get frameRate;
  external JSFloat32Array? get supportedFrameRates;
  external XRRenderState get renderState;
  external XRInputSourceArray get inputSources;
  external JSArray get enabledFeatures;
  external JSVoid updateRenderState();
  external JSVoid updateRenderState1(XRRenderStateInit state);
  external JSPromise updateTargetFrameRate(JSNumber rate);
  external JSPromise requestReferenceSpace(XRReferenceSpaceType type);
  external JSNumber requestAnimationFrame(XRFrameRequestCallback callback);
  external JSVoid cancelAnimationFrame(JSNumber handle);
  external JSPromise end();
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
class XRRenderState {
  external factory XRRenderState();
}

extension XRRenderStateExtension on XRRenderState {
  external JSNumber get depthNear;
  external JSNumber get depthFar;
  external JSNumber? get inlineVerticalFieldOfView;
  external XRWebGLLayer? get baseLayer;
  external JSArray get layers;
}

@JS('XRFrame')
@staticInterop
class XRFrame {
  external factory XRFrame();
}

extension XRFrameExtension on XRFrame {
  external JSPromise createAnchor(
    XRRigidTransform pose,
    XRSpace space,
  );
  external XRAnchorSet get trackedAnchors;
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
  external XRSession get session;
  external DOMHighResTimeStamp get predictedDisplayTime;
  external XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);
  external XRPose? getPose(
    XRSpace space,
    XRSpace baseSpace,
  );
}

@JS('XRSpace')
@staticInterop
class XRSpace extends EventTarget {
  external factory XRSpace();
}

@JS('XRReferenceSpace')
@staticInterop
class XRReferenceSpace extends XRSpace {
  external factory XRReferenceSpace();
}

extension XRReferenceSpaceExtension on XRReferenceSpace {
  external XRReferenceSpace getOffsetReferenceSpace(
      XRRigidTransform originOffset);
  external set onreset(EventHandler value);
  external EventHandler get onreset;
}

@JS('XRBoundedReferenceSpace')
@staticInterop
class XRBoundedReferenceSpace extends XRReferenceSpace {
  external factory XRBoundedReferenceSpace();
}

extension XRBoundedReferenceSpaceExtension on XRBoundedReferenceSpace {
  external JSArray get boundsGeometry;
}

@JS('XRView')
@staticInterop
class XRView {
  external factory XRView();
}

extension XRViewExtension on XRView {
  external XRCamera? get camera;
  external JSBoolean get isFirstPersonObserver;
  external XREye get eye;
  external JSFloat32Array get projectionMatrix;
  external XRRigidTransform get transform;
  external JSNumber? get recommendedViewportScale;
  external JSVoid requestViewportScale(JSNumber? scale);
}

@JS('XRViewport')
@staticInterop
class XRViewport {
  external factory XRViewport();
}

extension XRViewportExtension on XRViewport {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get width;
  external JSNumber get height;
}

@JS('XRRigidTransform')
@staticInterop
class XRRigidTransform {
  external factory XRRigidTransform();

  external factory XRRigidTransform.a1();

  external factory XRRigidTransform.a2(DOMPointInit position);

  external factory XRRigidTransform.a3(
    DOMPointInit position,
    DOMPointInit orientation,
  );
}

extension XRRigidTransformExtension on XRRigidTransform {
  external DOMPointReadOnly get position;
  external DOMPointReadOnly get orientation;
  external JSFloat32Array get matrix;
  external XRRigidTransform get inverse;
}

@JS('XRPose')
@staticInterop
class XRPose {
  external factory XRPose();
}

extension XRPoseExtension on XRPose {
  external XRRigidTransform get transform;
  external DOMPointReadOnly? get linearVelocity;
  external DOMPointReadOnly? get angularVelocity;
  external JSBoolean get emulatedPosition;
}

@JS('XRViewerPose')
@staticInterop
class XRViewerPose extends XRPose {
  external factory XRViewerPose();
}

extension XRViewerPoseExtension on XRViewerPose {
  external JSArray get views;
}

@JS('XRInputSource')
@staticInterop
class XRInputSource {
  external factory XRInputSource();
}

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
class XRInputSourceArray {
  external factory XRInputSourceArray();
}

extension XRInputSourceArrayExtension on XRInputSourceArray {
  external JSNumber get length;
}

@JS('XRLayer')
@staticInterop
class XRLayer extends EventTarget {
  external factory XRLayer();
}

@JS()
@staticInterop
@anonymous
class XRWebGLLayerInit {
  external factory XRWebGLLayerInit({
    JSBoolean antialias = true,
    JSBoolean depth = true,
    JSBoolean stencil = false,
    JSBoolean alpha = true,
    JSBoolean ignoreDepthValues = false,
    JSNumber framebufferScaleFactor = 1.0,
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
class XRWebGLLayer extends XRLayer {
  external factory XRWebGLLayer();

  external factory XRWebGLLayer.a1(
    XRSession session,
    XRWebGLRenderingContext context,
  );

  external factory XRWebGLLayer.a2(
    XRSession session,
    XRWebGLRenderingContext context,
    XRWebGLLayerInit layerInit,
  );

  external static JSNumber getNativeFramebufferScaleFactor(XRSession session);
}

extension XRWebGLLayerExtension on XRWebGLLayer {
  external JSBoolean get antialias;
  external JSBoolean get ignoreDepthValues;
  external set fixedFoveation(JSNumber? value);
  external JSNumber? get fixedFoveation;
  external WebGLFramebuffer? get framebuffer;
  external JSNumber get framebufferWidth;
  external JSNumber get framebufferHeight;
  external XRViewport? getViewport(XRView view);
}

@JS('XRSessionEvent')
@staticInterop
class XRSessionEvent extends Event {
  external factory XRSessionEvent();

  external factory XRSessionEvent.a1(
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
class XRSessionEventInit extends EventInit {
  external factory XRSessionEventInit({required XRSession session});
}

extension XRSessionEventInitExtension on XRSessionEventInit {
  external set session(XRSession value);
  external XRSession get session;
}

@JS('XRInputSourceEvent')
@staticInterop
class XRInputSourceEvent extends Event {
  external factory XRInputSourceEvent();

  external factory XRInputSourceEvent.a1(
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
class XRInputSourceEventInit extends EventInit {
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
class XRInputSourcesChangeEvent extends Event {
  external factory XRInputSourcesChangeEvent();

  external factory XRInputSourcesChangeEvent.a1(
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
class XRInputSourcesChangeEventInit extends EventInit {
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
class XRReferenceSpaceEvent extends Event {
  external factory XRReferenceSpaceEvent();

  external factory XRReferenceSpaceEvent.a1(
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
class XRReferenceSpaceEventInit extends EventInit {
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
class XRSessionSupportedPermissionDescriptor extends PermissionDescriptor {
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
class XRPermissionDescriptor extends PermissionDescriptor {
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
class XRPermissionStatus extends PermissionStatus {
  external factory XRPermissionStatus();
}

extension XRPermissionStatusExtension on XRPermissionStatus {
  external set granted(JSArray value);
  external JSArray get granted;
}
