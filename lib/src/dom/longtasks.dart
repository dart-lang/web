// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';
import 'performance_timeline.dart';

@JS('PerformanceLongTaskTiming')
@staticInterop
class PerformanceLongTaskTiming implements PerformanceEntry {}

extension PerformanceLongTaskTimingExtension on PerformanceLongTaskTiming {
  external JSObject toJSON();
  external JSArray get attribution;
}

@JS('TaskAttributionTiming')
@staticInterop
class TaskAttributionTiming implements PerformanceEntry {}

extension TaskAttributionTimingExtension on TaskAttributionTiming {
  external JSObject toJSON();
  external String get containerType;
  external String get containerSrc;
  external String get containerId;
  external String get containerName;
}

@JS('PerformanceLongAnimationFrameTiming')
@staticInterop
class PerformanceLongAnimationFrameTiming implements PerformanceEntry {}

extension PerformanceLongAnimationFrameTimingExtension
    on PerformanceLongAnimationFrameTiming {
  external JSObject toJSON();
  external DOMHighResTimeStamp get renderStart;
  external DOMHighResTimeStamp get styleAndLayoutStart;
  external DOMHighResTimeStamp get blockingDuration;
}
