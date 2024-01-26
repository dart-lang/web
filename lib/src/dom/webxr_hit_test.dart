// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'geometry.dart';
import 'webxr.dart';

typedef XRHitTestTrackableType = String;
extension type XRHitTestOptionsInit._(JSObject _) implements JSObject {
  external factory XRHitTestOptionsInit({
    required XRSpace space,
    JSArray entityTypes,
    XRRay offsetRay,
  });

  external set space(XRSpace value);
  external XRSpace get space;
  external set entityTypes(JSArray value);
  external JSArray get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}
extension type XRTransientInputHitTestOptionsInit._(JSObject _)
    implements JSObject {
  external factory XRTransientInputHitTestOptionsInit({
    required String profile,
    JSArray entityTypes,
    XRRay offsetRay,
  });

  external set profile(String value);
  external String get profile;
  external set entityTypes(JSArray value);
  external JSArray get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}

/// The **`XRHitTestSource`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// handles hit test subscriptions. You can get an `XRHitTestSource` object by
/// using the [XRSession.requestHitTestSource] method.
///
/// This object doesn't itself contain hit test results, but it is used to
/// compute hit tests for each [XRFrame] by calling [XRFrame.getHitTestResults],
/// which returns [XRHitTestResult] objects.
extension type XRHitTestSource._(JSObject _) implements JSObject {
  /// The **`cancel()`** method of the [XRHitTestSource] interface unsubscribes
  /// a hit test.
  external void cancel();
}

/// The **`XRTransientInputHitTestSource`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// handles transient input hit test subscriptions. You can get an
/// `XRTransientInputHitTestSource` object by calling the
/// [XRSession.requestHitTestSourceForTransientInput].
///
/// This object doesn't itself contain transient input hit test results, but it
/// is used to compute hit tests for each [XRFrame] by calling
/// [XRFrame.getHitTestResultsForTransientInput], which returns
/// [XRTransientInputHitTestResult] objects.
extension type XRTransientInputHitTestSource._(JSObject _) implements JSObject {
  /// The **`cancel()`** method of the [XRTransientInputHitTestSource] interface
  /// unsubscribes a transient input hit test.
  external void cancel();
}

/// The **`XRHitTestResult`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// contains a single result of a hit test. You can get an array of
/// `XRHitTestResult` objects for a frame by calling
/// [XRFrame.getHitTestResults].
extension type XRHitTestResult._(JSObject _) implements JSObject {
  /// The **`createAnchor()`** method of the [XRHitTestResult] interface creates
  /// an [XRAnchor] from a hit test result that is attached to a real-world
  /// object.
  external JSPromise createAnchor();

  /// The **`getPose()`** method of the [XRHitTestResult] interface returns the
  /// [XRPose] of the hit test result relative to the given base space.
  external XRPose? getPose(XRSpace baseSpace);
}

/// The **`XRTransientInputHitTestResult`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// contains an array of results of a hit test for transient input, grouped by
/// input source.
///
/// You can get an array of `XRHitTestResult` objects for a frame by calling
/// [XRFrame.getHitTestResultsForTransientInput].
extension type XRTransientInputHitTestResult._(JSObject _) implements JSObject {
  external XRInputSource get inputSource;
  external JSArray get results;
}
extension type XRRayDirectionInit._(JSObject _) implements JSObject {
  external factory XRRayDirectionInit({
    num x,
    num y,
    num z,
    num w,
  });

  external set x(num value);
  external num get x;
  external set y(num value);
  external num get y;
  external set z(num value);
  external num get z;
  external set w(num value);
  external num get w;
}

/// The **`XRRay`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a geometric ray described by an origin point and a direction vector.
///
/// `XRRay` objects can be passed to [XRSession.requestHitTestSource] or
/// [XRSession.requestHitTestSourceForTransientInput] to perform hit testing.
extension type XRRay._(JSObject _) implements JSObject {
  external factory XRRay([
    JSObject originOrTransform,
    XRRayDirectionInit direction,
  ]);

  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external JSFloat32Array get matrix;
}
