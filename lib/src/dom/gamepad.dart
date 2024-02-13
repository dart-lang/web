// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';

typedef GamepadMappingType = String;
typedef GamepadHapticsResult = String;
typedef GamepadHapticEffectType = String;

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
  external String get id;
  external int get index;
  external bool get connected;
  external DOMHighResTimeStamp get timestamp;
  external GamepadMappingType get mapping;
  external JSArray<JSNumber> get axes;
  external JSArray<GamepadButton> get buttons;
  external GamepadHapticActuator get vibrationActuator;
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

/// The **`GamepadHapticActuator`** interface of the
/// [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API)
/// represents hardware in the controller designed to provide haptic feedback to
/// the user (if available), most commonly vibration hardware.
///
/// This interface is accessible through the [Gamepad.hapticActuators] property.
extension type GamepadHapticActuator._(JSObject _) implements JSObject {
  /// The **`playEffect()`** method of the [GamepadHapticActuator] interface
  /// makes the hardware play a specific vibration pattern.
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
