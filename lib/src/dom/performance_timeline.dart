// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PerformanceEntryList = JSArray;
typedef PerformanceObserverCallback = JSFunction;
extension type PerformanceEntry._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method is a ; it returns a JSON representation of the
  /// [PerformanceEntry] object.
  external JSObject toJSON();
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
}
extension type PerformanceObserver._(JSObject _) implements JSObject {
  external factory PerformanceObserver(PerformanceObserverCallback callback);

  external static JSArray get supportedEntryTypes;

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
    DOMHighResTimeStamp durationThreshold,
    JSArray entryTypes,
    String type,
    bool buffered,
  });

  external set durationThreshold(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get durationThreshold;
  external set entryTypes(JSArray value);
  external JSArray get entryTypes;
  external set type(String value);
  external String get type;
  external set buffered(bool value);
  external bool get buffered;
}
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
