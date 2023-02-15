// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'performance_timeline.dart';

@JS('PerformanceLongTaskTiming')
@staticInterop
class PerformanceLongTaskTiming extends PerformanceEntry {
  external factory PerformanceLongTaskTiming();
}

extension PerformanceLongTaskTimingExtension on PerformanceLongTaskTiming {
  external JSArray get attribution;
  external JSObject toJSON();
}

@JS('TaskAttributionTiming')
@staticInterop
class TaskAttributionTiming extends PerformanceEntry {
  external factory TaskAttributionTiming();
}

extension TaskAttributionTimingExtension on TaskAttributionTiming {
  external JSString get containerType;
  external JSString get containerSrc;
  external JSString get containerId;
  external JSString get containerName;
  external JSObject toJSON();
}
