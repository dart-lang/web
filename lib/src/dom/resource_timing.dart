// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef RenderBlockingStatusType = JSString;

@JS('PerformanceResourceTiming')
@staticInterop
class PerformanceResourceTiming extends PerformanceEntry {
  external factory PerformanceResourceTiming();
}

extension PerformanceResourceTimingExtension on PerformanceResourceTiming {
  external JSString get initiatorType;
  external JSString get nextHopProtocol;
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
  external DOMHighResTimeStamp get responseStart;
  external DOMHighResTimeStamp get responseEnd;
  external JSNumber get transferSize;
  external JSNumber get encodedBodySize;
  external JSNumber get decodedBodySize;
  external JSNumber get responseStatus;
  external RenderBlockingStatusType get renderBlockingStatus;
  external JSObject toJSON();
  external JSArray get serverTiming;
}
