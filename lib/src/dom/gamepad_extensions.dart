// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

typedef GamepadHand = String;
typedef GamepadHapticsResult = String;
typedef GamepadHapticActuatorType = String;
typedef GamepadHapticEffectType = String;
extension type GamepadHapticActuator._(JSObject _) implements JSObject {
  external bool canPlayEffectType(GamepadHapticEffectType type);
  external JSPromise<JSString> playEffect(
    GamepadHapticEffectType type, [
    GamepadEffectParameters params,
  ]);
  external JSPromise<JSBoolean> pulse(
    num value,
    num duration,
  );
  external JSPromise<JSString> reset();
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
