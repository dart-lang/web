// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'css_typed_om.dart';
import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'web_animations_2.dart';

typedef AnimationPlayState = JSString;
typedef AnimationReplaceState = JSString;
typedef FillMode = JSString;
typedef PlaybackDirection = JSString;
typedef CompositeOperation = JSString;
typedef CompositeOperationOrAuto = JSString;

@JS('AnimationTimeline')
@staticInterop
class AnimationTimeline {}

extension AnimationTimelineExtension on AnimationTimeline {
  external CSSNumericValue? getCurrentTime([JSString rangeName]);
  external Animation play([AnimationEffect? effect]);
  external CSSNumberish? get currentTime;
  external CSSNumberish? get duration;
}

@JS()
@staticInterop
@anonymous
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions({DOMHighResTimeStamp originTime});
}

extension DocumentTimelineOptionsExtension on DocumentTimelineOptions {
  external set originTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get originTime;
}

@JS('DocumentTimeline')
@staticInterop
class DocumentTimeline implements AnimationTimeline {
  external factory DocumentTimeline([DocumentTimelineOptions options]);
}

@JS('Animation')
@staticInterop
class Animation implements EventTarget {
  external factory Animation([
    AnimationEffect? effect,
    AnimationTimeline? timeline,
  ]);
}

extension AnimationExtension on Animation {
  external JSVoid cancel();
  external JSVoid finish();
  external JSVoid play();
  external JSVoid pause();
  external JSVoid updatePlaybackRate(JSNumber playbackRate);
  external JSVoid reverse();
  external JSVoid persist();
  external JSVoid commitStyles();
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
}

@JS('AnimationEffect')
@staticInterop
class AnimationEffect {}

extension AnimationEffectExtension on AnimationEffect {
  external JSVoid before(AnimationEffect effects);
  external JSVoid after(AnimationEffect effects);
  external JSVoid replace(AnimationEffect effects);
  external JSVoid remove();
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external JSVoid updateTiming([OptionalEffectTiming timing]);
  external GroupEffect? get parent;
  external AnimationEffect? get previousSibling;
  external AnimationEffect? get nextSibling;
}

@JS()
@staticInterop
@anonymous
class EffectTiming {
  external factory EffectTiming({
    JSNumber delay,
    JSNumber endDelay,
    JSNumber playbackRate,
    JSAny duration,
    FillMode fill,
    JSNumber iterationStart,
    JSNumber iterations,
    PlaybackDirection direction,
    JSString easing,
  });
}

extension EffectTimingExtension on EffectTiming {
  external set delay(JSNumber value);
  external JSNumber get delay;
  external set endDelay(JSNumber value);
  external JSNumber get endDelay;
  external set playbackRate(JSNumber value);
  external JSNumber get playbackRate;
  external set duration(JSAny value);
  external JSAny get duration;
  external set fill(FillMode value);
  external FillMode get fill;
  external set iterationStart(JSNumber value);
  external JSNumber get iterationStart;
  external set iterations(JSNumber value);
  external JSNumber get iterations;
  external set direction(PlaybackDirection value);
  external PlaybackDirection get direction;
  external set easing(JSString value);
  external JSString get easing;
}

@JS()
@staticInterop
@anonymous
class OptionalEffectTiming {
  external factory OptionalEffectTiming({
    JSNumber playbackRate,
    JSNumber delay,
    JSNumber endDelay,
    FillMode fill,
    JSNumber iterationStart,
    JSNumber iterations,
    JSAny duration,
    PlaybackDirection direction,
    JSString easing,
  });
}

extension OptionalEffectTimingExtension on OptionalEffectTiming {
  external set playbackRate(JSNumber value);
  external JSNumber get playbackRate;
  external set delay(JSNumber value);
  external JSNumber get delay;
  external set endDelay(JSNumber value);
  external JSNumber get endDelay;
  external set fill(FillMode value);
  external FillMode get fill;
  external set iterationStart(JSNumber value);
  external JSNumber get iterationStart;
  external set iterations(JSNumber value);
  external JSNumber get iterations;
  external set duration(JSAny value);
  external JSAny get duration;
  external set direction(PlaybackDirection value);
  external PlaybackDirection get direction;
  external set easing(JSString value);
  external JSString get easing;
}

@JS()
@staticInterop
@anonymous
class ComputedEffectTiming implements EffectTiming {
  external factory ComputedEffectTiming({
    CSSNumberish startTime,
    CSSNumberish endTime,
    CSSNumberish activeDuration,
    CSSNumberish? localTime,
    JSNumber? progress,
    JSNumber? currentIteration,
  });
}

