// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef GamepadHand = JSString;
typedef GamepadHapticsResult = JSString;
typedef GamepadHapticActuatorType = JSString;
typedef GamepadHapticEffectType = JSString;

@JS('GamepadHapticActuator')
@staticInterop
class GamepadHapticActuator {
  external factory GamepadHapticActuator();
}

extension GamepadHapticActuatorExtension on GamepadHapticActuator {
  external GamepadHapticActuatorType get type;
  external JSBoolean canPlayEffectType(GamepadHapticEffectType type);
  external JSPromise playEffect(GamepadHapticEffectType type);
  external JSPromise playEffect_1(
      GamepadHapticEffectType type, GamepadEffectParameters params);
  external JSPromise pulse(JSNumber value, JSNumber duration);
  external JSPromise reset();
}

@JS('GamepadEffectParameters')
@staticInterop
class GamepadEffectParameters {
  external factory GamepadEffectParameters();
}

extension GamepadEffectParametersExtension on GamepadEffectParameters {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GamepadPose')
@staticInterop
class GamepadPose {
  external factory GamepadPose();
}

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
class GamepadTouch {
  external factory GamepadTouch();
}

extension GamepadTouchExtension on GamepadTouch {
  external JSNumber get touchId;
  external JSNumber get surfaceId;
  external JSFloat32Array get position;
  external JSUint32Array? get surfaceDimensions;
}
