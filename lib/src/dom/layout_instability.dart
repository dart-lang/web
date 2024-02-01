// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'performance_timeline.dart';

extension type LayoutShift._(JSObject _) implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external num get value;
  external bool get hadRecentInput;
  external DOMHighResTimeStamp get lastInputTime;
  external JSArray get sources;
}
extension type LayoutShiftAttribution._(JSObject _) implements JSObject {
  external Node? get node;
  external DOMRectReadOnly get previousRect;
  external DOMRectReadOnly get currentRect;
}
