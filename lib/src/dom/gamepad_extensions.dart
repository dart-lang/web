// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef GamepadHand = String;
typedef GamepadHapticsResult = String;
typedef GamepadHapticActuatorType = String;
typedef GamepadHapticEffectType = String;

/// The **`GamepadHapticActuator`** interface of the
/// [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API)
/// represents hardware in the controller designed to provide haptic feedback to
/// the user (if available), most commonly vibration hardware.
///
/// This interface is accessible through the [Gamepad.hapticActuators] property.
extension type GamepadHapticActuator._(JSObject _) implements JSObject {
  external bool canPlayEffectType(GamepadHapticEffectType type);

  /// The **`playEffect()`** method of the [GamepadHapticActuator] interface
  /// makes the hardware play a specific vibration pattern.
  external JSPromise playEffect(
    GamepadHapticEffectType type, [
    GamepadEffectParameters params,
  ]);

  /// The **`pulse()`** method of the [GamepadHapticActuator] interface makes
  /// the hardware pulse at a certain intensity for a specified duration.
  external JSPromise pulse(
    num value,
    num duration,
  );
  external JSPromise reset();
  external GamepadHapticActuatorType get type;
}
extension type GamepadEffectParameters._(JSObject _) implements JSObject {
  external factory GamepadEffectParameters({
    num duration,
    num startDelay,
    num strongMagnitude,
    num weakMagnitude,
  });

  external set duration(num value);
  external num get duration;
  external set startDelay(num value);
  external num get startDelay;
  external set strongMagnitude(num value);
  external num get strongMagnitude;
  external set weakMagnitude(num value);
  external num get weakMagnitude;
}

/// The **`GamepadPose`** interface of the
/// [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API)
/// represents the pose of a
/// [WebVR](https://developer.mozilla.org/en-US/docs/Web/API/WebVR_API)
/// controller at a given timestamp (which includes orientation, position,
/// velocity, and acceleration information).
///
/// This interface is accessible through the [Gamepad.pose] property.
extension type GamepadPose._(JSObject _) implements JSObject {
  external bool get hasOrientation;
  external bool get hasPosition;
  external JSFloat32Array? get position;
  external JSFloat32Array? get linearVelocity;
  external JSFloat32Array? get linearAcceleration;
  external JSFloat32Array? get orientation;
  external JSFloat32Array? get angularVelocity;
  external JSFloat32Array? get angularAcceleration;
}
extension type GamepadTouch._(JSObject _) implements JSObject {
  external int get touchId;
  external int get surfaceId;
  external JSFloat32Array get position;
  external JSUint32Array? get surfaceDimensions;
}
