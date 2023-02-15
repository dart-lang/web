// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/webxr.dart';

typedef XRHandJoint = JSString;

@JS('XRHand')
@staticInterop
class XRHand {
  external factory XRHand();
}

extension XRHandExtension on XRHand {
  external JSNumber get size;
  external XRJointSpace get(XRHandJoint key);
}

@JS('XRJointSpace')
@staticInterop
class XRJointSpace extends XRSpace {
  external factory XRJointSpace();
}

extension XRJointSpaceExtension on XRJointSpace {
  external XRHandJoint get jointName;
}

@JS('XRJointPose')
@staticInterop
class XRJointPose extends XRPose {
  external factory XRJointPose();
}

extension XRJointPoseExtension on XRJointPose {
  external JSNumber get radius;
}
