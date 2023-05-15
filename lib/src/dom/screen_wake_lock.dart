// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef WakeLockType = JSString;

@JS('WakeLock')
@staticInterop
class WakeLock implements JSObject {}

extension WakeLockExtension on WakeLock {
  external JSPromise request([WakeLockType type]);
}

@JS('WakeLockSentinel')
@staticInterop
class WakeLockSentinel implements EventTarget {}

extension WakeLockSentinelExtension on WakeLockSentinel {
  external JSPromise release();
  external JSBoolean get released;
  external WakeLockType get type;
  external set onrelease(EventHandler value);
  external EventHandler get onrelease;
}
