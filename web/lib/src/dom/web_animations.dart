// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

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

/// The `AnimationTimeline` interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents the timeline of an animation. This interface exists to define
/// timeline features, inherited by other timeline types:
///
/// - [DocumentTimeline]
/// - [ScrollTimeline]
/// - [ViewTimeline]
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AnimationTimeline).
extension type AnimationTimeline._(JSObject _) implements JSObject {
  /// The **`currentTime`** read-only property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'s
  /// [AnimationTimeline] interface returns the timeline's current time in
  /// milliseconds, or `null` if the timeline is inactive.
  external CSSNumberish? get currentTime;
}
extension type DocumentTimelineOptions._(JSObject _) implements JSObject {
  external factory DocumentTimelineOptions({DOMHighResTimeStamp originTime});

  external double get originTime;
  external set originTime(DOMHighResTimeStamp value);
}

/// The **`DocumentTimeline`** interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents animation timelines, including the default document timeline
/// (accessed via [Document.timeline]).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DocumentTimeline).
extension type DocumentTimeline._(JSObject _)
    implements AnimationTimeline, JSObject {
  external factory DocumentTimeline([DocumentTimelineOptions options]);
}

/// The **`Animation`** interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents a single animation player and provides playback controls and a
/// timeline for an animation node or source.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Animation).
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
  /// immediately updated.
  /// It will be updated once the animation's [Animation.ready] promise is
  /// resolved.
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

  /// The **`Animation.id`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// returns or sets a string used to identify the animation.
  external String get id;
  external set id(String value);

  /// The **`Animation.effect`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// gets and sets the target effect of an animation. The target effect may be
  /// either an effect object of a type based on [AnimationEffect], such as
  /// [KeyframeEffect], or `null`.
  external AnimationEffect? get effect;
  external set effect(AnimationEffect? value);

  /// The **`Animation.timeline`** property of the [Animation] interface returns
  /// or sets the [AnimationTimeline] associated with this animation. A timeline
  /// is a source of time values for synchronization purposes, and is an
  /// [AnimationTimeline]-based object. By default, the animation's timeline and
  /// the [Document]'s timeline are the same.
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? value);

  /// The **`Animation.playbackRate`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// returns or sets the playback rate of the animation.
  ///
  /// Animations have a **playback rate** that provides a scaling factor from
  /// the rate of change of the animation's [DocumentTimeline] time values to
  /// the animation's current time. The playback rate is initially `1`.
  external double get playbackRate;
  external set playbackRate(num value);

  /// The read-only **`Animation.playState`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// returns an enumerated value describing the playback state of an animation.
  external AnimationPlayState get playState;

  /// The read-only **`Animation.replaceState`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// indicates whether the animation has been
  /// [removed by the browser automatically](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API/Using_the_Web_Animations_API#automatically_removing_filling_animations)
  /// after being replaced by another animation.
  external AnimationReplaceState get replaceState;

  /// The read-only **`Animation.pending`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// indicates whether the animation is currently waiting for an asynchronous
  /// operation such as initiating playback or pausing a running animation.
  external bool get pending;

  /// The read-only **`Animation.ready`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// returns a `Promise` which resolves when the animation is ready to play. A
  /// new promise is created every time the animation enters the `"pending"`
  /// [play state](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playState)
  /// as well as when the animation is canceled, since in both of those
  /// scenarios, the animation is ready to be started again.
  ///
  /// > **Note:** Since the same `Promise` is used for both pending `play` and
  /// > pending `pause` requests, authors are advised to check the state of the
  /// > animation when the promise is resolved.
  external JSPromise<Animation> get ready;

  /// The **`Animation.finished`** read-only property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// returns a `Promise` which resolves once the animation has finished
  /// playing.
  ///
  /// > **Note:** Every time the animation leaves the `finished` play state
  /// > (that is, when it starts playing again), a new `Promise` is created for
  /// > this property. The new `Promise` will resolve once the new animation
  /// > sequence has completed.
  external JSPromise<Animation> get finished;
  external EventHandler get onfinish;
  external set onfinish(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get onremove;
  external set onremove(EventHandler value);

  /// The **`Animation.startTime`** property of the [Animation] interface is a
  /// double-precision floating-point value which indicates the scheduled time
  /// when an animation's playback should begin.
  ///
  /// An animation's **start time** is the time value of its [DocumentTimeline]
  /// when its target [KeyframeEffect] is scheduled to begin playback. An
  /// animation's **start time** is initially unresolved (meaning that it's
  /// `null` because it has no value).
  external CSSNumberish? get startTime;
  external set startTime(CSSNumberish? value);

  /// The **`Animation.currentTime`** property of the
  /// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
  /// returns and sets the current time value of the animation in milliseconds,
  /// whether running or paused.
  ///
  /// If the animation lacks a [AnimationTimeline], is inactive, or hasn't been
  /// played yet, `currentTime`'s return value is `null`.
  external CSSNumberish? get currentTime;
  external set currentTime(CSSNumberish? value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEffect).
extension type AnimationEffect._(JSObject _) implements JSObject {
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
}
extension type EffectTiming._(JSObject _) implements JSObject {
  external factory EffectTiming({
    FillMode fill,
    num iterationStart,
    num iterations,
    PlaybackDirection direction,
    String easing,
    num delay,
    num endDelay,
    num playbackRate,
    JSAny duration,
  });

  external FillMode get fill;
  external set fill(FillMode value);
  external double get iterationStart;
  external set iterationStart(num value);
  external double get iterations;
  external set iterations(num value);
  external PlaybackDirection get direction;
  external set direction(PlaybackDirection value);
  external String get easing;
  external set easing(String value);
  external double get delay;
  external set delay(num value);
  external double get endDelay;
  external set endDelay(num value);
  external double get playbackRate;
  external set playbackRate(num value);
  external JSAny get duration;
  external set duration(JSAny value);
}
extension type OptionalEffectTiming._(JSObject _) implements JSObject {
  external factory OptionalEffectTiming({
    num delay,
    num endDelay,
    FillMode fill,
    num iterationStart,
    num iterations,
    JSAny duration,
    PlaybackDirection direction,
    String easing,
    num playbackRate,
  });

  external double get delay;
  external set delay(num value);
  external double get endDelay;
  external set endDelay(num value);
  external FillMode get fill;
  external set fill(FillMode value);
  external double get iterationStart;
  external set iterationStart(num value);
  external double get iterations;
  external set iterations(num value);
  external JSAny get duration;
  external set duration(JSAny value);
  external PlaybackDirection get direction;
  external set direction(PlaybackDirection value);
  external String get easing;
  external set easing(String value);
  external double get playbackRate;
  external set playbackRate(num value);
}
extension type ComputedEffectTiming._(JSObject _)
    implements EffectTiming, JSObject {
  external factory ComputedEffectTiming({
    FillMode fill,
    num iterationStart,
    num iterations,
    PlaybackDirection direction,
    String easing,
    num delay,
    num endDelay,
    num playbackRate,
    JSAny duration,
    num? progress,
    num? currentIteration,
    CSSNumberish startTime,
    CSSNumberish endTime,
    CSSNumberish activeDuration,
    CSSNumberish? localTime,
  });

  external double? get progress;
  external set progress(num? value);
  external double? get currentIteration;
  external set currentIteration(num? value);
  external CSSNumberish get startTime;
  external set startTime(CSSNumberish value);
  external CSSNumberish get endTime;
  external set endTime(CSSNumberish value);
  external CSSNumberish get activeDuration;
  external set activeDuration(CSSNumberish value);
  external CSSNumberish? get localTime;
  external set localTime(CSSNumberish? value);
}

/// The **`KeyframeEffect`** interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// lets us create sets of animatable properties and values, called
/// **keyframes.** These can then be played using the [Animation.Animation]
/// constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect).
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

  /// The **`target`** property of a [KeyframeEffect] interface represents the
  /// element or pseudo-element being animated. It may be `null` for animations
  /// that do not target a specific element. It performs as both a getter and a
  /// setter, except with animations and transitions generated by CSS.
  external Element? get target;
  external set target(Element? value);

  /// The **`pseudoElement`** property of a [KeyframeEffect] interface is a
  /// string representing the pseudo-element being animated. It may be `null`
  /// for animations that do not target a pseudo-element. It performs as both a
  /// getter and a setter, except with animations and transitions generated by
  /// CSS.
  ///
  /// > **Note:** If set to the legacy single-colon syntax of , , , or , the
  /// > string is transformed into its double-colon modern version (, , , and ,
  /// > respectively).
  external String? get pseudoElement;
  external set pseudoElement(String? value);

  /// The **`composite`** property of a [KeyframeEffect] resolves how an
  /// element's animation impacts its underlying property values.
  external CompositeOperation get composite;
  external set composite(CompositeOperation value);

  /// The **`iterationComposite`** property of a [KeyframeEffect] resolves how
  /// the animation's property value changes accumulate or override each other
  /// upon each of the animation's iterations.
  external IterationCompositeOperation get iterationComposite;
  external set iterationComposite(IterationCompositeOperation value);
}
extension type KeyframeEffectOptions._(JSObject _)
    implements EffectTiming, JSObject {
  external factory KeyframeEffectOptions({
    FillMode fill,
    num iterationStart,
    num iterations,
    PlaybackDirection direction,
    String easing,
    num delay,
    num endDelay,
    num playbackRate,
    JSAny duration,
    CompositeOperation composite,
    String? pseudoElement,
    IterationCompositeOperation iterationComposite,
  });

  external CompositeOperation get composite;
  external set composite(CompositeOperation value);
  external String? get pseudoElement;
  external set pseudoElement(String? value);
  external IterationCompositeOperation get iterationComposite;
  external set iterationComposite(IterationCompositeOperation value);
}
extension type KeyframeAnimationOptions._(JSObject _)
    implements KeyframeEffectOptions, JSObject {
  external factory KeyframeAnimationOptions({
    FillMode fill,
    num iterationStart,
    num iterations,
    PlaybackDirection direction,
    String easing,
    num delay,
    num endDelay,
    num playbackRate,
    JSAny duration,
    CompositeOperation composite,
    String? pseudoElement,
    IterationCompositeOperation iterationComposite,
    String id,
    AnimationTimeline? timeline,
    JSAny rangeStart,
    JSAny rangeEnd,
  });

  external String get id;
  external set id(String value);
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? value);
  external JSAny get rangeStart;
  external set rangeStart(JSAny value);
  external JSAny get rangeEnd;
  external set rangeEnd(JSAny value);
}
extension type GetAnimationsOptions._(JSObject _) implements JSObject {
  external factory GetAnimationsOptions({bool subtree});

  external bool get subtree;
  external set subtree(bool value);
}
