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

/// A **`VideoPlaybackQuality`** object is returned by the
/// [HTMLVideoElement.getVideoPlaybackQuality] method and contains metrics that
/// can be used to determine the playback quality of a video.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality).
extension type VideoPlaybackQuality._(JSObject _) implements JSObject {
  /// The read-only **`creationTime`** property on the
  /// [VideoPlaybackQuality] interface reports the number of milliseconds since
  /// the browsing context was created this quality sample was recorded.
  external double get creationTime;

  /// The read-only **`droppedVideoFrames`**
  /// property of the [VideoPlaybackQuality] interface returns the number of
  /// video frames which have been dropped rather than being displayed since the
  /// last time
  /// the media was loaded into the [HTMLVideoElement].
  external int get droppedVideoFrames;

  /// The [VideoPlaybackQuality] interface's
  /// **`totalVideoFrames`** read-only property returns the total
  /// number of video frames that have been displayed or dropped since the media
  /// was
  /// loaded.
  external int get totalVideoFrames;

  /// The [VideoPlaybackQuality] interface's read-only
  /// **`corruptedVideoFrames`** property the number of corrupted
  /// video frames that have been received since the `video` element was
  /// last loaded or reloaded.
  external int get corruptedVideoFrames;
}
