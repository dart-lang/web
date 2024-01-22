// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'svg.dart';

extension type TimeEvent._(JSObject _) implements Event, JSObject {
  external void initTimeEvent(
    String typeArg,
    Window? viewArg,
    int detailArg,
  );
  external Window? get view;
  external int get detail;
}
extension type SVGAnimationElement._(JSObject _)
    implements SVGElement, JSObject {
  external num getStartTime();
  external num getCurrentTime();
  external num getSimpleDuration();
  external void beginElement();
  external void beginElementAt(num offset);
  external void endElement();
  external void endElementAt(num offset);
  external SVGElement? get targetElement;
  external set onbegin(EventHandler value);
  external EventHandler get onbegin;
  external set onend(EventHandler value);
  external EventHandler get onend;
  external set onrepeat(EventHandler value);
  external EventHandler get onrepeat;
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}
extension type SVGAnimateElement._(JSObject _)
    implements SVGAnimationElement, JSObject {}
extension type SVGSetElement._(JSObject _)
    implements SVGAnimationElement, JSObject {}
extension type SVGAnimateMotionElement._(JSObject _)
    implements SVGAnimationElement, JSObject {}
extension type SVGMPathElement._(JSObject _) implements SVGElement, JSObject {
  external SVGAnimatedString get href;
}
extension type SVGAnimateTransformElement._(JSObject _)
    implements SVGAnimationElement, JSObject {}
extension type SVGDiscardElement._(JSObject _)
    implements SVGAnimationElement, JSObject {}
