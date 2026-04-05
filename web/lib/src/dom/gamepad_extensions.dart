// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef GamepadHand = String;

/// The **`GamepadPose`** interface of the
/// [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API)
/// represents the pose of a
/// [WebVR](https://developer.mozilla.org/en-US/docs/Web/API/WebVR_API)
/// controller at a given timestamp (which includes orientation, position,
/// velocity, and acceleration information).
///
/// This interface is accessible through the [Gamepad.pose] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GamepadPose).
extension type GamepadPose._(JSObject _) implements JSObject {
  /// The **`hasOrientation`** read-only property of the [GamepadPose] interface
  /// returns a boolean value stating whether the [Gamepad] can track and return
  /// orientation information.
  external bool get hasOrientation;

  /// The **`hasPosition`** read-only property of the [GamepadPose] interface
  /// returns a boolean value stating whether the [Gamepad] can track and return
  /// position information.
  external bool get hasPosition;

  /// The **`position`** read-only property of the [GamepadPose] interface
  /// returns the position of the [Gamepad] as a 3D vector.
  ///
  /// The coordinate system is as follows:
  ///
  /// - Positive X is to the user's right.
  /// - Positive Y is up.
  /// - Positive Z is behind the user.
  ///
  /// Positions are measured in meters from an origin point — this point is the
  /// position the sensor was first read at.
  external JSFloat32Array? get position;

  /// The **`linearVelocity`** read-only property of the [GamepadPose] interface
  /// returns an array representing the linear velocity vector of the [Gamepad],
  /// in meters per second.
  ///
  /// In other words, the current velocity at which the sensor is moving along
  /// the `x`, `y`, and `z` axes.
  external JSFloat32Array? get linearVelocity;

  /// The **`linearAcceleration`** read-only property of the [GamepadPose]
  /// interface returns an array representing the linear acceleration vector of
  /// the [Gamepad], in meters per second per second.
  ///
  /// In other words, the current acceleration of the sensor, along the `x`,
  /// `y`, and `z` axes.
  external JSFloat32Array? get linearAcceleration;

  /// The **`orientation`** read-only property of the [GamepadPose] interface
  /// returns the orientation of the [Gamepad], as a quarternion value.
  ///
  /// The value is a `Float32Array`, made up of the following values:
  ///
  /// - pitch — rotation around the X axis.
  /// - yaw — rotation around the Y axis.
  /// - roll — rotation around the Z axis.
  /// - w — the fourth dimension (usually 1).
  ///
  /// The orientation yaw (rotation around the y axis) is relative to the
  /// initial yaw of the sensor when it was first read.
  external JSFloat32Array? get orientation;

  /// The **`angularVelocity`** read-only property of the [GamepadPose]
  /// interface returns an array representing the angular velocity vector of the
  /// [Gamepad], in radians per second.
  ///
  /// In other words, the current velocity at which the sensor is rotating
  /// around the `x`, `y`, and `z` axes.
  external JSFloat32Array? get angularVelocity;

  /// The **`angularAcceleration`** read-only property of the [GamepadPose]
  /// interface returns an array representing the angular acceleration vector of
  /// the [Gamepad], in meters per second per second.
  ///
  /// In other words, the current acceleration of the sensor's rotation around
  /// the `x`, `y`, and `z` axes.
  external JSFloat32Array? get angularAcceleration;
}
