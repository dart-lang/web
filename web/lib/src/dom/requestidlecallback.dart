// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef IdleRequestCallback = JSFunction;
extension type IdleRequestOptions._(JSObject _) implements JSObject {
  external factory IdleRequestOptions({int timeout});

  external int get timeout;
  external set timeout(int value);
}

/// The `IdleDeadline` interface is used as the data type of the input parameter
/// to idle callbacks established by calling [Window.requestIdleCallback]. It
/// offers a method, [IdleDeadline.timeRemaining], which lets you determine how
/// much longer the user agent estimates it will remain idle and a property,
/// [IdleDeadline.didTimeout], which lets you determine if your callback is
/// executing because its timeout duration expired.
///
/// To learn more about how request callbacks work, see
/// [Collaborative Scheduling of Background Tasks](https://developer.mozilla.org/en-US/docs/Web/API/Background_Tasks_API).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline).
extension type IdleDeadline._(JSObject _) implements JSObject {
  /// The **`timeRemaining()`** method
  /// on the [IdleDeadline] interface returns the estimated number of
  /// milliseconds remaining in the current idle period. The callback can call
  /// this method at
  /// any time to determine how much time it can continue to work before it must
  /// return. For
  /// example, if the callback finishes a task and has another one to begin, it
  /// can call
  /// `timeRemaining()` to see if there's enough time to complete the next task.
  /// If
  /// there isn't, the callback can just return immediately, or look for other
  /// work to do with
  /// the remaining time.
  ///
  /// By the time `timeRemaining()` reaches 0, it is suggested that the callback
  /// should return control to the user agent's event loop.
  external double timeRemaining();

  /// The read-only **`didTimeout`** property on the
  /// **[IdleDeadline]** interface is a Boolean value which
  /// indicates whether or not the idle callback is being invoked because the
  /// timeout interval
  /// specified when [Window.requestIdleCallback] was called has expired.
  ///
  /// If `didTimeout` is `true`, the `IdleDeadline` object's
  /// [IdleDeadline.timeRemaining] method will return
  /// approximately 0.
  ///
  /// Idle callbacks support the concept of a timeout in order to ensure that
  /// whatever task
  /// they're meant to perform actually happens, even if the user agent never
  /// has enough idle
  /// time available. Your callback will typically check the value of
  /// `didTimeout`
  /// if it needs to perform an action even if the browser is too busy to grant
  /// you the time;
  /// you should react by performing the needed task or, ideally, a minimal
  /// amount of work
  /// that can be done to keep things moving along, then schedule a new callback
  /// to try again
  /// to get the rest of the work done.
  external bool get didTimeout;
}
