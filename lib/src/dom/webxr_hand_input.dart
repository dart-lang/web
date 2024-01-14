// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webxr.dart';

typedef XRHandJoint = String;

/// The **`XRHand`** interface is pair iterator (an ordered map) with the key
/// being the hand joints and the value being an [XRJointSpace].
///
/// `XRHand` is returned by [XRInputSource.hand].
@JS('XRHand')
@staticInterop
class XRHand {}

extension XRHandExtension on XRHand {
  external XRJointSpace get(XRHandJoint key);
  external int get size;
}

/// The **`XRJointSpace`** interface is an [XRSpace] and represents the position
/// and orientation of an [XRHand] joint.
@JS('XRJointSpace')
@staticInterop
class XRJointSpace implements XRSpace {}

extension XRJointSpaceExtension on XRJointSpace {
  external XRHandJoint get jointName;
}

/// The **`XRJointPose`** interface is an [XRPose] with additional information
/// about the size of the skeleton joint it represents.
@JS('XRJointPose')
@staticInterop
class XRJointPose implements XRPose {}

extension XRJointPoseExtension on XRJointPose {
  external num get radius;
}
