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

import 'fs.dart';

typedef LaunchConsumer = JSFunction;

/// The **`LaunchParams`** interface of the [Launch Handler API] is used when
/// implementing custom launch navigation handling in a PWA. When
/// [LaunchQueue.setConsumer] is invoked to set up the launch navigation
/// handling functionality, the callback function inside `setConsumer()` is
/// passed a `LaunchParams` object instance.
///
/// Such custom navigation handling is initiated via [Window.launchQueue] when a
/// PWA has been launched with a
/// [`launch_handler`](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Manifest/Reference/launch_handler)
/// `client_mode` value of `focus-existing`, `navigate-new`, or
/// `navigate-existing`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/LaunchParams).
extension type LaunchParams._(JSObject _) implements JSObject {
  /// The **`targetURL`** read-only property of the [LaunchParams] interface
  /// returns the target URL of the associated web app launch.
  external String? get targetURL;

  /// The **`files`** read-only property of the [LaunchParams] interface returns
  /// an array of [FileSystemHandle] objects representing any files passed along
  /// with the launch navigation via the
  /// [`POST`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST)
  /// method.
  external JSArray<FileSystemHandle> get files;
}

/// The **`LaunchQueue`** interface of the [Launch Handler API] is available via
/// the [Window.launchQueue] property. When a
/// [progressive web app](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
/// (PWA) is launched with a
/// [`launch_handler`](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Manifest/Reference/launch_handler)
/// `client_mode` value of `focus-existing`, `navigate-new`, or
/// `navigate-existing`, `LaunchQueue` provides access to functionality that
/// allows custom launch navigation handling to be implemented in the PWA. This
/// functionality is controlled by the properties of the [LaunchParams] object
/// passed into the [LaunchQueue.setConsumer] callback function.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/LaunchQueue).
extension type LaunchQueue._(JSObject _) implements JSObject {
  /// The **`setConsumer()`** method of the [LaunchQueue] interface is used to
  /// declare the callback that will handle custom launch navigation handling in
  /// a
  /// [progressive web app](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
  /// (PWA). Such custom navigation is initiated via [Window.launchQueue] when a
  /// PWA has been launched with a
  /// [`launch_handler`](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Manifest/Reference/launch_handler)
  /// `client_mode` value of `focus-existing`, `navigate-new`, or
  /// `navigate-existing`.
  external void setConsumer(LaunchConsumer consumer);
}
