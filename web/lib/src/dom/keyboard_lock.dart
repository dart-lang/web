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
import 'keyboard_map.dart';

/// The **`Keyboard`** interface of the [Keyboard API] provides functions that
/// retrieve keyboard layout maps and toggle capturing of key presses from the
/// physical keyboard.
///
/// A list of valid code values is found in the
/// [UI Events KeyboardEvent code Values](https://www.w3.org/TR/uievents-code/#key-alphanumeric-writing-system)
/// spec.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Keyboard).
extension type Keyboard._(JSObject _) implements EventTarget, JSObject {
  /// The **`lock()`** method of the
  /// [Keyboard] interface returns a `Promise` that resolves after enabling the
  /// capture of keypresses for any or all of the keys on the physical keyboard.
  /// This method
  /// can only capture keys that are granted access by the underlying operating
  /// system.
  ///
  /// If `lock()` is called multiple times then only the key codes specified in
  /// the most recent call will be locked.
  /// Any keys locked by a previous call to `lock()` are unlocked.
  external JSPromise<JSAny?> lock([JSArray<JSString> keyCodes]);

  /// The **`unlock()`** method of the
  /// [Keyboard] interface unlocks all keys captured by the
  /// [Keyboard.lock] method and returns synchronously.
  external void unlock();

  /// The **`getLayoutMap()`** method of the
  /// [Keyboard] interface returns a `Promise` that resolves with
  /// an instance of [KeyboardLayoutMap] which is a map-like object with
  /// functions for retrieving the strings associated with specific physical
  /// keys.
  external JSPromise<KeyboardLayoutMap> getLayoutMap();
  external EventHandler get onlayoutchange;
  external set onlayoutchange(EventHandler value);
}
