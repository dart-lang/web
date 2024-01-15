// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'status.dart';
import 'webxr.dart';

typedef XRHandJoint = String;

@JS('XRHand')
@staticInterop
@BcdStatus('standards-track', browsers: '')
class XRHand {}

extension XRHandExtension on XRHand {
  external XRJointSpace get(XRHandJoint key);
  external int get size;
}

@JS('XRJointSpace')
@staticInterop
@BcdStatus('standards-track', browsers: '')
class XRJointSpace implements XRSpace {}

extension XRJointSpaceExtension on XRJointSpace {
  external XRHandJoint get jointName;
}

@JS('XRJointPose')
@staticInterop
@BcdStatus('standards-track', browsers: '')
class XRJointPose implements XRPose {}

extension XRJointPoseExtension on XRJointPose {
  external num get radius;
}
