// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

extension type DocumentPictureInPicture._(JSObject _)
    implements EventTarget, JSObject {}

extension DocumentPictureInPictureExtension on DocumentPictureInPicture {
  external JSPromise requestWindow([DocumentPictureInPictureOptions options]);
  external Window get window;
  external set onenter(EventHandler value);
  external EventHandler get onenter;
}

extension type DocumentPictureInPictureOptions._(JSObject _)
    implements JSObject {
  external factory DocumentPictureInPictureOptions({
    int width,
    int height,
  });
}

extension DocumentPictureInPictureOptionsExtension
    on DocumentPictureInPictureOptions {
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
}

extension type DocumentPictureInPictureEvent._(JSObject _)
    implements Event, JSObject {
  external factory DocumentPictureInPictureEvent(
    String type,
    DocumentPictureInPictureEventInit eventInitDict,
  );
}

extension DocumentPictureInPictureEventExtension
    on DocumentPictureInPictureEvent {
  external Window get window;
}

extension type DocumentPictureInPictureEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory DocumentPictureInPictureEventInit({required Window window});
}

extension DocumentPictureInPictureEventInitExtension
    on DocumentPictureInPictureEventInit {
  external set window(Window value);
  external Window get window;
}
