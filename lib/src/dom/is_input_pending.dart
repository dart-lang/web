// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

extension type IsInputPendingOptions._(JSObject _) implements JSObject {
  external factory IsInputPendingOptions({bool includeContinuous});

  external set includeContinuous(bool value);
  external bool get includeContinuous;
}

/// The **`Scheduling`** object provides methods and properties to control
/// scheduling tasks within the current document.
extension type Scheduling._(JSObject _) implements JSObject {
  /// The **`isInputPending()`** method of the [Scheduling] interface allows you
  /// to check whether there are pending input events in the event queue,
  /// indicating that the user is attempting to interact with the page.
  ///
  /// This feature is useful in situations where you have a queue of tasks to
  /// run, and you want to yield to the main thread regularly to allow user
  /// interaction to occur so that the app is kept as responsive and performant
  /// as possible. `isInputPending()` allows you to yield only when there is
  /// input pending, rather than having to do it at arbitrary intervals.
  ///
  /// `isInputPending()` is called using
  /// `navigator.scheduling.isInputPending()`.
  external bool isInputPending([IsInputPendingOptions isInputPendingOptions]);
}
