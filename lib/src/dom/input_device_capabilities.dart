// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('InputDeviceCapabilities')
@staticInterop
class InputDeviceCapabilities {
  external factory InputDeviceCapabilities(
      [InputDeviceCapabilitiesInit deviceInitDict]);
}

extension InputDeviceCapabilitiesExtension on InputDeviceCapabilities {
  external JSBoolean get firesTouchEvents;
  external JSBoolean get pointerMovementScrolls;
}

@JS()
@staticInterop
@anonymous
class InputDeviceCapabilitiesInit {
  external factory InputDeviceCapabilitiesInit({
    JSBoolean firesTouchEvents = false,
    JSBoolean pointerMovementScrolls = false,
  });
}

extension InputDeviceCapabilitiesInitExtension on InputDeviceCapabilitiesInit {
  external set firesTouchEvents(JSBoolean value);
  external JSBoolean get firesTouchEvents;
  external set pointerMovementScrolls(JSBoolean value);
  external JSBoolean get pointerMovementScrolls;
}
