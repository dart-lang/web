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

import 'dom.dart';
import 'html.dart';

typedef DevicePostureType = String;

/// The **`DevicePosture`** interface of the [Device Posture API] represents the
/// device's posture, that is, whether the viewport is in a flat or folded
/// state.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DevicePosture).
extension type DevicePosture._(JSObject _) implements EventTarget, JSObject {
  /// The **`type`** read-only property of the [DevicePosture] interface returns
  /// the device's current posture.
  external DevicePostureType get type;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}
