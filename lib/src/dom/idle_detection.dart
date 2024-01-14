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

typedef UserIdleState = String;
typedef ScreenIdleState = String;

@JS()
@staticInterop
@anonymous
class IdleOptions {
  external factory IdleOptions({
    int threshold,
    AbortSignal signal,
  });
}

extension IdleOptionsExtension on IdleOptions {
  external set threshold(int value);
  external int get threshold;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

/// The **`IdleDetector`** interface of the [idle_detection_api] provides
/// methods and events for detecting user activity on a device or screen.
///
/// This interface requires a secure context.
@JS('IdleDetector')
@staticInterop
class IdleDetector implements EventTarget {
  external factory IdleDetector();

  external static JSPromise requestPermission();
}

extension IdleDetectorExtension on IdleDetector {
  /// The **`start()`** method of the [IdleDetector] interface returns a
  /// `Promise` that resolves when the detector starts listening for changes in
  /// the
  /// user's idle state. This
  /// method takes an optional `options` object with the `threshold` in
  /// milliseconds
  /// where inactivity should be reported and `signal` for an `AbortSignal` to
  /// abort
  /// the idle detector.
  external JSPromise start([IdleOptions options]);
  external UserIdleState? get userState;
  external ScreenIdleState? get screenState;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
