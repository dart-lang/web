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

typedef Megabit = num;
typedef Millisecond = int;
typedef ConnectionType = String;
typedef EffectiveConnectionType = String;

/// The **`NetworkInformation`** interface of the
/// [Network Information API](https://developer.mozilla.org/en-US/docs/Web/API/Network_Information_API)
/// provides information about the connection a device is using to communicate
/// with the network and provides a means for scripts to be notified if the
/// connection type changes.
/// The `NetworkInformation` interface cannot be instantiated. It is instead
/// accessed through the `connection` property of the [Navigator] interface.
extension type NetworkInformation._(JSObject _)
    implements EventTarget, JSObject {
  external ConnectionType get type;
  external EffectiveConnectionType get effectiveType;
  external Megabit get downlinkMax;
  external Megabit get downlink;
  external Millisecond get rtt;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external bool get saveData;
}
