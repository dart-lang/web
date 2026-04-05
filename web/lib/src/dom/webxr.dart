// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'anchors.dart';
import 'body_tracking.dart';
import 'dom.dart';
import 'gamepad.dart';
import 'geometry.dart';
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
import 'webxr_plane_detection.dart';

typedef XRWebGLRenderingContext = JSObject;
typedef XRFrameRequestCallback = JSFunction;
typedef XRSessionMode = String;
typedef XRVisibilityState = String;
typedef XRReferenceSpaceType = String;
typedef XREye = String;
typedef XRHandedness = String;
typedef XRTargetRayMode = String;

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// interface **`XRSystem`** provides methods which let you get access to an
/// [XRSession] object representing a WebXR session. With that `XRSession` in
/// hand, you can use it to interact with the Augmented Reality (AR) or Virtual
/// Reality (VR) device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRSystem).
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
  external JSPromise<JSBoolean> isSessionSupported(XRSessionMode mode);

  /// The **[XRSystem]** interface's
  /// **`requestSession()`** method returns a `promise`
  /// which resolves to an [XRSession] object through which you can manage the
  /// requested type of WebXR session.
  ///
  /// While only one immersive VR session can be active at a time, multiple
  /// inline sessions can be in progress at once.
  external JSPromise<XRSession> requestSession(
    XRSessionMode mode, [
    XRSessionInit options,
  ]);
  external EventHandler get ondevicechange;
  external set ondevicechange(EventHandler value);
}
extension type XRSessionInit._(JSObject _) implements JSObject {
  external factory XRSessionInit({
    JSArray<JSString> requiredFeatures,
    JSArray<JSString> optionalFeatures,
    XRDepthStateInit depthSensing,
    XRDOMOverlayInit? domOverlay,
  });

  external JSArray<JSString> get requiredFeatures;
  external set requiredFeatures(JSArray<JSString> value);
  external JSArray<JSString> get optionalFeatures;
  external set optionalFeatures(JSArray<JSString> value);
  external XRDepthStateInit get depthSensing;
  external set depthSensing(XRDepthStateInit value);
  external XRDOMOverlayInit? get domOverlay;
  external set domOverlay(XRDOMOverlayInit? value);
}

/// The **`XRSession`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// represents an ongoing XR session, providing methods and properties used to
/// interact with and control the session. To open a WebXR session, use the
/// [XRSystem] interface's [XRSystem.requestSession] method.
///
/// With `XRSession` methods, you can poll the viewer's position and orientation
/// (the [XRViewerPose]), gather information about the user's environment, and
/// present imagery to the user. `XRSession` supports both inline and immersive
/// virtual and augmented reality modes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRSession).
extension type XRSession._(JSObject _) implements EventTarget, JSObject {
  /// The `updateRenderState()` method of the [XRSession] interface of the
  /// [WebXR API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
  /// schedules changes to be applied to the active render state
  /// ([XRRenderState]) prior to rendering of the next frame.
  external void updateRenderState([XRRenderStateInit state]);
  external JSPromise<JSAny?> updateTargetFrameRate(num rate);

  /// The **`requestReferenceSpace()`** method of the
  /// [XRSession] interface returns a `promise` that resolves with
  /// an instance of either [XRReferenceSpace]
  /// or [XRBoundedReferenceSpace] as appropriate given the type of reference
  /// space requested.
  external JSPromise<XRReferenceSpace> requestReferenceSpace(
      XRReferenceSpaceType type);

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
  /// > [!NOTE]
  /// > Despite the obvious similarities between these methods and the
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
  external JSPromise<JSAny?> end();
  external JSPromise<XRAnchor> restorePersistentAnchor(String uuid);
  external JSPromise<JSAny?> deletePersistentAnchor(String uuid);
  external void pauseDepthSensing();
  external void resumeDepthSensing();

  /// The **`requestHitTestSource()`** method of the
  /// [XRSession] interface returns a `Promise` that resolves with an
  /// [XRHitTestSource] object that can be passed to
  /// [XRFrame.getHitTestResults].
  external JSPromise<XRHitTestSource> requestHitTestSource(
      XRHitTestOptionsInit options);

  /// The **`requestHitTestSourceForTransientInput()`** method of the
  /// [XRSession] interface returns a `Promise` that resolves with an
  /// [XRTransientInputHitTestSource] object that can be passed to
  /// [XRFrame.getHitTestResultsForTransientInput].
  external JSPromise<XRTransientInputHitTestSource>
      requestHitTestSourceForTransientInput(
          XRTransientInputHitTestOptionsInit options);

  /// The **`requestLightProbe()`** method of the
  /// [XRSession] interface returns a `Promise` that resolves with an
  /// [XRLightProbe] object that estimates lighting information at a given point
  /// in the user's environment.
  external JSPromise<XRLightProbe> requestLightProbe(
      [XRLightProbeInit options]);
  external JSPromise<JSAny?> initiateRoomCapture();

  /// The _read-only_ **`visibilityState`** property of the
  /// [XRSession] interface is a string indicating whether the WebXR content is
  /// currently visible to the user, and if it is, whether it's the primary
  /// focus.
  ///
  /// Every time the visibility state changes, a
  /// [XRSession.visibilitychange_event] event is fired on the
  /// [XRSession] object.
  external XRVisibilityState get visibilityState;
  external double? get frameRate;
  external JSFloat32Array? get supportedFrameRates;

  /// The
  /// _read-only_ **`renderState`** property of an
  /// [XRSession] object indicates the returns a [XRRenderState]
  /// object describing how the user's environment which should be rendered. The
  /// information provided covers the minimum and maximum distance at which to
  /// render objects,
  /// the vertical field of view to use when rendering the in the `inline`
  /// session
  /// mode, and the [XRWebGLLayer] to render into for inline composition.
  ///
  /// While this property is read only, you can call the [XRSession] method
  /// [XRSession.updateRenderState] to make changes.
  external XRRenderState get renderState;

