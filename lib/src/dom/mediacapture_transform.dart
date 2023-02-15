// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/mediacapture_streams.dart';
import 'package:web/src/dom/streams.dart';

@JS('MediaStreamTrackProcessor')
@staticInterop
class MediaStreamTrackProcessor {
  external factory MediaStreamTrackProcessor();

  external factory MediaStreamTrackProcessor.a1(
      MediaStreamTrackProcessorInit init);
}

extension MediaStreamTrackProcessorExtension on MediaStreamTrackProcessor {
  external set readable(ReadableStream value);
  external ReadableStream get readable;
}

@JS('MediaStreamTrackProcessorInit')
@staticInterop
class MediaStreamTrackProcessorInit {
  external factory MediaStreamTrackProcessorInit();
}

extension MediaStreamTrackProcessorInitExtension
    on MediaStreamTrackProcessorInit {}

@JS('VideoTrackGenerator')
@staticInterop
class VideoTrackGenerator {
  external factory VideoTrackGenerator.a0();
}

extension VideoTrackGeneratorExtension on VideoTrackGenerator {
  external WritableStream get writable;
  external set muted(JSBoolean value);
  external JSBoolean get muted;
  external MediaStreamTrack get track;
}
