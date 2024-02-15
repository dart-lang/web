// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'html.dart';
import 'performance_timeline.dart';

typedef ScriptInvokerType = String;
typedef ScriptWindowAttribution = String;
extension type PerformanceLongTaskTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external String get name;
  external String get entryType;
  external JSArray<TaskAttributionTiming> get attribution;
}
extension type TaskAttributionTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external String get name;
  external String get entryType;
  external String get containerType;
  external String get containerSrc;
  external String get containerId;
  external String get containerName;
}
extension type PerformanceLongAnimationFrameTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get renderStart;
  external DOMHighResTimeStamp get styleAndLayoutStart;
  external DOMHighResTimeStamp get blockingDuration;
  external DOMHighResTimeStamp get firstUIEventTimestamp;
  external JSArray<PerformanceScriptTiming> get scripts;
}
extension type PerformanceScriptTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external String get name;
  external String get entryType;
  external ScriptInvokerType get invokerType;
  external String get invoker;
  external DOMHighResTimeStamp get executionStart;
  external String get sourceLocation;
  external DOMHighResTimeStamp get pauseDuration;
  external DOMHighResTimeStamp get forcedStyleAndLayoutDuration;
  external Window? get window;
  external ScriptWindowAttribution get windowAttribution;
}
