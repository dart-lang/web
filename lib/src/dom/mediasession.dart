// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef MediaSessionActionHandler = JSFunction;
typedef MediaSessionPlaybackState = JSString;
typedef MediaSessionAction = JSString;

@JS('MediaSession')
@staticInterop
class MediaSession {
  external factory MediaSession();
}

extension MediaSessionExtension on MediaSession {
  external MediaMetadata? get metadata;
  external set metadata(MediaMetadata? value);
  external MediaSessionPlaybackState get playbackState;
  external set playbackState(MediaSessionPlaybackState value);
  external JSUndefined setActionHandler(
      MediaSessionAction action, MediaSessionActionHandler? handler);
  external JSUndefined setPositionState();
  external JSUndefined setPositionState_1(MediaPositionState state);
  external JSUndefined setMicrophoneActive(JSBoolean active);
  external JSUndefined setCameraActive(JSBoolean active);
}

@JS('MediaMetadata')
@staticInterop
class MediaMetadata {
  external factory MediaMetadata();
  external factory MediaMetadata.a1();
  external factory MediaMetadata.a1_1(MediaMetadataInit init);
}

extension MediaMetadataExtension on MediaMetadata {
  external JSString get title;
  external set title(JSString value);
  external JSString get artist;
  external set artist(JSString value);
  external JSString get album;
  external set album(JSString value);
  external JSArray get artwork;
  external set artwork(JSArray value);
}

@JS('MediaMetadataInit')
@staticInterop
class MediaMetadataInit {
  external factory MediaMetadataInit();
}

extension MediaMetadataInitExtension on MediaMetadataInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaImage')
@staticInterop
class MediaImage {
  external factory MediaImage();
}

extension MediaImageExtension on MediaImage {
  // TODO
  // TODO
  // TODO
}

@JS('MediaPositionState')
@staticInterop
class MediaPositionState {
  external factory MediaPositionState();
}

extension MediaPositionStateExtension on MediaPositionState {
  // TODO
  // TODO
  // TODO
}

@JS('MediaSessionActionDetails')
@staticInterop
class MediaSessionActionDetails {
  external factory MediaSessionActionDetails();
}

extension MediaSessionActionDetailsExtension on MediaSessionActionDetails {
  // TODO
  // TODO
  // TODO
  // TODO
}
