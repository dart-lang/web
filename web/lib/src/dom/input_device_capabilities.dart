// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

/// The **`InputDeviceCapabilities`** interface of the
/// [InputDeviceCapabilities API] provides information about the physical device
/// or a group of related devices responsible for generating input events.
/// Events caused by the same physical input device get the same instance of
/// this object, but the converse isn't true. For example, two mice with the
/// same capabilities in a system may appear as a single
/// `InputDeviceCapabilities` instance.
///
/// In some instances, `InputDeviceCapabilities` represents the capabilities of
/// logical devices rather than physical devices. This allows, for example,
/// touchscreen keyboards and physical keyboards to be represented the same way
/// when they produce the same input.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/InputDeviceCapabilities).
extension type InputDeviceCapabilities._(JSObject _) implements JSObject {
  external factory InputDeviceCapabilities(
      [InputDeviceCapabilitiesInit deviceInitDict]);

  /// The **`firesTouchEvents`** read-only property of the
  /// [InputDeviceCapabilities] interface returns a boolean value that indicates
  /// whether the device dispatches touch events.
  ///
  /// You can use this property to detect mouse events that represent an action
  /// that may
  /// already have been handled by touch event handlers. This doesn't
  /// necessarily mean the
  /// device is a touch screen. For example, stylus and mouse devices typically
  /// generate
  /// touch events on mobile browsers.
  external bool get firesTouchEvents;
  external bool get pointerMovementScrolls;
}
extension type InputDeviceCapabilitiesInit._(JSObject _) implements JSObject {
  external factory InputDeviceCapabilitiesInit({
    bool firesTouchEvents,
    bool pointerMovementScrolls,
  });

  external bool get firesTouchEvents;
  external set firesTouchEvents(bool value);
  external bool get pointerMovementScrolls;
  external set pointerMovementScrolls(bool value);
}
