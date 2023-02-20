// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'hr_time.dart';

typedef VideoFrameRequestCallback = JSFunction;

@JS()
@staticInterop
@anonymous
class VideoFrameCallbackMetadata {
  external factory VideoFrameCallbackMetadata({
    required DOMHighResTimeStamp presentationTime,
    required DOMHighResTimeStamp expectedDisplayTime,
    required JSNumber width,
    required JSNumber height,
    required JSNumber mediaTime,
    required JSNumber presentedFrames,
    JSNumber processingDuration,
    DOMHighResTimeStamp captureTime,
    DOMHighResTimeStamp receiveTime,
    JSNumber rtpTimestamp,
  });
}

extension VideoFrameCallbackMetadataExtension on VideoFrameCallbackMetadata {
  external set presentationTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get presentationTime;
  external set expectedDisplayTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get expectedDisplayTime;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set mediaTime(JSNumber value);
  external JSNumber get mediaTime;
  external set presentedFrames(JSNumber value);
  external JSNumber get presentedFrames;
  external set processingDuration(JSNumber value);
  external JSNumber get processingDuration;
  external set captureTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get captureTime;
  external set receiveTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get receiveTime;
  external set rtpTimestamp(JSNumber value);
  external JSNumber get rtpTimestamp;
}
