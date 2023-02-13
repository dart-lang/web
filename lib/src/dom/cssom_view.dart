// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef GeometryNode = JSAny;
typedef ScrollBehavior = JSString;
typedef ScrollLogicalPosition = JSString;
typedef CSSBoxType = JSString;

@JS('ScrollOptions')
@staticInterop
class ScrollOptions {
  external factory ScrollOptions();
}

extension ScrollOptionsExtension on ScrollOptions {
  // TODO
}

@JS('ScrollToOptions')
@staticInterop
class ScrollToOptions extends ScrollOptions {
  external factory ScrollToOptions();
}

extension ScrollToOptionsExtension on ScrollToOptions {
  // TODO
  // TODO
}

@JS('MediaQueryList')
@staticInterop
class MediaQueryList extends EventTarget {
  external factory MediaQueryList();
}

extension MediaQueryListExtension on MediaQueryList {
  external JSString get media;
  external JSBoolean get matches;
  external JSUndefined addListener(EventListener? callback);
  external JSUndefined removeListener(EventListener? callback);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('MediaQueryListEvent')
@staticInterop
class MediaQueryListEvent extends Event {
  external factory MediaQueryListEvent();
  external factory MediaQueryListEvent.a1(JSString type);
  external factory MediaQueryListEvent.a1_1(
      JSString type, MediaQueryListEventInit eventInitDict);
}

extension MediaQueryListEventExtension on MediaQueryListEvent {
  external JSString get media;
  external JSBoolean get matches;
}

@JS('MediaQueryListEventInit')
@staticInterop
class MediaQueryListEventInit extends EventInit {
  external factory MediaQueryListEventInit();
}

extension MediaQueryListEventInitExtension on MediaQueryListEventInit {
  // TODO
  // TODO
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
  external EventHandler get onchange;
  external set onchange(EventHandler value);
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

@JS('ScrollIntoViewOptions')
@staticInterop
class ScrollIntoViewOptions extends ScrollOptions {
  external factory ScrollIntoViewOptions();
}

extension ScrollIntoViewOptionsExtension on ScrollIntoViewOptions {
  // TODO
  // TODO
}

@JS('CheckVisibilityOptions')
@staticInterop
class CheckVisibilityOptions {
  external factory CheckVisibilityOptions();
}

extension CheckVisibilityOptionsExtension on CheckVisibilityOptions {
  // TODO
  // TODO
}

@JS('BoxQuadOptions')
@staticInterop
class BoxQuadOptions {
  external factory BoxQuadOptions();
}

extension BoxQuadOptionsExtension on BoxQuadOptions {
  // TODO
  // TODO
}

@JS('ConvertCoordinateOptions')
@staticInterop
class ConvertCoordinateOptions {
  external factory ConvertCoordinateOptions();
}

extension ConvertCoordinateOptionsExtension on ConvertCoordinateOptions {
  // TODO
  // TODO
}

@JS('GeometryUtils')
@staticInterop
class GeometryUtils {
  external factory GeometryUtils();
}

extension GeometryUtilsExtension on GeometryUtils {
  external JSArray getBoxQuads();
  external JSArray getBoxQuads_1(BoxQuadOptions options);
  external DOMQuad convertQuadFromNode(DOMQuadInit quad, GeometryNode from);
  external DOMQuad convertQuadFromNode_1(
      DOMQuadInit quad, GeometryNode from, ConvertCoordinateOptions options);
  external DOMQuad convertRectFromNode(DOMRectReadOnly rect, GeometryNode from);
  external DOMQuad convertRectFromNode_1(DOMRectReadOnly rect,
      GeometryNode from, ConvertCoordinateOptions options);
  external DOMPoint convertPointFromNode(DOMPointInit point, GeometryNode from);
  external DOMPoint convertPointFromNode_1(
      DOMPointInit point, GeometryNode from, ConvertCoordinateOptions options);
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
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
}
