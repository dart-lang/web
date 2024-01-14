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
import 'geometry.dart';
import 'html.dart';
import 'screen_orientation.dart';

typedef GeometryNode = JSObject;
typedef ScrollBehavior = String;
typedef ScrollLogicalPosition = String;
typedef CSSBoxType = String;

@JS()
@staticInterop
@anonymous
class ScrollOptions {
  external factory ScrollOptions({ScrollBehavior behavior});
}

extension ScrollOptionsExtension on ScrollOptions {
  external set behavior(ScrollBehavior value);
  external ScrollBehavior get behavior;
}

@JS()
@staticInterop
@anonymous
class ScrollToOptions implements ScrollOptions {
  external factory ScrollToOptions({
    num left,
    num top,
  });
}

extension ScrollToOptionsExtension on ScrollToOptions {
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
@JS('MediaQueryList')
@staticInterop
class MediaQueryList implements EventTarget {}

extension MediaQueryListExtension on MediaQueryList {
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
@JS('MediaQueryListEvent')
@staticInterop
class MediaQueryListEvent implements Event {
  external factory MediaQueryListEvent(
    String type, [
    MediaQueryListEventInit eventInitDict,
  ]);
}

extension MediaQueryListEventExtension on MediaQueryListEvent {
  external String get media;
  external bool get matches;
}

@JS()
@staticInterop
@anonymous
class MediaQueryListEventInit implements EventInit {
  external factory MediaQueryListEventInit({
    String media,
    bool matches,
  });
}

extension MediaQueryListEventInitExtension on MediaQueryListEventInit {
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
@JS('Screen')
@staticInterop
class Screen {}

extension ScreenExtension on Screen {
  external int get availWidth;
  external int get availHeight;
  external int get width;
  external int get height;
  external int get colorDepth;
  external int get pixelDepth;
  external ScreenOrientation get orientation;
  external bool get isExtended;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

/// The `CaretPosition` interface represents the caret position, an indicator
/// for the text insertion point. You can get a `CaretPosition` using the
/// [Document.caretPositionFromPoint] method.
@JS('CaretPosition')
@staticInterop
class CaretPosition {}

extension CaretPositionExtension on CaretPosition {
  external DOMRect? getClientRect();
  external Node get offsetNode;
  external int get offset;
}

@JS()
@staticInterop
@anonymous
class ScrollIntoViewOptions implements ScrollOptions {
  external factory ScrollIntoViewOptions({
    ScrollLogicalPosition block,
    ScrollLogicalPosition inline,
  });
}

extension ScrollIntoViewOptionsExtension on ScrollIntoViewOptions {
  external set block(ScrollLogicalPosition value);
  external ScrollLogicalPosition get block;
  external set inline(ScrollLogicalPosition value);
  external ScrollLogicalPosition get inline;
}

@JS()
@staticInterop
@anonymous
class CheckVisibilityOptions {
  external factory CheckVisibilityOptions({
    bool checkOpacity,
    bool checkVisibilityCSS,
  });
}

extension CheckVisibilityOptionsExtension on CheckVisibilityOptions {
  external set checkOpacity(bool value);
  external bool get checkOpacity;
  external set checkVisibilityCSS(bool value);
  external bool get checkVisibilityCSS;
}

@JS()
@staticInterop
@anonymous
class BoxQuadOptions {
  external factory BoxQuadOptions({
    CSSBoxType box,
    GeometryNode relativeTo,
  });
}

extension BoxQuadOptionsExtension on BoxQuadOptions {
  external set box(CSSBoxType value);
  external CSSBoxType get box;
  external set relativeTo(GeometryNode value);
  external GeometryNode get relativeTo;
}

@JS()
@staticInterop
@anonymous
class ConvertCoordinateOptions {
  external factory ConvertCoordinateOptions({
    CSSBoxType fromBox,
    CSSBoxType toBox,
  });
}

extension ConvertCoordinateOptionsExtension on ConvertCoordinateOptions {
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
@JS('VisualViewport')
@staticInterop
class VisualViewport implements EventTarget {}

extension VisualViewportExtension on VisualViewport {
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
