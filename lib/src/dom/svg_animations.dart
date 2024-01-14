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
import 'html.dart';
import 'svg.dart';

/// The **`TimeEvent`** interface, a part of
/// [SVG SMIL](https://developer.mozilla.org/en-US/docs/Web/SVG/SVG_animation_with_SMIL)
/// animation, provides specific contextual information associated with Time
/// events.
@JS('TimeEvent')
@staticInterop
class TimeEvent implements Event {}

extension TimeEventExtension on TimeEvent {
  external void initTimeEvent(
    String typeArg,
    Window? viewArg,
    int detailArg,
  );
  external Window? get view;
  external int get detail;
}

/// The **`SVGAnimationElement`** interface is the base interface for all of the
/// animation element interfaces: [SVGAnimateElement], [SVGSetElement],
/// [SVGAnimateColorElement], [SVGAnimateMotionElement] and
/// [SVGAnimateTransformElement].
@JS('SVGAnimationElement')
@staticInterop
class SVGAnimationElement implements SVGElement {}

extension SVGAnimationElementExtension on SVGAnimationElement {
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

/// The **`SVGAnimateElement`** interface corresponds to the  element.
@JS('SVGAnimateElement')
@staticInterop
class SVGAnimateElement implements SVGAnimationElement {}

/// The **`SVGSetElement`** interface corresponds to the  element.
@JS('SVGSetElement')
@staticInterop
class SVGSetElement implements SVGAnimationElement {}

/// The **`SVGAnimateMotionElement`** interface corresponds to the  element.
@JS('SVGAnimateMotionElement')
@staticInterop
class SVGAnimateMotionElement implements SVGAnimationElement {}

/// The **`SVGMPathElement`** interface corresponds to the  element.
@JS('SVGMPathElement')
@staticInterop
class SVGMPathElement implements SVGElement {}

extension SVGMPathElementExtension on SVGMPathElement {
  external SVGAnimatedString get href;
}

/// The `SVGAnimateTransformElement` interface corresponds to the  element.
@JS('SVGAnimateTransformElement')
@staticInterop
class SVGAnimateTransformElement implements SVGAnimationElement {}

@JS('SVGDiscardElement')
@staticInterop
class SVGDiscardElement implements SVGAnimationElement {}
