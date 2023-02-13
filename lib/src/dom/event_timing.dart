// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('PerformanceEventTiming')
@staticInterop
class PerformanceEventTiming extends PerformanceEntry {
  external factory PerformanceEventTiming();
}

extension PerformanceEventTimingExtension on PerformanceEventTiming {
  external DOMHighResTimeStamp get processingStart;
  external DOMHighResTimeStamp get processingEnd;
  external JSBoolean get cancelable;
  external Node? get target;
  external JSNumber get interactionId;
  external JSObject toJSON();
}

@JS('EventCounts')
@staticInterop
class EventCounts {
  external factory EventCounts();
}

extension EventCountsExtension on EventCounts {
  // TODO
}
