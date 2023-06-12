// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef MediaSessionActionHandler = JSFunction;
typedef MediaSessionPlaybackState = String;
typedef MediaSessionAction = String;

@JS('MediaSession')
@staticInterop
class MediaSession implements JSObject {}

extension MediaSessionExtension on MediaSession {
  external JSVoid setActionHandler(
    MediaSessionAction action,
    MediaSessionActionHandler? handler,
  );
  external JSVoid setPositionState([MediaPositionState state]);
  external JSVoid setMicrophoneActive(bool active);
  external JSVoid setCameraActive(bool active);
  external set metadata(MediaMetadata? value);
  external MediaMetadata? get metadata;
  external set playbackState(MediaSessionPlaybackState value);
  external MediaSessionPlaybackState get playbackState;
}

@JS('MediaMetadata')
@staticInterop
class MediaMetadata implements JSObject {
  external factory MediaMetadata([MediaMetadataInit init]);
}

extension MediaMetadataExtension on MediaMetadata {
  external set title(String value);
  external String get title;
  external set artist(String value);
  external String get artist;
  external set album(String value);
  external String get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}

@JS()
@staticInterop
@anonymous
class MediaMetadataInit implements JSObject {
  external factory MediaMetadataInit({
    String title,
    String artist,
    String album,
    JSArray artwork,
  });
}

extension MediaMetadataInitExtension on MediaMetadataInit {
  external set title(String value);
  external String get title;
  external set artist(String value);
  external String get artist;
  external set album(String value);
  external String get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}

@JS()
@staticInterop
@anonymous
class MediaImage implements JSObject {
  external factory MediaImage({
    required String src,
    String sizes,
    String type,
  });
}

extension MediaImageExtension on MediaImage {
  external set src(String value);
  external String get src;
  external set sizes(String value);
  external String get sizes;
  external set type(String value);
  external String get type;
}

@JS()
@staticInterop
@anonymous
class MediaPositionState implements JSObject {
  external factory MediaPositionState({
    double duration,
    double playbackRate,
    double position,
  });
}

extension MediaPositionStateExtension on MediaPositionState {
  external set duration(double value);
  external double get duration;
  external set playbackRate(double value);
  external double get playbackRate;
  external set position(double value);
  external double get position;
}

@JS()
@staticInterop
@anonymous
class MediaSessionActionDetails implements JSObject {
  external factory MediaSessionActionDetails({
    required MediaSessionAction action,
    double seekOffset,
    double seekTime,
    bool fastSeek,
  });
}

extension MediaSessionActionDetailsExtension on MediaSessionActionDetails {
  external set action(MediaSessionAction value);
  external MediaSessionAction get action;
  external set seekOffset(double value);
  external double get seekOffset;
  external set seekTime(double value);
  external double get seekTime;
  external set fastSeek(bool value);
  external bool get fastSeek;
}
