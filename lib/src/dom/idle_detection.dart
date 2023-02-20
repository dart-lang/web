// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef UserIdleState = JSString;
typedef ScreenIdleState = JSString;

@JS()
@staticInterop
@anonymous
class IdleOptions {
  external factory IdleOptions({
    JSNumber threshold,
    AbortSignal signal,
  });
}

extension IdleOptionsExtension on IdleOptions {
  external set threshold(JSNumber value);
  external JSNumber get threshold;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS('IdleDetector')
@staticInterop
class IdleDetector extends EventTarget {
  external factory IdleDetector.a0();

  external static JSPromise requestPermission();
}

extension IdleDetectorExtension on IdleDetector {
  external UserIdleState? get userState;
  external ScreenIdleState? get screenState;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external JSPromise start();
  external JSPromise start1(IdleOptions options);
}
