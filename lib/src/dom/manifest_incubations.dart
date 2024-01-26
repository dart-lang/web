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
extension type BeforeInstallPromptEvent._(JSObject _)
    implements Event, JSObject {
  external factory BeforeInstallPromptEvent(
    String type, [
    EventInit eventInitDict,
  ]);

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
extension type PromptResponseObject._(JSObject _) implements JSObject {
  external factory PromptResponseObject({AppBannerPromptOutcome userChoice});

  external set userChoice(AppBannerPromptOutcome value);
  external AppBannerPromptOutcome get userChoice;
}
