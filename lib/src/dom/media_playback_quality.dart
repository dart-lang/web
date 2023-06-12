// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

@JS('VideoPlaybackQuality')
@staticInterop
class VideoPlaybackQuality implements JSObject {}

extension VideoPlaybackQualityExtension on VideoPlaybackQuality {
  external DOMHighResTimeStamp get creationTime;
  external int get droppedVideoFrames;
  external int get totalVideoFrames;
  external int get corruptedVideoFrames;
}
