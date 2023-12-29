// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef WakeLockType = String;
extension type WakeLock._(JSObject _) implements JSObject {}

extension WakeLockExtension on WakeLock {
  external JSPromise request([WakeLockType type]);
}

extension type WakeLockSentinel._(JSObject _)
    implements EventTarget, JSObject {}

extension WakeLockSentinelExtension on WakeLockSentinel {
  external JSPromise release();
  external bool get released;
  external WakeLockType get type;
  external set onrelease(EventHandler value);
  external EventHandler get onrelease;
}
