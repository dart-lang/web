// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

typedef CaptureAction = JSString;

@JS('CaptureActionEvent')
@staticInterop
class CaptureActionEvent extends Event {
  external factory CaptureActionEvent();

  external factory CaptureActionEvent.a1();

  external factory CaptureActionEvent.a2(CaptureActionEventInit init);
}

extension CaptureActionEventExtension on CaptureActionEvent {
  external CaptureAction get action;
}

@JS()
@staticInterop
@anonymous
class CaptureActionEventInit extends EventInit {
  external factory CaptureActionEventInit({JSString action});
}

extension CaptureActionEventInitExtension on CaptureActionEventInit {
  external set action(JSString value);
  external JSString get action;
}