  /// The read-only **`inputSources`** property of the
  /// [XRSession] interface returns an [XRInputSourceArray] object
  /// which lists all controllers and input devices which are expressly
  /// associated with the
  /// XR device and are currently available. These controllers may include
  /// handheld
  /// controllers, XR-equipped gloves, optically tracked hands, and gaze-based
  /// input methods.
  /// Keyboards, gamepads, and mice are _not_ considered WebXR input sources.
  ///
  /// > [!NOTE]
  /// > Traditional gamepad controllers are supported using the
  /// > [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API).
  external XRInputSourceArray get inputSources;
  external XRInputSourceArray get trackedSources;
  external JSArray<JSString> get enabledFeatures;
  external bool get isSystemKeyboardSupported;
  external EventHandler get onend;
  external set onend(EventHandler value);
  external EventHandler get oninputsourceschange;
  external set oninputsourceschange(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectend;
  external set onselectend(EventHandler value);
  external EventHandler get onsqueeze;
  external set onsqueeze(EventHandler value);
  external EventHandler get onsqueezestart;
  external set onsqueezestart(EventHandler value);
  external EventHandler get onsqueezeend;
  external set onsqueezeend(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set onvisibilitychange(EventHandler value);
  external EventHandler get onframeratechange;
  external set onframeratechange(EventHandler value);
  external JSArray<JSString> get persistentAnchors;

  /// The [XRSession] interface's _read-only_ **`environmentBlendMode`**
  /// property identifies if, and to what degree, the computer-generated imagery
  /// is overlaid atop the real world.
  ///
  /// This is used to differentiate between fully-immersive VR sessions and AR
  /// sessions which render
  /// over a pass-through image of the real world, possibly partially
  /// transparently.
  external XREnvironmentBlendMode get environmentBlendMode;

  /// The [XRSession] interface's _read-only_ **`interactionMode`** property
  /// describes the best space (according to the user agent) for the application
  /// to draw an interactive UI for the current session.
  external XRInteractionMode get interactionMode;

  /// The _read-only_ **`depthUsage`** property of an `immersive-ar`
  /// [XRSession] describes which depth-sensing usage is used.
  external XRDepthUsage get depthUsage;

  /// The _read-only_ **`depthDataFormat`** property of an `immersive-ar`
  /// [XRSession] describes which depth sensing data format is used.
  external XRDepthDataFormat get depthDataFormat;
  external XRDepthType? get depthType;
  external bool? get depthActive;

  /// The _read-only_ **`domOverlayState`** property of an `immersive-ar`
  /// [XRSession] provides information about the DOM overlay, if the feature is
  /// enabled.
  external XRDOMOverlayState? get domOverlayState;

  /// The _read-only_ **`preferredReflectionFormat`** property of the
  /// [XRSession] interface returns this session's preferred reflection format
  /// used for lighting estimation texture data.
  external XRReflectionFormat get preferredReflectionFormat;
  external int get maxRenderLayers;
}
extension type XRRenderStateInit._(JSObject _) implements JSObject {
  external factory XRRenderStateInit({
    num depthNear,
    num depthFar,
    bool passthroughFullyObscured,
    num inlineVerticalFieldOfView,
    XRWebGLLayer? baseLayer,
    JSArray<XRLayer>? layers,
  });

  external double get depthNear;
  external set depthNear(num value);
  external double get depthFar;
  external set depthFar(num value);
  external bool get passthroughFullyObscured;
  external set passthroughFullyObscured(bool value);
  external double get inlineVerticalFieldOfView;
  external set inlineVerticalFieldOfView(num value);
  external XRWebGLLayer? get baseLayer;
  external set baseLayer(XRWebGLLayer? value);
  external JSArray<XRLayer>? get layers;
  external set layers(JSArray<XRLayer>? value);
}

/// The **`XRRenderState`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// contains configurable values which affect how the imagery generated by an
/// [XRSession] gets composited. These properties include the range of distances
/// from the viewer within which content should be rendered, the vertical field
/// of view (for inline presentations), and a reference to the [XRWebGLLayer]
/// being used as the target for rendering the scene prior to it being presented
/// on the XR device's display or displays.
///
/// When you apply changes using the `XRSession` method
/// [XRSession.updateRenderState], the specified changes take effect after the
/// current animation frame has completed, but before the next one begins.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRRenderState).
extension type XRRenderState._(JSObject _) implements JSObject {
  /// The **`depthNear`** read-only property of the
  /// [XRRenderState] interface returns the distance in meters of the near clip
  /// plane from the viewer.
  external double get depthNear;

  /// The **`depthFar`** read-only property of the
  /// [XRRenderState] interface returns the distance in meters of the far clip
  /// plane from the viewer.
  external double get depthFar;
  external bool? get passthroughFullyObscured;

  /// The read-only **`inlineVerticalFieldOfView`**
  /// property of the [XRRenderState] interface returns the default vertical
  /// field of view for `"inline"` sessions and `null` for all immersive
  /// sessions.
  external double? get inlineVerticalFieldOfView;

  /// The read-only **`baseLayer`** property of the
  /// [XRRenderState] interface returns the [XRWebGLLayer] instance
  /// that is the source of bitmap images and a description of how the image is
  /// to be rendered
  /// in the device.
  ///
  /// This property is read-only; however, you can indirectly change its
  /// value using [XRSession.updateRenderState].
  external XRWebGLLayer? get baseLayer;

  /// The read-only **`layers`** property of the [XRRenderState] interface is an
  /// ordered array containing [XRLayer] objects that are displayed by the XR
  /// compositor.
  external JSArray<XRLayer> get layers;
}

/// A
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// **`XRFrame`** object is passed into the [XRSession.requestAnimationFrame]
/// callback function and provides access to the information needed in order to
/// render a single frame of animation for an [XRSession] describing a VR or AR
/// scene. Events which communicate the tracking state of objects also provide
/// an `XRFrame` reference as part of their structure.
///
/// In addition to providing a reference to the [XRSession] for which this frame
/// is to be rendered, the [XRFrame.getViewerPose] method is provided to obtain
/// the [XRViewerPose] describing the viewer's position and orientation in
/// space, and [XRFrame.getPose] can be used to create an [XRPose] describing
/// the relative position of one [XRSpace] relative to another.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRFrame).
extension type XRFrame._(JSObject _) implements JSObject {
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

  /// The **`createAnchor()`** method of the [XRFrame] interface creates a
  /// free-floating [XRAnchor] which will be fixed relative to the real world.
  ///
  /// See [XRHitTestResult.createAnchor] for creating an anchor from a hit test
  /// result that is attached to a real-world object.
  external JSPromise<XRAnchor> createAnchor(
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
    JSArray<XRJointSpace> jointSpaces,
    JSFloat32Array radii,
  );

  /// The **`fillPoses()`** method of the [XRFrame] interface populates a
  /// `Float32Array` with the matrices of the poses relative to a given base
  /// space and returns `true` if successful for all spaces.
  external bool fillPoses(
    JSArray<XRSpace> spaces,
    XRSpace baseSpace,
    JSFloat32Array transforms,
  );

  /// The **`getHitTestResults()`** method of the [XRFrame] interface returns an
  /// array of [XRHitTestResult] objects containing hit test results for a given
  /// [XRHitTestSource].
  external JSArray<XRHitTestResult> getHitTestResults(
      XRHitTestSource hitTestSource);

  /// The **`getHitTestResultsForTransientInput()`** method of the [XRFrame]
  /// interface returns an array of [XRTransientInputHitTestResult] objects
  /// containing transient input hit test results for a given
  /// [XRTransientInputHitTestSource].
  external JSArray<XRTransientInputHitTestResult>
      getHitTestResultsForTransientInput(
          XRTransientInputHitTestSource hitTestSource);

  /// The **`getLightEstimate()`** method of the [XRFrame] interface returns an
  /// [XRLightEstimate] object containing estimated lighting values for a given
  /// [XRLightProbe].
  external XRLightEstimate? getLightEstimate(XRLightProbe lightProbe);

  /// An `XRFrame` object's _read-only_ **`session`** property returns the
  /// [XRSession] object that generated the frame.
  external XRSession get session;
  external double get predictedDisplayTime;

  /// The read-only **`trackedAnchor`** property of the [XRFrame] interface
  /// returns an [XRAnchorSet] object containing all anchors still tracked in
  /// the frame.
  external XRAnchorSet get trackedAnchors;
  external XRBody? get body;
  external XRMeshSet get detectedMeshes;
  external XRPlaneSet get detectedPlanes;
}

/// The **`XRSpace`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is an abstract interface providing a common basis for every class which
/// represents a virtual coordinate system within the virtual world, in which
/// its origin corresponds to a physical location. Spatial data in WebXR is
/// always expressed relative to an object based upon one of the descendant
/// interfaces of `XRSpace`, at the time at which a given [XRFrame] takes place.
///
/// Numeric values such as pose positions are thus coordinates in the
/// corresponding `XRSpace`, relative to that space's origin.
///
/// > [!NOTE]
/// > The `XRSpace` interface is never used directly; instead, all spaces are
/// > created using one of the interfaces based on `XRSpace`. At this time,
/// > those are [XRReferenceSpace], [XRBoundedReferenceSpace], and
/// > [XRJointSpace].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRSpace).
extension type XRSpace._(JSObject _) implements EventTarget, JSObject {}

/// The WebXR Device API's **`XRReferenceSpace`** interface describes the
/// coordinate system for a specific tracked entity or object within the virtual
/// world using a specified tracking behavior. The tracking behavior is defined
/// by the selected [reference space type](#reference_space_types). It expands
/// upon the base class, [XRSpace], by adding support for several different
/// tracking behaviors as well as to request a new reference space which
/// describes the offset transform between the tracked object and another
/// location in the world.
///
/// All reference spaces—with the sole exception being bounded reference
/// spaces—are described using the `XRReferenceSpace` type. Bounded spaces are
/// implemented as [XRBoundedReferenceSpace] objects. These are special spaces
/// which let you establish a perimeter within which it's "safe" for the viewer
/// to move. For XR systems that allow the user to physically move around, such
/// as those that track movement with a real-world camera, this boundary
/// establishes the edges of the area the user is able to move around in,
/// whether due to physical obstacles or due to limitations of the XR hardware.
/// See the article
/// [Using bounded reference spaces to protect the viewer](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Bounded_reference_spaces)
/// for more on using boundaries to keep the user from colliding with obstacles
/// both physical and virtual.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace).
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
  external EventHandler get onreset;
  external set onreset(EventHandler value);
}

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)'s
/// **`XRBoundedReferenceSpace`** interface describes a virtual world
/// [reference space](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Geometry)
/// which has preset boundaries. This extends [XRReferenceSpace], which
/// describes an essentially unrestricted space around the viewer's position.
/// These bounds are defined using an array of points, each of which defines a
/// vertex in a polygon inside which the user is allowed to move.
///
/// This is typically used when the XR system is capable of tracking the user's
/// physical movement within a limited distance of their starting position. The
/// specified bounds may, in fact, describe the shape and size of the room the
/// user is located in, in order to let the WebXR site or application prevent
/// the user from colliding with the walls or other obstacles in the real world.
/// At a minimum, the boundaries indicate the area in which the XR device is
/// capable of tracking the user's movement. See the article
/// [Using bounded reference spaces](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Bounded_reference_spaces)
/// for details on how bounded spaces work and why they're useful.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRBoundedReferenceSpace).
extension type XRBoundedReferenceSpace._(JSObject _)
    implements XRReferenceSpace, JSObject {
  /// The read-only [XRBoundedReferenceSpace]
  /// property **`boundsGeometry`** is an array of
  /// [DOMPointReadOnly] objects which specifies the points making up a polygon
  /// inside which the viewer is allowed to move. Each point is treated as a
  /// two-dimensional point, and must be located at ground level (that is,
  /// its `y` coordinate must be 0).
  ///
  /// This boundary is typically configured by the user, using the software that
  /// controls
  /// their XR hardware. This may be done by walking the border of the space
  /// they wish to use,
  /// or by drawing the shape of their room using their XR input device.
  /// Theoretically, a more
  /// advanced system might use sensors or other detection methods to determine
  /// the bounds of
  /// a dedicated XR room (notice how we carefully don't call it a holodeck?).
  external JSArray<DOMPointReadOnly> get boundsGeometry;
}

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)'s
/// **`XRView`** interface describes a single view into the XR scene for a
/// specific frame, providing orientation and position information for the
/// viewpoint. You can think of it as a description of a specific eye or camera
/// and how it views the world. A 3D frame will involve two views, one for each
/// eye, separated by an appropriate distance which approximates the distance
/// between the viewer's eyes. This allows the two views, when projected in
/// isolation into the appropriate eyes, to simulate a 3D world.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRView).
extension type XRView._(JSObject _) implements JSObject {
  /// The **`requestViewportScale()`** method of the [XRView] interface requests
  /// that the user agent sets the requested viewport scale for this viewport to
  /// the given value. This is used for dynamic viewport scaling which allows
  /// rendering to a subset of the WebXR viewport using a scale factor that can
  /// be changed every animation frame.
  external void requestViewportScale(num? scale);

