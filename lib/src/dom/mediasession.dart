// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef MediaSessionActionHandler = JSFunction;
typedef MediaSessionPlaybackState = JSString;
typedef MediaSessionAction = JSString;

@JS('MediaSession')
@staticInterop
class MediaSession {
  external factory MediaSession();
}

extension MediaSessionExtension on MediaSession {
  external set metadata(MediaMetadata? value);
  external MediaMetadata? get metadata;
  external set playbackState(MediaSessionPlaybackState value);
  external MediaSessionPlaybackState get playbackState;
  external JSVoid setActionHandler(
    MediaSessionAction action,
    MediaSessionActionHandler? handler,
  );
  external JSVoid setPositionState();
  external JSVoid setPositionState1(MediaPositionState state);
  external JSVoid setMicrophoneActive(JSBoolean active);
  external JSVoid setCameraActive(JSBoolean active);
}

@JS('MediaMetadata')
@staticInterop
class MediaMetadata {
  external factory MediaMetadata();

  external factory MediaMetadata.a1();

  external factory MediaMetadata.a2(MediaMetadataInit init);
}

extension MediaMetadataExtension on MediaMetadata {
  external set title(JSString value);
  external JSString get title;
  external set artist(JSString value);
  external JSString get artist;
  external set album(JSString value);
  external JSString get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}

@JS('MediaMetadataInit')
@staticInterop
class MediaMetadataInit {
  external factory MediaMetadataInit();
}

extension MediaMetadataInitExtension on MediaMetadataInit {}

@JS('MediaImage')
@staticInterop
class MediaImage {
  external factory MediaImage();
}

extension MediaImageExtension on MediaImage {}

@JS('MediaPositionState')
@staticInterop
class MediaPositionState {
  external factory MediaPositionState();
}

extension MediaPositionStateExtension on MediaPositionState {}

@JS('MediaSessionActionDetails')
@staticInterop
class MediaSessionActionDetails {
  external factory MediaSessionActionDetails();
}

extension MediaSessionActionDetailsExtension on MediaSessionActionDetails {}
