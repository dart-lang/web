// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'html.dart';
import 'web_animations.dart';

typedef AnimatorInstanceConstructor = JSFunction;
extension type AnimationWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
  external void registerAnimator(
    String name,
    AnimatorInstanceConstructor animatorCtor,
  );
}
extension type WorkletAnimationEffect._(JSObject _) implements JSObject {
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external double? get localTime;
  external set localTime(num? value);
}
extension type WorkletAnimation._(JSObject _) implements Animation, JSObject {
  external factory WorkletAnimation(
    String animatorName, [
    JSObject? effects,
    AnimationTimeline? timeline,
    JSAny? options,
  ]);

  external String get animatorName;
}
extension type WorkletGroupEffect._(JSObject _) implements JSObject {
  external JSArray<WorkletAnimationEffect> getChildren();
}
