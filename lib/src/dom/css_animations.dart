// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'cssom.dart';
import 'dom.dart';

/// The **`AnimationEvent`** interface represents events providing information
/// related to
/// [animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animations/Using_CSS_animations).
extension type AnimationEvent._(JSObject _) implements Event, JSObject {
  external factory AnimationEvent(
    String type, [
    AnimationEventInit animationEventInitDict,
  ]);

  external String get animationName;
  external num get elapsedTime;
  external String get pseudoElement;
}
extension type AnimationEventInit._(JSObject _) implements EventInit, JSObject {
  external factory AnimationEventInit({
    String animationName,
    num elapsedTime,
    String pseudoElement,
  });

  external set animationName(String value);
  external String get animationName;
  external set elapsedTime(num value);
  external num get elapsedTime;
  external set pseudoElement(String value);
  external String get pseudoElement;
}

/// The **`CSSKeyframeRule`** interface describes an object representing a set
/// of styles for a given keyframe. It corresponds to the contents of a single
/// keyframe of a
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
extension type CSSKeyframeRule._(JSObject _) implements CSSRule, JSObject {
  external set keyText(String value);
  external String get keyText;
  external CSSStyleDeclaration get style;
}

/// The **`CSSKeyframesRule`** interface describes an object representing a
/// complete set of keyframes for a CSS animation. It corresponds to the
/// contents of a whole
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
extension type CSSKeyframesRule._(JSObject _) implements CSSRule, JSObject {
  /// The **`appendRule()`** method of the [CSSKeyframeRule] interface appends a
  /// [CSSKeyFrameRule] to the end of the rules.
  external void appendRule(String rule);

  /// The **`deleteRule()`** method of the [CSSKeyframeRule] interface deletes
  /// the [CSSKeyFrameRule] that matches the specified keyframe selector.
  external void deleteRule(String select);

  /// The **`findRule()`** method of the [CSSKeyframeRule] interface finds the
  /// [CSSKeyFrameRule] that matches the specified keyframe selector.
  external CSSKeyframeRule? findRule(String select);
  external set name(String value);
  external String get name;
  external CSSRuleList get cssRules;
  external int get length;
}
