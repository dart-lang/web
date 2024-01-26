// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef LaunchConsumer = JSFunction;
extension type LaunchParams._(JSObject _) implements JSObject {
  external String? get targetURL;
  external JSArray get files;
}
extension type LaunchQueue._(JSObject _) implements JSObject {
  /// The **`setConsumer()`** method of the [LaunchQueue] interface is used to
  /// declare the callback that will handle custom launch navigation handling in
  /// a
  /// [progressive web app](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
  /// (PWA). Such custom navigation is initiated via [Window.launchQueue] when a
  /// PWA has been launched with a
  /// [`launch_handler`](https://developer.mozilla.org/en-US/docs/Web/Manifest/launch_handler)
  /// `client_mode` value of `focus-existing`, `navigate-new`, or
  /// `navigate-existing`.
  external void setConsumer(LaunchConsumer consumer);
}
