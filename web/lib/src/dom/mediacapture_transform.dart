// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'mediacapture_streams.dart';
import 'streams.dart';

/// The **`MediaStreamTrackProcessor`** interface of the
/// [Insertable Streams for MediaStreamTrack API] consumes a [MediaStreamTrack]
/// object's source and generates a stream of media frames.
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
    required MediaStreamTrack track,
    int maxBufferSize,
  });

  external MediaStreamTrack get track;
  external set track(MediaStreamTrack value);
  external int get maxBufferSize;
  external set maxBufferSize(int value);
}
