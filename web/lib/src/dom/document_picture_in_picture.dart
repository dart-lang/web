// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

/// The **`DocumentPictureInPicture`** interface of the  is the entry point for
/// creating and handling document picture-in-picture windows.
///
/// It is accessed via the [Window.documentPictureInPicture] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DocumentPictureInPicture).
extension type DocumentPictureInPicture._(JSObject _)
    implements EventTarget, JSObject {
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
  external JSPromise<Window> requestWindow(
      [DocumentPictureInPictureOptions options]);

  /// The **`window`** read-only property of the
  /// [DocumentPictureInPicture] interface returns a [Window] instance
  /// representing the browsing context inside the Picture-in-Picture window.
  external Window get window;
  external EventHandler get onenter;
  external set onenter(EventHandler value);
}
extension type DocumentPictureInPictureOptions._(JSObject _)
    implements JSObject {
  external factory DocumentPictureInPictureOptions({
    int width,
    int height,
    bool disallowReturnToOpener,
    bool preferInitialWindowPlacement,
  });

  external int get width;
  external set width(int value);
  external int get height;
  external set height(int value);
  external bool get disallowReturnToOpener;
  external set disallowReturnToOpener(bool value);
  external bool get preferInitialWindowPlacement;
  external set preferInitialWindowPlacement(bool value);
}

/// The **`DocumentPictureInPictureEvent`** interface of the  is the event
/// object for the [DocumentPictureInPicture.enter_event] event, which fires
/// when the Picture-in-Picture window is opened.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DocumentPictureInPictureEvent).
extension type DocumentPictureInPictureEvent._(JSObject _)
    implements Event, JSObject {
  external factory DocumentPictureInPictureEvent(
    String type,
    DocumentPictureInPictureEventInit eventInitDict,
  );

  /// The **`window`** read-only property of the
  /// [DocumentPictureInPictureEvent] interface returns a [Window] instance
  /// representing the browsing context inside the `DocumentPictureInPicture`
  /// window the event was fired on.
  external Window get window;
}
extension type DocumentPictureInPictureEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory DocumentPictureInPictureEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required Window window,
  });

  external Window get window;
  external set window(Window value);
}
