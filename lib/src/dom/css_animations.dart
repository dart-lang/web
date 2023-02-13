// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('AnimationEvent')
@staticInterop
class AnimationEvent extends Event {
  external factory AnimationEvent();
  external factory AnimationEvent.a1(JSString type);
  external factory AnimationEvent.a1_1(
      JSString type, AnimationEventInit animationEventInitDict);
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

extension AnimationEventInitExtension on AnimationEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('CSSKeyframeRule')
@staticInterop
class CSSKeyframeRule extends CSSRule {
  external factory CSSKeyframeRule();
}

extension CSSKeyframeRuleExtension on CSSKeyframeRule {
  external JSString get keyText;
  external set keyText(JSString value);
  external CSSStyleDeclaration get style;
}

@JS('CSSKeyframesRule')
@staticInterop
class CSSKeyframesRule extends CSSRule {
  external factory CSSKeyframesRule();
}

extension CSSKeyframesRuleExtension on CSSKeyframesRule {
  external JSString get name;
  external set name(JSString value);
  external CSSRuleList get cssRules;
  external JSNumber get length;
  external JSUndefined appendRule(JSString rule);
  external JSUndefined deleteRule(JSString select);
  external CSSKeyframeRule? findRule(JSString select);
}
