// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';

typedef VideoFrameRequestCallback = JSFunction;
extension type VideoFrameCallbackMetadata._(JSObject _) implements JSObject {
  external factory VideoFrameCallbackMetadata({
    required DOMHighResTimeStamp presentationTime,
    required DOMHighResTimeStamp expectedDisplayTime,
    required int width,
    required int height,
    required num mediaTime,
    required int presentedFrames,
    num processingDuration,
    DOMHighResTimeStamp captureTime,
    DOMHighResTimeStamp receiveTime,
    int rtpTimestamp,
  });

  external double get presentationTime;
  external set presentationTime(DOMHighResTimeStamp value);
  external double get expectedDisplayTime;
  external set expectedDisplayTime(DOMHighResTimeStamp value);
  external int get width;
  external set width(int value);
  external int get height;
  external set height(int value);
  external double get mediaTime;
  external set mediaTime(num value);
  external int get presentedFrames;
  external set presentedFrames(int value);
  external double get processingDuration;
  external set processingDuration(num value);
  external double get captureTime;
  external set captureTime(DOMHighResTimeStamp value);
  external double get receiveTime;
  external set receiveTime(DOMHighResTimeStamp value);
  external int get rtpTimestamp;
  external set rtpTimestamp(int value);
}
