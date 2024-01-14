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

/// The **`DocumentPictureInPicture`** interface of the  is the entry point for
/// creating and handling document picture-in-picture windows.
///
/// It is accessed via the [Window.documentPictureInPicture] property.
@JS('DocumentPictureInPicture')
@staticInterop
class DocumentPictureInPicture implements EventTarget {}

extension DocumentPictureInPictureExtension on DocumentPictureInPicture {
  /// The **`requestWindow()`** method of the
  /// [DocumentPictureInPicture] interface opens the Picture-in-Picture window
  /// for the current main browsing context. It returns a `Promise` that
  /// fulfills with a [Window] instance representing the browsing context inside
  /// the Picture-in-Picture window.
  ///
  /// The `requestWindow()` method requires
  /// [transient activation](https://developer.mozilla.org/en-US/docs/Glossary/Transient_activation),
  /// i.e. it must be invoked in response to a user action such as a mouse click
  /// or button press.
  external JSPromise requestWindow([DocumentPictureInPictureOptions options]);
  external Window get window;
  external set onenter(EventHandler value);
  external EventHandler get onenter;
}

@JS()
@staticInterop
@anonymous
class DocumentPictureInPictureOptions {
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

/// The **`DocumentPictureInPictureEvent`** interface of the  is the event
/// object for the [DocumentPictureInPicture/enter_event] event, which fires
/// when the Picture-in-Picture window is opened.
@JS('DocumentPictureInPictureEvent')
@staticInterop
class DocumentPictureInPictureEvent implements Event {
  external factory DocumentPictureInPictureEvent(
    String type,
    DocumentPictureInPictureEventInit eventInitDict,
  );
}

extension DocumentPictureInPictureEventExtension
    on DocumentPictureInPictureEvent {
  external Window get window;
}

@JS()
@staticInterop
@anonymous
class DocumentPictureInPictureEventInit implements EventInit {
  external factory DocumentPictureInPictureEventInit({required Window window});
}

extension DocumentPictureInPictureEventInitExtension
    on DocumentPictureInPictureEventInit {
  external set window(Window value);
  external Window get window;
}
