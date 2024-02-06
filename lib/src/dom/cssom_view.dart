// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
extension type MediaQueryList._(JSObject _) implements EventTarget, JSObject {
  external void addListener(EventListener? callback);
  external void removeListener(EventListener? callback);
  external String get media;
  external bool get matches;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
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
extension type Screen._(JSObject _) implements JSObject {
  external int get availWidth;
  external int get availHeight;
  external int get width;
  external int get height;
  external int get colorDepth;
  external int get pixelDepth;
  external ScreenOrientation get orientation;
}
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
  });

  external set checkOpacity(bool value);
  external bool get checkOpacity;
  external set checkVisibilityCSS(bool value);
  external bool get checkVisibilityCSS;
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
