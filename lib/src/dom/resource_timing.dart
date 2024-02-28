// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'performance_timeline.dart';
import 'server_timing.dart';

typedef RenderBlockingStatusType = String;

/// The **`PerformanceResourceTiming`** interface enables retrieval and analysis
/// of detailed network timing data regarding the loading of an application's
/// resources. An application can use the timing metrics to determine, for
/// example, the length of time it takes to fetch a specific resource, such as
/// an [XMLHttpRequest], , image, or script.
extension type PerformanceResourceTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceResourceTiming] interface is
  /// a ; it returns a JSON representation of the [PerformanceResourceTiming]
  /// object.
  external JSObject toJSON();
  external String get initiatorType;
  external String get deliveryType;
  external String get nextHopProtocol;
  external DOMHighResTimeStamp get workerStart;
  external DOMHighResTimeStamp get redirectStart;
  external DOMHighResTimeStamp get redirectEnd;
  external DOMHighResTimeStamp get fetchStart;
  external DOMHighResTimeStamp get domainLookupStart;
  external DOMHighResTimeStamp get domainLookupEnd;
  external DOMHighResTimeStamp get connectStart;
  external DOMHighResTimeStamp get connectEnd;
  external DOMHighResTimeStamp get secureConnectionStart;
  external DOMHighResTimeStamp get requestStart;
  external DOMHighResTimeStamp get firstInterimResponseStart;
  external DOMHighResTimeStamp get responseStart;
  external DOMHighResTimeStamp get responseEnd;
  external int get transferSize;
  external int get encodedBodySize;
  external int get decodedBodySize;
  external int get responseStatus;
  external RenderBlockingStatusType get renderBlockingStatus;
  external String get contentType;
  external JSArray<PerformanceServerTiming> get serverTiming;
}
