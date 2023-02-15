// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'html.dart';
import 'web_animations.dart';

typedef AnimatorInstanceConstructor = JSFunction;

@JS('AnimationWorkletGlobalScope')
@staticInterop
class AnimationWorkletGlobalScope extends WorkletGlobalScope {
  external factory AnimationWorkletGlobalScope();
}

extension AnimationWorkletGlobalScopeExtension on AnimationWorkletGlobalScope {
  external JSVoid registerAnimator(
    JSString name,
    AnimatorInstanceConstructor animatorCtor,
  );
}

@JS('WorkletAnimationEffect')
@staticInterop
class WorkletAnimationEffect {
  external factory WorkletAnimationEffect();
}

extension WorkletAnimationEffectExtension on WorkletAnimationEffect {
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external set localTime(JSNumber? value);
  external JSNumber? get localTime;
}

@JS('WorkletAnimation')
@staticInterop
class WorkletAnimation extends Animation {
  external factory WorkletAnimation();

  external factory WorkletAnimation.a1(JSString animatorName);

  external factory WorkletAnimation.a2(
    JSString animatorName,
    JSAny? effects,
  );

  external factory WorkletAnimation.a3(
    JSString animatorName,
    JSAny? effects,
    AnimationTimeline? timeline,
  );

  external factory WorkletAnimation.a4(
    JSString animatorName,
    JSAny? effects,
    AnimationTimeline? timeline,
    JSAny options,
  );
}

extension WorkletAnimationExtension on WorkletAnimation {
  external JSString get animatorName;
}

@JS('WorkletGroupEffect')
@staticInterop
class WorkletGroupEffect {
  external factory WorkletGroupEffect();
}

extension WorkletGroupEffectExtension on WorkletGroupEffect {
  external JSArray getChildren();
}
