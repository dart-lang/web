// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
  /// The [XRSystem] method
  /// **`isSessionSupported()`** returns a promise which resolves to
  /// `true` if the specified WebXR session mode is supported by the user's
  /// WebXR
  /// device. Otherwise, the promise resolves with `false`.
  ///
  /// If no devices are available or the browser doesn't have permission
  /// to use the XR device, the promise is rejected with an appropriate
  /// [DOMException].
  external JSPromise isSessionSupported(XRSessionMode mode);

  /// The **[XRSystem]** interface's
  /// **`requestSession()`** method returns a `promise`
  /// which resolves to an [XRSession] object through which you can manage the
  /// requested type of WebXR session.
  ///
  /// While only one immersive VR session can be active at a time, multiple
  /// inline sessions can be in progress at once.
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

  /// The **`requestHitTestSource()`** method of the
  /// [XRSession] interface returns a `Promise` that resolves with an
  /// [XRHitTestSource] object that can be passed to
  /// [XRFrame.getHitTestResults].
  external JSPromise requestHitTestSource(XRHitTestOptionsInit options);

  /// The **`requestHitTestSourceForTransientInput()`** method of the
  /// [XRSession] interface returns a `Promise` that resolves with an
  /// [XRTransientInputHitTestSource] object that can be passed to
  /// [XRFrame.getHitTestResultsForTransientInput].
  external JSPromise requestHitTestSourceForTransientInput(
      XRTransientInputHitTestOptionsInit options);

  /// The **`requestLightProbe()`** method of the
  /// [XRSession] interface returns a `Promise` that resolves with an
  /// [XRLightProbe] object that estimates lighting information at a given point
  /// in the user's environment.
  external JSPromise requestLightProbe([XRLightProbeInit options]);

  /// The `updateRenderState()` method of the [XRSession] interface of the
  /// [WebXR API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
  /// schedules changes to be applied to the active render state
  /// ([XRRenderState]) prior to rendering of the next frame.
  external void updateRenderState([XRRenderStateInit state]);
  external JSPromise updateTargetFrameRate(num rate);

  /// The **`requestReferenceSpace()`** method of the
  /// [XRSession] interface returns a `promise` that resolves with
  /// an instance of either [XRReferenceSpace]
  /// or [XRBoundedReferenceSpace] as appropriate given the type of reference
  /// space requested.
  external JSPromise requestReferenceSpace(XRReferenceSpaceType type);

  /// The [XRSession]
  /// method **`requestAnimationFrame()`**, much like the
  /// [Window] method of the same name, schedules a callback to be executed the
  /// next time the browser is ready to paint the session's virtual environment
  /// to the XR
  /// display. The specified callback is executed once before the next repaint;
  /// if
  /// you wish for it to be executed for the following repaint, you must
  /// call `requestAnimationFrame()` again. This can be done from within the
  /// callback itself.
  ///
  /// The callback takes two parameters as inputs: an [XRFrame] describing the
  /// state of all tracked objects for the session, and a timestamp you can use
  /// to compute
  /// any animation updates needed.
  ///
  /// You can cancel a previously scheduled animation by calling
  /// [XRSession.cancelAnimationFrame].
  ///
  /// > **Note:** Despite the obvious similarities between these methods and the
  /// > global [Window.requestAnimationFrame] function
  /// > provided by the `Window` interface, you _must not_ treat these as
  /// > interchangeable. There is _no_ guarantee that the latter will work at
  /// > all while
  /// > an immersive XR session is underway.
  external int requestAnimationFrame(XRFrameRequestCallback callback);

  /// The **`cancelAnimationFrame()`** method of
  /// the [XRSession] interface cancels an animation frame which was previously
  /// requested by calling [XRSession.requestAnimationFrame].
  external void cancelAnimationFrame(int handle);

  /// The **`end()`** method shuts down the
  /// [XRSession] on which it's called, returning a promise which resolves once
  /// the session has fully shut down.
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
  /// The **`createAnchor()`** method of the [XRFrame] interface creates a
  /// free-floating [XRAnchor] which will be fixed relative to the real world.
  ///
  /// See [XRHitTestResult.createAnchor] for creating an anchor from a hit test
  /// result that is attached to a real-world object.
  external JSPromise createAnchor(
    XRRigidTransform pose,
    XRSpace space,
  );

  /// The **`getDepthInformation()`** method of the [XRFrame] interface returns
  /// an [XRCPUDepthInformation] object containing CPU depth information for the
  /// active and animated frame.
  external XRCPUDepthInformation? getDepthInformation(XRView view);

  /// The **`getJointPose()`** method of the [XRFrame] interface returns an
  /// [XRJointPose] object providing the pose of a hand joint (see [XRHand])
  /// relative to a given base space.
  external XRJointPose? getJointPose(
    XRJointSpace joint,
    XRSpace baseSpace,
  );

  /// The **`fillJointRadii()`** method of the [XRFrame] interface populates a
  /// `Float32Array` with radii for a list of hand joint spaces and returns
  /// `true` if successful for all spaces.
  external bool fillJointRadii(
    JSArray jointSpaces,
    JSFloat32Array radii,
  );

  /// The **`fillPoses()`** method of the [XRFrame] interface populates a
  /// `Float32Array` with the matrices of the poses relative to a given base
  /// space and returns `true` if successful for all spaces.
  external bool fillPoses(
    JSArray spaces,
    XRSpace baseSpace,
    JSFloat32Array transforms,
  );

  /// The **`getHitTestResults()`** method of the [XRFrame] interface returns an
  /// array of [XRHitTestResult] objects containing hit test results for a given
  /// [XRHitTestSource].
  external JSArray getHitTestResults(XRHitTestSource hitTestSource);

  /// The **`getHitTestResultsForTransientInput()`** method of the [XRFrame]
  /// interface returns an array of [XRTransientInputHitTestResult] objects
  /// containing transient input hit test results for a given
  /// [XRTransientInputHitTestSource].
  external JSArray getHitTestResultsForTransientInput(
      XRTransientInputHitTestSource hitTestSource);

  /// The **`getLightEstimate()`** method of the [XRFrame] interface returns an
  /// [XRLightEstimate] object containing estimated lighting values for a given
  /// [XRLightProbe].
  external XRLightEstimate? getLightEstimate(XRLightProbe lightProbe);

  /// The **`getViewerPose()`** method, a member of the [XRFrame] interface,
  /// returns a [XRViewerPose] object which describes the viewer's pose
  /// (position and orientation) relative to the specified reference space.
  ///
  /// See the [XRFrame.getPose] method for a way to calculate a pose that
  /// represents the difference between two spaces.
  external XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);

  /// The [XRFrame] method **`getPose()`** returns the relative position and
  /// orientation—the pose—of one [XRSpace] to that of another space. With this,
  /// you can observe the motion of objects relative to each other and to fixed
  /// locations throughout the scene.
  ///
  /// For example, to get the position of a controller relative to the viewer's
  /// head, you would compare the controller's [XRInputSource.gripSpace] to the
  /// [XRReferenceSpace] of type `viewer`.
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
  /// The [XRReferenceSpace]
  /// interface's **`getOffsetReferenceSpace()`** method returns a
  /// new reference space object which describes the relative difference in
  /// position between
  /// the object on which the method is called and a given point in 3D space.
  /// The
  /// object returned by `getOffsetReferenceSpace()` is an
  /// [XRReferenceSpace] if called on an `XRReferenceSpace`, or an
  /// [XRBoundedReferenceSpace] if called on an object of that type.
  ///
  /// In other words, when you have an object in 3D space and need to position
  /// another object
  /// relative to that one, you can call `getOffsetReferenceSpace()`, passing
  /// into
  /// it the position and orientation you want the second object to have
  /// _relative to the position and orientation of the object on which you call
  /// `getOffsetReferenceSpace()`_.
  ///
  /// Then, when drawing the scene, you can use the offset reference space to
  /// not only
  /// position objects relative to one another, but to apply the needed
  /// transforms to render
  /// objects properly based upon the viewer's position. This is demonstrated in
  /// the example
  /// [Implementing rotation based on non-XR inputs](#implementing_rotation_based_on_non-xr_inputs),
  /// which demonstrates a way to
  /// use this method to let the user use their mouse to pitch and yaw their
  /// viewing angle.
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
  /// The **`requestViewportScale()`** method of the [XRView] interface requests
  /// that the user agent sets the requested viewport scale for this viewport to
  /// the given value. This is used for dynamic viewport scaling which allows
  /// rendering to a subset of the WebXR viewport using a scale factor that can
  /// be changed every animation frame.
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

  /// The [XRWebGLLayer] interface's
  /// **`getViewport()`** method returns the
  /// [XRViewport] that should be used to render the specified
  /// [XRView] into the WebGL layer. For WebXR devices which use a
  /// single framebuffer for both the left and right eyes, the returned viewport
  /// represents
  /// the region of the framebuffer into which the scene should be rendered for
  /// the eye
  /// represented by the view.
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
