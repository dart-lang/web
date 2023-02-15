// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'gamepad_extensions.dart';
import 'hr_time.dart';

typedef GamepadMappingType = JSString;

@JS('Gamepad')
@staticInterop
class Gamepad {
  external factory Gamepad();
}

extension GamepadExtension on Gamepad {
  external GamepadHand get hand;
  external JSArray get hapticActuators;
  external GamepadPose? get pose;
  external JSArray? get touchEvents;
  external GamepadHapticActuator get vibrationActuator;
  external JSString get id;
  external JSNumber get index;
  external JSBoolean get connected;
  external DOMHighResTimeStamp get timestamp;
  external GamepadMappingType get mapping;
  external JSArray get axes;
  external JSArray get buttons;
}

@JS('GamepadButton')
@staticInterop
class GamepadButton {
  external factory GamepadButton();
}

extension GamepadButtonExtension on GamepadButton {
  external JSBoolean get pressed;
  external JSBoolean get touched;
  external JSNumber get value;
}

@JS('GamepadEvent')
@staticInterop
class GamepadEvent extends Event {
  external factory GamepadEvent();

  external factory GamepadEvent.a1(
    JSString type,
    GamepadEventInit eventInitDict,
  );
}

extension GamepadEventExtension on GamepadEvent {
  external Gamepad get gamepad;
}

@JS('GamepadEventInit')
@staticInterop
class GamepadEventInit extends EventInit {
  external factory GamepadEventInit();
}

extension GamepadEventInitExtension on GamepadEventInit {}
