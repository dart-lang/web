// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

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

/// The `AnimationTimeline` interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents the timeline of an animation. This interface exists to define
/// timeline features, inherited by other timeline types:
///
/// - [DocumentTimeline]
/// - [ScrollTimeline]
/// - [ViewTimeline]
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

/// The **`DocumentTimeline`** interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents animation timelines, including the default document timeline
/// (accessed via [Document.timeline]).
extension type DocumentTimeline._(JSObject _)
    implements AnimationTimeline, JSObject {
  external factory DocumentTimeline([DocumentTimelineOptions options]);
}

/// The **`Animation`** interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents a single animation player and provides playback controls and a
/// timeline for an animation node or source.
extension type Animation._(JSObject _) implements EventTarget, JSObject {
  external factory Animation([
    AnimationEffect? effect,
    AnimationTimeline? timeline,
  ]);

  /// The Web Animations API's **`cancel()`** method of the [Animation]
  /// interface clears all [KeyframeEffect]s caused by this animation and aborts
  /// its playback.
  ///
  /// > **Note:** When an animation is cancelled, its [Animation.startTime] and
  /// > [Animation.currentTime] are set to `null`.
  external void cancel();

  /// The **`finish()`** method of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [Animation] Interface sets the current playback time to the end of the
  /// animation corresponding to the current playback direction.
  ///
  /// That is, if the animation is playing forward, it sets the playback time to
  /// the length of the animation sequence, and if the animation is playing in
  /// reverse (having had its [Animation.reverse] method called), it sets the
  /// playback time to 0.
  external void finish();

  /// The **`play()`** method of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [Animation] Interface starts or resumes playing of an animation. If the
  /// animation is finished, calling `play()` restarts the animation, playing it
  /// from the beginning.
  external void play();

  /// The **`pause()`** method of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [Animation] interface suspends playback of the animation.
  external void pause();

  /// The **`updatePlaybackRate()`** method of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [Animation] Interface sets the speed of an animation after first
  /// synchronizing its playback position.
  ///
  /// In some cases, an animation may run on a separate thread or process and
  /// will continue
  /// updating even while long-running JavaScript delays the main thread. In
  /// such a case,
  /// setting the [Animation.playbackRate] on the animation
  /// directly may cause the animation's playback position to jump since its
  /// playback
  /// position on the main thread may have drifted from the playback position
  /// where it is
  /// currently running.
  ///
  /// `updatePlaybackRate()` is an asynchronous method that sets the speed of an
  /// animation after synchronizing with its current playback position, ensuring
  /// that the
  /// resulting change in speed does not produce a sharp jump. After calling
  /// `updatePlaybackRate()` the animation's [Animation.playbackRate] is _not_
  /// immediately updated. It will be updated once the
  /// animation's [Animation.ready] promise is resolved.
  external void updatePlaybackRate(num playbackRate);

  /// The **`Animation.reverse()`** method of the [Animation] Interface reverses
  /// the playback direction, meaning the animation ends at its beginning. If
  /// called on an unplayed animation, the whole animation is played backwards.
  /// If called on a paused animation, the animation will continue in reverse.
  external void reverse();

  /// The `persist()` method of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [Animation] interface explicitly persists an animation, preventing it from
  /// being
  /// [automatically removed](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API/Using_the_Web_Animations_API#automatically_removing_filling_animations)
  /// when it is replaced by another animation.
  external void persist();

  /// The `commitStyles()` method of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [Animation] interface writes the
  /// [computed values](https://developer.mozilla.org/en-US/docs/Web/CSS/computed_value)
  /// of the animation's current styles into its target element's
  /// [`style`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#style)
  /// attribute. `commitStyles()` works even if the animation has been
  /// [automatically removed](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API/Using_the_Web_Animations_API#automatically_removing_filling_animations).
  ///
  /// `commitStyles()` can be used in combination with `fill` to cause the final
  /// state of an animation to persist after the animation ends. The same effect
  /// could be achieved with `fill` alone, but
  /// [using indefinitely filling animations is discouraged](https://drafts.csswg.org/web-animations-1/#fill-behavior).
  /// Animations
  /// [take precedence over all static styles](https://developer.mozilla.org/en-US/docs/Web/CSS/Cascade#cascading_order),
  /// so an indefinite filling animation can prevent the target element from
  /// ever being styled normally.
  ///
  /// Using `commitStyles()` writes the styling state into the element's
  /// [`style`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#style)
  /// attribute, where they can be modified and replaced as normal.
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
  external JSPromise<Animation> get ready;
  external JSPromise<Animation> get finished;
  external set onfinish(EventHandler value);
  external EventHandler get onfinish;
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set onremove(EventHandler value);
  external EventHandler get onremove;
}

/// The `AnimationEffect` interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// is an interface representing animation effects.
///
/// `AnimationEffect` is an abstract interface and so isn't directly
/// instantiable. However, concrete interfaces such as [KeyframeEffect] inherit
/// from it, and instances of these interfaces can be passed to [Animation]
/// objects for playing, and may also be used by
/// [CSS Animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animations)
/// and
/// [Transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transitions).
extension type AnimationEffect._(JSObject _) implements JSObject {
  external void before(AnimationEffect effects);
  external void after(AnimationEffect effects);
  external void replace(AnimationEffect effects);
  external void remove();

  /// The `AnimationEffect.getTiming()` method of the [AnimationEffect]
  /// interface returns an object containing the timing properties for the
  /// Animation Effect.
  ///
  /// > **Note:** Several of the timing properties returned by `getTiming()` may
  /// > take on the placeholder value `"auto"`. To obtain resolved values for
  /// > use in timing computations, instead use
  /// > [AnimationEffect.getComputedTiming].
  /// >
  /// > In the future, `"auto"` or similar values might be added to the types of
  /// > more timing properties, and new types of [AnimationEffect] might resolve
  /// > `"auto"` to different values.
  external EffectTiming getTiming();

  /// The `getComputedTiming()` method of the [AnimationEffect] interface
  /// returns the calculated timing properties for this animation effect.
  ///
  /// > **Note:** These values are comparable to the computed styles of an
  /// > Element returned using `window.getComputedStyle(elem)`.
  external ComputedEffectTiming getComputedTiming();

  /// The `updateTiming()` method of the [AnimationEffect] interface updates the
  /// specified timing properties for an animation effect.
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

/// The **`KeyframeEffect`** interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// lets us create sets of animatable properties and values, called
/// **keyframes.** These can then be played using the [Animation.Animation]
/// constructor.
extension type KeyframeEffect._(JSObject _)
    implements AnimationEffect, JSObject {
  external factory KeyframeEffect(
    JSObject? sourceOrTarget, [
    JSObject? keyframes,
    JSAny options,
  ]);

  /// The **`getKeyframes()`** method of a [KeyframeEffect] returns an Array of
  /// the computed keyframes that make up this animation along with their
  /// computed offsets.
  external JSArray<JSObject> getKeyframes();

  /// The **`setKeyframes()`** method of the [KeyframeEffect] interface replaces
  /// the keyframes that make up the affected `KeyframeEffect` with a new set of
  /// keyframes.
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
