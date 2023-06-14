// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'cssom.dart';
import 'dom.dart';

@JS('AnimationEvent')
@staticInterop
class AnimationEvent implements Event {
  external factory AnimationEvent(
    String type, [
    AnimationEventInit animationEventInitDict,
  ]);
}

extension AnimationEventExtension on AnimationEvent {
  external String get animationName;
  external double get elapsedTime;
  external String get pseudoElement;
}

@JS()
@staticInterop
@anonymous
class AnimationEventInit implements EventInit {
  external factory AnimationEventInit({
    String animationName,
    double elapsedTime,
    String pseudoElement,
  });
}

extension AnimationEventInitExtension on AnimationEventInit {
  external set animationName(String value);
  external String get animationName;
  external set elapsedTime(double value);
  external double get elapsedTime;
  external set pseudoElement(String value);
  external String get pseudoElement;
}

@JS('CSSKeyframeRule')
@staticInterop
class CSSKeyframeRule implements CSSRule {}

extension CSSKeyframeRuleExtension on CSSKeyframeRule {
  external set keyText(String value);
  external String get keyText;
  external CSSStyleDeclaration get style;
}

@JS('CSSKeyframesRule')
@staticInterop
class CSSKeyframesRule implements CSSRule {}

extension CSSKeyframesRuleExtension on CSSKeyframesRule {
  external JSVoid appendRule(String rule);
  external JSVoid deleteRule(String select);
  external CSSKeyframeRule? findRule(String select);
  external set name(String value);
  external String get name;
  external CSSRuleList get cssRules;
  external int get length;
}
