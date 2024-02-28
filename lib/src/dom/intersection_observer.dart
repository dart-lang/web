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

import 'dom.dart';
import 'geometry.dart';
import 'hr_time.dart';

typedef IntersectionObserverCallback = JSFunction;

/// The **`IntersectionObserver`** interface of the
/// [Intersection Observer API](https://developer.mozilla.org/en-US/docs/Web/API/Intersection_Observer_API)
/// provides a way to asynchronously observe changes in the intersection of a
/// target element with an ancestor element or with a top-level document's . The
/// ancestor element or viewport is referred to as the root.
///
/// When an `IntersectionObserver` is created, it's configured to watch for
/// given ratios of visibility within the root. The configuration cannot be
/// changed once the `IntersectionObserver` is created, so a given observer
/// object is only useful for watching for specific changes in degree of
/// visibility; however, you can watch multiple target elements with the same
/// observer.
extension type IntersectionObserver._(JSObject _) implements JSObject {
  external factory IntersectionObserver(
    IntersectionObserverCallback callback, [
    IntersectionObserverInit options,
  ]);

  /// The [IntersectionObserver] method
  /// **`observe()`** adds an element to the set of target elements
  /// being watched by the `IntersectionObserver`. One observer has one set of
  /// thresholds and one root, but can watch multiple target elements for
  /// visibility changes
  /// in keeping with those.
  ///
  /// To stop observing the element, call
  /// [IntersectionObserver.unobserve].
  ///
  /// When the visibility of the specified element crosses over one of the
  /// observer's
  /// visibility thresholds (as listed in [IntersectionObserver.thresholds]),
  /// the
  /// observer's callback is executed with an array of
  /// [IntersectionObserverEntry] objects representing the intersection changes
  /// which occurred. Note that this design allows multiple elements'
  /// intersection changes to
  /// be processed by a single call to the callback.
  ///
  /// > **Note:** the observer
  /// > [callback](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/IntersectionObserver#callback)
  /// > will always fire the first render cycle after `observe()` is called,
  /// > even if the observed element has not yet moved with respect to the
  /// > viewport.
  /// > This means that, for example, an element that is outside the viewport
  /// > when `observe()` is called on it will result in the callback being
  /// > immediately called with at least one
  /// > [entry](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry)
  /// > with
  /// > [`intersecting`](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/isIntersecting)
  /// > set to `false`.
  /// > An element inside the viewport will result in the callback being
  /// > immediately called with at least one entry with `intersecting` set to
  /// > `true`.
  external void observe(Element target);

  /// The [IntersectionObserver] method
  /// **`unobserve()`** instructs the
  /// `IntersectionObserver` to stop observing the specified target
  /// element.
  external void unobserve(Element target);

  /// The [IntersectionObserver] method
  /// **`disconnect()`** stops watching all of its target elements
  /// for visibility changes.
  external void disconnect();

  /// The [IntersectionObserver] method
  /// **`takeRecords()`** returns an array of
  /// [IntersectionObserverEntry] objects, one for each targeted element which
  /// has experienced an intersection change since the last time the
  /// intersections were
  /// checked, either explicitly through a call to this method or implicitly by
  /// an automatic
  /// call to the observer's callback.
  ///
  /// > **Note:** If you use the callback to monitor these changes, you don't
  /// > need to call this method. Calling this method clears the pending
  /// > intersection list, so
  /// > the callback will not be run.
  external JSArray<IntersectionObserverEntry> takeRecords();
  external JSObject? get root;
  external String get rootMargin;
  external String get scrollMargin;
  external JSArray<JSNumber> get thresholds;
}

/// The **`IntersectionObserverEntry`** interface of the
/// [Intersection Observer API](https://developer.mozilla.org/en-US/docs/Web/API/Intersection_Observer_API)
/// describes the intersection between the target element and its root container
/// at a specific moment of transition.
///
/// Instances of `IntersectionObserverEntry` are delivered to an
/// [IntersectionObserver] callback in its `entries` parameter; otherwise, these
/// objects can only be obtained by calling [IntersectionObserver.takeRecords].
extension type IntersectionObserverEntry._(JSObject _) implements JSObject {
  external factory IntersectionObserverEntry(
      IntersectionObserverEntryInit intersectionObserverEntryInit);

  external DOMHighResTimeStamp get time;
  external DOMRectReadOnly? get rootBounds;
  external DOMRectReadOnly get boundingClientRect;
  external DOMRectReadOnly get intersectionRect;
  external bool get isIntersecting;
  external num get intersectionRatio;
  external Element get target;
}
extension type IntersectionObserverEntryInit._(JSObject _) implements JSObject {
  external factory IntersectionObserverEntryInit({
    required DOMHighResTimeStamp time,
    required DOMRectInit? rootBounds,
    required DOMRectInit boundingClientRect,
    required DOMRectInit intersectionRect,
    required bool isIntersecting,
    required num intersectionRatio,
    required Element target,
  });

  external set time(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get time;
  external set rootBounds(DOMRectInit? value);
  external DOMRectInit? get rootBounds;
  external set boundingClientRect(DOMRectInit value);
  external DOMRectInit get boundingClientRect;
  external set intersectionRect(DOMRectInit value);
  external DOMRectInit get intersectionRect;
  external set isIntersecting(bool value);
  external bool get isIntersecting;
  external set intersectionRatio(num value);
  external num get intersectionRatio;
  external set target(Element value);
  external Element get target;
}
extension type IntersectionObserverInit._(JSObject _) implements JSObject {
  external factory IntersectionObserverInit({
    JSObject? root,
    String rootMargin,
    String scrollMargin,
    JSAny threshold,
  });

  external set root(JSObject? value);
  external JSObject? get root;
  external set rootMargin(String value);
  external String get rootMargin;
  external set scrollMargin(String value);
  external String get scrollMargin;
  external set threshold(JSAny value);
  external JSAny get threshold;
}
