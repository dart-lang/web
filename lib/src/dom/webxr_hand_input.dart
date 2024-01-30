// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webxr.dart';

typedef XRHandJoint = String;
extension type XRHand._(JSObject _) implements JSObject {
  external XRJointSpace get(XRHandJoint key);
  external int get size;
}
extension type XRJointSpace._(JSObject _) implements XRSpace, JSObject {
  external XRHandJoint get jointName;
}
extension type XRJointPose._(JSObject _) implements XRPose, JSObject {
  external num get radius;
}
