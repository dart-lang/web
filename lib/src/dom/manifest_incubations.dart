// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

typedef AppBannerPromptOutcome = String;
extension type BeforeInstallPromptEvent._(JSObject _)
    implements Event, JSObject {
  external factory BeforeInstallPromptEvent(
    String type, [
    EventInit eventInitDict,
  ]);

  external JSPromise prompt();
}
extension type PromptResponseObject._(JSObject _) implements JSObject {
  external factory PromptResponseObject({AppBannerPromptOutcome userChoice});

  external set userChoice(AppBannerPromptOutcome value);
  external AppBannerPromptOutcome get userChoice;
}
