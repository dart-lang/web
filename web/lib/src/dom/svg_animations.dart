// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

import 'dom.dart';
import 'html.dart';
import 'svg.dart';

/// The **`TimeEvent`** interface, a part of
/// [SVG SMIL](https://developer.mozilla.org/en-US/docs/Web/SVG/SVG_animation_with_SMIL)
/// animation, provides specific contextual information associated with Time
/// events.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TimeEvent).
extension type TimeEvent._(JSObject _) implements Event, JSObject {
  external void initTimeEvent(
    String typeArg, [
    Window? viewArg,
    int detailArg,
  ]);
  external Window? get view;
  external int get detail;
}

/// The **`SVGAnimationElement`** interface is the base interface for all of the
/// animation element interfaces: [SVGAnimateElement], [SVGSetElement],
/// [SVGAnimateColorElement], [SVGAnimateMotionElement] and
/// [SVGAnimateTransformElement].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement).
extension type SVGAnimationElement._(JSObject _)
    implements SVGElement, JSObject {
  /// The [SVGAnimationElement] method `getStartTime()` returns a float
  /// representing the start time, in seconds, for this animation element's
  /// current interval, if it exists, regardless of whether the interval has
  /// begun yet.
  ///
  /// The start time returned by `getStartTime()` is measured in seconds
  /// relative to the time container's time zero.
  ///
  /// Time zero refers to the moment when the time container begins its
  /// timeline. It acts as the starting reference point for all animations
  /// within that container.
  ///
  /// A time container is an element or context that defines a local timeline
  /// for one or more animations. Animations inside the time container are
  /// measured relative to its timeline. If a time container is delayed, paused,
  /// or manipulated, all animations within it adjust accordingly.
  ///
  /// This property reflects the `begin` attribute of the ,  or  element.
  external double getStartTime();

  /// The [SVGAnimationElement] method `getCurrentTime()` returns a float
  /// representing the current time in seconds relative to time zero for the
  /// given time container.
  ///
  /// Time zero refers to the moment when the time container begins its
  /// timeline. It acts as the starting reference point for all animations
  /// within that container.
  ///
  /// A time container is an element or context that defines a local timeline
  /// for one or more animations. Animations inside the time container are
  /// measured relative to its timeline. If a time container is delayed, paused,
  /// or manipulated, all animations within it adjust accordingly.
  external double getCurrentTime();

  /// The [SVGAnimationElement] method `getSimpleDuration()` returns a float
  /// representing the number of seconds for the simple duration for this
  /// animation.
  ///
  /// Simple duration refers to the length of time an animation is supposed to
  /// run for a single iteration, without considering repeats, restarts, or
  /// extensions.
  ///
  /// This property reflects the `dur` attribute of the ,  or  element.
  external double getSimpleDuration();

  /// The [SVGAnimationElement] method `beginElement()` creates a begin instance
  /// time for the current time. The new instance time is added to the begin
  /// instance times list. The behavior of this method is equivalent to
  /// `beginElementAt(0)`.
  external void beginElement();

  /// The [SVGAnimationElement] method `beginElementAt()` creates a begin
  /// instance time for the current time plus the specified offset. The new
  /// instance time is added to the begin instance times list.
  external void beginElementAt(num offset);

  /// The [SVGAnimationElement] method `endElement()` creates an end instance
  /// time for the current time. The new instance time is added to the end
  /// instance times list. The behavior of this method is equivalent to
  /// `endElementAt(0)`.
  external void endElement();

  /// The [SVGAnimationElement] method `endElementAt()` creates an end instance
  /// time for the current time plus the specified offset. The new instance time
  /// is added to the end instance times list.
  external void endElementAt(num offset);

  /// The **`targetElement`** read-only property of the [SVGAnimationElement]
  /// interface refers to the element which is being animated. If no target
  /// element is being animated (for example, because the `href` attribute
  /// specifies an unknown element), the value returned is `null`.
  external SVGElement? get targetElement;
  external EventHandler get onend;
  external set onend(EventHandler value);

  /// The **`requiredExtensions`** read-only property of the
  /// [SVGAnimationElement] interface reflects the `requiredExtensions`
  /// attribute of the given element.
  external SVGStringList get requiredExtensions;

  /// The **`systemLanguage`** read-only property of the [SVGAnimationElement]
  /// interface reflects the `systemLanguage` attribute of the given element.
  external SVGStringList get systemLanguage;
}

/// The **`SVGAnimateElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateElement).
extension type SVGAnimateElement._(JSObject _)
    implements SVGAnimationElement, JSObject {
  /// Creates an [SVGAnimateElement] using the tag 'animate'.
  SVGAnimateElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'animate',
        );
}

/// The **`SVGSetElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGSetElement).
extension type SVGSetElement._(JSObject _)
    implements SVGAnimationElement, JSObject {
  /// Creates an [SVGSetElement] using the tag 'set'.
  SVGSetElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'set',
        );
}

/// The **`SVGAnimateMotionElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateMotionElement).
extension type SVGAnimateMotionElement._(JSObject _)
    implements SVGAnimationElement, JSObject {
  /// Creates an [SVGAnimateMotionElement] using the tag 'animateMotion'.
  SVGAnimateMotionElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'animateMotion',
        );
}

/// The **`SVGMPathElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGMPathElement).
extension type SVGMPathElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGMPathElement] using the tag 'mpath'.
  SVGMPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'mpath',
        );

  /// The **`href`** read-only property of the [SVGMPathElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}

/// The `SVGAnimateTransformElement` interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateTransformElement).
extension type SVGAnimateTransformElement._(JSObject _)
    implements SVGAnimationElement, JSObject {
  /// Creates an [SVGAnimateTransformElement] using the tag 'animateTransform'.
  SVGAnimateTransformElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'animateTransform',
        );
}
