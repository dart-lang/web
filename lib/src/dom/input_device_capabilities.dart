// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

extension type InputDeviceCapabilities._(JSObject _) implements JSObject {
  external factory InputDeviceCapabilities(
      [InputDeviceCapabilitiesInit deviceInitDict]);

  external bool get firesTouchEvents;
  external bool get pointerMovementScrolls;
}
extension type InputDeviceCapabilitiesInit._(JSObject _) implements JSObject {
  external factory InputDeviceCapabilitiesInit({
    bool firesTouchEvents,
    bool pointerMovementScrolls,
  });

  external set firesTouchEvents(bool value);
  external bool get firesTouchEvents;
  external set pointerMovementScrolls(bool value);
  external bool get pointerMovementScrolls;
}
