// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

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
  external set localTime(num? value);
  external num? get localTime;
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
