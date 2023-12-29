// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';

typedef IdleRequestCallback = JSFunction;
extension type IdleRequestOptions._(JSObject _) implements JSObject {
  external factory IdleRequestOptions({int timeout});
}

extension IdleRequestOptionsExtension on IdleRequestOptions {
  external set timeout(int value);
  external int get timeout;
}

extension type IdleDeadline._(JSObject _) implements JSObject {}

extension IdleDeadlineExtension on IdleDeadline {
  external DOMHighResTimeStamp timeRemaining();
  external bool get didTimeout;
}
