// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'webxr.dart';

typedef XRHandJoint = String;

/// The **`XRHand`** interface is pair iterator (an ordered map) with the key
/// being the hand joints and the value being an [XRJointSpace].
///
/// `XRHand` is returned by [XRInputSource.hand].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRHand).
extension type XRHand._(JSObject _) implements JSObject {}

/// The **`XRJointSpace`** interface is an [XRSpace] and represents the position
/// and orientation of an [XRHand] joint.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRJointSpace).
extension type XRJointSpace._(JSObject _) implements XRSpace, JSObject {
  /// The read-only **`jointName`** property of the [XRJointSpace] interface
  /// contains the name of the joint it tracks.
  external XRHandJoint get jointName;
}

/// The **`XRJointPose`** interface is an [XRPose] with additional information
/// about the size of the skeleton joint it represents.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRJointPose).
extension type XRJointPose._(JSObject _) implements XRPose, JSObject {
  /// The read-only **`radius`** property of the [XRJointPose] interface
  /// indicates the radius (distance from skin) for a joint.
  external double get radius;
}
