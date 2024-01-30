// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

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

  external set space(XRSpace value);
  external XRSpace get space;
  external set entityTypes(JSArray<JSString> value);
  external JSArray<JSString> get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}
extension type XRTransientInputHitTestOptionsInit._(JSObject _)
    implements JSObject {
  external factory XRTransientInputHitTestOptionsInit({
    required String profile,
    JSArray<JSString> entityTypes,
    XRRay offsetRay,
  });

  external set profile(String value);
  external String get profile;
  external set entityTypes(JSArray<JSString> value);
  external JSArray<JSString> get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}
extension type XRHitTestSource._(JSObject _) implements JSObject {
  external void cancel();
}
extension type XRTransientInputHitTestSource._(JSObject _) implements JSObject {
  external void cancel();
}
extension type XRHitTestResult._(JSObject _) implements JSObject {
  external JSPromise<XRAnchor> createAnchor();
  external XRPose? getPose(XRSpace baseSpace);
}
extension type XRTransientInputHitTestResult._(JSObject _) implements JSObject {
  external XRInputSource get inputSource;
  external JSArray<XRHitTestResult> get results;
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
extension type XRRay._(JSObject _) implements JSObject {
  external factory XRRay([
    JSObject originOrTransform,
    XRRayDirectionInit direction,
  ]);

  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external JSFloat32Array get matrix;
}
