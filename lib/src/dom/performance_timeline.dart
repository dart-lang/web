// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PerformanceEntryList = JSArray;
typedef PerformanceObserverCallback = JSFunction;

@JS('PerformanceEntry')
@staticInterop
class PerformanceEntry implements JSObject {}

extension PerformanceEntryExtension on PerformanceEntry {
  external JSObject toJSON();
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
}

@JS('PerformanceObserver')
@staticInterop
class PerformanceObserver implements JSObject {
  external factory PerformanceObserver(PerformanceObserverCallback callback);

  external static JSArray get supportedEntryTypes;
}

extension PerformanceObserverExtension on PerformanceObserver {
  external JSVoid observe([PerformanceObserverInit options]);
  external JSVoid disconnect();
  external PerformanceEntryList takeRecords();
}

@JS()
@staticInterop
@anonymous
class PerformanceObserverCallbackOptions implements JSObject {
  external factory PerformanceObserverCallbackOptions(
      {int droppedEntriesCount});
}

extension PerformanceObserverCallbackOptionsExtension
    on PerformanceObserverCallbackOptions {
  external set droppedEntriesCount(int value);
  external int get droppedEntriesCount;
}

@JS()
@staticInterop
@anonymous
class PerformanceObserverInit implements JSObject {
  external factory PerformanceObserverInit({
    DOMHighResTimeStamp durationThreshold,
    JSArray entryTypes,
    String type,
    bool buffered,
  });
}

extension PerformanceObserverInitExtension on PerformanceObserverInit {
  external set durationThreshold(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get durationThreshold;
  external set entryTypes(JSArray value);
  external JSArray get entryTypes;
  external set type(String value);
  external String get type;
  external set buffered(bool value);
  external bool get buffered;
}

@JS('PerformanceObserverEntryList')
@staticInterop
class PerformanceObserverEntryList implements JSObject {}

extension PerformanceObserverEntryListExtension
    on PerformanceObserverEntryList {
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(String type);
  external PerformanceEntryList getEntriesByName(
    String name, [
    String type,
  ]);
}