  /// The [XRView] interface's read-only **`eye`**
  /// property is a string indicating which eye's viewpoint the `XRView`
  /// represents: `left` or
  /// `right`. For views which represent neither eye, such as monoscopic views,
  /// this property's value is `none`.
  external XREye get eye;
  external int get index;

  /// The read-only **`recommendedViewportScale`** property of the [XRView]
  /// interface is the recommended viewport scale value that you can use for
  /// [XRView.requestViewportScale] if the user agent has such a recommendation;
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// otherwise.
  external double? get recommendedViewportScale;
  external XRCamera? get camera;

  /// The [XRView] interface's read-only **`isFirstPersonObserver`** property is
  /// a boolean indicating if the `XRView` is a first-person observer view.
  ///
  /// To create video recordings of AR device cameras, you can't simply use one
  /// of the rendered eyes, as there often will be a physical offset. Some
  /// devices expose a secondary view, the first-person observer view, which has
  /// an `eye` of `none`.
  ///
  /// To receive a first-person observer view, you need to enable the
  /// "secondary-views" feature descriptor explicitly (typically as an optional
  /// feature). See [XRSystem.requestSession] for details.
  ///
  /// The `isFirstPersonObserver` property then allows you to check which
  /// secondary view is a first-person observer view.
  external bool get isFirstPersonObserver;

