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

import 'dom.dart';
import 'html.dart';

typedef RemotePlaybackAvailabilityCallback = JSFunction;
typedef RemotePlaybackState = String;

/// The **`RemotePlayback`** interface of the [Remote Playback API] allows the
/// page to detect availability of remote playback devices, then connect to and
/// control playing on these devices.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RemotePlayback).
extension type RemotePlayback._(JSObject _) implements EventTarget, JSObject {
  /// The **`watchAvailability()`** method of the [RemotePlayback] interface
  /// watches the list of available remote playback devices and returns a
  /// `Promise` that resolves with the `callbackId` of a remote playback device.
  external JSPromise<JSNumber> watchAvailability(
      RemotePlaybackAvailabilityCallback callback);

  /// The **`cancelWatchAvailability()`** method of the [RemotePlayback]
  /// interface cancels the request to watch for one or all available devices.
  external JSPromise<JSAny?> cancelWatchAvailability([int id]);

  /// The **`prompt()`** method of the [RemotePlayback] interface prompts the
  /// user to select an available remote playback device and give permission for
  /// the current media to be played using that device.
  ///
  /// If the user gives permission, the [RemotePlayback.state] will be set to
  /// `connecting` and the user agent will connect to the device to initiate
  /// playback.
  ///
  /// If the user chooses to instead disconnect from the device, the
  /// [RemotePlayback.state] will be set to `disconnected` and user agent will
  /// disconnect from this device.
  external JSPromise<JSAny?> prompt();

  /// The **`state`** read-only property of the [RemotePlayback] interface
  /// returns the current state of the `RemotePlayback` connection.
  external RemotePlaybackState get state;
  external EventHandler get onconnecting;
  external set onconnecting(EventHandler value);
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
}
