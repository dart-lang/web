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

/// The `PerformanceEventTiming` interface of the Event Timing API provides
/// insights into the latency of certain event types triggered by user
/// interaction.
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

/// The **`EventCounts`** interface of the
/// [Performance API](https://developer.mozilla.org/en-US/docs/Web/API/Performance_API)
/// provides the number of events that have been dispatched for each event type.
///
/// An `EventCounts` instance is a read-only
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is the name string for an event type, and the
/// corresponding value is an integer indicating the number of events that have
/// been dispatched for that event type.
extension type EventCounts._(JSObject _) implements JSObject {}
