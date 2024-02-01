// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'css_typed_om.dart';
import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'web_animations_2.dart';

typedef AnimationPlayState = String;
typedef AnimationReplaceState = String;
typedef FillMode = String;
typedef PlaybackDirection = String;
typedef CompositeOperation = String;
typedef CompositeOperationOrAuto = String;
extension type AnimationTimeline._(JSObject _) implements JSObject {
  external Animation play([AnimationEffect? effect]);
  external CSSNumberish? get currentTime;
  external CSSNumberish? get duration;
}
extension type DocumentTimelineOptions._(JSObject _) implements JSObject {
  external factory DocumentTimelineOptions({DOMHighResTimeStamp originTime});

  external set originTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get originTime;
}
extension type DocumentTimeline._(JSObject _)
    implements AnimationTimeline, JSObject {
  external factory DocumentTimeline([DocumentTimelineOptions options]);
}
extension type Animation._(JSObject _) implements EventTarget, JSObject {
  external factory Animation([
    AnimationEffect? effect,
    AnimationTimeline? timeline,
  ]);

  external void cancel();
  external void finish();
  external void play();
  external void pause();
  external void updatePlaybackRate(num playbackRate);
  external void reverse();
  external void persist();
  external void commitStyles();
  external set startTime(CSSNumberish? value);
  external CSSNumberish? get startTime;
  external set currentTime(CSSNumberish? value);
  external CSSNumberish? get currentTime;
  external set id(String value);
  external String get id;
  external set effect(AnimationEffect? value);
  external AnimationEffect? get effect;
  external set timeline(AnimationTimeline? value);
  external AnimationTimeline? get timeline;
  external set playbackRate(num value);
  external num get playbackRate;
  external AnimationPlayState get playState;
  external AnimationReplaceState get replaceState;
  external bool get pending;
  external JSPromise get ready;
  external JSPromise get finished;
  external set onfinish(EventHandler value);
  external EventHandler get onfinish;
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set onremove(EventHandler value);
  external EventHandler get onremove;
}
extension type AnimationEffect._(JSObject _) implements JSObject {
  external void before(AnimationEffect effects);
  external void after(AnimationEffect effects);
  external void replace(AnimationEffect effects);
  external void remove();
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external void updateTiming([OptionalEffectTiming timing]);
  external GroupEffect? get parent;
  external AnimationEffect? get previousSibling;
  external AnimationEffect? get nextSibling;
}
extension type EffectTiming._(JSObject _) implements JSObject {
  external factory EffectTiming({
    num delay,
    num endDelay,
    num playbackRate,
    JSAny duration,
    FillMode fill,
    num iterationStart,
    num iterations,
    PlaybackDirection direction,
    String easing,
  });

  external set delay(num value);
  external num get delay;
  external set endDelay(num value);
  external num get endDelay;
  external set playbackRate(num value);
  external num get playbackRate;
  external set duration(JSAny value);
  external JSAny get duration;
  external set fill(FillMode value);
  external FillMode get fill;
  external set iterationStart(num value);
  external num get iterationStart;
  external set iterations(num value);
  external num get iterations;
  external set direction(PlaybackDirection value);
  external PlaybackDirection get direction;
  external set easing(String value);
  external String get easing;
}
extension type OptionalEffectTiming._(JSObject _) implements JSObject {
  external factory OptionalEffectTiming({
    num playbackRate,
    num delay,
    num endDelay,
    FillMode fill,
    num iterationStart,
    num iterations,
    JSAny duration,
    PlaybackDirection direction,
    String easing,
  });

  external set playbackRate(num value);
  external num get playbackRate;
  external set delay(num value);
  external num get delay;
  external set endDelay(num value);
  external num get endDelay;
  external set fill(FillMode value);
  external FillMode get fill;
  external set iterationStart(num value);
  external num get iterationStart;
  external set iterations(num value);
  external num get iterations;
  external set duration(JSAny value);
  external JSAny get duration;
  external set direction(PlaybackDirection value);
  external PlaybackDirection get direction;
  external set easing(String value);
  external String get easing;
}
extension type ComputedEffectTiming._(JSObject _)
    implements EffectTiming, JSObject {
  external factory ComputedEffectTiming({
    CSSNumberish startTime,
    CSSNumberish endTime,
    CSSNumberish activeDuration,
    CSSNumberish? localTime,
    num? progress,
    num? currentIteration,
  });

  external set startTime(CSSNumberish value);
  external CSSNumberish get startTime;
  external set endTime(CSSNumberish value);
  external CSSNumberish get endTime;
  external set activeDuration(CSSNumberish value);
  external CSSNumberish get activeDuration;
  external set localTime(CSSNumberish? value);
  external CSSNumberish? get localTime;
  external set progress(num? value);
  external num? get progress;
  external set currentIteration(num? value);
  external num? get currentIteration;
}
extension type KeyframeEffect._(JSObject _)
    implements AnimationEffect, JSObject {
  external factory KeyframeEffect(
    JSObject? sourceOrTarget, [
    JSObject? keyframes,
    JSAny options,
  ]);

  external JSArray getKeyframes();
  external void setKeyframes(JSObject? keyframes);
  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set target(Element? value);
  external Element? get target;
  external set pseudoElement(String? value);
  external String? get pseudoElement;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
}
extension type BaseComputedKeyframe._(JSObject _) implements JSObject {
  external factory BaseComputedKeyframe({
    num? offset,
    num computedOffset,
    String easing,
    CompositeOperationOrAuto composite,
  });

  external set offset(num? value);
  external num? get offset;
  external set computedOffset(num value);
  external num get computedOffset;
  external set easing(String value);
  external String get easing;
  external set composite(CompositeOperationOrAuto value);
  external CompositeOperationOrAuto get composite;
}
extension type BasePropertyIndexedKeyframe._(JSObject _) implements JSObject {
  external factory BasePropertyIndexedKeyframe({
    JSAny? offset,
    JSAny easing,
    JSAny composite,
  });

  external set offset(JSAny? value);
  external JSAny? get offset;
  external set easing(JSAny value);
  external JSAny get easing;
  external set composite(JSAny value);
  external JSAny get composite;
}
extension type BaseKeyframe._(JSObject _) implements JSObject {
  external factory BaseKeyframe({
    num? offset,
    String easing,
    CompositeOperationOrAuto composite,
  });

  external set offset(num? value);
  external num? get offset;
  external set easing(String value);
  external String get easing;
  external set composite(CompositeOperationOrAuto value);
  external CompositeOperationOrAuto get composite;
}
extension type KeyframeEffectOptions._(JSObject _)
    implements EffectTiming, JSObject {
  external factory KeyframeEffectOptions({
    IterationCompositeOperation iterationComposite,
    CompositeOperation composite,
    String? pseudoElement,
  });

  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
  external set pseudoElement(String? value);
  external String? get pseudoElement;
}
extension type KeyframeAnimationOptions._(JSObject _)
    implements KeyframeEffectOptions, JSObject {
  external factory KeyframeAnimationOptions({
    JSAny rangeStart,
    JSAny rangeEnd,
    String id,
    AnimationTimeline? timeline,
  });

  external set rangeStart(JSAny value);
  external JSAny get rangeStart;
  external set rangeEnd(JSAny value);
  external JSAny get rangeEnd;
  external set id(String value);
  external String get id;
  external set timeline(AnimationTimeline? value);
  external AnimationTimeline? get timeline;
}
extension type GetAnimationsOptions._(JSObject _) implements JSObject {
  external factory GetAnimationsOptions({bool subtree});

  external set subtree(bool value);
  external bool get subtree;
}
