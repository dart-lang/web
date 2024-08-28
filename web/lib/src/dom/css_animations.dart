// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'cssom.dart';
import 'dom.dart';

/// The **`AnimationEvent`** interface represents events providing information
/// related to
/// [animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animations/Using_CSS_animations).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent).
extension type AnimationEvent._(JSObject _) implements Event, JSObject {
  external factory AnimationEvent(
    String type, [
    AnimationEventInit animationEventInitDict,
  ]);

  /// The **`AnimationEvent.animationName`** read-only property is a
  /// string containing the value of the  CSS
  /// property associated with the transition.
  external String get animationName;

  /// The **`AnimationEvent.elapsedTime`** read-only property is a
  /// `float` giving the amount of time the animation has been running, in
  /// seconds,
  /// when this event fired, excluding any time the animation was paused. For an
  /// [Element.animationstart_event] event,
  /// `elapsedTime` is `0.0` unless there was a negative value for
  /// , in which case the event will be fired with
  /// `elapsedTime` containing `(-1 * delay)`.
  external double get elapsedTime;

  /// The **`AnimationEvent.pseudoElement`** read-only property is a
  /// string, starting with `'::'`, containing the name of the
  /// [pseudo-element](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-elements)
  /// the animation runs on.
  /// If the animation doesn't run on a pseudo-element but on the element, an
  /// empty string: `''`.
  external String get pseudoElement;
}
extension type AnimationEventInit._(JSObject _) implements EventInit, JSObject {
  external factory AnimationEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String animationName,
    num elapsedTime,
    String pseudoElement,
  });

  external String get animationName;
  external set animationName(String value);
  external double get elapsedTime;
  external set elapsedTime(num value);
  external String get pseudoElement;
  external set pseudoElement(String value);
}

/// The **`CSSKeyframeRule`** interface describes an object representing a set
/// of styles for a given keyframe. It corresponds to the contents of a single
/// keyframe of a
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule).
extension type CSSKeyframeRule._(JSObject _) implements CSSRule, JSObject {
  /// The **`keyText`** property of the [CSSKeyframeRule] interface represents
  /// the keyframe selector as a comma-separated list of percentage values. The
  /// from and to keywords map to 0% and 100%, respectively.
  external String get keyText;
  external set keyText(String value);

  /// The read-only **`CSSKeyframeRule.style`** property is the
  /// [CSSStyleDeclaration] interface for the
  /// [declaration block](https://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#block)
  /// of the [CSSKeyframeRule].
  external JSObject get style;
}

/// The **`CSSKeyframesRule`** interface describes an object representing a
/// complete set of keyframes for a CSS animation. It corresponds to the
/// contents of a whole
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule).
extension type CSSKeyframesRule._(JSObject _) implements CSSRule, JSObject {
  external CSSKeyframeRule operator [](int index);

  /// The **`appendRule()`** method of the [CSSKeyframeRule] interface appends a
  /// [CSSKeyFrameRule] to the end of the rules.
  external void appendRule(String rule);

  /// The **`deleteRule()`** method of the [CSSKeyframeRule] interface deletes
  /// the [CSSKeyFrameRule] that matches the specified keyframe selector.
  external void deleteRule(String select);

  /// The **`findRule()`** method of the [CSSKeyframeRule] interface finds the
  /// [CSSKeyFrameRule] that matches the specified keyframe selector.
  external CSSKeyframeRule? findRule(String select);

  /// The **`name`** property of the [CSSKeyframeRule] interface gets and sets
  /// the name of the animation as used by the  property.
  external String get name;
  external set name(String value);

  /// The read-only **`cssRules`** property of the [CSSKeyframeRule] interface
  /// returns a [CSSRuleList] containing the rules in the keyframes
  /// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
  external CSSRuleList get cssRules;
  external int get length;
}
