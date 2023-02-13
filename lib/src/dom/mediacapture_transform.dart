// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('MediaStreamTrackProcessor')
@staticInterop
class MediaStreamTrackProcessor {
  external factory MediaStreamTrackProcessor();
  external factory MediaStreamTrackProcessor.a1(
      MediaStreamTrackProcessorInit init);
}

extension MediaStreamTrackProcessorExtension on MediaStreamTrackProcessor {
  external ReadableStream get readable;
  external set readable(ReadableStream value);
}

@JS('MediaStreamTrackProcessorInit')
@staticInterop
class MediaStreamTrackProcessorInit {
  external factory MediaStreamTrackProcessorInit();
}

extension MediaStreamTrackProcessorInitExtension
    on MediaStreamTrackProcessorInit {
  // TODO
  // TODO
}

@JS('VideoTrackGenerator')
@staticInterop
class VideoTrackGenerator {
  external factory VideoTrackGenerator();
}

extension VideoTrackGeneratorExtension on VideoTrackGenerator {
  external WritableStream get writable;
  external JSBoolean get muted;
  external set muted(JSBoolean value);
  external MediaStreamTrack get track;
}
