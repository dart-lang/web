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

import 'mediacapture_streams.dart';
import 'streams.dart';

typedef MediaStreamTrackOrHandle = JSObject;
extension type MediaStreamTrackHandle._(JSObject _) implements JSObject {
  external factory MediaStreamTrackHandle(MediaStreamTrack track);
}

/// The **`MediaStreamTrackProcessor`** interface of the
/// [Insertable Streams for MediaStreamTrack API](https://developer.mozilla.org/en-US/docs/Web/API/Insertable_Streams_for_MediaStreamTrack_API)
/// consumes a [MediaStreamTrack] object's source and generates a stream of
/// media frames.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackProcessor).
extension type MediaStreamTrackProcessor._(JSObject _) implements JSObject {
  external factory MediaStreamTrackProcessor(
      MediaStreamTrackProcessorInit init);

  /// The **`readable`** property of the [MediaStreamTrackProcessor] interface
  /// returns a [ReadableStream].
  external ReadableStream get readable;
}
extension type MediaStreamTrackProcessorInit._(JSObject _) implements JSObject {
  external factory MediaStreamTrackProcessorInit({
    required MediaStreamTrackOrHandle track,
    int maxBufferSize,
  });

  external MediaStreamTrackOrHandle get track;
  external set track(MediaStreamTrackOrHandle value);
  external int get maxBufferSize;
  external set maxBufferSize(int value);
}
extension type VideoTrackGenerator._(JSObject _) implements JSObject {
  external factory VideoTrackGenerator();

  external WritableStream get writable;
  external bool get muted;
  external set muted(bool value);
  external MediaStreamTrack get track;
}
