// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/css_typed_om.dart';
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/web_animations_2.dart';

typedef AnimationPlayState = JSString;
typedef AnimationReplaceState = JSString;
typedef FillMode = JSString;
typedef PlaybackDirection = JSString;
typedef CompositeOperation = JSString;
typedef CompositeOperationOrAuto = JSString;

@JS('AnimationTimeline')
@staticInterop
class AnimationTimeline {
  external factory AnimationTimeline();
}

extension AnimationTimelineExtension on AnimationTimeline {
  external CSSNumericValue? getCurrentTime();
  external CSSNumericValue? getCurrentTime1(JSString rangeName);
  external CSSNumberish? get currentTime;
  external CSSNumberish? get duration;
  external Animation play();
  external Animation play1(AnimationEffect? effect);
}

@JS('DocumentTimelineOptions')
@staticInterop
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions();
}

extension DocumentTimelineOptionsExtension on DocumentTimelineOptions {}

@JS('DocumentTimeline')
@staticInterop
class DocumentTimeline extends AnimationTimeline {
  external factory DocumentTimeline();

  external factory DocumentTimeline.a1();

  external factory DocumentTimeline.a2(DocumentTimelineOptions options);
}

@JS('Animation')
@staticInterop
class Animation extends EventTarget {
  external factory Animation();

  external factory Animation.a1();

  external factory Animation.a2(AnimationEffect? effect);

  external factory Animation.a3(
    AnimationEffect? effect,
    AnimationTimeline? timeline,
  );
}

extension AnimationExtension on Animation {
  external set startTime(CSSNumberish? value);
  external CSSNumberish? get startTime;
  external set currentTime(CSSNumberish? value);
  external CSSNumberish? get currentTime;
  external set id(JSString value);
  external JSString get id;
  external set effect(AnimationEffect? value);
  external AnimationEffect? get effect;
  external set timeline(AnimationTimeline? value);
  external AnimationTimeline? get timeline;
  external set playbackRate(JSNumber value);
  external JSNumber get playbackRate;
  external AnimationPlayState get playState;
  external AnimationReplaceState get replaceState;
  external JSBoolean get pending;
  external JSPromise get ready;
  external JSPromise get finished;
  external set onfinish(EventHandler value);
  external EventHandler get onfinish;
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set onremove(EventHandler value);
  external EventHandler get onremove;
  external JSVoid cancel();
  external JSVoid finish();
  external JSVoid play();
  external JSVoid pause();
  external JSVoid updatePlaybackRate(JSNumber playbackRate);
  external JSVoid reverse();
  external JSVoid persist();
  external JSVoid commitStyles();
}

@JS('AnimationEffect')
@staticInterop
class AnimationEffect {
  external factory AnimationEffect();
}

extension AnimationEffectExtension on AnimationEffect {
  external GroupEffect? get parent;
  external AnimationEffect? get previousSibling;
  external AnimationEffect? get nextSibling;
  external JSVoid before(AnimationEffect effects);
  external JSVoid after(AnimationEffect effects);
  external JSVoid replace(AnimationEffect effects);
  external JSVoid remove();
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external JSVoid updateTiming();
  external JSVoid updateTiming1(OptionalEffectTiming timing);
}

@JS('EffectTiming')
@staticInterop
class EffectTiming {
  external factory EffectTiming();
}

extension EffectTimingExtension on EffectTiming {}

@JS('OptionalEffectTiming')
@staticInterop
class OptionalEffectTiming {
  external factory OptionalEffectTiming();
}

extension OptionalEffectTimingExtension on OptionalEffectTiming {}

@JS('ComputedEffectTiming')
@staticInterop
class ComputedEffectTiming extends EffectTiming {
  external factory ComputedEffectTiming();
}

extension ComputedEffectTimingExtension on ComputedEffectTiming {}

@JS('KeyframeEffect')
@staticInterop
class KeyframeEffect extends AnimationEffect {
  external factory KeyframeEffect();

  external factory KeyframeEffect.a1(
    Element? target,
    JSObject? keyframes,
  );

  external factory KeyframeEffect.a2(
    Element? target,
    JSObject? keyframes,
    JSAny options,
  );

  external factory KeyframeEffect.a3(KeyframeEffect source);
}

extension KeyframeEffectExtension on KeyframeEffect {
  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set target(Element? value);
  external Element? get target;
  external set pseudoElement(JSString? value);
  external JSString? get pseudoElement;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
  external JSArray getKeyframes();
  external JSVoid setKeyframes(JSObject? keyframes);
}

@JS('BaseComputedKeyframe')
@staticInterop
class BaseComputedKeyframe {
  external factory BaseComputedKeyframe();
}

extension BaseComputedKeyframeExtension on BaseComputedKeyframe {}

@JS('BasePropertyIndexedKeyframe')
@staticInterop
class BasePropertyIndexedKeyframe {
  external factory BasePropertyIndexedKeyframe();
}

extension BasePropertyIndexedKeyframeExtension on BasePropertyIndexedKeyframe {}

@JS('BaseKeyframe')
@staticInterop
class BaseKeyframe {
  external factory BaseKeyframe();
}

extension BaseKeyframeExtension on BaseKeyframe {}

@JS('KeyframeEffectOptions')
@staticInterop
class KeyframeEffectOptions extends EffectTiming {
  external factory KeyframeEffectOptions();
}

extension KeyframeEffectOptionsExtension on KeyframeEffectOptions {}

@JS('Animatable')
@staticInterop
class Animatable {
  external factory Animatable();
}

extension AnimatableExtension on Animatable {
  external Animation animate(JSObject? keyframes);
  external Animation animate1(
    JSObject? keyframes,
    JSAny options,
  );
  external JSArray getAnimations();
  external JSArray getAnimations1(GetAnimationsOptions options);
}

@JS('KeyframeAnimationOptions')
@staticInterop
class KeyframeAnimationOptions extends KeyframeEffectOptions {
  external factory KeyframeAnimationOptions();
}

extension KeyframeAnimationOptionsExtension on KeyframeAnimationOptions {}

@JS('GetAnimationsOptions')
@staticInterop
class GetAnimationsOptions {
  external factory GetAnimationsOptions();
}

extension GetAnimationsOptionsExtension on GetAnimationsOptions {}
