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
import 'geometry.dart';
import 'webxr.dart';

typedef XRHitTestTrackableType = String;
extension type XRHitTestOptionsInit._(JSObject _) implements JSObject {
  external factory XRHitTestOptionsInit({
    required XRSpace space,
    JSArray<JSString> entityTypes,
    XRRay offsetRay,
  });

  external XRSpace get space;
  external set space(XRSpace value);
  external JSArray<JSString> get entityTypes;
  external set entityTypes(JSArray<JSString> value);
  external XRRay get offsetRay;
  external set offsetRay(XRRay value);
}
extension type XRTransientInputHitTestOptionsInit._(JSObject _)
    implements JSObject {
  external factory XRTransientInputHitTestOptionsInit({
    required String profile,
    JSArray<JSString> entityTypes,
    XRRay offsetRay,
  });

  external String get profile;
  external set profile(String value);
  external JSArray<JSString> get entityTypes;
  external set entityTypes(JSArray<JSString> value);
  external XRRay get offsetRay;
  external set offsetRay(XRRay value);
}

/// The **`XRHitTestSource`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// handles hit test subscriptions. You can get an `XRHitTestSource` object by
/// using the [XRSession.requestHitTestSource] method.
///
/// This object doesn't itself contain hit test results, but it is used to
/// compute hit tests for each [XRFrame] by calling [XRFrame.getHitTestResults],
/// which returns [XRHitTestResult] objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRHitTestSource).
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRTransientInputHitTestSource).
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRHitTestResult).
extension type XRHitTestResult._(JSObject _) implements JSObject {
  /// The **`getPose()`** method of the [XRHitTestResult] interface returns the
  /// [XRPose] of the hit test result relative to the given base space.
  external XRPose? getPose(XRSpace baseSpace);

  /// The **`createAnchor()`** method of the [XRHitTestResult] interface creates
  /// an [XRAnchor] from a hit test result that is attached to a real-world
  /// object.
  external JSPromise<XRAnchor> createAnchor();
}

/// The **`XRTransientInputHitTestResult`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// contains an array of results of a hit test for transient input, grouped by
/// input source.
///
/// You can get an array of `XRHitTestResult` objects for a frame by calling
/// [XRFrame.getHitTestResultsForTransientInput].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRTransientInputHitTestResult).
extension type XRTransientInputHitTestResult._(JSObject _) implements JSObject {
  /// The _read-only_ **`inputSource`** property of the
  /// [XRTransientInputHitTestResult] interface represents an [XRInputSource]
  /// object that was used to compute the
  /// [XRTransientInputHitTestResult.results] array.
  external XRInputSource get inputSource;

  /// The _read-only_ **`results`** property of the
  /// [XRTransientInputHitTestResult] interface represents an array of
  /// [XRHitTestResult] objects containing the hit test results for the input
  /// source, ordered by the distance along the ray used to perform the hit
  /// test, with the closest result at position 0.
  external JSArray<XRHitTestResult> get results;
}
extension type XRRayDirectionInit._(JSObject _) implements JSObject {
  external factory XRRayDirectionInit({
    num x,
    num y,
    num z,
    num w,
  });

  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
  external double get z;
  external set z(num value);
  external double get w;
  external set w(num value);
}

/// The **`XRRay`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// is a geometric ray described by an origin point and a direction vector.
///
/// `XRRay` objects can be passed to [XRSession.requestHitTestSource] or
/// [XRSession.requestHitTestSourceForTransientInput] to perform hit testing.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRRay).
extension type XRRay._(JSObject _) implements JSObject {
  external factory XRRay([
    JSObject originOrTransform,
    XRRayDirectionInit direction,
  ]);

  /// The _read-only_ **`origin`** property of the [XRRay] interface is a
  /// [DOMPointReadOnly] representing the 3-dimensional point in space that the
  /// ray originates from, in meters.
  external DOMPointReadOnly get origin;

  /// The _read-only_ **`direction`** property of the [XRRay] interface is a
  /// [DOMPointReadOnly] representing the ray's 3-dimensional directional
  /// vector, normalized to a
  /// [unit vector](https://en.wikipedia.org/wiki/Unit_vector) with a length of
  /// 1.0.
  external DOMPointReadOnly get direction;

  /// The _read-only_ **`matrix`** property of the [XRRay] interface is a
  /// transform that can be used to position objects along the `XRRay`. This is
  /// a 4 by 4 matrix given as a 16 element `Float32Array` in column major
  /// order.
  ///
  /// The transform from a ray originates at [0, 0, 0] and extends down the
  /// negative z-axis to the ray described by the `XRRay`'s `origin` and
  /// `direction`.
  external JSFloat32Array get matrix;
}
