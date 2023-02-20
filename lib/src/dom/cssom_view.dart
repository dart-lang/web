// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'screen_orientation.dart';

typedef GeometryNode = JSAny;
typedef ScrollBehavior = JSString;
typedef ScrollLogicalPosition = JSString;
typedef CSSBoxType = JSString;

@JS()
@staticInterop
@anonymous
class ScrollOptions {
  external factory ScrollOptions({ScrollBehavior behavior = 'auto'});
}

extension ScrollOptionsExtension on ScrollOptions {
  external set behavior(ScrollBehavior value);
  external ScrollBehavior get behavior;
}

@JS()
@staticInterop
@anonymous
class ScrollToOptions extends ScrollOptions {
  external factory ScrollToOptions({
    JSNumber left,
    JSNumber top,
  });
}

extension ScrollToOptionsExtension on ScrollToOptions {
  external set left(JSNumber value);
  external JSNumber get left;
  external set top(JSNumber value);
  external JSNumber get top;
}

@JS('MediaQueryList')
@staticInterop
class MediaQueryList extends EventTarget {
  external factory MediaQueryList();
}

extension MediaQueryListExtension on MediaQueryList {
  external JSString get media;
  external JSBoolean get matches;
  external JSVoid addListener(EventListener? callback);
  external JSVoid removeListener(EventListener? callback);
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS('MediaQueryListEvent')
@staticInterop
class MediaQueryListEvent extends Event {
  external factory MediaQueryListEvent();

  external factory MediaQueryListEvent.a1(JSString type);

  external factory MediaQueryListEvent.a2(
    JSString type,
    MediaQueryListEventInit eventInitDict,
  );
}

extension MediaQueryListEventExtension on MediaQueryListEvent {
  external JSString get media;
  external JSBoolean get matches;
}

@JS()
@staticInterop
@anonymous
class MediaQueryListEventInit extends EventInit {
  external factory MediaQueryListEventInit({
    JSString media = '',
    JSBoolean matches = false,
  });
}

extension MediaQueryListEventInitExtension on MediaQueryListEventInit {
  external set media(JSString value);
  external JSString get media;
  external set matches(JSBoolean value);
  external JSBoolean get matches;
}

@JS('Screen')
@staticInterop
class Screen {
  external factory Screen();
}

extension ScreenExtension on Screen {
  external JSNumber get availWidth;
  external JSNumber get availHeight;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get colorDepth;
  external JSNumber get pixelDepth;
  external ScreenOrientation get orientation;
  external JSBoolean get isExtended;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS('CaretPosition')
@staticInterop
class CaretPosition {
  external factory CaretPosition();
}

extension CaretPositionExtension on CaretPosition {
  external Node get offsetNode;
  external JSNumber get offset;
  external DOMRect? getClientRect();
}

@JS()
@staticInterop
@anonymous
class ScrollIntoViewOptions extends ScrollOptions {
  external factory ScrollIntoViewOptions({
    ScrollLogicalPosition block = 'start',
    ScrollLogicalPosition inline = 'nearest',
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
    JSBoolean checkOpacity = false,
    JSBoolean checkVisibilityCSS = false,
  });
}

extension CheckVisibilityOptionsExtension on CheckVisibilityOptions {
  external set checkOpacity(JSBoolean value);
  external JSBoolean get checkOpacity;
  external set checkVisibilityCSS(JSBoolean value);
  external JSBoolean get checkVisibilityCSS;
}

@JS()
@staticInterop
@anonymous
class BoxQuadOptions {
  external factory BoxQuadOptions({
    CSSBoxType box = 'border',
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
    CSSBoxType fromBox = 'border',
    CSSBoxType toBox = 'border',
  });
}

extension ConvertCoordinateOptionsExtension on ConvertCoordinateOptions {
  external set fromBox(CSSBoxType value);
  external CSSBoxType get fromBox;
  external set toBox(CSSBoxType value);
  external CSSBoxType get toBox;
}

@JS('GeometryUtils')
@staticInterop
class GeometryUtils {
  external factory GeometryUtils();
}

extension GeometryUtilsExtension on GeometryUtils {
  external JSArray getBoxQuads();
  external JSArray getBoxQuads1(BoxQuadOptions options);
  external DOMQuad convertQuadFromNode(
    DOMQuadInit quad,
    GeometryNode from,
  );
  external DOMQuad convertQuadFromNode1(
    DOMQuadInit quad,
    GeometryNode from,
    ConvertCoordinateOptions options,
  );
  external DOMQuad convertRectFromNode(
    DOMRectReadOnly rect,
    GeometryNode from,
  );
  external DOMQuad convertRectFromNode1(
    DOMRectReadOnly rect,
    GeometryNode from,
    ConvertCoordinateOptions options,
  );
  external DOMPoint convertPointFromNode(
    DOMPointInit point,
    GeometryNode from,
  );
  external DOMPoint convertPointFromNode1(
    DOMPointInit point,
    GeometryNode from,
    ConvertCoordinateOptions options,
  );
}

@JS('VisualViewport')
@staticInterop
class VisualViewport extends EventTarget {
  external factory VisualViewport();
}

extension VisualViewportExtension on VisualViewport {
  external JSNumber get offsetLeft;
  external JSNumber get offsetTop;
  external JSNumber get pageLeft;
  external JSNumber get pageTop;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get scale;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
  external set onscroll(EventHandler value);
  external EventHandler get onscroll;
  external set onscrollend(EventHandler value);
  external EventHandler get onscrollend;
}
