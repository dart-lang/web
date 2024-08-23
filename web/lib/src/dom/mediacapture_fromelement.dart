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

import 'html.dart';
import 'mediacapture_streams.dart';

/// The **`CanvasCaptureMediaStreamTrack`** interface of the
/// [Media Capture and Streams API] represents the video track contained in a
/// [MediaStream] being generated from a `canvas` following a call to
/// [HTMLCanvasElement.captureStream].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CanvasCaptureMediaStreamTrack).
extension type CanvasCaptureMediaStreamTrack._(JSObject _)
    implements MediaStreamTrack, JSObject {
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

  /// The **`canvas`** read-only property of the [CanvasCaptureMediaStreamTrack]
  /// interface returns the [HTMLCanvasElement] from which frames are being
  /// captured.
  external HTMLCanvasElement get canvas;
}
