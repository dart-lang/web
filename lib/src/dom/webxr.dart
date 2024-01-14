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

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// interface **`XRSystem`** provides methods which let you get access to an
/// [XRSession] object representing a WebXR session. With that `XRSession` in
/// hand, you can use it to interact with the Augmented Reality (AR) or Virtual
/// Reality (VR) device.
@JS('XRSystem')
@staticInterop
class XRSystem implements EventTarget {}

extension XRSystemExtension on XRSystem {
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

/// The [WebXR Device API]'s **`XRSession`** interface represents an ongoing XR
/// session, providing methods and properties used to interact with and control
/// the session. To open a WebXR session, use the [XRSystem] interface's
/// [XRSystem.requestSession] method.
///
/// With `XRSession` methods, you can poll the viewer's position and orientation
/// (the [XRViewerPose]), gather information about the user's environment, and
/// present imagery to the user. `XRSession` supports both inline and immersive
/// virtual and augmented reality modes.
@JS('XRSession')
@staticInterop
class XRSession implements EventTarget {}

extension XRSessionExtension on XRSession {
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

@JS()
@staticInterop
@anonymous
class XRRenderStateInit {
  external factory XRRenderStateInit({
    num depthNear,
    num depthFar,
    num inlineVerticalFieldOfView,
    XRWebGLLayer? baseLayer,
    JSArray? layers,
  });
}

extension XRRenderStateInitExtension on XRRenderStateInit {
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
@JS('XRRenderState')
@staticInterop
class XRRenderState {}

extension XRRenderStateExtension on XRRenderState {
  external num get depthNear;
  external num get depthFar;
  external num? get inlineVerticalFieldOfView;
  external XRWebGLLayer? get baseLayer;
  external JSArray get layers;
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
@JS('XRFrame')
@staticInterop
class XRFrame {}

extension XRFrameExtension on XRFrame {
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
/// > **Note:** The `XRSpace` interface is never used directly; instead, all
/// > spaces are created using one of the interfaces based on `XRSpace`. At this
/// > time, those are [XRReferenceSpace], [XRBoundedReferenceSpace], and
/// > [XRJointSpace].
@JS('XRSpace')
@staticInterop
class XRSpace implements EventTarget {}

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
@JS('XRReferenceSpace')
@staticInterop
class XRReferenceSpace implements XRSpace {}

extension XRReferenceSpaceExtension on XRReferenceSpace {
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
@JS('XRBoundedReferenceSpace')
@staticInterop
class XRBoundedReferenceSpace implements XRReferenceSpace {}

extension XRBoundedReferenceSpaceExtension on XRBoundedReferenceSpace {
  external JSArray get boundsGeometry;
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
@JS('XRView')
@staticInterop
class XRView {}

extension XRViewExtension on XRView {
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

/// The WebXR Device API's **`XRViewport`** interface provides properties used
/// to describe the size and position of the current viewport within the
/// [XRWebGLLayer] being used to render the 3D scene.
@JS('XRViewport')
@staticInterop
class XRViewport {}

extension XRViewportExtension on XRViewport {
  external int get x;
  external int get y;
  external int get width;
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
/// motion](/en-US/docs/Web/API/WebXR_Device_API/Movement_and_motion) for
/// further details and an example with thorough explanations of what's going
/// on.
@JS('XRPose')
@staticInterop
class XRPose {}

extension XRPoseExtension on XRPose {
  external XRRigidTransform get transform;
  external DOMPointReadOnly? get linearVelocity;
  external DOMPointReadOnly? get angularVelocity;
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
@JS('XRViewerPose')
@staticInterop
class XRViewerPose implements XRPose {}

extension XRViewerPoseExtension on XRViewerPose {
  external JSArray get views;
}

/// The [WebXR Device API's](/en-US/docs/Web/API/WebXR_Device_API)
/// **`XRInputSource`** interface describes a single source of control input
/// which is part of the user's WebXR-compatible virtual or augmented reality
/// system. The device is specific to the platform being used, but provides the
/// direction in which it is being aimed and optionally may generate events if
/// the user triggers performs actions using the device.
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

/// The interface **`XRInputSourceArray`** represents a _live_ list of WebXR
/// input sources, and is used as the return value of the [XRSession] property
/// [XRSession.inputSources]. Each entry is an [XRInputSource] representing one
/// input device connected to the WebXR system.
///
/// In addition to being able to access the input sources in the list using
/// standard array notation (that is, with index numbers inside square
/// brackets), methods are available to allow the use of iterators and the
/// [XRInputSourceArray.forEach] method is also available.
@JS('XRInputSourceArray')
@staticInterop
class XRInputSourceArray {}

extension XRInputSourceArrayExtension on XRInputSourceArray {
  external int get length;
}

/// The **`XRLayer`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is the base class for WebXR layer types. It inherits methods from
/// [EventTarget].
@JS('XRLayer')
@staticInterop
class XRLayer implements EventTarget {}

@JS()
@staticInterop
@anonymous
class XRWebGLLayerInit {
  external factory XRWebGLLayerInit({
    bool antialias,
    bool depth,
    bool stencil,
    bool alpha,
    bool ignoreDepthValues,
    num framebufferScaleFactor,
  });
}

extension XRWebGLLayerInitExtension on XRWebGLLayerInit {
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
@JS('XRWebGLLayer')
@staticInterop
class XRWebGLLayer implements XRLayer {
  external factory XRWebGLLayer(
    XRSession session,
    XRWebGLRenderingContext context, [
    XRWebGLLayerInit layerInit,
  ]);

  external static num getNativeFramebufferScaleFactor(XRSession session);
}

extension XRWebGLLayerExtension on XRWebGLLayer {
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

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)'s
/// **`XRSessionEvent`** interface describes an event which indicates the change
/// of the state of an [XRSession]. These events occur, for example, when the
/// session ends or the visibility of its context changes.
@JS('XRSessionEvent')
@staticInterop
class XRSessionEvent implements Event {
  external factory XRSessionEvent(
    String type,
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

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)'s
/// **`XRInputSourceEvent`** interface describes an event which has occurred on
/// a WebXR user input device such as a hand controller, gaze tracking system,
/// or motion tracking system. More specifically, they represent a change in the
/// state of an [XRInputSource].
///
/// To learn more about handling inputs in a WebXR project, see the article
/// [Inputs and input sources](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API/Inputs).
@JS('XRInputSourceEvent')
@staticInterop
class XRInputSourceEvent implements Event {
  external factory XRInputSourceEvent(
    String type,
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

/// The WebXR Device API interface **`XRInputSourcesChangeEvent`** is used to
/// represent the [XRSession.inputsourceschange_event] event sent to an
/// [XRSession] when the set of available WebXR input controllers changes.
@JS('XRInputSourcesChangeEvent')
@staticInterop
class XRInputSourcesChangeEvent implements Event {
  external factory XRInputSourcesChangeEvent(
    String type,
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

/// The
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// interface **`XRReferenceSpaceEvent`** represents an event sent to an
/// [XRReferenceSpace]. Currently, the only event that uses this type is the
/// [XRReferenceSpace.reset_event] event.
@JS('XRReferenceSpaceEvent')
@staticInterop
class XRReferenceSpaceEvent implements Event {
  external factory XRReferenceSpaceEvent(
    String type,
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