  /// The [XRView] interface's read-only
  /// **`projectionMatrix`** property specifies the projection matrix
  /// to apply to the underlying view. This should be used to integrate
  /// perspective to
  /// everything in the scene, in order to ensure the result is consistent with
  /// what the eye
  /// expects to see.
  ///
  /// > [!NOTE]
  /// > Failure to apply proper perspective, or inconsistencies
  /// > in perspective, may result in possibly serious user discomfort or
  /// > distress.
  external JSFloat32Array get projectionMatrix;

  /// The read-only **`transform`** property of the
  /// [XRView] interface is an [XRRigidTransform] object which
  /// provides the position and orientation of the viewpoint relative to the
  /// [XRReferenceSpace] specified when the
  /// [XRFrame.getViewerPose] method was called to obtain the view object.
  ///
  /// With the `transform`, you can then position the view as a camera within
  /// the
  /// 3D scene. If you instead need the more traditional view matrix, you can
  /// get using
  /// `view.transform.inverse.matrix`; this gets the underlying
  /// [XRRigidTransform.matrix] of the transform's
  /// [XRRigidTransform.inverse].
  external XRRigidTransform get transform;
}

/// The WebXR Device API's **`XRViewport`** interface provides properties used
/// to describe the size and position of the current viewport within the
/// [XRWebGLLayer] being used to render the 3D scene.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRViewport).
extension type XRViewport._(JSObject _) implements JSObject {
  /// The read-only [XRViewport] interface's
  /// **`x`** property indicates the offset from the left edge of
  /// the destination surface (typically a [XRWebGLLayer]) to the left edge of
  /// the viewport within the surface into which WebXR content is to be
  /// rendered. The
  /// viewport's [XRViewport.y] property identifies the `y`
  /// component of the origin, and its is given by the [XRViewPort.width]
  /// and [XRViewport.height] properties.
  external int get x;

  /// The read-only [XRViewport] interface's
  /// **`y`** property indicates the offset from the bottom edge of
  /// the destination surface (typically a [XRWebGLLayer]) to the bottom edge of
  /// the viewport within the surface into which WebXR content is to be
  /// rendered. The
  /// viewport's [XRViewport.x] property identifies the `x`
  /// component of the origin, and its is given by the [XRViewPort.width]
  /// and [XRViewport.height] properties.
  external int get y;

  /// The read-only [XRViewport] property
  /// **`width`** specifies the width of the viewport, in pixels,
  /// onto the drawing surface the 3D scene is to be rendered into. This is
  /// defined
  /// using this property along with the viewport's [XRViewport.height]
  /// and its origin given by its properties [XRViewport.x] and
  /// [XRViewport.y].
  external int get width;

  /// The read-only [XRViewport] property
  /// **`height`** specifies the height, in pixels, of the viewport
  /// onto the drawing surface within which the WebXR view is to be rendered.
  /// Along
  /// with [XRViewport.width] and the origin point given by
  /// [XRViewport.x] and [XRViewport.y], this defines the
  /// area within which rendered content will be drawn.
  external int get height;
}

