// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/screen_orientation.dart';

typedef GeometryNode = JSAny;
typedef ScrollBehavior = JSString;
typedef ScrollLogicalPosition = JSString;
typedef CSSBoxType = JSString;

@JS('ScrollOptions')
@staticInterop
class ScrollOptions {
  external factory ScrollOptions();
}

extension ScrollOptionsExtension on ScrollOptions {}

@JS('ScrollToOptions')
@staticInterop
class ScrollToOptions extends ScrollOptions {
  external factory ScrollToOptions();
}

extension ScrollToOptionsExtension on ScrollToOptions {}

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

@JS('MediaQueryListEventInit')
@staticInterop
class MediaQueryListEventInit extends EventInit {
  external factory MediaQueryListEventInit();
}

extension MediaQueryListEventInitExtension on MediaQueryListEventInit {}

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

@JS('ScrollIntoViewOptions')
@staticInterop
class ScrollIntoViewOptions extends ScrollOptions {
  external factory ScrollIntoViewOptions();
}

extension ScrollIntoViewOptionsExtension on ScrollIntoViewOptions {}

@JS('CheckVisibilityOptions')
@staticInterop
class CheckVisibilityOptions {
  external factory CheckVisibilityOptions();
}

extension CheckVisibilityOptionsExtension on CheckVisibilityOptions {}

@JS('BoxQuadOptions')
@staticInterop
class BoxQuadOptions {
  external factory BoxQuadOptions();
}

extension BoxQuadOptionsExtension on BoxQuadOptions {}

@JS('ConvertCoordinateOptions')
@staticInterop
class ConvertCoordinateOptions {
  external factory ConvertCoordinateOptions();
}

extension ConvertCoordinateOptionsExtension on ConvertCoordinateOptions {}

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