extension ComputedEffectTimingExtension on ComputedEffectTiming {
  external set startTime(CSSNumberish value);
  external CSSNumberish get startTime;
  external set endTime(CSSNumberish value);
  external CSSNumberish get endTime;
  external set activeDuration(CSSNumberish value);
  external CSSNumberish get activeDuration;
  external set localTime(CSSNumberish? value);
  external CSSNumberish? get localTime;
  external set progress(JSNumber? value);
  external JSNumber? get progress;
  external set currentIteration(JSNumber? value);
  external JSNumber? get currentIteration;
}

@JS('KeyframeEffect')
@staticInterop
class KeyframeEffect implements AnimationEffect {
  external factory KeyframeEffect(
    JSAny? sourceOrTarget, [
    JSObject? keyframes,
    JSAny options,
  ]);
}

extension KeyframeEffectExtension on KeyframeEffect {
  external JSArray getKeyframes();
  external JSVoid setKeyframes(JSObject? keyframes);
  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set target(Element? value);
  external Element? get target;
  external set pseudoElement(JSString? value);
  external JSString? get pseudoElement;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
}

@JS()
@staticInterop
@anonymous
class BaseComputedKeyframe {
  external factory BaseComputedKeyframe({
    JSNumber? offset,
    JSNumber computedOffset,
    JSString easing,
    CompositeOperationOrAuto composite,
  });
}

extension BaseComputedKeyframeExtension on BaseComputedKeyframe {
  external set offset(JSNumber? value);
  external JSNumber? get offset;
  external set computedOffset(JSNumber value);
  external JSNumber get computedOffset;
  external set easing(JSString value);
  external JSString get easing;
  external set composite(CompositeOperationOrAuto value);
  external CompositeOperationOrAuto get composite;
}

@JS()
@staticInterop
@anonymous
class BasePropertyIndexedKeyframe {
  external factory BasePropertyIndexedKeyframe({
    JSAny offset,
    JSAny easing,
    JSAny composite,
  });
}

extension BasePropertyIndexedKeyframeExtension on BasePropertyIndexedKeyframe {
  external set offset(JSAny value);
  external JSAny get offset;
  external set easing(JSAny value);
  external JSAny get easing;
  external set composite(JSAny value);
  external JSAny get composite;
}

@JS()
@staticInterop
@anonymous
class BaseKeyframe {
  external factory BaseKeyframe({
    JSNumber? offset,
    JSString easing,
    CompositeOperationOrAuto composite,
  });
}

extension BaseKeyframeExtension on BaseKeyframe {
  external set offset(JSNumber? value);
  external JSNumber? get offset;
  external set easing(JSString value);
  external JSString get easing;
  external set composite(CompositeOperationOrAuto value);
  external CompositeOperationOrAuto get composite;
}

@JS()
@staticInterop
@anonymous
class KeyframeEffectOptions implements EffectTiming {
  external factory KeyframeEffectOptions({
    IterationCompositeOperation iterationComposite,
    CompositeOperation composite,
    JSString? pseudoElement,
  });
}

extension KeyframeEffectOptionsExtension on KeyframeEffectOptions {
  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
  external set pseudoElement(JSString? value);
  external JSString? get pseudoElement;
}

@JS('Animatable')
@staticInterop
class Animatable {}

extension AnimatableExtension on Animatable {
  external Animation animate(
    JSObject? keyframes, [
    JSAny options,
  ]);
  external JSArray getAnimations([GetAnimationsOptions options]);
}

@JS()
@staticInterop
@anonymous
class KeyframeAnimationOptions implements KeyframeEffectOptions {
  external factory KeyframeAnimationOptions({
    JSAny rangeStart,
    JSAny rangeEnd,
    JSString id,
    AnimationTimeline? timeline,
  });
}

extension KeyframeAnimationOptionsExtension on KeyframeAnimationOptions {
  external set rangeStart(JSAny value);
  external JSAny get rangeStart;
  external set rangeEnd(JSAny value);
  external JSAny get rangeEnd;
  external set id(JSString value);
  external JSString get id;
  external set timeline(AnimationTimeline? value);
  external AnimationTimeline? get timeline;
}

@JS()
@staticInterop
@anonymous
class GetAnimationsOptions {
  external factory GetAnimationsOptions({JSBoolean subtree});
}

extension GetAnimationsOptionsExtension on GetAnimationsOptions {
  external set subtree(JSBoolean value);
  external JSBoolean get subtree;
}