/// The **`XRRigidTransform`** is a
/// [WebXR API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// interface that represents the 3D geometric transform described by a position
/// and orientation.
///
/// `XRRigidTransform` is used to specify transforms throughout the WebXR APIs,
/// including:
///
/// - The offset and orientation relative to the parent reference space to use
///   when creating a new reference space with
///   [XRReferenceSpace.getOffsetReferenceSpace].
/// - The [XRView.transform] of an [XRView].
/// - The [XRPose.transform] of an [XRPose].
/// - The [XRReferenceSpaceEvent] event's [XRReferenceSpaceEvent.transform]
///   property, as found in the [XRReferenceSpace.reset_event] event received by
///   an [XRReferenceSpace].
///
/// Using `XRRigidTransform` in these places rather than bare arrays that
/// provide the matrix data has an advantage. It automatically computes the
/// inverse of the transform and even caches it making subsequent requests
/// significantly faster.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRRigidTransform).
extension type XRRigidTransform._(JSObject _) implements JSObject {
  external factory XRRigidTransform([
    DOMPointInit position,
    DOMPointInit orientation,
  ]);

  /// The read-only [XRRigidTransform] property
  /// **`position`** is a [DOMPointReadOnly] object which
  /// provides the 3D point, specified in meters, describing the translation
  /// component of the
  /// transform.
  external DOMPointReadOnly get position;

  /// The read-only [XRRigidTransform] property
  /// **`orientation`** is a [DOMPointReadOnly]
  /// containing a normalized  (also called a **unit
  /// quaternion** or **[versor](https://en.wikipedia.org/wiki/Versor)**)
  /// specifying the rotational component of the transform represented by the
  /// object.
  /// If you specify a quaternion whose length is not exactly 1.0 meters, it
  /// will be
  /// normalized for you.
  external DOMPointReadOnly get orientation;

  /// The read-only [XRRigidTransform] property **`matrix`** returns the
  /// transform matrix represented by the object. The returned matrix can then
  /// be premultiplied with a column vector to rotate the vector by the 3D
  /// rotation specified by the [XRRigidTransform.orientation], then translate
  /// it by the [XRRigidTransform.position].
  external JSFloat32Array get matrix;

  /// The read-only **`inverse`** property
  /// of the [XRRigidTransform] interface returns another
  /// [XRRigidTransform] object which is the inverse of its owning
  /// transform. That is, you can always get the inverse of any
  /// `XRRigidTransform` using its `inverse` property, instead of having
  /// to explicitly generate it.
  external XRRigidTransform get inverse;
}

/// `XRPose` is a
/// [WebXR API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// interface representing a position and orientation in the 3D space, relative
/// to the [XRSpace] within which it resides. The `XRSpace`—which is either an
/// [XRReferenceSpace] or an [XRBoundedReferenceSpace]—defines the coordinate
/// system used for the pose and, in the case of an [XRViewerPose], its
/// underlying views.
///
/// To obtain the `XRPose` for the `XRSpace` used as the local coordinate system
/// of an object, call [XRFrame.getPose], specifying that local `XRSpace` and
/// the space to which you wish to convert:
///
/// ```js
/// thePose = xrFrame.getPose(localSpace, baseSpace);
/// ```
///
/// The pose for a viewer (or camera) is represented by the [XRViewerPose]
/// subclass of `XRPose`. This is obtained using [XRFrame.getViewerPose] instead
/// of `getPose()`, specifying a reference space which has been adjusted to
/// position and orient the node to provide the desired viewing position and
/// angle:
///
/// ```js
/// viewerPose = xrFrame.getViewerPose(adjReferenceSpace);
/// ```
///
/// Here, `adjReferenceSpace` is a reference space which has been updated using
/// the base frame of reference for the frame and any adjustments needed to
/// position the viewer based on movement or rotation which is being supplied
/// from a source other than the XR device, such as keyboard or mouse inputs.
///
/// See the article [Movement, orientation, and
/// motion](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Movement_and_motion)
/// for further details and an example with thorough explanations of what's
/// going on.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRPose).
extension type XRPose._(JSObject _) implements JSObject {
  /// The `transform` read-only attribute of the
  /// [XRPose] interface is a [XRRigidTransform] object providing
  /// the position and orientation of the pose relative to the base [XRSpace]
  /// as specified when the pose was obtained by calling
  /// [XRFrame.getPose].
  external XRRigidTransform get transform;

  /// The `linearVelocity` read-only property of the
  /// [XRPose] interface is a [DOMPointReadOnly] describing
  /// the linear velocity in meters per second relative to the base
  /// [XRSpace].
  external DOMPointReadOnly? get linearVelocity;

  /// The `angularVelocity` read-only property of the
  /// [XRPose] interface is a [DOMPointReadOnly] describing
  /// the angular velocity in radians per second relative to the base
  /// [XRSpace].
  external DOMPointReadOnly? get angularVelocity;

  /// The `emulatedPosition` read-only attribute of the
  /// [XRPose] interface is a Boolean value indicating whether or not both the
  /// [XRRigidTransform.position] component of the pose's
  /// [XRPose.transform] is directly taken from the XR device, or
  /// it's simulated or computed based on other sources.
  external bool get emulatedPosition;
}

/// The WebXR Device API interface **`XRViewerPose`** represents the pose (the
/// position and orientation) of a viewer's point of view on the scene. Each
/// `XRViewerPose` can have multiple views to represent, for example, the slight
/// separation between the left and right eye.
///
/// This view can represent anything from the point-of-view of a user's XR
/// headset to the viewpoint represented by a player's movement of an avatar
/// using mouse and keyboard, presented on the screen, to a virtual camera
/// capturing the scene for a spectator.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRViewerPose).
extension type XRViewerPose._(JSObject _) implements XRPose, JSObject {
  /// The read-only [XRViewerPose] property **`views`**
  /// returns an array which contains every [XRView] which must be rendered in
  /// order to fully represent the scene from the viewpoint defined by the
  /// viewer pose. For
  /// monoscopic devices, this array contains a single view.
  ///
  /// > [!WARNING]
  /// > There is no guarantee that the number of views will
  /// > remain constant over the lifetime of an [XRSession]. For each frame, you
  /// > should always use the current length of this array rather than caching
  /// > the value.
  ///
  /// Stereo views require two views to render properly, with the left eye's
  /// view having its
  /// [XRView.eye] set to the string `left` and the right eye's
  /// view a value of `right`.
  external JSArray<XRView> get views;
}

