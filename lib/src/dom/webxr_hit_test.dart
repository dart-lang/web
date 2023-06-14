// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'geometry.dart';
import 'webxr.dart';

typedef XRHitTestTrackableType = String;

@JS()
@staticInterop
@anonymous
class XRHitTestOptionsInit implements JSObject {
  external factory XRHitTestOptionsInit({
    required XRSpace space,
    JSArray entityTypes,
    XRRay offsetRay,
  });
}

extension XRHitTestOptionsInitExtension on XRHitTestOptionsInit {
  external set space(XRSpace value);
  external XRSpace get space;
  external set entityTypes(JSArray value);
  external JSArray get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}

@JS()
@staticInterop
@anonymous
class XRTransientInputHitTestOptionsInit implements JSObject {
  external factory XRTransientInputHitTestOptionsInit({
    required String profile,
    JSArray entityTypes,
    XRRay offsetRay,
  });
}

extension XRTransientInputHitTestOptionsInitExtension
    on XRTransientInputHitTestOptionsInit {
  external set profile(String value);
  external String get profile;
  external set entityTypes(JSArray value);
  external JSArray get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}

@JS('XRHitTestSource')
@staticInterop
class XRHitTestSource implements JSObject {}

extension XRHitTestSourceExtension on XRHitTestSource {
  external JSVoid cancel();
}

@JS('XRTransientInputHitTestSource')
@staticInterop
class XRTransientInputHitTestSource implements JSObject {}

extension XRTransientInputHitTestSourceExtension
    on XRTransientInputHitTestSource {
  external JSVoid cancel();
}

@JS('XRHitTestResult')
@staticInterop
class XRHitTestResult implements JSObject {}

extension XRHitTestResultExtension on XRHitTestResult {
  external JSPromise createAnchor();
  external XRPose? getPose(XRSpace baseSpace);
}

@JS('XRTransientInputHitTestResult')
@staticInterop
class XRTransientInputHitTestResult implements JSObject {}

extension XRTransientInputHitTestResultExtension
    on XRTransientInputHitTestResult {
  external XRInputSource get inputSource;
  external JSArray get results;
}

@JS()
@staticInterop
@anonymous
class XRRayDirectionInit implements JSObject {
  external factory XRRayDirectionInit({
    double x,
    double y,
    double z,
    double w,
  });
}

extension XRRayDirectionInitExtension on XRRayDirectionInit {
  external set x(double value);
  external double get x;
  external set y(double value);
  external double get y;
  external set z(double value);
  external double get z;
  external set w(double value);
  external double get w;
}

@JS('XRRay')
@staticInterop
class XRRay implements JSObject {
  external factory XRRay([
    JSAny? originOrTransform,
    XRRayDirectionInit direction,
  ]);
}

extension XRRayExtension on XRRay {
  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external JSFloat32Array get matrix;
}
