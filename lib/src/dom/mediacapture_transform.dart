// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library mediacapture_transform;

import 'dart:js_interop';

import 'mediacapture_streams.dart';
import 'streams.dart';

extension type MediaStreamTrackProcessor._(JSObject _) implements JSObject {
  external factory MediaStreamTrackProcessor(
      MediaStreamTrackProcessorInit init);

  external set readable(ReadableStream value);
  external ReadableStream get readable;
}
extension type MediaStreamTrackProcessorInit._(JSObject _) implements JSObject {
  external factory MediaStreamTrackProcessorInit({
    required MediaStreamTrack track,
    int maxBufferSize,
  });

  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
  external set maxBufferSize(int value);
  external int get maxBufferSize;
}
extension type VideoTrackGenerator._(JSObject _) implements JSObject {
  external factory VideoTrackGenerator();

  external WritableStream get writable;
  external set muted(bool value);
  external bool get muted;
  external MediaStreamTrack get track;
}