/// The [WebXR Device
/// API's](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// **`XRInputSource`** interface describes a single source of control input
/// which is part of the user's WebXR-compatible virtual or augmented reality
/// system. The device is specific to the platform being used, but provides the
/// direction in which it is being aimed and optionally may generate events if
/// the user triggers performs actions using the device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource).
extension type XRInputSource._(JSObject _) implements JSObject {
  /// The read-only [XRInputSource] property
  /// **`handedness`** indicates which of the user's hands the WebXR
  /// input source is associated with, or if it's not associated with a hand at
  /// all.
  external XRHandedness get handedness;

  /// The read-only [XRInputSource]
  /// property **`targetRayMode`** indicates the method by which the
  /// target ray for the input source should be generated and how it should be
  /// presented to
  /// the user.
  ///
  /// Typically a target ray is drawn from the source of the targeting system
  /// along the target ray in the direction in which the user is looking or
  /// pointing. The style of the ray is generally up to you, as is the method
  /// for indicating the endpoint of the ray. The targeted point or object might
  /// be indicated by drawing a shape or highlighting the targeted surface or
  /// object.
  ///
  /// A target ray emitted by a hand controller:
  ///
  /// ![A screenshot showing a target ray being emitted by a hand controller](https://mdn.github.io/shared-assets/images/examples/hand-controller-target-ray.gif)
  ///
  /// The target ray can be anything from a simple line (ideally fading over
  /// distance) to an animated effect, such as the science-fiction "phaser"
  /// style shown in the screenshot above.
  external XRTargetRayMode get targetRayMode;

  /// The read-only [XRInputSource] property
  /// **`targetRaySpace`** returns an [XRSpace]
  /// (typically an [XRReferenceSpace]) representing the position and
  /// orientation of the target ray in the virtual space. Its native origin
  /// tracks
  /// the position of the origin point of the target ray, and its orientation
  /// indicates the
  /// orientation of the controller device itself. These values, interpreted in
  /// the context of
  /// the input source's [XRInputSource.targetRayMode], can be
  /// used both to fully interpret the device as an input source.
  ///
  /// To obtain an `XRSpace` representing the input controller's position and
  /// orientation in virtual space, use the [XRInputSource.gripSpace] property.
  external XRSpace get targetRaySpace;

  /// The read-only [XRInputSource] property **`gripSpace`** returns an
  /// [XRSpace] whose native origin tracks the pose used to render virtual
  /// objects so they appear to be held in (or part of) the user's hand. For
  /// example, if a user were holding a virtual straight rod, the native origin
  /// of this `XRSpace` would be located at the approximate center of mass of
  /// the user's fist.
  external XRSpace? get gripSpace;

  /// The read-only [XRInputSource] property **`profiles`** returns an array of
  /// strings, each describing a configuration profile for the input source. The
  /// profile strings are listed in order of specificity, with the most specific
  /// profile listed first.
  ///
  /// > [!NOTE]
  /// > The `profiles` list is always empty when the WebXR
  /// > session is in inline mode.
  external JSArray<JSString> get profiles;
  external bool get skipRendering;

  /// The read-only [XRInputSource] property **`gamepad`** returns a [Gamepad]
  /// object describing the state of the buttons and axes on the XR input
  /// source, if it is a gamepad or comparable device. If the device isn't a
  /// gamepad-like device, this property's value is `null`.
  ///
  /// The [Gamepad] instance returned behaves as described by the
  /// [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API).
  /// However, there are a few things to note:
  ///
  /// - `Gamepad` instances belonging to `XRInputSource` are not included in the
  ///   array returned by [navigator.getGamepads]. Gamepads are strictly
  ///   associated with the WebXR hardware and are not general-purpose gaming
  ///   devices.
  /// - [Gamepad.id] is an empty string (`""`)
  /// - [Gamepad.index] is `-1`
  /// - [Gamepad.connected] is `true` until the `XRInputSource` is removed from
  ///   the list of active XR input sources or the [XRSession] is ended.
  /// - If an axis reported by [Gamepad.axes] represents an axis of a touchpad,
  ///   the value is 0 when the associated [GamepadButton.touched] property is
  ///   `false`.
  /// - [Gamepad.mapping] returns "xr-standard".
  external Gamepad? get gamepad;

  /// The read-only **`hand`** property of the [XRInputSource] interface is a
  /// [XRHand] object providing access to a hand-tracking device.
  external XRHand? get hand;
}

/// The interface **`XRInputSourceArray`** represents a _live_ list of WebXR
/// input sources, and is used as the return value of the [XRSession] property
/// [XRSession.inputSources]. Each entry is an [XRInputSource] representing one
/// input device connected to the WebXR system.
///
/// In addition to being able to access the input sources in the list using
/// standard array notation (that is, with index numbers inside square
/// brackets), methods are available to allow the use of iterators and the
/// [XRInputSourceArray.forEach] method is also available.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRInputSourceArray).
extension type XRInputSourceArray._(JSObject _) implements JSObject {
  external XRInputSource operator [](int index);

  /// The read-only **`length`** property returns an integer value
  /// indicating the number of items in the input source list represented by
  /// the [XRInputSourceArray] object.
  external int get length;
}

/// The **`XRLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is the base class for WebXR layer types. It inherits methods from
/// [EventTarget].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRLayer).
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

  external bool get antialias;
  external set antialias(bool value);
  external bool get depth;
  external set depth(bool value);
  external bool get stencil;
  external set stencil(bool value);
  external bool get alpha;
  external set alpha(bool value);
  external bool get ignoreDepthValues;
  external set ignoreDepthValues(bool value);
  external double get framebufferScaleFactor;
  external set framebufferScaleFactor(num value);
}

