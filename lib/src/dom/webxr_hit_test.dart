// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'geometry.dart';
import 'webxr.dart';

typedef XRHitTestTrackableType = JSString;

@JS('XRHitTestOptionsInit')
@staticInterop
class XRHitTestOptionsInit {
  external factory XRHitTestOptionsInit();
}

extension XRHitTestOptionsInitExtension on XRHitTestOptionsInit {}

@JS('XRTransientInputHitTestOptionsInit')
@staticInterop
class XRTransientInputHitTestOptionsInit {
  external factory XRTransientInputHitTestOptionsInit();
}

extension XRTransientInputHitTestOptionsInitExtension
    on XRTransientInputHitTestOptionsInit {}

@JS('XRHitTestSource')
@staticInterop
class XRHitTestSource {
  external factory XRHitTestSource();
}

extension XRHitTestSourceExtension on XRHitTestSource {
  external JSVoid cancel();
}

@JS('XRTransientInputHitTestSource')
@staticInterop
class XRTransientInputHitTestSource {
  external factory XRTransientInputHitTestSource();
}

extension XRTransientInputHitTestSourceExtension
    on XRTransientInputHitTestSource {
  external JSVoid cancel();
}

@JS('XRHitTestResult')
@staticInterop
class XRHitTestResult {
  external factory XRHitTestResult();
}

extension XRHitTestResultExtension on XRHitTestResult {
  external JSPromise createAnchor();
  external XRPose? getPose(XRSpace baseSpace);
}

@JS('XRTransientInputHitTestResult')
@staticInterop
class XRTransientInputHitTestResult {
  external factory XRTransientInputHitTestResult();
}

extension XRTransientInputHitTestResultExtension
    on XRTransientInputHitTestResult {
  external XRInputSource get inputSource;
  external JSArray get results;
}

@JS('XRRayDirectionInit')
@staticInterop
class XRRayDirectionInit {
  external factory XRRayDirectionInit();
}

extension XRRayDirectionInitExtension on XRRayDirectionInit {}

@JS('XRRay')
@staticInterop
class XRRay {
  external factory XRRay();

  external factory XRRay.a1();

  external factory XRRay.a2(DOMPointInit origin);

  external factory XRRay.a3(
    DOMPointInit origin,
    XRRayDirectionInit direction,
  );

  external factory XRRay.a4(XRRigidTransform transform);
}

extension XRRayExtension on XRRay {
  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external JSFloat32Array get matrix;
}
