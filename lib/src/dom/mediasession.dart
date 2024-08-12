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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaSession).
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

  /// The **`metadata`** property of the [MediaSession]
  /// interface contains a [MediaMetadata] object providing descriptive
  /// information about the currently playing media, or `null` if the metadata
  /// has
  /// not been set. This metadata is provided by the browser to the device for
  /// presentation in
  /// any standard media control user interface the device might offer.
  external MediaMetadata? get metadata;
  external set metadata(MediaMetadata? value);

  /// The **`playbackState`** property of the
  /// [MediaSession] interface indicates whether the current media session is
  /// playing or paused.
  external MediaSessionPlaybackState get playbackState;
  external set playbackState(MediaSessionPlaybackState value);
}

/// The **`MediaMetadata`** interface of the [Media Session API] allows a web
/// page to provide rich media metadata for display in a platform UI.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaMetadata).
extension type MediaMetadata._(JSObject _) implements JSObject {
  external factory MediaMetadata([MediaMetadataInit init]);

  /// The **`title`** property of the
  /// [MediaMetaData] interface returns or sets the title of the media to be
  /// played.
  external String get title;
  external set title(String value);

  /// The **`artist`** property of the
  /// [MediaMetaData] interface returns or sets the name of the artist, group,
  /// creator, etc., of the media to be played.
  external String get artist;
  external set artist(String value);

  /// The **`album`** property of the
  /// [MediaMetaData] interface returns or sets the name of the album or
  /// collection containing the media to be played.
  external String get album;
  external set album(String value);

  /// The **`artwork`** property of the
  /// [MediaMetaData] interface returns or sets an array of
  /// objects representing images associated with playing
  /// media.
  external JSArray<MediaImage> get artwork;
  external set artwork(JSArray<MediaImage> value);
}
extension type MediaMetadataInit._(JSObject _) implements JSObject {
  external factory MediaMetadataInit({
    String title,
    String artist,
    String album,
    JSArray<MediaImage> artwork,
    JSArray<ChapterInformationInit> chapterInfo,
  });

  external String get title;
  external set title(String value);
  external String get artist;
  external set artist(String value);
  external String get album;
  external set album(String value);
  external JSArray<MediaImage> get artwork;
  external set artwork(JSArray<MediaImage> value);
  external JSArray<ChapterInformationInit> get chapterInfo;
  external set chapterInfo(JSArray<ChapterInformationInit> value);
}
extension type ChapterInformationInit._(JSObject _) implements JSObject {
  external factory ChapterInformationInit({
    String title,
    num startTime,
    JSArray<MediaImage> artwork,
  });

  external String get title;
  external set title(String value);
  external double get startTime;
  external set startTime(num value);
  external JSArray<MediaImage> get artwork;
  external set artwork(JSArray<MediaImage> value);
}
extension type MediaImage._(JSObject _) implements JSObject {
  external factory MediaImage({
    required String src,
    String sizes,
    String type,
  });

  external String get src;
  external set src(String value);
  external String get sizes;
  external set sizes(String value);
  external String get type;
  external set type(String value);
}
extension type MediaPositionState._(JSObject _) implements JSObject {
  external factory MediaPositionState({
    num duration,
    num playbackRate,
    num position,
  });

  external double get duration;
  external set duration(num value);
  external double get playbackRate;
  external set playbackRate(num value);
  external double get position;
  external set position(num value);
}
