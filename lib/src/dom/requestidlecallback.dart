// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

typedef IdleRequestCallback = JSFunction;

@JS()
@staticInterop
@anonymous
class IdleRequestOptions {
  external factory IdleRequestOptions({JSNumber timeout});
}

extension IdleRequestOptionsExtension on IdleRequestOptions {
  external set timeout(JSNumber value);
  external JSNumber get timeout;
}

@JS('IdleDeadline')
@staticInterop
class IdleDeadline {}

extension IdleDeadlineExtension on IdleDeadline {
  external DOMHighResTimeStamp timeRemaining();
  external JSBoolean get didTimeout;
}
