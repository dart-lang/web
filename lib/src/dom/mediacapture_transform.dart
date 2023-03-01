// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'mediacapture_streams.dart';
import 'streams.dart';

@JS('MediaStreamTrackProcessor')
@staticInterop
class MediaStreamTrackProcessor {
  external factory MediaStreamTrackProcessor(
      MediaStreamTrackProcessorInit init);
}

extension MediaStreamTrackProcessorExtension on MediaStreamTrackProcessor {
  external set readable(ReadableStream value);
  external ReadableStream get readable;
}

@JS()
@staticInterop
@anonymous
class MediaStreamTrackProcessorInit {
  external factory MediaStreamTrackProcessorInit({
    required MediaStreamTrack track,
    JSNumber maxBufferSize,
  });
}

extension MediaStreamTrackProcessorInitExtension
    on MediaStreamTrackProcessorInit {
  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
  external set maxBufferSize(JSNumber value);
  external JSNumber get maxBufferSize;
}

@JS('VideoTrackGenerator')
@staticInterop
class VideoTrackGenerator {
  external factory VideoTrackGenerator();
}

extension VideoTrackGeneratorExtension on VideoTrackGenerator {
  external WritableStream get writable;
  external set muted(JSBoolean value);
  external JSBoolean get muted;
  external MediaStreamTrack get track;
}
