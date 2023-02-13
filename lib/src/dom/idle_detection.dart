// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef UserIdleState = JSString;
typedef ScreenIdleState = JSString;

@JS('IdleOptions')
@staticInterop
class IdleOptions {
  external factory IdleOptions();
}

extension IdleOptionsExtension on IdleOptions {
  // TODO
  // TODO
}

@JS('IdleDetector')
@staticInterop
class IdleDetector extends EventTarget {
  external factory IdleDetector();
  external static JSPromise requestPermission();
}

extension IdleDetectorExtension on IdleDetector {
  external UserIdleState? get userState;
  external ScreenIdleState? get screenState;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external JSPromise start();
  external JSPromise start_1(IdleOptions options);
}
