// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef GamepadHand = String;
typedef GamepadHapticsResult = String;
typedef GamepadHapticActuatorType = String;
typedef GamepadHapticEffectType = String;

@JS('GamepadHapticActuator')
@staticInterop
class GamepadHapticActuator implements JSObject {}

extension GamepadHapticActuatorExtension on GamepadHapticActuator {
  external bool canPlayEffectType(GamepadHapticEffectType type);
  external JSPromise playEffect(
    GamepadHapticEffectType type, [
    GamepadEffectParameters params,
  ]);
  external JSPromise pulse(
    double value,
    double duration,
  );
  external JSPromise reset();
  external GamepadHapticActuatorType get type;
}

@JS()
@staticInterop
@anonymous
class GamepadEffectParameters implements JSObject {
  external factory GamepadEffectParameters({
    double duration,
    double startDelay,
    double strongMagnitude,
    double weakMagnitude,
  });
}

extension GamepadEffectParametersExtension on GamepadEffectParameters {
  external set duration(double value);
  external double get duration;
  external set startDelay(double value);
  external double get startDelay;
  external set strongMagnitude(double value);
  external double get strongMagnitude;
  external set weakMagnitude(double value);
  external double get weakMagnitude;
}

@JS('GamepadPose')
@staticInterop
class GamepadPose implements JSObject {}

extension GamepadPoseExtension on GamepadPose {
  external bool get hasOrientation;
  external bool get hasPosition;
  external JSFloat32Array? get position;
  external JSFloat32Array? get linearVelocity;
  external JSFloat32Array? get linearAcceleration;
  external JSFloat32Array? get orientation;
  external JSFloat32Array? get angularVelocity;
  external JSFloat32Array? get angularAcceleration;
}

@JS('GamepadTouch')
@staticInterop
class GamepadTouch implements JSObject {}

extension GamepadTouchExtension on GamepadTouch {
  external int get touchId;
  external int get surfaceId;
  external JSFloat32Array get position;
  external JSUint32Array? get surfaceDimensions;
}
