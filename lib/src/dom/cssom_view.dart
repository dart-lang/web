// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'screen_orientation.dart';

typedef GeometryNode = JSObject;
typedef ScrollBehavior = String;
typedef ScrollLogicalPosition = String;
typedef CSSBoxType = String;
extension type ScrollOptions._(JSObject _) implements JSObject {
  external factory ScrollOptions({ScrollBehavior behavior});

  external set behavior(ScrollBehavior value);
  external ScrollBehavior get behavior;
}
extension type ScrollToOptions._(JSObject _)
    implements ScrollOptions, JSObject {
  external factory ScrollToOptions({
    num left,
    num top,
  });

  external set left(num value);
  external num get left;
  external set top(num value);
  external num get top;
}

/// A **`MediaQueryList`** object stores information on a
/// [media query](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries)
/// applied to a document, with support for both immediate and event-driven
/// matching against the state of the document.
///
/// You can create a `MediaQueryList` by calling [Window.matchMedia] on the
/// [window] object. The resulting object handles sending notifications to
/// listeners when the media query state changes (i.e. when the media query test
/// starts or stops evaluating to `true`).
///
/// This is very useful for adaptive design, since this makes it possible to
/// observe a document to detect when its media queries change, instead of
/// polling the values periodically, and allows you to programmatically make
/// changes to a document based on media query status.
extension type MediaQueryList._(JSObject _) implements EventTarget, JSObject {
  /// The deprecated **`addListener()`** method of the
  /// [MediaQueryList] interface adds a listener to the
  /// `MediaQueryListener` that will run a custom callback function in response
  /// to
  /// the media query status changing.
  ///
  /// In older browsers `MediaQueryList` did not yet inherit from [EventTarget],
  /// so this method was provided as an alias of [EventTarget.addEventListener].
  /// Use `addEventListener()` instead of `addListener()` if it is
  /// available in the browsers you need to support.
  external void addListener(EventListener? callback);

  /// The **`removeListener()`** method of the
  /// [MediaQueryList] interface removes a listener from the
  /// `MediaQueryListener`.
  ///
  /// In older browsers `MediaQueryList` did not yet inherit from [EventTarget],
  /// so this method was provided as an alias of
  /// [EventTarget.removeEventListener].
  /// Use `removeEventListener()` instead of `removeListener()` if it is
  /// available in the browsers you need to support.
  external void removeListener(EventListener? callback);
  external String get media;
  external bool get matches;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

/// The `MediaQueryListEvent` object stores information on the changes that have
/// happened to a [MediaQueryList] object — instances are available as the event
/// object on a function referenced by a [MediaQueryList.change_event] event.
extension type MediaQueryListEvent._(JSObject _) implements Event, JSObject {
  external factory MediaQueryListEvent(
    String type, [
    MediaQueryListEventInit eventInitDict,
  ]);

  external String get media;
  external bool get matches;
}
extension type MediaQueryListEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaQueryListEventInit({
    String media,
    bool matches,
  });

  external set media(String value);
  external String get media;
  external set matches(bool value);
  external bool get matches;
}

/// The `Screen` interface represents a screen, usually the one on which the
/// current window is being rendered, and is obtained using [window.screen].
///
/// Note that browsers determine which screen to report as current by detecting
/// which screen has the center of the browser window.
extension type Screen._(JSObject _) implements JSObject {
  external int get availWidth;
  external int get availHeight;
  external int get width;
  external int get height;
  external int get colorDepth;
  external int get pixelDepth;
  external ScreenOrientation get orientation;
}

/// The `CaretPosition` interface represents the caret position, an indicator
/// for the text insertion point. You can get a `CaretPosition` using the
/// [Document.caretPositionFromPoint] method.
extension type CaretPosition._(JSObject _) implements JSObject {
  external DOMRect? getClientRect();
  external Node get offsetNode;
  external int get offset;
}
extension type ScrollIntoViewOptions._(JSObject _)
    implements ScrollOptions, JSObject {
  external factory ScrollIntoViewOptions({
    ScrollLogicalPosition block,
    ScrollLogicalPosition inline,
  });

  external set block(ScrollLogicalPosition value);
  external ScrollLogicalPosition get block;
  external set inline(ScrollLogicalPosition value);
  external ScrollLogicalPosition get inline;
}
extension type CheckVisibilityOptions._(JSObject _) implements JSObject {
  external factory CheckVisibilityOptions({
    bool checkOpacity,
    bool checkVisibilityCSS,
    bool contentVisibilityAuto,
    bool opacityProperty,
    bool visibilityProperty,
  });

  external set checkOpacity(bool value);
  external bool get checkOpacity;
  external set checkVisibilityCSS(bool value);
  external bool get checkVisibilityCSS;
  external set contentVisibilityAuto(bool value);
  external bool get contentVisibilityAuto;
  external set opacityProperty(bool value);
  external bool get opacityProperty;
  external set visibilityProperty(bool value);
  external bool get visibilityProperty;
}
extension type BoxQuadOptions._(JSObject _) implements JSObject {
  external factory BoxQuadOptions({
    CSSBoxType box,
    GeometryNode relativeTo,
  });

  external set box(CSSBoxType value);
  external CSSBoxType get box;
  external set relativeTo(GeometryNode value);
  external GeometryNode get relativeTo;
}
extension type ConvertCoordinateOptions._(JSObject _) implements JSObject {
  external factory ConvertCoordinateOptions({
    CSSBoxType fromBox,
    CSSBoxType toBox,
  });

  external set fromBox(CSSBoxType value);
  external CSSBoxType get fromBox;
  external set toBox(CSSBoxType value);
  external CSSBoxType get toBox;
}

/// The **`VisualViewport`** interface of the [Visual Viewport API] represents
/// the visual viewport for a given window. For a page containing iframes, each
/// iframe, as well as the containing page, will have a unique window object.
/// Each window on a page will have a unique `VisualViewport` representing the
/// properties associated with that window.
///
/// You can get a window's visual viewport using [Window.visualViewport].
///
/// > **Note:** Only the top-level window has a visual viewport that's distinct
/// > from the layout viewport. Therefore, it's generally only the
/// > `VisualViewport` object of the top-level window that's useful. For an
/// > `iframe`, visual viewport metrics like [VisualViewport.width] always
/// > correspond to layout viewport metrics like [Element.clientWidth].
extension type VisualViewport._(JSObject _) implements EventTarget, JSObject {
  external num get offsetLeft;
  external num get offsetTop;
  external num get pageLeft;
  external num get pageTop;
  external num get width;
  external num get height;
  external num get scale;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
  external set onscroll(EventHandler value);
  external EventHandler get onscroll;
  external set onscrollend(EventHandler value);
  external EventHandler get onscrollend;
}
