// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';
import 'package:web/src/dom/hr_time.dart';
import 'package:web/src/dom/performance_timeline.dart';

@JS('LayoutShift')
@staticInterop
class LayoutShift extends PerformanceEntry {
  external factory LayoutShift();
}

extension LayoutShiftExtension on LayoutShift {
  external JSNumber get value;
  external JSBoolean get hadRecentInput;
  external DOMHighResTimeStamp get lastInputTime;
  external JSArray get sources;
  external JSObject toJSON();
}

@JS('LayoutShiftAttribution')
@staticInterop
class LayoutShiftAttribution {
  external factory LayoutShiftAttribution();
}

extension LayoutShiftAttributionExtension on LayoutShiftAttribution {
  external Node? get node;
  external DOMRectReadOnly get previousRect;
  external DOMRectReadOnly get currentRect;
}
