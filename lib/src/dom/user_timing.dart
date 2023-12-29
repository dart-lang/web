// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';
import 'performance_timeline.dart';

extension type PerformanceMarkOptions._(JSObject _) implements JSObject {
  external factory PerformanceMarkOptions({
    JSAny? detail,
    DOMHighResTimeStamp startTime,
  });
}

extension PerformanceMarkOptionsExtension on PerformanceMarkOptions {
  external set detail(JSAny? value);
  external JSAny? get detail;
  external set startTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get startTime;
}

extension type PerformanceMeasureOptions._(JSObject _) implements JSObject {
  external factory PerformanceMeasureOptions({
    JSAny? detail,
    JSAny start,
    DOMHighResTimeStamp duration,
    JSAny end,
  });
}

extension PerformanceMeasureOptionsExtension on PerformanceMeasureOptions {
  external set detail(JSAny? value);
  external JSAny? get detail;
  external set start(JSAny value);
  external JSAny get start;
  external set duration(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get duration;
  external set end(JSAny value);
  external JSAny get end;
}

extension type PerformanceMark._(JSObject _)
    implements PerformanceEntry, JSObject {
  external factory PerformanceMark(
    String markName, [
    PerformanceMarkOptions markOptions,
  ]);
}

extension PerformanceMarkExtension on PerformanceMark {
  external JSAny? get detail;
}

extension type PerformanceMeasure._(JSObject _)
    implements PerformanceEntry, JSObject {}

extension PerformanceMeasureExtension on PerformanceMeasure {
  external JSAny? get detail;
}
