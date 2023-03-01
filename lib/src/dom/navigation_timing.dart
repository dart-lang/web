// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'hr_time.dart';
import 'resource_timing.dart';

typedef NavigationTimingType = JSString;

@JS('PerformanceNavigationTiming')
@staticInterop
class PerformanceNavigationTiming implements PerformanceResourceTiming {}

extension PerformanceNavigationTimingExtension on PerformanceNavigationTiming {
  external JSObject toJSON();
  external DOMHighResTimeStamp get unloadEventStart;
  external DOMHighResTimeStamp get unloadEventEnd;
  external DOMHighResTimeStamp get domInteractive;
  external DOMHighResTimeStamp get domContentLoadedEventStart;
  external DOMHighResTimeStamp get domContentLoadedEventEnd;
  external DOMHighResTimeStamp get domComplete;
  external DOMHighResTimeStamp get loadEventStart;
  external DOMHighResTimeStamp get loadEventEnd;
  external NavigationTimingType get type;
  external JSNumber get redirectCount;
  external DOMHighResTimeStamp get activationStart;
}

@JS('PerformanceTiming')
@staticInterop
class PerformanceTiming {}

extension PerformanceTimingExtension on PerformanceTiming {
  external JSObject toJSON();
  external JSNumber get navigationStart;
  external JSNumber get unloadEventStart;
  external JSNumber get unloadEventEnd;
  external JSNumber get redirectStart;
  external JSNumber get redirectEnd;
  external JSNumber get fetchStart;
  external JSNumber get domainLookupStart;
  external JSNumber get domainLookupEnd;
  external JSNumber get connectStart;
  external JSNumber get connectEnd;
  external JSNumber get secureConnectionStart;
  external JSNumber get requestStart;
  external JSNumber get responseStart;
  external JSNumber get responseEnd;
  external JSNumber get domLoading;
  external JSNumber get domInteractive;
  external JSNumber get domContentLoadedEventStart;
  external JSNumber get domContentLoadedEventEnd;
  external JSNumber get domComplete;
  external JSNumber get loadEventStart;
  external JSNumber get loadEventEnd;
}

@JS('PerformanceNavigation')
@staticInterop
class PerformanceNavigation {
  external static JSNumber get TYPE_NAVIGATE;
  external static JSNumber get TYPE_RELOAD;
  external static JSNumber get TYPE_BACK_FORWARD;
  external static JSNumber get TYPE_RESERVED;
}

extension PerformanceNavigationExtension on PerformanceNavigation {
  external JSObject toJSON();
  external JSNumber get type;
  external JSNumber get redirectCount;
}