/// The **`XRWebGLLayer`** interface of the WebXR Device API provides a linkage
/// between the WebXR device (or simulated XR device, in the case of an inline
/// session) and a WebGL context used to render the scene for display on the
/// device. In particular, it provides access to the WebGL framebuffer and
/// viewport to ease access to the context.
///
/// Although `XRWebGLLayer` is currently the only type of framebuffer layer
/// supported by
/// [WebGL](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API), it's
/// entirely possible that future updates to the WebXR specification may allow
/// for other layer types and corresponding image sources.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRWebGLLayer).
extension type XRWebGLLayer._(JSObject _) implements XRLayer, JSObject {
  external factory XRWebGLLayer(
    XRSession session,
    XRWebGLRenderingContext context, [
    XRWebGLLayerInit layerInit,
  ]);

  /// The static method
  /// **`XRWebGLLayer.getNativeFramebufferScaleFactor()`** returns a
  /// floating-point scaling factor by which one can multiply the specified
  /// [XRSession]'s resolution to get the native resolution of the WebXR
  /// device's frame buffer.
  ///
  /// This information can be used when creating a new `XRWebGLLayer` to
  /// configure
  /// the `framebufferScaleFactor` in the `layerInit` configuration object
  /// specified when calling the `XRWebGLLayer()` constructor. See the
  /// [Usage notes](#usage_notes) and [Examples](#examples) for details.
  ///
  /// If the scaling factor is 1.0, then the frame buffer pixels and the native
  /// display
  /// pixels are the same size. If the scaling factor is greater than zero, then
  /// the frame
  /// buffer is smaller than the display's native dimensions, resulting in the
  /// output being
  /// up-scaled for display to the screen after rendering into the frame buffer.
  /// If the
  /// scaling factor is less than zero, the frame buffer is _larger_ than the
  /// native
  /// resolution of the display, resulting in the frame buffer's contents being
  /// scaled down
  /// for display to the XR device. This can happen for display environments
  /// which use
  /// superscaling or anti-aliasing techniques to improve perceived image
  /// quality.
  external static double getNativeFramebufferScaleFactor(XRSession session);

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

  /// The read-only [XRWebGLLayer] property
  /// **`antialias`** is a Boolean value which is `true`
  /// if the rendering layer's frame buffer supports anti-aliasing. Otherwise,
  /// this
  /// property's value is `false`. The specific anti-aliasing technique used is
  /// left
  /// to the  discretion and cannot be specified by
  /// the website or web app.
  external bool get antialias;

  /// The read-only [XRWebGLLayer] property
  /// **`ignoreDepthValues`** is a Boolean value which is
  /// `true` if the session has been configured to ignore the values in the
  /// depth
  /// buffer while rendering the scene. If the depth buffer is being used to
  /// determine the
  /// position of vertices, this property is `false`.
  ///
  /// The value of `ignoreDepthValues` can only be set when the
  /// [XRWebGLLayer] is instantiated, by setting the corresponding value in the
  /// [constructor's](https://developer.mozilla.org/en-US/docs/Web/API/XRWebGLLayer/XRWebGLLayer)
  /// `options` parameter.
  external bool get ignoreDepthValues;

  /// The **`fixedFoveation`** property of the [XRWebGLLayer] interface is a
  /// number indicating the amount of foveation used by the XR compositor. Fixed
  /// Foveated Rendering (FFR) renders the edges of the eye textures at a lower
  /// resolution than the center and reduces the GPU load.
  ///
  /// It is most useful for low contrast textures, such as background images but
  /// less for high contrast ones such as text or detailed images. Authors can
  /// adjust the level on a per frame basis to achieve the best tradeoff between
  /// performance and visual quality.
  external double? get fixedFoveation;
  external set fixedFoveation(num? value);

  /// The read-only [XRWebGLLayer] property
  /// **`framebuffer`** is an opaque [WebGLFramebuffer]
  /// which is used to buffer the rendered image if the
  /// [XR compositor](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Fundamentals#the_webxr_compositor)
  /// is being used. Otherwise, this property's value is
  /// `null`. The opaque framebuffer is functionally nearly the same as a
  /// standard WebGL framebuffer, except for the differences covered in the
  /// section
  /// [How opaque framebuffers are special](#how_opaque_framebuffers_are_special)
  /// below.
  external WebGLFramebuffer? get framebuffer;

  /// The read-only [XRWebGLLayer] property
  /// **`framebufferWidth`** specifies the width of the framebuffer,
  /// in pixels.
  ///
  /// You can get the height of the framebuffer using the
  /// [XRWebGLLayer.framebufferHeight] property.
  external int get framebufferWidth;

  /// The read-only [XRWebGLLayer] property
  /// **`framebufferHeight`** indicates the height of the
  /// framebuffer, in pixels.
  ///
  /// You can get the width of the framebuffer using the
  /// [XRWebGLLayer.framebufferWidth] property.
  external int get framebufferHeight;
}

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)'s
/// **`XRSessionEvent`** interface describes an event which indicates the change
/// of the state of an [XRSession]. These events occur, for example, when the
/// session ends or the visibility of its context changes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRSessionEvent).
extension type XRSessionEvent._(JSObject _) implements Event, JSObject {
  external factory XRSessionEvent(
    String type,
    XRSessionEventInit eventInitDict,
  );

  /// The read-only [XRSessionEvent] interface's
  /// **`session`** property indicates which
  /// [XRSession] the event is about.
  external XRSession get session;
}
extension type XRSessionEventInit._(JSObject _) implements EventInit, JSObject {
  external factory XRSessionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required XRSession session,
  });

  external XRSession get session;
  external set session(XRSession value);
}

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)'s
/// **`XRInputSourceEvent`** interface describes an event which has occurred on
/// a WebXR user input device such as a hand controller, gaze tracking system,
/// or motion tracking system. More specifically, they represent a change in the
/// state of an [XRInputSource].
///
/// To learn more about handling inputs in a WebXR project, see the article
/// [Inputs and input sources](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Inputs).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRInputSourceEvent).
extension type XRInputSourceEvent._(JSObject _) implements Event, JSObject {
  external factory XRInputSourceEvent(
    String type,
    XRInputSourceEventInit eventInitDict,
  );

