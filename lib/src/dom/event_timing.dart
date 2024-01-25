// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'performance_timeline.dart';

extension type PerformanceEventTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external DOMHighResTimeStamp get processingStart;
  external DOMHighResTimeStamp get processingEnd;
  external bool get cancelable;
  external Node? get target;
  external int get interactionId;
}
extension type EventCounts._(JSObject _) implements JSObject {}
