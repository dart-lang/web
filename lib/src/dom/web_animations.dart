// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
  external CSSNumericValue? getCurrentTime_1(JSString rangeName);
  external CSSNumberish? get currentTime;
  external CSSNumberish? get duration;
  external Animation play();
  external Animation play_1(AnimationEffect? effect);
}

@JS('DocumentTimelineOptions')
@staticInterop
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions();
}

extension DocumentTimelineOptionsExtension on DocumentTimelineOptions {
  // TODO
}

@JS('DocumentTimeline')
@staticInterop
class DocumentTimeline extends AnimationTimeline {
  external factory DocumentTimeline();
  external factory DocumentTimeline.a1();
  external factory DocumentTimeline.a1_1(DocumentTimelineOptions options);
}

@JS('Animation')
@staticInterop
class Animation extends EventTarget {
  external factory Animation();
  external factory Animation.a1();
  external factory Animation.a1_1(AnimationEffect? effect);
  external factory Animation.a1_2(
      AnimationEffect? effect, AnimationTimeline? timeline);
}

extension AnimationExtension on Animation {
  external CSSNumberish? get startTime;
  external set startTime(CSSNumberish? value);
  external CSSNumberish? get currentTime;
  external set currentTime(CSSNumberish? value);
  external JSString get id;
  external set id(JSString value);
  external AnimationEffect? get effect;
  external set effect(AnimationEffect? value);
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? value);
  external JSNumber get playbackRate;
  external set playbackRate(JSNumber value);
  external AnimationPlayState get playState;
  external AnimationReplaceState get replaceState;
  external JSBoolean get pending;
  external JSPromise get ready;
  external JSPromise get finished;
  external EventHandler get onfinish;
  external set onfinish(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get onremove;
  external set onremove(EventHandler value);
  external JSUndefined cancel();
  external JSUndefined finish();
  external JSUndefined play();
  external JSUndefined pause();
  external JSUndefined updatePlaybackRate(JSNumber playbackRate);
  external JSUndefined reverse();
  external JSUndefined persist();
  external JSUndefined commitStyles();
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
  external JSUndefined before(AnimationEffect effects);
  external JSUndefined after(AnimationEffect effects);
  external JSUndefined replace(AnimationEffect effects);
  external JSUndefined remove();
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external JSUndefined updateTiming();
  external JSUndefined updateTiming_1(OptionalEffectTiming timing);
}

@JS('EffectTiming')
@staticInterop
class EffectTiming {
  external factory EffectTiming();
}

extension EffectTimingExtension on EffectTiming {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('OptionalEffectTiming')
@staticInterop
class OptionalEffectTiming {
  external factory OptionalEffectTiming();
}

extension OptionalEffectTimingExtension on OptionalEffectTiming {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ComputedEffectTiming')
@staticInterop
class ComputedEffectTiming extends EffectTiming {
  external factory ComputedEffectTiming();
}

extension ComputedEffectTimingExtension on ComputedEffectTiming {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('KeyframeEffect')
@staticInterop
class KeyframeEffect extends AnimationEffect {
  external factory KeyframeEffect();
  external factory KeyframeEffect.a1(Element? target, JSObject? keyframes);
  external factory KeyframeEffect.a1_1(
      Element? target, JSObject? keyframes, JSAny options);
  external factory KeyframeEffect.a2(KeyframeEffect source);
}

extension KeyframeEffectExtension on KeyframeEffect {
  external IterationCompositeOperation get iterationComposite;
  external set iterationComposite(IterationCompositeOperation value);
  external Element? get target;
  external set target(Element? value);
  external JSString? get pseudoElement;
  external set pseudoElement(JSString? value);
  external CompositeOperation get composite;
  external set composite(CompositeOperation value);
  external JSArray getKeyframes();
  external JSUndefined setKeyframes(JSObject? keyframes);
}

@JS('BaseComputedKeyframe')
@staticInterop
class BaseComputedKeyframe {
  external factory BaseComputedKeyframe();
}

extension BaseComputedKeyframeExtension on BaseComputedKeyframe {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BasePropertyIndexedKeyframe')
@staticInterop
class BasePropertyIndexedKeyframe {
  external factory BasePropertyIndexedKeyframe();
}

extension BasePropertyIndexedKeyframeExtension on BasePropertyIndexedKeyframe {
  // TODO
  // TODO
  // TODO
}

@JS('BaseKeyframe')
@staticInterop
class BaseKeyframe {
  external factory BaseKeyframe();
}

extension BaseKeyframeExtension on BaseKeyframe {
  // TODO
  // TODO
  // TODO
}

@JS('KeyframeEffectOptions')
@staticInterop
class KeyframeEffectOptions extends EffectTiming {
  external factory KeyframeEffectOptions();
}

extension KeyframeEffectOptionsExtension on KeyframeEffectOptions {
  // TODO
  // TODO
  // TODO
}

@JS('Animatable')
@staticInterop
class Animatable {
  external factory Animatable();
}

extension AnimatableExtension on Animatable {
  external Animation animate(JSObject? keyframes);
  external Animation animate_1(JSObject? keyframes, JSAny options);
  external JSArray getAnimations();
  external JSArray getAnimations_1(GetAnimationsOptions options);
}

@JS('KeyframeAnimationOptions')
@staticInterop
class KeyframeAnimationOptions extends KeyframeEffectOptions {
  external factory KeyframeAnimationOptions();
}

extension KeyframeAnimationOptionsExtension on KeyframeAnimationOptions {
  // TODO
  // TODO
}

@JS('GetAnimationsOptions')
@staticInterop
class GetAnimationsOptions {
  external factory GetAnimationsOptions();
}

extension GetAnimationsOptionsExtension on GetAnimationsOptions {
  // TODO
}
