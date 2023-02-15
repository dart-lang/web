// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

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
class Performance extends EventTarget {
  external factory Performance();
}

extension PerformanceExtension on Performance {
  external EventCounts get eventCounts;
  external JSNumber get interactionCount;
  external DOMHighResTimeStamp now();
  external DOMHighResTimeStamp get timeOrigin;
  external JSObject toJSON();
  external PerformanceTiming get timing;
  external PerformanceNavigation get navigation;
  external JSPromise measureUserAgentSpecificMemory();
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(JSString type);
  external PerformanceEntryList getEntriesByName(JSString name);
  external PerformanceEntryList getEntriesByName1(
    JSString name,
    JSString type,
  );
  external JSVoid clearResourceTimings();
  external JSVoid setResourceTimingBufferSize(JSNumber maxSize);
  external set onresourcetimingbufferfull(EventHandler value);
  external EventHandler get onresourcetimingbufferfull;
  external PerformanceMark mark(JSString markName);
  external PerformanceMark mark1(
    JSString markName,
    PerformanceMarkOptions markOptions,
  );
  external JSVoid clearMarks();
  external JSVoid clearMarks1(JSString markName);
  external PerformanceMeasure measure(JSString measureName);
  external PerformanceMeasure measure1(
    JSString measureName,
    JSAny startOrMeasureOptions,
  );
  external PerformanceMeasure measure2(
    JSString measureName,
    JSAny startOrMeasureOptions,
    JSString endMark,
  );
  external JSVoid clearMeasures();
  external JSVoid clearMeasures1(JSString measureName);
}
