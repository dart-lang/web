// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'status.dart';

typedef WakeLockType = String;

@JS('WakeLock')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class WakeLock {}

extension WakeLockExtension on WakeLock {
  external JSPromise request([WakeLockType type]);
}

@JS('WakeLockSentinel')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class WakeLockSentinel implements EventTarget {}

extension WakeLockSentinelExtension on WakeLockSentinel {
  external JSPromise release();
  external bool get released;
  external WakeLockType get type;
  external set onrelease(EventHandler value);
  external EventHandler get onrelease;
}
