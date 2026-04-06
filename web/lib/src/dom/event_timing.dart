// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:collection';
import 'dart:js_interop';

import 'dom.dart';
import 'performance_timeline.dart';

/// The `PerformanceEventTiming` interface of the Event Timing API provides
/// insights into the latency of certain event types triggered by user
/// interaction.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEventTiming).
extension type PerformanceEventTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceEventTiming] interface is a ;
  /// it returns a JSON representation of the [PerformanceEventTiming] object.
  external JSObject toJSON();

  /// The read-only **`processingStart`** property returns the time at which
  /// event dispatch started. This is when event handlers are about to be
  /// executed.
  external double get processingStart;

  /// The read-only **`processingEnd`** property returns the time the last event
  /// handler finished executing.
  ///
  /// It's equal to [PerformanceEventTiming.processingStart] when there are no
  /// such event handlers.
  external double get processingEnd;

  /// The read-only **`cancelable`** property returns the associated event's
  /// [`cancelable`](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelable)
  /// property, indicating whether the event can be canceled.
  external bool get cancelable;

  /// The read-only **`target`** property returns the associated event's last
  /// [`target`](https://developer.mozilla.org/en-US/docs/Web/API/Event/target)
  /// which is the node onto which the event was last dispatched.
  external Node? get target;
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/EventCounts).
extension type EventCounts._(JSObject _) implements JSObject {
  @JS()
  external JSNumber get(JSString key);
  @JS()
  external bool has(JSString key);
  @JS()
  external JSIterator<JSString> keys();
  Map<String, int> get asMap => _EventCountsMapView(this);
}

class _EventCountsMapView extends UnmodifiableMapBase<String, int> {
  _EventCountsMapView(this._jsObject);

  final EventCounts _jsObject;

  @override
  int? operator [](Object? key) {
    final value = _jsObject.get(key as JSString);
    return value.toDartDouble.toInt();
  }

  @override
  Iterable<String> get keys {
    return _jsObject.keys().toDartIterable.map((e) => e.toDart);
  }
}
