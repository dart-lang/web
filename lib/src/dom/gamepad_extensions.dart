// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef GamepadHand = JSString;
typedef GamepadHapticsResult = JSString;
typedef GamepadHapticActuatorType = JSString;
typedef GamepadHapticEffectType = JSString;

@JS('GamepadHapticActuator')
@staticInterop
class GamepadHapticActuator implements JSObject {}

extension GamepadHapticActuatorExtension on GamepadHapticActuator {
  external JSBoolean canPlayEffectType(GamepadHapticEffectType type);
  external JSPromise playEffect(
    GamepadHapticEffectType type, [
    GamepadEffectParameters params,
  ]);
  external JSPromise pulse(
    JSNumber value,
    JSNumber duration,
  );
  external JSPromise reset();
  external GamepadHapticActuatorType get type;
}

@JS()
@staticInterop
@anonymous
class GamepadEffectParameters implements JSObject {
  external factory GamepadEffectParameters({
    JSNumber duration,
    JSNumber startDelay,
    JSNumber strongMagnitude,
    JSNumber weakMagnitude,
  });
}

extension GamepadEffectParametersExtension on GamepadEffectParameters {
  external set duration(JSNumber value);
  external JSNumber get duration;
  external set startDelay(JSNumber value);
  external JSNumber get startDelay;
  external set strongMagnitude(JSNumber value);
  external JSNumber get strongMagnitude;
  external set weakMagnitude(JSNumber value);
  external JSNumber get weakMagnitude;
}

@JS('GamepadPose')
@staticInterop
class GamepadPose implements JSObject {}

extension GamepadPoseExtension on GamepadPose {
  external JSBoolean get hasOrientation;
  external JSBoolean get hasPosition;
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
  external JSNumber get touchId;
  external JSNumber get surfaceId;
  external JSFloat32Array get position;
  external JSUint32Array? get surfaceDimensions;
}
