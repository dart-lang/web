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

typedef AppBannerPromptOutcome = String;

/// The **`BeforeInstallPromptEvent`** is the interface of the
/// [Window.beforeinstallprompt_event] event fired at the [Window] object before
/// a user is prompted to "install" a website to a home screen on mobile.
///
/// This interface inherits from the [Event] interface.
@JS('BeforeInstallPromptEvent')
@staticInterop
class BeforeInstallPromptEvent implements Event {
  external factory BeforeInstallPromptEvent(
    String type, [
    EventInit eventInitDict,
  ]);
}

extension BeforeInstallPromptEventExtension on BeforeInstallPromptEvent {
  /// The **`prompt()`** method of the [BeforeInstallPromptEvent] interface
  /// allows a developer to show the
  /// install prompt at a time of their own choosing. Typically this will be
  /// called in the event handler for the app's custom install UI.
  ///
  /// This method must be called in the event handler for a user action (such as
  /// a button click) and may only be called once on a given
  /// `BeforeInstallPromptEvent` instance.
  external JSPromise prompt();
}

@JS()
@staticInterop
@anonymous
class PromptResponseObject {
  external factory PromptResponseObject({AppBannerPromptOutcome userChoice});
}

extension PromptResponseObjectExtension on PromptResponseObject {
  external set userChoice(AppBannerPromptOutcome value);
  external AppBannerPromptOutcome get userChoice;
}
