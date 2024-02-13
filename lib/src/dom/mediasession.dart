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

typedef MediaSessionActionHandler = JSFunction;
typedef MediaSessionPlaybackState = String;
typedef MediaSessionAction = String;

/// The **`MediaSession`** interface of the [Media Session API] allows a web
/// page to provide custom behaviors for standard media playback interactions,
/// and to report metadata that can be sent by the user agent to the device or
/// operating system for presentation in standardized user interface elements.
///
/// For example, a smartphone might have a standard panel in its lock screen
/// that provides controls for media playback and information display. A browser
/// on the device can use `MediaSession` to make browser playback controllable
/// from that standard/global user interface.
extension type MediaSession._(JSObject _) implements JSObject {
  /// The **`setActionHandler()`** method of the [MediaSession] interface sets a
  /// handler for a media session action.
  /// These actions let a web app receive notifications when the user engages a
  /// device's built-in physical or onscreen media controls, such as play, stop,
  /// or seek buttons.
  external void setActionHandler(
    MediaSessionAction action,
    MediaSessionActionHandler? handler,
  );

  /// The **`setPositionState()`** method of the
  /// [MediaSession] interface is used to update the current
  /// document's media playback position and speed for presentation by user's
  /// device in any
  /// kind of interface that provides details about ongoing media. This can be
  /// particularly useful if your code implements a player for type of media not
  /// directly
  /// supported by the browser.
  ///
  /// Call this method on the `navigator` object's
  /// [navigator.mediaSession] object.
  external void setPositionState([MediaPositionState state]);

  /// The **`setMicrophoneActive()`** method of the [MediaSession] interface is
  /// used to indicate to the user agent whether the user's microphone is
  /// considered to be currently muted.
  ///
  /// Call this method on the `navigator` object's
  /// [navigator.mediaSession] object.
  ///
  /// Note that the status of the microphone is not tracked in the
  /// [MediaSession] itself, but must be tracked separately.
  external void setMicrophoneActive(bool active);

  /// The **`setCameraActive()`** method of the [MediaSession] interface is used
  /// to indicate to the user agent whether the user's camera is considered to
  /// be active.
  ///
  /// Call this method on the `navigator` object's
  /// [navigator.mediaSession] object.
  ///
  /// Note that the status of the camera is not tracked in the [MediaSession]
  /// itself, but must be tracked separately.
  external void setCameraActive(bool active);
  external set metadata(MediaMetadata? value);
  external MediaMetadata? get metadata;
  external set playbackState(MediaSessionPlaybackState value);
  external MediaSessionPlaybackState get playbackState;
}

/// The **`MediaMetadata`** interface of the [Media Session API] allows a web
/// page to provide rich media metadata for display in a platform UI.
extension type MediaMetadata._(JSObject _) implements JSObject {
  external factory MediaMetadata([MediaMetadataInit init]);

  external set title(String value);
  external String get title;
  external set artist(String value);
  external String get artist;
  external set album(String value);
  external String get album;
  external set artwork(JSArray<MediaImage> value);
  external JSArray<MediaImage> get artwork;
}
extension type MediaMetadataInit._(JSObject _) implements JSObject {
  external factory MediaMetadataInit({
    String title,
    String artist,
    String album,
    JSArray<MediaImage> artwork,
  });

  external set title(String value);
  external String get title;
  external set artist(String value);
  external String get artist;
  external set album(String value);
  external String get album;
  external set artwork(JSArray<MediaImage> value);
  external JSArray<MediaImage> get artwork;
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
