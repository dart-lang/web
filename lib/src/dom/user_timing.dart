// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/performance_timeline.dart';

@JS('PerformanceMarkOptions')
@staticInterop
class PerformanceMarkOptions {
  external factory PerformanceMarkOptions();
}

extension PerformanceMarkOptionsExtension on PerformanceMarkOptions {}

@JS('PerformanceMeasureOptions')
@staticInterop
class PerformanceMeasureOptions {
  external factory PerformanceMeasureOptions();
}

extension PerformanceMeasureOptionsExtension on PerformanceMeasureOptions {}

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
