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
import 'html.dart';

typedef WakeLockType = String;

/// The **`WakeLock`** interface of the
/// [Screen Wake Lock API](https://developer.mozilla.org/en-US/docs/Web/API/Screen_Wake_Lock_API)
/// can be used to request a lock that prevents device screens from dimming or
/// locking when an application needs to keep running.
///
/// This interface, and hence the system wake lock, is exposed through the
/// [Navigator.wakeLock] property.
extension type WakeLock._(JSObject _) implements JSObject {
  /// The **`request()`** method of the [WakeLock] interface returns a `Promise`
  /// that fullfills with a [WakeLockSentinel] object if the system screen wake
  /// lock is granted.
  ///
  /// The screen wake lock prevents device screens from dimming or locking when
  /// an application needs to keep running.
  external JSPromise<WakeLockSentinel> request([WakeLockType type]);
}

/// The **`WakeLockSentinel`** interface of the
/// [Screen Wake Lock API](https://developer.mozilla.org/en-US/docs/Web/API/Screen_Wake_Lock_API)
/// can be used to monitor the status of the platform screen wake lock, and
/// manually release the lock when needed.
///
/// The screen wake lock prevents device screens from dimming or locking when an
/// application needs to keep running.
///
/// A screen wake lock is requested using the [WakeLock.request] method, which
/// returns a `Promise` that fulfills with a `WakeLockSentinel` object if the
/// lock is granted.
///
/// An acquired screen wake lock can be released manually via the
/// [WakeLockSentinel.release] method, or automatically via the platform screen
/// wake lock. The latter may occur if the document becomes inactive or loses
/// visibility, if the device is low on power, or if the user turns on a power
/// save mode.
/// A released `WakeLockSentinel` cannot be re-used: a new sentinel must be be
/// requested using [WakeLock.request] if a new lock is needed.
/// Releasing all `WakeLockSentinel` instances of a given wake lock type will
/// cause the underlying platform wake lock to be released.
///
/// An event is fired at the `WakeLockSentinel` if the platform lock is
/// released, allowing applications to configure their UI, and re-request the
/// lock if needed.
extension type WakeLockSentinel._(JSObject _) implements EventTarget, JSObject {
  /// The **`release()`** method of the [WakeLockSentinel] interface releases
  /// the [WakeLockSentinel], returning a `Promise` that is resolved once the
  /// sentinel has been successfully released.
  external JSPromise<JSAny?> release();
  external bool get released;
  external WakeLockType get type;
  external set onrelease(EventHandler value);
  external EventHandler get onrelease;
}
