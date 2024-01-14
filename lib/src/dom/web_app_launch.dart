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

/// The **`LaunchParams`** interface of the [Launch Handler API] is used when
/// implementing custom launch navigation handling in a PWA. When
/// [LaunchQueue.setConsumer] is invoked to set up the launch navigation
/// handling functionality, the callback function inside `setConsumer()` is
/// passed a `LaunchParams` object instance.
///
/// Such custom navigation handling is initiated via [Window.launchQueue] when a
/// PWA has been launched with a
/// [`launch_handler`](https://developer.mozilla.org/en-US/docs/Web/Manifest/launch_handler)
/// `client_mode` value of `focus-existing`, `navigate-new`, or
/// `navigate-existing`.
@JS('LaunchParams')
@staticInterop
class LaunchParams {}

extension LaunchParamsExtension on LaunchParams {
  external String? get targetURL;
  external JSArray get files;
}

/// The **`LaunchQueue`** interface of the [Launch Handler API] is available via
/// the [Window.launchQueue] property. When a
/// [progressive web app](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
/// (PWA) is launched with a
/// [`launch_handler`](https://developer.mozilla.org/en-US/docs/Web/Manifest/launch_handler)
/// `client_mode` value of `focus-existing`, `navigate-new`, or
/// `navigate-existing`, [LaunchQueue] provides access to functionality that
/// allows custom launch navigation handling to be implemented in the PWA. This
/// functionality is controlled by the properties of the [LaunchParams] object
/// passed into the [LaunchQueue.setConsumer] callback function.
@JS('LaunchQueue')
@staticInterop
class LaunchQueue {}

extension LaunchQueueExtension on LaunchQueue {
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
