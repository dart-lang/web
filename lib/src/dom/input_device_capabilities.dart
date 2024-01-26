// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
