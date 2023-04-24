// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'geometry.dart';
import 'webxr.dart';

typedef XRHitTestTrackableType = JSString;

@JS()
@staticInterop
@anonymous
class XRHitTestOptionsInit {
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
class XRTransientInputHitTestOptionsInit {
  external factory XRTransientInputHitTestOptionsInit({
    required JSString profile,
    JSArray entityTypes,
    XRRay offsetRay,
  });
}

extension XRTransientInputHitTestOptionsInitExtension
    on XRTransientInputHitTestOptionsInit {
  external set profile(JSString value);
  external JSString get profile;
  external set entityTypes(JSArray value);
  external JSArray get entityTypes;
  external set offsetRay(XRRay value);
  external XRRay get offsetRay;
}

@JS('XRHitTestSource')
@staticInterop
class XRHitTestSource {}

extension XRHitTestSourceExtension on XRHitTestSource {
  external JSVoid cancel();
}

@JS('XRTransientInputHitTestSource')
@staticInterop
class XRTransientInputHitTestSource {}

extension XRTransientInputHitTestSourceExtension
    on XRTransientInputHitTestSource {
  external JSVoid cancel();
}

@JS('XRHitTestResult')
@staticInterop
class XRHitTestResult {}

extension XRHitTestResultExtension on XRHitTestResult {
  external JSPromise createAnchor();
  external XRPose? getPose(XRSpace baseSpace);
}

@JS('XRTransientInputHitTestResult')
@staticInterop
class XRTransientInputHitTestResult {}

extension XRTransientInputHitTestResultExtension
    on XRTransientInputHitTestResult {
  external XRInputSource get inputSource;
  external JSArray get results;
}

@JS()
@staticInterop
@anonymous
class XRRayDirectionInit {
  external factory XRRayDirectionInit({
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber w,
  });
}

extension XRRayDirectionInitExtension on XRRayDirectionInit {
  external set x(JSNumber value);
  external JSNumber get x;
  external set y(JSNumber value);
  external JSNumber get y;
  external set z(JSNumber value);
  external JSNumber get z;
  external set w(JSNumber value);
  external JSNumber get w;
}

@JS('XRRay')
@staticInterop
class XRRay {
  external factory XRRay([
    JSAny originOrTransform,
    XRRayDirectionInit direction,
  ]);
}

extension XRRayExtension on XRRay {
  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external JSFloat32Array get matrix;
}
