// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';

typedef GamepadMappingType = String;
typedef GamepadHapticsResult = String;
typedef GamepadHapticEffectType = String;
extension type Gamepad._(JSObject _) implements JSObject {
  external String get id;
  external int get index;
  external bool get connected;
  external DOMHighResTimeStamp get timestamp;
  external GamepadMappingType get mapping;
  external JSArray<JSNumber> get axes;
  external JSArray<GamepadButton> get buttons;
  external GamepadHapticActuator get vibrationActuator;
}
extension type GamepadButton._(JSObject _) implements JSObject {
  external bool get pressed;
  external bool get touched;
  external num get value;
}
extension type GamepadHapticActuator._(JSObject _) implements JSObject {
  external JSPromise<JSString> playEffect(
    GamepadHapticEffectType type, [
    GamepadEffectParameters params,
  ]);
  external JSPromise<JSString> reset();
  external JSArray<JSString> get effects;
}
extension type GamepadEffectParameters._(JSObject _) implements JSObject {
  external factory GamepadEffectParameters({
    int duration,
    int startDelay,
    num strongMagnitude,
    num weakMagnitude,
  });

  external set duration(int value);
  external int get duration;
  external set startDelay(int value);
  external int get startDelay;
  external set strongMagnitude(num value);
  external num get strongMagnitude;
  external set weakMagnitude(num value);
  external num get weakMagnitude;
}
extension type GamepadEvent._(JSObject _) implements Event, JSObject {
  external factory GamepadEvent(
    String type,
    GamepadEventInit eventInitDict,
  );

  external Gamepad get gamepad;
}
extension type GamepadEventInit._(JSObject _) implements EventInit, JSObject {
  external factory GamepadEventInit({required Gamepad gamepad});

  external set gamepad(Gamepad value);
  external Gamepad get gamepad;
}
