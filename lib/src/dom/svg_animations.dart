// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/svg.dart';

@JS('TimeEvent')
@staticInterop
class TimeEvent extends Event {
  external factory TimeEvent();
}

extension TimeEventExtension on TimeEvent {
  external Window? get view;
  external JSNumber get detail;
  external JSVoid initTimeEvent(
    JSString typeArg,
    Window? viewArg,
    JSNumber detailArg,
  );
}

@JS('SVGAnimationElement')
@staticInterop
class SVGAnimationElement extends SVGElement implements SVGTests {
  external factory SVGAnimationElement();
}

extension SVGAnimationElementExtension on SVGAnimationElement {
  external SVGElement? get targetElement;
  external set onbegin(EventHandler value);
  external EventHandler get onbegin;
  external set onend(EventHandler value);
  external EventHandler get onend;
  external set onrepeat(EventHandler value);
  external EventHandler get onrepeat;
  external JSNumber getStartTime();
  external JSNumber getCurrentTime();
  external JSNumber getSimpleDuration();
  external JSVoid beginElement();
  external JSVoid beginElementAt(JSNumber offset);
  external JSVoid endElement();
  external JSVoid endElementAt(JSNumber offset);
}

@JS('SVGAnimateElement')
@staticInterop
class SVGAnimateElement extends SVGAnimationElement {
  external factory SVGAnimateElement();
}

@JS('SVGSetElement')
@staticInterop
class SVGSetElement extends SVGAnimationElement {
  external factory SVGSetElement();
}

@JS('SVGAnimateMotionElement')
@staticInterop
class SVGAnimateMotionElement extends SVGAnimationElement {
  external factory SVGAnimateMotionElement();
}

@JS('SVGMPathElement')
@staticInterop
class SVGMPathElement extends SVGElement implements SVGURIReference {
  external factory SVGMPathElement();
}

@JS('SVGAnimateTransformElement')
@staticInterop
class SVGAnimateTransformElement extends SVGAnimationElement {
  external factory SVGAnimateTransformElement();
}

@JS('SVGDiscardElement')
@staticInterop
class SVGDiscardElement extends SVGAnimationElement {
  external factory SVGDiscardElement();
}
