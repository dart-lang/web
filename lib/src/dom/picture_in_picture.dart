// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

extension type PictureInPictureWindow._(JSObject _)
    implements EventTarget, JSObject {}

extension PictureInPictureWindowExtension on PictureInPictureWindow {
  external int get width;
  external int get height;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
}

extension type PictureInPictureEvent._(JSObject _) implements Event, JSObject {
  external factory PictureInPictureEvent(
    String type,
    PictureInPictureEventInit eventInitDict,
  );
}

extension PictureInPictureEventExtension on PictureInPictureEvent {
  external PictureInPictureWindow get pictureInPictureWindow;
}

extension type PictureInPictureEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PictureInPictureEventInit(
      {required PictureInPictureWindow pictureInPictureWindow});
}

extension PictureInPictureEventInitExtension on PictureInPictureEventInit {
  external set pictureInPictureWindow(PictureInPictureWindow value);
  external PictureInPictureWindow get pictureInPictureWindow;
}
