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

import 'dom.dart';
import 'html.dart';

/// The **`PictureInPictureWindow`** interface represents an object able to
/// programmatically obtain the **`width`** and **`height`** and **`resize
/// event`** of the floating video window.
///
/// An object with this interface is obtained using the
/// [HTMLVideoElement.requestPictureInPicture] promise return value.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PictureInPictureWindow).
extension type PictureInPictureWindow._(JSObject _)
    implements EventTarget, JSObject {
  /// The read-only **`width`** property of the [PictureInPictureWindow]
  /// inbterface returns the width of the floating video window in pixels.
  external int get width;

  /// The read-only **`height`** property of the [PictureInPictureWindow]
  /// interface returns the height of the floating video window in pixels.
  external int get height;
  external EventHandler get onresize;
  external set onresize(EventHandler value);
}

/// The **`PictureInPictureEvent`** interface represents
/// picture-in-picture-related events, including
/// [HTMLVideoElement.enterpictureinpicture_event],
/// [HTMLVideoElement.leavepictureinpicture_event] and
/// [PictureInPictureWindow.resize_event]
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PictureInPictureEvent).
extension type PictureInPictureEvent._(JSObject _) implements Event, JSObject {
  external factory PictureInPictureEvent(
    String type,
    PictureInPictureEventInit eventInitDict,
  );

  /// The read-only **`pictureInPictureWindow`** property of the
  /// [PictureInPictureEvent] interface returns the [PictureInPictureWindow] the
  /// event relates to.
  external PictureInPictureWindow get pictureInPictureWindow;
}
extension type PictureInPictureEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PictureInPictureEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required PictureInPictureWindow pictureInPictureWindow,
  });

  external PictureInPictureWindow get pictureInPictureWindow;
  external set pictureInPictureWindow(PictureInPictureWindow value);
}