  /// The read-only [XRInputSourceEvent] property
  /// **`frame`** specifies an [XRFrame] object
  /// representing the event frame during which a
  /// [WebXR](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
  /// user input occurred.
  /// This may thus be an event which occurred in the past rather than a current
  /// or impending
  /// event.
  external XRFrame get frame;

  /// The [XRInputSourceEvent] interface's read-only
  /// **`inputSource`** property specifies the
  /// [XRInputSource] which generated the input event. This information
  /// lets you handle the event appropriately given the particulars of the user
  /// input device
  /// being manipulated.
  external XRInputSource get inputSource;
}
extension type XRInputSourceEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRInputSourceEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required XRFrame frame,
    required XRInputSource inputSource,
  });

  external XRFrame get frame;
  external set frame(XRFrame value);
  external XRInputSource get inputSource;
  external set inputSource(XRInputSource value);
}

/// The WebXR Device API interface **`XRInputSourcesChangeEvent`** is used to
/// represent the [XRSession.inputsourceschange_event] event sent to an
/// [XRSession] when the set of available WebXR input controllers changes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRInputSourcesChangeEvent).
extension type XRInputSourcesChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory XRInputSourcesChangeEvent(
    String type,
    XRInputSourcesChangeEventInit eventInitDict,
  );

  /// The [XRInputSourcesChangeEvent] property
  /// `session` specifies the
  /// [XRSession] to which the input source list change event applies.
  external XRSession get session;

  /// The read-only [XRInputSourcesChangeEvent]
  /// property `added` is a list of zero or
  /// more input sources, each identified using an [XRInputSource] object,
  /// which have been newly made available for use.
  external JSArray<XRInputSource> get added;

  /// The read-only [XRInputSourcesChangeEvent] property `removed` is an array
  /// of
  /// zero or more [XRInputSource] objects representing the input sources that
  /// have been removed from the [XRSession].
  external JSArray<XRInputSource> get removed;
}
extension type XRInputSourcesChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRInputSourcesChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required XRSession session,
    required JSArray<XRInputSource> added,
    required JSArray<XRInputSource> removed,
  });

  external XRSession get session;
  external set session(XRSession value);
  external JSArray<XRInputSource> get added;
  external set added(JSArray<XRInputSource> value);
  external JSArray<XRInputSource> get removed;
  external set removed(JSArray<XRInputSource> value);
}

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// interface **`XRReferenceSpaceEvent`** represents an event sent to an
/// [XRReferenceSpace]. Currently, the only event that uses this type is the
/// [XRReferenceSpace.reset_event] event.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceEvent).
extension type XRReferenceSpaceEvent._(JSObject _) implements Event, JSObject {
  external factory XRReferenceSpaceEvent(
    String type,
    XRReferenceSpaceEventInit eventInitDict,
  );

  /// The read-only [XRReferenceSpaceEvent] property
  /// **`referenceSpace`** specifies the reference space which is the
  /// originator of the event.
  external XRReferenceSpace get referenceSpace;

  /// The read-only [XRReferenceSpaceEvent] property
  /// **`transform`** indicates the position and orientation of the
  /// affected [XRReferenceSpaceEvent.referenceSpace]'s
  /// native origin after the changes the event represents are applied. The
  /// `transform` is defined using the old coordinate system, which allows it to
  /// be
  /// used to convert coordinates from the pre-event coordinate system to the
  /// post-event
  /// coordinate system.
  external XRRigidTransform? get transform;
}
extension type XRReferenceSpaceEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRReferenceSpaceEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required XRReferenceSpace referenceSpace,
    XRRigidTransform? transform,
  });

  external XRReferenceSpace get referenceSpace;
  external set referenceSpace(XRReferenceSpace value);
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? value);
}
extension type XRVisibilityMaskChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory XRVisibilityMaskChangeEvent(
    String type,
    XRVisibilityMaskChangeEventInit eventInitDict,
  );

  external XRSession get session;
  external XREye get eye;
  external int get index;
  external JSFloat32Array get vertices;
  external JSUint32Array get indices;
}
extension type XRVisibilityMaskChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory XRVisibilityMaskChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required XRSession session,
    required XREye eye,
    required int index,
    required JSFloat32Array vertices,
    required JSUint32Array indices,
  });

  external XRSession get session;
  external set session(XRSession value);
  external XREye get eye;
  external set eye(XREye value);
  external int get index;
  external set index(int value);
  external JSFloat32Array get vertices;
  external set vertices(JSFloat32Array value);
  external JSUint32Array get indices;
  external set indices(JSUint32Array value);
}
extension type XRSessionSupportedPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory XRSessionSupportedPermissionDescriptor({
    required String name,
    XRSessionMode mode,
  });

  external XRSessionMode get mode;
  external set mode(XRSessionMode value);
}
extension type XRPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory XRPermissionDescriptor({
    required String name,
    XRSessionMode mode,
    JSArray<JSString> requiredFeatures,
    JSArray<JSString> optionalFeatures,
  });

  external XRSessionMode get mode;
  external set mode(XRSessionMode value);
  external JSArray<JSString> get requiredFeatures;
  external set requiredFeatures(JSArray<JSString> value);
  external JSArray<JSString> get optionalFeatures;
  external set optionalFeatures(JSArray<JSString> value);
}
extension type XRPermissionStatus._(JSObject _)
    implements PermissionStatus, JSObject {
  external JSArray<JSString> get granted;
  external set granted(JSArray<JSString> value);
}
