// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef WakeLockType = JSString;

@JS('WakeLock')
@staticInterop
class WakeLock {
  external factory WakeLock();
}

extension WakeLockExtension on WakeLock {
  external JSPromise request();
  external JSPromise request_1(WakeLockType type);
}

@JS('WakeLockSentinel')
@staticInterop
class WakeLockSentinel extends EventTarget {
  external factory WakeLockSentinel();
}

extension WakeLockSentinelExtension on WakeLockSentinel {
  external JSBoolean get released;
  external WakeLockType get type;
  external JSPromise release();
  external EventHandler get onrelease;
  external set onrelease(EventHandler value);
}
