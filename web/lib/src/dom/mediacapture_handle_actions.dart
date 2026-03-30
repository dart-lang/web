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

import 'dom.dart';

typedef CaptureAction = String;
extension type CaptureActionEvent._(JSObject _) implements Event, JSObject {
  external factory CaptureActionEvent([CaptureActionEventInit init]);

  external CaptureAction get action;
}
extension type CaptureActionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory CaptureActionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String action,
  });

  external String get action;
  external set action(String value);
}
