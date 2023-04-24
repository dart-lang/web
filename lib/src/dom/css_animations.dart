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
    JSString type, [
    AnimationEventInit animationEventInitDict,
  ]);
}

extension AnimationEventExtension on AnimationEvent {
  external JSString get animationName;
  external JSNumber get elapsedTime;
  external JSString get pseudoElement;
}

@JS()
@staticInterop
@anonymous
class AnimationEventInit implements EventInit {
  external factory AnimationEventInit({
    JSString animationName,
    JSNumber elapsedTime,
    JSString pseudoElement,
  });
}

extension AnimationEventInitExtension on AnimationEventInit {
  external set animationName(JSString value);
  external JSString get animationName;
  external set elapsedTime(JSNumber value);
  external JSNumber get elapsedTime;
  external set pseudoElement(JSString value);
  external JSString get pseudoElement;
}

@JS('CSSKeyframeRule')
@staticInterop
class CSSKeyframeRule implements CSSRule {}

extension CSSKeyframeRuleExtension on CSSKeyframeRule {
  external set keyText(JSString value);
  external JSString get keyText;
  external CSSStyleDeclaration get style;
}

@JS('CSSKeyframesRule')
@staticInterop
class CSSKeyframesRule implements CSSRule {}

extension CSSKeyframesRuleExtension on CSSKeyframesRule {
  external JSVoid appendRule(JSString rule);
  external JSVoid deleteRule(JSString select);
  external CSSKeyframeRule? findRule(JSString select);
  external set name(JSString value);
  external JSString get name;
  external CSSRuleList get cssRules;
  external JSNumber get length;
}
