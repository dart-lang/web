// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'hr_time.dart';
import 'performance_timeline.dart';

@JS()
@staticInterop
@anonymous
class PerformanceMarkOptions {
  external factory PerformanceMarkOptions({
    JSAny detail,
    DOMHighResTimeStamp startTime,
  });
}

extension PerformanceMarkOptionsExtension on PerformanceMarkOptions {
  external set detail(JSAny value);
  external JSAny get detail;
  external set startTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get startTime;
}

@JS()
@staticInterop
@anonymous
class PerformanceMeasureOptions {
  external factory PerformanceMeasureOptions({
    JSAny detail,
    JSAny start,
    DOMHighResTimeStamp duration,
    JSAny end,
  });
}

extension PerformanceMeasureOptionsExtension on PerformanceMeasureOptions {
  external set detail(JSAny value);
  external JSAny get detail;
  external set start(JSAny value);
  external JSAny get start;
  external set duration(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get duration;
  external set end(JSAny value);
  external JSAny get end;
}

@JS('PerformanceMark')
@staticInterop
class PerformanceMark extends PerformanceEntry {
  external factory PerformanceMark();

  external factory PerformanceMark.a1(JSString markName);

  external factory PerformanceMark.a2(
    JSString markName,
    PerformanceMarkOptions markOptions,
  );
}

extension PerformanceMarkExtension on PerformanceMark {
  external JSAny get detail;
}

@JS('PerformanceMeasure')
@staticInterop
class PerformanceMeasure extends PerformanceEntry {
  external factory PerformanceMeasure();
}

extension PerformanceMeasureExtension on PerformanceMeasure {
  external JSAny get detail;
}
