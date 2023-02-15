// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/fileapi.dart';
import 'package:web/src/dom/hr_time.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/mediacapture_streams.dart';

typedef BitrateMode = JSString;
typedef RecordingState = JSString;

@JS('MediaRecorder')
@staticInterop
class MediaRecorder extends EventTarget {
  external factory MediaRecorder();

  external factory MediaRecorder.a1(MediaStream stream);

  external factory MediaRecorder.a2(
    MediaStream stream,
    MediaRecorderOptions options,
  );

  external static JSBoolean isTypeSupported(JSString type);
}

extension MediaRecorderExtension on MediaRecorder {
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
  external JSVoid start();
  external JSVoid start1(JSNumber timeslice);
  external JSVoid stop();
  external JSVoid pause();
  external JSVoid resume();
  external JSVoid requestData();
}

@JS('MediaRecorderOptions')
@staticInterop
class MediaRecorderOptions {
  external factory MediaRecorderOptions();
}

extension MediaRecorderOptionsExtension on MediaRecorderOptions {}

@JS('BlobEvent')
@staticInterop
class BlobEvent extends Event {
  external factory BlobEvent();

  external factory BlobEvent.a1(
    JSString type,
    BlobEventInit eventInitDict,
  );
}

extension BlobEventExtension on BlobEvent {
  external Blob get data;
  external DOMHighResTimeStamp get timecode;
}

@JS('BlobEventInit')
@staticInterop
class BlobEventInit {
  external factory BlobEventInit();
}

extension BlobEventInitExtension on BlobEventInit {}
