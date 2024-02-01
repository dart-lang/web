// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library gamepad;

import 'dart:js_interop';

import 'dom.dart';
import 'gamepad_extensions.dart';
import 'hr_time.dart';

typedef GamepadMappingType = String;
extension type Gamepad._(JSObject _) implements JSObject {
  external GamepadHand get hand;
  external JSArray get hapticActuators;
  external GamepadPose? get pose;
  external JSArray? get touchEvents;
  external GamepadHapticActuator? get vibrationActuator;
  external String get id;
  external int get index;
  external bool get connected;
  external DOMHighResTimeStamp get timestamp;
  external GamepadMappingType get mapping;
  external JSArray get axes;
  external JSArray get buttons;
}
extension type GamepadButton._(JSObject _) implements JSObject {
  external bool get pressed;
  external bool get touched;
  external num get value;
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
