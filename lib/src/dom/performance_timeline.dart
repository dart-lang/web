// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'hr_time.dart';

typedef PerformanceEntryList = JSArray;
typedef PerformanceObserverCallback = JSFunction;

@JS('PerformanceEntry')
@staticInterop
class PerformanceEntry {
  external factory PerformanceEntry();
}

extension PerformanceEntryExtension on PerformanceEntry {
  external JSString get name;
  external JSString get entryType;
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external JSObject toJSON();
}

@JS('PerformanceObserver')
@staticInterop
class PerformanceObserver {
  external factory PerformanceObserver();

  external factory PerformanceObserver.a1(PerformanceObserverCallback callback);

  external static JSArray get supportedEntryTypes;
}

extension PerformanceObserverExtension on PerformanceObserver {
  external JSVoid observe();
  external JSVoid observe1(PerformanceObserverInit options);
  external JSVoid disconnect();
  external PerformanceEntryList takeRecords();
}

@JS('PerformanceObserverCallbackOptions')
@staticInterop
class PerformanceObserverCallbackOptions {
  external factory PerformanceObserverCallbackOptions();
}

extension PerformanceObserverCallbackOptionsExtension
    on PerformanceObserverCallbackOptions {}

@JS('PerformanceObserverInit')
@staticInterop
class PerformanceObserverInit {
  external factory PerformanceObserverInit();
}

extension PerformanceObserverInitExtension on PerformanceObserverInit {}

@JS('PerformanceObserverEntryList')
@staticInterop
class PerformanceObserverEntryList {
  external factory PerformanceObserverEntryList();
}

extension PerformanceObserverEntryListExtension
    on PerformanceObserverEntryList {
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(JSString type);
  external PerformanceEntryList getEntriesByName(JSString name);
  external PerformanceEntryList getEntriesByName1(
    JSString name,
    JSString type,
  );
}
