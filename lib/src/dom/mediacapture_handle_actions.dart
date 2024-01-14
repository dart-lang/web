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

typedef CaptureAction = String;

@JS('CaptureActionEvent')
@staticInterop
class CaptureActionEvent implements Event {
  external factory CaptureActionEvent([CaptureActionEventInit init]);
}

extension CaptureActionEventExtension on CaptureActionEvent {
  external CaptureAction get action;
}

@JS()
@staticInterop
@anonymous
class CaptureActionEventInit implements EventInit {
  external factory CaptureActionEventInit({String action});
}

extension CaptureActionEventInitExtension on CaptureActionEventInit {
  external set action(String value);
  external String get action;
}
