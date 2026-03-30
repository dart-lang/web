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

typedef UserIdleState = String;
typedef ScreenIdleState = String;
extension type IdleOptions._(JSObject _) implements JSObject {
  external factory IdleOptions({
    int threshold,
    AbortSignal signal,
  });

  external int get threshold;
  external set threshold(int value);
  external AbortSignal get signal;
  external set signal(AbortSignal value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`IdleDetector`** interface of the [idle_detection_api] provides
/// methods and events for detecting user activity on a device or screen.
///
/// This interface requires a secure context.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IdleDetector).
extension type IdleDetector._(JSObject _) implements EventTarget, JSObject {
  external factory IdleDetector();

  /// The **`requestPermission()`** static method of the [IdleDetector]
  /// interface returns a `Promise` that resolves with a string when the user
  /// has chosen
  /// whether to grant the origin access to their idle state. Resolves with
  /// `"granted"` on acceptance and `"denied"` on refusal.
  external static JSPromise<JSString> requestPermission();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`start()`** method of the [IdleDetector] interface returns a
  /// `Promise` that resolves when the detector starts listening for changes in
  /// the
  /// user's idle state. This
  /// method takes an optional `options` object with the `threshold` in
  /// milliseconds
  /// where inactivity should be reported and `signal` for an `AbortSignal` to
  /// abort
  /// the idle detector.
  external JSPromise<JSAny?> start([IdleOptions options]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`userState`** read-only property of the [IdleDetector] interface
  /// returns a string indicating whether the user has interacted with the
  /// device since the call to `start()`.
  external UserIdleState? get userState;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`screenState`** read-only property of the [IdleDetector] interface
  /// returns a string indicating whether the screen is locked, one of
  /// `"locked"` or
  /// `"unlocked"`.
  external ScreenIdleState? get screenState;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}
