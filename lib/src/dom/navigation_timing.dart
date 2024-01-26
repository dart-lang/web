// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';
import 'resource_timing.dart';

typedef NavigationTimingType = String;
extension type PerformanceNavigationTiming._(JSObject _)
    implements PerformanceResourceTiming, JSObject {
  /// The **`toJSON()`** method of the [PerformanceNavigationTiming] interface
  /// is a ; it returns a JSON representation of the
  /// [PerformanceNavigationTiming] object.
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
  external int get redirectCount;
  external DOMHighResTimeStamp get criticalCHRestart;
  external DOMHighResTimeStamp get activationStart;
}
extension type PerformanceTiming._(JSObject _) implements JSObject {
  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy **`toJSON()`** method of the [PerformanceTiming] interface is a
  /// ; it returns a JSON representation of the [PerformanceTiming] object.
  external JSObject toJSON();
  external int get navigationStart;
  external int get unloadEventStart;
  external int get unloadEventEnd;
  external int get redirectStart;
  external int get redirectEnd;
  external int get fetchStart;
  external int get domainLookupStart;
  external int get domainLookupEnd;
  external int get connectStart;
  external int get connectEnd;
  external int get secureConnectionStart;
  external int get requestStart;
  external int get responseStart;
  external int get responseEnd;
  external int get domLoading;
  external int get domInteractive;
  external int get domContentLoadedEventStart;
  external int get domContentLoadedEventEnd;
  external int get domComplete;
  external int get loadEventStart;
  external int get loadEventEnd;
}
extension type PerformanceNavigation._(JSObject _) implements JSObject {
  external static int get TYPE_NAVIGATE;
  external static int get TYPE_RELOAD;
  external static int get TYPE_BACK_FORWARD;
  external static int get TYPE_RESERVED;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The **`toJSON()`** method of the [PerformanceNavigation] interface is a ;
  /// it returns a JSON representation of the [PerformanceNavigation] object.
  external JSObject toJSON();
  external int get type;
  external int get redirectCount;
}
