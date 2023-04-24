// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'event_timing.dart';
import 'html.dart';
import 'navigation_timing.dart';
import 'performance_timeline.dart';
import 'user_timing.dart';

typedef DOMHighResTimeStamp = JSNumber;
typedef EpochTimeStamp = JSNumber;

@JS('Performance')
@staticInterop
class Performance implements EventTarget {}

extension PerformanceExtension on Performance {
  external DOMHighResTimeStamp now();
  external JSObject toJSON();
  external JSPromise measureUserAgentSpecificMemory();
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(JSString type);
  external PerformanceEntryList getEntriesByName(
    JSString name, [
    JSString type,
  ]);
  external JSVoid clearResourceTimings();
  external JSVoid setResourceTimingBufferSize(JSNumber maxSize);
  external PerformanceMark mark(
    JSString markName, [
    PerformanceMarkOptions markOptions,
  ]);
  external JSVoid clearMarks([JSString markName]);
  external PerformanceMeasure measure(
    JSString measureName, [
    JSAny startOrMeasureOptions,
    JSString endMark,
  ]);
  external JSVoid clearMeasures([JSString measureName]);
  external EventCounts get eventCounts;
  external JSNumber get interactionCount;
  external DOMHighResTimeStamp get timeOrigin;
  external PerformanceTiming get timing;
  external PerformanceNavigation get navigation;
  external set onresourcetimingbufferfull(EventHandler value);
  external EventHandler get onresourcetimingbufferfull;
}
