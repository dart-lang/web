// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';

/// A **`VideoPlaybackQuality`** object is returned by the
/// [HTMLVideoElement.getVideoPlaybackQuality] method and contains metrics that
/// can be used to determine the playback quality of a video.
extension type VideoPlaybackQuality._(JSObject _) implements JSObject {
  external DOMHighResTimeStamp get creationTime;
  external int get droppedVideoFrames;
  external int get totalVideoFrames;
  external int get corruptedVideoFrames;
}
