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
@JS('PictureInPictureWindow')
@staticInterop
class PictureInPictureWindow implements EventTarget {}

extension PictureInPictureWindowExtension on PictureInPictureWindow {
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
@JS('PictureInPictureEvent')
@staticInterop
class PictureInPictureEvent implements Event {
  external factory PictureInPictureEvent(
    String type,
    PictureInPictureEventInit eventInitDict,
  );
}

extension PictureInPictureEventExtension on PictureInPictureEvent {
  external PictureInPictureWindow get pictureInPictureWindow;
}

@JS()
@staticInterop
@anonymous
class PictureInPictureEventInit implements EventInit {
  external factory PictureInPictureEventInit(
      {required PictureInPictureWindow pictureInPictureWindow});
}

extension PictureInPictureEventInitExtension on PictureInPictureEventInit {
  external set pictureInPictureWindow(PictureInPictureWindow value);
  external PictureInPictureWindow get pictureInPictureWindow;
}
