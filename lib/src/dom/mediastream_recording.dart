// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'fileapi.dart';
import 'hr_time.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

typedef BitrateMode = JSString;
typedef RecordingState = JSString;

@JS('MediaRecorder')
@staticInterop
class MediaRecorder implements EventTarget {
  external factory MediaRecorder(
    MediaStream stream, [
    MediaRecorderOptions options,
  ]);

  external static JSBoolean isTypeSupported(JSString type);
}

extension MediaRecorderExtension on MediaRecorder {
  external JSVoid start([JSNumber timeslice]);
  external JSVoid stop();
  external JSVoid pause();
  external JSVoid resume();
  external JSVoid requestData();
  external MediaStream get stream;
  external JSString get mimeType;
  external RecordingState get state;
  external set onstart(EventHandler value);
  external EventHandler get onstart;
  external set onstop(EventHandler value);
  external EventHandler get onstop;
  external set ondataavailable(EventHandler value);
  external EventHandler get ondataavailable;
  external set onpause(EventHandler value);
  external EventHandler get onpause;
  external set onresume(EventHandler value);
  external EventHandler get onresume;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external JSNumber get videoBitsPerSecond;
  external JSNumber get audioBitsPerSecond;
  external BitrateMode get audioBitrateMode;
}

@JS()
@staticInterop
@anonymous
class MediaRecorderOptions implements JSObject {
  external factory MediaRecorderOptions({
    JSString mimeType,
    JSNumber audioBitsPerSecond,
    JSNumber videoBitsPerSecond,
    JSNumber bitsPerSecond,
    BitrateMode audioBitrateMode,
    DOMHighResTimeStamp videoKeyFrameIntervalDuration,
    JSNumber videoKeyFrameIntervalCount,
  });
}

extension MediaRecorderOptionsExtension on MediaRecorderOptions {
  external set mimeType(JSString value);
  external JSString get mimeType;
  external set audioBitsPerSecond(JSNumber value);
  external JSNumber get audioBitsPerSecond;
  external set videoBitsPerSecond(JSNumber value);
  external JSNumber get videoBitsPerSecond;
  external set bitsPerSecond(JSNumber value);
  external JSNumber get bitsPerSecond;
  external set audioBitrateMode(BitrateMode value);
  external BitrateMode get audioBitrateMode;
  external set videoKeyFrameIntervalDuration(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get videoKeyFrameIntervalDuration;
  external set videoKeyFrameIntervalCount(JSNumber value);
  external JSNumber get videoKeyFrameIntervalCount;
}

@JS('BlobEvent')
@staticInterop
class BlobEvent implements Event {
  external factory BlobEvent(
    JSString type,
    BlobEventInit eventInitDict,
  );
}

extension BlobEventExtension on BlobEvent {
  external Blob get data;
  external DOMHighResTimeStamp get timecode;
}

@JS()
@staticInterop
@anonymous
class BlobEventInit implements JSObject {
  external factory BlobEventInit({
    required Blob data,
    DOMHighResTimeStamp timecode,
  });
}

extension BlobEventInitExtension on BlobEventInit {
  external set data(Blob value);
  external Blob get data;
  external set timecode(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timecode;
}
