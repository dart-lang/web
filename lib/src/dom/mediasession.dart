// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef MediaSessionActionHandler = JSFunction;
typedef MediaSessionPlaybackState = String;
typedef MediaSessionAction = String;
extension type MediaSession._(JSObject _) implements JSObject {
  external void setActionHandler(
    MediaSessionAction action,
    MediaSessionActionHandler? handler,
  );
  external void setPositionState([MediaPositionState state]);
  external void setMicrophoneActive(bool active);
  external void setCameraActive(bool active);
  external set metadata(MediaMetadata? value);
  external MediaMetadata? get metadata;
  external set playbackState(MediaSessionPlaybackState value);
  external MediaSessionPlaybackState get playbackState;
}
extension type MediaMetadata._(JSObject _) implements JSObject {
  external factory MediaMetadata([MediaMetadataInit init]);

  external set title(String value);
  external String get title;
  external set artist(String value);
  external String get artist;
  external set album(String value);
  external String get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}
extension type MediaMetadataInit._(JSObject _) implements JSObject {
  external factory MediaMetadataInit({
    String title,
    String artist,
    String album,
    JSArray artwork,
  });

  external set title(String value);
  external String get title;
  external set artist(String value);
  external String get artist;
  external set album(String value);
  external String get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}
extension type MediaImage._(JSObject _) implements JSObject {
  external factory MediaImage({
    required String src,
    String sizes,
    String type,
  });

  external set src(String value);
  external String get src;
  external set sizes(String value);
  external String get sizes;
  external set type(String value);
  external String get type;
}
extension type MediaPositionState._(JSObject _) implements JSObject {
  external factory MediaPositionState({
    num duration,
    num playbackRate,
    num position,
  });

  external set duration(num value);
  external num get duration;
  external set playbackRate(num value);
  external num get playbackRate;
  external set position(num value);
  external num get position;
}
extension type MediaSessionActionDetails._(JSObject _) implements JSObject {
  external factory MediaSessionActionDetails({
    required MediaSessionAction action,
    num seekOffset,
    num seekTime,
    bool fastSeek,
  });

  external set action(MediaSessionAction value);
  external MediaSessionAction get action;
  external set seekOffset(num value);
  external num get seekOffset;
  external set seekTime(num value);
  external num get seekTime;
  external set fastSeek(bool value);
  external bool get fastSeek;
}
