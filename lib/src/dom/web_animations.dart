// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'css_typed_om.dart';
import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'scroll_animations.dart';
import 'web_animations_2.dart';

typedef AnimationPlayState = String;
typedef AnimationReplaceState = String;
typedef FillMode = String;
typedef PlaybackDirection = String;
typedef CompositeOperation = String;
typedef CompositeOperationOrAuto = String;

@JS('AnimationTimeline')
@staticInterop
class AnimationTimeline implements JSObject {}

extension AnimationTimelineExtension on AnimationTimeline {
  external CSSNumericValue? getCurrentTime([AnimationTimeOptions options]);
  external Animation play([AnimationEffect? effect]);
  external CSSNumberish? get currentTime;
  external CSSNumberish? get duration;
}

@JS()
@staticInterop
@anonymous
class DocumentTimelineOptions implements JSObject {
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
  external JSVoid updatePlaybackRate(double playbackRate);
  external JSVoid reverse();
  external JSVoid persist();
  external JSVoid commitStyles();
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
  external set playbackRate(double value);
  external double get playbackRate;
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

@JS('AnimationEffect')
@staticInterop
class AnimationEffect implements JSObject {}

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
class EffectTiming implements JSObject {
  external factory EffectTiming({
    double delay,
    double endDelay,
    double playbackRate,
    JSAny? duration,
    FillMode fill,
    double iterationStart,
    double iterations,
    PlaybackDirection direction,
    String easing,
  });
}

extension EffectTimingExtension on EffectTiming {
  external set delay(double value);
  external double get delay;
  external set endDelay(double value);
  external double get endDelay;
  external set playbackRate(double value);
  external double get playbackRate;
  external set duration(JSAny? value);
  external JSAny? get duration;
  external set fill(FillMode value);
  external FillMode get fill;
  external set iterationStart(double value);
  external double get iterationStart;
  external set iterations(double value);
  external double get iterations;
  external set direction(PlaybackDirection value);
  external PlaybackDirection get direction;
  external set easing(String value);
  external String get easing;
}

@JS()
@staticInterop
@anonymous
class OptionalEffectTiming implements JSObject {
  external factory OptionalEffectTiming({
    double playbackRate,
    double delay,
    double endDelay,
    FillMode fill,
    double iterationStart,
    double iterations,
    JSAny? duration,
    PlaybackDirection direction,
    String easing,
  });
}

extension OptionalEffectTimingExtension on OptionalEffectTiming {
  external set playbackRate(double value);
  external double get playbackRate;
  external set delay(double value);
  external double get delay;
  external set endDelay(double value);
  external double get endDelay;
  external set fill(FillMode value);
  external FillMode get fill;
  external set iterationStart(double value);
  external double get iterationStart;
  external set iterations(double value);
  external double get iterations;
  external set duration(JSAny? value);
  external JSAny? get duration;
  external set direction(PlaybackDirection value);
  external PlaybackDirection get direction;
  external set easing(String value);
  external String get easing;
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
    double? progress,
    double? currentIteration,
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
  external set progress(double? value);
  external double? get progress;
  external set currentIteration(double? value);
  external double? get currentIteration;
}

@JS('KeyframeEffect')
@staticInterop
class KeyframeEffect implements AnimationEffect {
  external factory KeyframeEffect(
    JSAny? sourceOrTarget, [
    JSObject? keyframes,
    JSAny? options,
  ]);
}

extension KeyframeEffectExtension on KeyframeEffect {
  external JSArray getKeyframes();
  external JSVoid setKeyframes(JSObject? keyframes);
  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set target(Element? value);
  external Element? get target;
  external set pseudoElement(String? value);
  external String? get pseudoElement;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
}

@JS()
@staticInterop
@anonymous
class BaseComputedKeyframe implements JSObject {
  external factory BaseComputedKeyframe({
    double? offset,
    double computedOffset,
    String easing,
    CompositeOperationOrAuto composite,
  });
}

extension BaseComputedKeyframeExtension on BaseComputedKeyframe {
  external set offset(double? value);
  external double? get offset;
  external set computedOffset(double value);
  external double get computedOffset;
  external set easing(String value);
  external String get easing;
  external set composite(CompositeOperationOrAuto value);
  external CompositeOperationOrAuto get composite;
}

@JS()
@staticInterop
@anonymous
class BasePropertyIndexedKeyframe implements JSObject {
  external factory BasePropertyIndexedKeyframe({
    JSAny? offset,
    JSAny? easing,
    JSAny? composite,
  });
}

extension BasePropertyIndexedKeyframeExtension on BasePropertyIndexedKeyframe {
  external set offset(JSAny? value);
  external JSAny? get offset;
  external set easing(JSAny? value);
  external JSAny? get easing;
  external set composite(JSAny? value);
  external JSAny? get composite;
}

@JS()
@staticInterop
@anonymous
class BaseKeyframe implements JSObject {
  external factory BaseKeyframe({
    double? offset,
    String easing,
    CompositeOperationOrAuto composite,
  });
}

extension BaseKeyframeExtension on BaseKeyframe {
  external set offset(double? value);
  external double? get offset;
  external set easing(String value);
  external String get easing;
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
    String? pseudoElement,
  });
}

extension KeyframeEffectOptionsExtension on KeyframeEffectOptions {
  external set iterationComposite(IterationCompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set composite(CompositeOperation value);
  external CompositeOperation get composite;
  external set pseudoElement(String? value);
  external String? get pseudoElement;
}

@JS('Animatable')
@staticInterop
class Animatable implements JSObject {}

extension AnimatableExtension on Animatable {
  external Animation animate(
    JSObject? keyframes, [
    JSAny? options,
  ]);
  external JSArray getAnimations([GetAnimationsOptions options]);
}

@JS()
@staticInterop
@anonymous
class KeyframeAnimationOptions implements KeyframeEffectOptions {
  external factory KeyframeAnimationOptions({
    JSAny? rangeStart,
    JSAny? rangeEnd,
    String id,
    AnimationTimeline? timeline,
  });
}

extension KeyframeAnimationOptionsExtension on KeyframeAnimationOptions {
  external set rangeStart(JSAny? value);
  external JSAny? get rangeStart;
  external set rangeEnd(JSAny? value);
  external JSAny? get rangeEnd;
  external set id(String value);
  external String get id;
  external set timeline(AnimationTimeline? value);
  external AnimationTimeline? get timeline;
}

@JS()
@staticInterop
@anonymous
class GetAnimationsOptions implements JSObject {
  external factory GetAnimationsOptions({bool subtree});
}

extension GetAnimationsOptionsExtension on GetAnimationsOptions {
  external set subtree(bool value);
  external bool get subtree;
}
