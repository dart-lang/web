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
import 'html.dart';

/// The `BatteryManager` interface of the [Battery Status API] provides
/// information about the system's battery charge level. The
/// [navigator.getBattery] method returns a promise that resolves with a
/// `BatteryManager` interface.
///
/// Since Chrome 103, the `BatteryManager` interface of [Battery Status API]
/// only expose to secure context.
extension type BatteryManager._(JSObject _) implements EventTarget, JSObject {
  external bool get charging;
  external num get chargingTime;
  external num get dischargingTime;
  external num get level;
  external set onchargingchange(EventHandler value);
  external EventHandler get onchargingchange;
  external set onchargingtimechange(EventHandler value);
  external EventHandler get onchargingtimechange;
  external set ondischargingtimechange(EventHandler value);
  external EventHandler get ondischargingtimechange;
  external set onlevelchange(EventHandler value);
  external EventHandler get onlevelchange;
}
