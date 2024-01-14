// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'mediacapture_streams.dart';
import 'streams.dart';

/// The **`MediaStreamTrackProcessor`** interface of the
/// [Insertable Streams for MediaStreamTrack API] consumes a [MediaStreamTrack]
/// object's source and generates a stream of media frames.
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
    int maxBufferSize,
  });
}

extension MediaStreamTrackProcessorInitExtension
    on MediaStreamTrackProcessorInit {
  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
  external set maxBufferSize(int value);
  external int get maxBufferSize;
}

@JS('VideoTrackGenerator')
@staticInterop
class VideoTrackGenerator {
  external factory VideoTrackGenerator();
}

extension VideoTrackGeneratorExtension on VideoTrackGenerator {
  external WritableStream get writable;
  external set muted(bool value);
  external bool get muted;
  external MediaStreamTrack get track;
}
