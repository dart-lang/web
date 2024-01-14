// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'html.dart';
import 'mediacapture_streams.dart';

/// The **`CanvasCaptureMediaStreamTrack`** interface of the
/// [Media Capture and Streams API] represents the video track contained in a
/// [MediaStream] being generated from a `canvas` following a call to
/// [HTMLCanvasElement.captureStream].
@JS('CanvasCaptureMediaStreamTrack')
@staticInterop
class CanvasCaptureMediaStreamTrack implements MediaStreamTrack {}

extension CanvasCaptureMediaStreamTrackExtension
    on CanvasCaptureMediaStreamTrack {
  /// The **`requestFrame()`** method of the [CanvasCaptureMediaStreamTrack]
  /// interface requests that a frame be captured from the canvas and sent to
  /// the stream.
  ///
  /// Applications that need to carefully control
  /// the timing of rendering and frame capture can use `requestFrame()` to
  /// directly specify when it's time to capture a frame.
  ///
  /// To prevent automatic capture of frames, so that frames are only captured
  /// when
  /// `requestFrame()` is called, specify a value of 0 for the
  /// [HTMLCanvasElement.captureStream] method when creating
  /// the stream.
  external void requestFrame();
  external HTMLCanvasElement get canvas;
}
