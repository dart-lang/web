// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

/// The **`PictureInPictureWindow`** interface represents an object able to
/// programmatically obtain the **`width`** and **`height`** and **`resize
/// event`** of the floating video window.
///
/// An object with this interface is obtained using the
/// [HTMLVideoElement.requestPictureInPicture] promise return value.
extension type PictureInPictureWindow._(JSObject _)
    implements EventTarget, JSObject {
  external int get width;
  external int get height;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
}

/// The **`PictureInPictureEvent`** interface represents
/// picture-in-picture-related events, including
/// [HTMLVideoElement/enterpictureinpicture_event],
/// [HTMLVideoElement/leavepictureinpicture_event] and
/// [PictureInPictureWindow/resize_event]
extension type PictureInPictureEvent._(JSObject _) implements Event, JSObject {
  external factory PictureInPictureEvent(
    String type,
    PictureInPictureEventInit eventInitDict,
  );

  external PictureInPictureWindow get pictureInPictureWindow;
}
extension type PictureInPictureEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PictureInPictureEventInit(
      {required PictureInPictureWindow pictureInPictureWindow});

  external set pictureInPictureWindow(PictureInPictureWindow value);
  external PictureInPictureWindow get pictureInPictureWindow;
}
