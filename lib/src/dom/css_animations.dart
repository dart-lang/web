// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'cssom.dart';
import 'dom.dart';

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
extension type CSSKeyframeRule._(JSObject _) implements CSSRule, JSObject {
  external set keyText(String value);
  external String get keyText;
  external CSSStyleDeclaration get style;
}
extension type CSSKeyframesRule._(JSObject _) implements CSSRule, JSObject {
  external void appendRule(String rule);
  external void deleteRule(String select);
  external CSSKeyframeRule? findRule(String select);
  external set name(String value);
  external String get name;
  external CSSRuleList get cssRules;
  external int get length;
}
