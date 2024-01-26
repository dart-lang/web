// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'gamepad_extensions.dart';
import 'hr_time.dart';

typedef GamepadMappingType = String;

/// The **`Gamepad`** interface of the
/// [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API)
/// defines an individual gamepad or other controller, allowing access to
/// information such as button presses, axis positions, and id.
///
/// A Gamepad object can be returned in one of two ways: via the `gamepad`
/// property of the [Window.gamepadconnected_event] and
/// [Window.gamepaddisconnected_event] events, or by grabbing any position in
/// the array returned by the [Navigator.getGamepads] method.
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

/// The **`GamepadButton`** interface defines an individual button of a gamepad
/// or other controller, allowing access to the current state of different types
/// of buttons available on the control device.
///
/// A `GamepadButton` object is returned by querying any value of the array
/// returned by the `buttons` property of the [Gamepad] interface.
extension type GamepadButton._(JSObject _) implements JSObject {
  external bool get pressed;
  external bool get touched;
  external num get value;
}

/// The GamepadEvent interface of the Gamepad API contains references to
/// gamepads connected to the system, which is what the gamepad events
/// [Window.gamepadconnected_event] and [Window.gamepaddisconnected_event] are
/// fired in response to.
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
