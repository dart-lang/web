// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef UserIdleState = String;
typedef ScreenIdleState = String;
extension type IdleOptions._(JSObject _) implements JSObject {
  external factory IdleOptions({
    int threshold,
    AbortSignal signal,
  });

  external set threshold(int value);
  external int get threshold;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
extension type IdleDetector._(JSObject _) implements EventTarget, JSObject {
  external factory IdleDetector();

  external static JSPromise requestPermission();
  external JSPromise start([IdleOptions options]);
  external UserIdleState? get userState;
  external ScreenIdleState? get screenState;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
