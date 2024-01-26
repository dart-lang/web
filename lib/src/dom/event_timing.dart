// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'performance_timeline.dart';

extension type PerformanceEventTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceEventTiming] interface is a ;
  /// it returns a JSON representation of the [PerformanceEventTiming] object.
  external JSObject toJSON();
  external DOMHighResTimeStamp get processingStart;
  external DOMHighResTimeStamp get processingEnd;
  external bool get cancelable;
  external Node? get target;
  external int get interactionId;
}
extension type EventCounts._(JSObject _) implements JSObject {}
