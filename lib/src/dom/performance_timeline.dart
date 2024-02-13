// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';

typedef PerformanceEntryList = JSArray<PerformanceEntry>;
typedef PerformanceObserverCallback = JSFunction;

/// The **`PerformanceEntry`** object encapsulates a single performance metric
/// that is part of the browser's performance timeline.
///
/// The Performance API offers built-in metrics which are specialized subclasses
/// of `PerformanceEntry`. This includes entries for resource loading, event
/// timing,  (FID), and more.
///
/// A performance entry can also be created by calling the [Performance.mark] or
/// [Performance.measure] methods at an explicit point in an application. This
/// allows you to add your own metrics to the performance timeline.
///
/// The `PerformanceEntry` instances will always be one of the following
/// subclasses:
///
/// - [LargestContentfulPaint]
/// - [LayoutShift]
/// - [PerformanceEventTiming]
/// - [PerformanceLongTaskTiming]
/// - [PerformanceMark]
/// - [PerformanceMeasure]
/// - [PerformanceNavigationTiming]
/// - [PerformancePaintTiming]
/// - [PerformanceResourceTiming]
/// - [PerformanceServerTiming]
/// - [TaskAttributionTiming]
/// - [VisibilityStateEntry]
extension type PerformanceEntry._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method is a ; it returns a JSON representation of the
  /// [PerformanceEntry] object.
  external JSObject toJSON();
  external int get id;
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external int get navigationId;
}

/// The **`PerformanceObserver`** interface is used to observe performance
/// measurement events and be notified of new [PerformanceEntry] as they are
/// recorded in the browser's _performance timeline_.
extension type PerformanceObserver._(JSObject _) implements JSObject {
  external factory PerformanceObserver(PerformanceObserverCallback callback);

  external static JSArray<JSString> get supportedEntryTypes;

  /// The **`observe()`** method of the **[PerformanceObserver]** interface is
  /// used to specify the set of performance entry types to observe.
  ///
  /// See [PerformanceEntry.entryType] for a list of entry types and
  /// [PerformanceObserver.supportedEntryTypes_static] for a list of entry types
  /// the user agent supports.
  ///
  /// When a matching performance entry is recorded, the performance observer's
  /// callback function—set when creating the [PerformanceObserver]—is invoked.
  external void observe([PerformanceObserverInit options]);

  /// The **`disconnect()`** method of the [PerformanceObserver] interface is
  /// used to stop the performance observer from receiving any
  /// [PerformanceEntry] events.
  external void disconnect();

  /// The **`takeRecords()`** method of the [PerformanceObserver] interface
  /// returns the current list of [PerformanceEntry] stored in the performance
  /// observer, emptying it out.
  external PerformanceEntryList takeRecords();
}
extension type PerformanceObserverCallbackOptions._(JSObject _)
    implements JSObject {
  external factory PerformanceObserverCallbackOptions(
      {int droppedEntriesCount});

  external set droppedEntriesCount(int value);
  external int get droppedEntriesCount;
}
extension type PerformanceObserverInit._(JSObject _) implements JSObject {
  external factory PerformanceObserverInit({
    JSArray<JSString> entryTypes,
    String type,
    bool buffered,
  });

  external set entryTypes(JSArray<JSString> value);
  external JSArray<JSString> get entryTypes;
  external set type(String value);
  external String get type;
  external set buffered(bool value);
  external bool get buffered;
}

/// The **`PerformanceObserverEntryList`** interface is a list of
/// [PerformanceEntry] that were explicitly observed via the
/// [PerformanceObserver.observe] method.
extension type PerformanceObserverEntryList._(JSObject _) implements JSObject {
  /// The **`getEntries()`** method of the [PerformanceObserverEntryList]
  /// interface returns a list of explicitly observed [PerformanceEntry]
  /// objects. The list's members are determined by the set of
  /// [PerformanceEntry.entryType] specified in the call to the
  /// [PerformanceObserver.observe] method. The list is available in the
  /// observer's callback function (as the first parameter in the callback).
  external PerformanceEntryList getEntries();

  /// The **`getEntriesByType()`** method of the [PerformanceObserverEntryList]
  /// returns a list of explicitly _observed_ [PerformanceEntry] objects for a
  /// given [PerformanceEntry.entryType]. The list's members are determined by
  /// the set of [PerformanceEntry.entryType] specified in the call to the
  /// [PerformanceObserver.observe] method. The list is available in the
  /// observer's callback function (as the first parameter in the callback).
  external PerformanceEntryList getEntriesByType(String type);

  /// The **`getEntriesByName()`** method of the [PerformanceObserverEntryList]
  /// interface returns a list of explicitly observed [PerformanceEntry] objects
  /// for a given [PerformanceEntry.name] and [PerformanceEntry.entryType]. The
  /// list's members are determined by the set of [PerformanceEntry.entryType]
  /// specified in the call to the [PerformanceObserver.observe] method. The
  /// list is available in the observer's callback function (as the first
  /// parameter in the callback).
  external PerformanceEntryList getEntriesByName(
    String name, [
    String type,
  ]);
}
