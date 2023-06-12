// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'svg.dart';

@JS('TimeEvent')
@staticInterop
class TimeEvent implements Event {}

extension TimeEventExtension on TimeEvent {
  external JSVoid initTimeEvent(
    String typeArg,
    Window? viewArg,
    int detailArg,
  );
  external Window? get view;
  external int get detail;
}

@JS('SVGAnimationElement')
@staticInterop
class SVGAnimationElement implements SVGElement, SVGTests {}

extension SVGAnimationElementExtension on SVGAnimationElement {
  external double getStartTime();
  external double getCurrentTime();
  external double getSimpleDuration();
  external JSVoid beginElement();
  external JSVoid beginElementAt(double offset);
  external JSVoid endElement();
  external JSVoid endElementAt(double offset);
  external SVGElement? get targetElement;
  external set onbegin(EventHandler value);
  external EventHandler get onbegin;
  external set onend(EventHandler value);
  external EventHandler get onend;
  external set onrepeat(EventHandler value);
  external EventHandler get onrepeat;
}

@JS('SVGAnimateElement')
@staticInterop
class SVGAnimateElement implements SVGAnimationElement {}

@JS('SVGSetElement')
@staticInterop
class SVGSetElement implements SVGAnimationElement {}

@JS('SVGAnimateMotionElement')
@staticInterop
class SVGAnimateMotionElement implements SVGAnimationElement {}

@JS('SVGMPathElement')
@staticInterop
class SVGMPathElement implements SVGElement, SVGURIReference {}

@JS('SVGAnimateTransformElement')
@staticInterop
class SVGAnimateTransformElement implements SVGAnimationElement {}

@JS('SVGDiscardElement')
@staticInterop
class SVGDiscardElement implements SVGAnimationElement {}
