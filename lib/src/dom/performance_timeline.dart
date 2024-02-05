// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';

typedef PerformanceEntryList = JSArray<PerformanceEntry>;
typedef PerformanceObserverCallback = JSFunction;
extension type PerformanceEntry._(JSObject _) implements JSObject {
  external JSObject toJSON();
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
}
extension type PerformanceObserver._(JSObject _) implements JSObject {
  external factory PerformanceObserver(PerformanceObserverCallback callback);

  external static JSArray<JSString> get supportedEntryTypes;
  external void observe([PerformanceObserverInit options]);
  external void disconnect();
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
extension type PerformanceObserverEntryList._(JSObject _) implements JSObject {
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(String type);
  external PerformanceEntryList getEntriesByName(
    String name, [
    String type,
  ]);
}
