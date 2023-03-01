// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webxr.dart';

typedef XRHandJoint = JSString;

@JS('XRHand')
@staticInterop
class XRHand {}

extension XRHandExtension on XRHand {
  external XRJointSpace get(XRHandJoint key);
  external JSNumber get size;
}

@JS('XRJointSpace')
@staticInterop
class XRJointSpace implements XRSpace {}

extension XRJointSpaceExtension on XRJointSpace {
  external XRHandJoint get jointName;
}

@JS('XRJointPose')
@staticInterop
class XRJointPose implements XRPose {}

extension XRJointPoseExtension on XRJointPose {
  external JSNumber get radius;
}
