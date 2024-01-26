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

typedef WakeLockType = String;
extension type WakeLock._(JSObject _) implements JSObject {
  /// The **`request()`** method of the [WakeLock] interface returns a `Promise`
  /// that fullfills with a [WakeLockSentinel] object if the system screen wake
  /// lock is granted.
  ///
  /// The screen wake lock prevents device screens from dimming or locking when
  /// an application needs to keep running.
  external JSPromise request([WakeLockType type]);
}
extension type WakeLockSentinel._(JSObject _) implements EventTarget, JSObject {
  /// The **`release()`** method of the [WakeLockSentinel] interface releases
  /// the [WakeLockSentinel], returning a `Promise` that is resolved once the
  /// sentinel has been successfully released.
  external JSPromise release();
  external bool get released;
  external WakeLockType get type;
  external set onrelease(EventHandler value);
  external EventHandler get onrelease;
}
