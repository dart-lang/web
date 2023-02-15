// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/cssom.dart';
import 'package:web/src/dom/dom.dart';

@JS('AnimationEvent')
@staticInterop
class AnimationEvent extends Event {
  external factory AnimationEvent();

  external factory AnimationEvent.a1(JSString type);

  external factory AnimationEvent.a2(
    JSString type,
    AnimationEventInit animationEventInitDict,
  );
}

extension AnimationEventExtension on AnimationEvent {
  external JSString get animationName;
  external JSNumber get elapsedTime;
  external JSString get pseudoElement;
}

@JS('AnimationEventInit')
@staticInterop
class AnimationEventInit extends EventInit {
  external factory AnimationEventInit();
}

extension AnimationEventInitExtension on AnimationEventInit {}

@JS('CSSKeyframeRule')
@staticInterop
class CSSKeyframeRule extends CSSRule {
  external factory CSSKeyframeRule();
}

extension CSSKeyframeRuleExtension on CSSKeyframeRule {
  external set keyText(JSString value);
  external JSString get keyText;
  external CSSStyleDeclaration get style;
}

@JS('CSSKeyframesRule')
@staticInterop
class CSSKeyframesRule extends CSSRule {
  external factory CSSKeyframesRule();
}

extension CSSKeyframesRuleExtension on CSSKeyframesRule {
  external set name(JSString value);
  external JSString get name;
  external CSSRuleList get cssRules;
  external JSNumber get length;
  external JSVoid appendRule(JSString rule);
  external JSVoid deleteRule(JSString select);
  external CSSKeyframeRule? findRule(JSString select);
}
