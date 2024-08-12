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

import 'dom.dart';
import 'geometry.dart';

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver).
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

  /// The [IntersectionObserver] interface's read-only
  /// **`root`** property identifies the [Element] or
  /// [Document] whose bounds are treated as the
  /// of the  for the element which is the observer's target.
  ///
  /// If the `root` is `null`, then the bounds of the actual document
  /// viewport are used.
  external JSObject? get root;

  /// The [IntersectionObserver] interface's read-only
  /// **`rootMargin`** property is a string with syntax similar to
  /// that of the CSS `margin` property. Each side of the rectangle represented
  /// by `rootMargin` is added to the corresponding side in the
  /// [IntersectionObserver.root] element's
  /// before the intersection test is performed. This lets you, for example,
  /// adjust the bounds
  /// outward so that the target element is considered 100% visible even if a
  /// certain number
  /// of pixels worth of width or height is clipped away, or treat the target as
  /// partially
  /// hidden if an edge is too close to the edge of the root's bounding box.
  ///
  /// See
  /// [how intersections are calculated](https://developer.mozilla.org/en-US/docs/Web/API/Intersection_Observer_API#how_intersection_is_calculated)
  /// for a more in-depth look at the root margin and how it works with
  /// the root's bounding box.
  external String get rootMargin;

  /// The [IntersectionObserver] interface's read-only
  /// **`thresholds`** property returns the list of intersection
  /// thresholds that was specified when the observer was instantiated with
  /// [IntersectionObserver.IntersectionObserver]. If
  /// only one threshold ratio was provided when instantiating the object, this
  /// will be an
  /// array containing that single value.
  ///
  /// See the
  /// [Intersection Observer](https://developer.mozilla.org/en-US/docs/Web/API/Intersection_Observer_API#thresholds)
  /// page to
  /// learn how thresholds work.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry).
extension type IntersectionObserverEntry._(JSObject _) implements JSObject {
  /// The [IntersectionObserverEntry] interface's
  /// read-only **`time`** property is a
  /// [DOMHighResTimeStamp] that indicates the time at which the intersection
  /// change occurred relative to the time at which the document was created.
  external double get time;

  /// The [IntersectionObserverEntry] interface's
  /// read-only **`rootBounds`** property is a
  /// [DOMRectReadOnly] corresponding to the
  /// [IntersectionObserverEntry.target]'s root intersection
  /// rectangle, offset by the [IntersectionObserver.rootMargin] if one is
  /// specified.
  external DOMRectReadOnly? get rootBounds;

  /// The [IntersectionObserverEntry] interface's read-only
  /// **`boundingClientRect`** property returns a
  /// [DOMRectReadOnly] which in essence describes a rectangle describing the
  /// smallest rectangle that contains the entire target element.
  external DOMRectReadOnly get boundingClientRect;

  /// The [IntersectionObserverEntry] interface's
  /// read-only **`intersectionRect`** property is a
  /// [DOMRectReadOnly] object which describes the smallest rectangle that
  /// contains the entire portion of the target element which is currently
  /// visible within
  /// the intersection root.
  external DOMRectReadOnly get intersectionRect;

  /// The [IntersectionObserverEntry] interface's
  /// read-only **`isIntersecting`** property is a Boolean value
  /// which is `true` if the target element intersects with the intersection
  /// observer's root. If this is `true`, then, the
  /// `IntersectionObserverEntry` describes a transition into a state of
  /// intersection; if it's `false`, then you know the transition is from
  /// intersecting to not-intersecting.
  external bool get isIntersecting;

  /// The [IntersectionObserverEntry] interface's
  /// read-only **`intersectionRatio`** property tells you how much
  /// of the target element is currently visible within the root's intersection
  /// ratio, as a
  /// value between 0.0 and 1.0.
  external double get intersectionRatio;

  /// The [IntersectionObserverEntry] interface's
  /// read-only **`target`** property indicates which targeted
  /// [Element] has changed its amount of intersection with the intersection
  /// root.
  external Element get target;
}
extension type IntersectionObserverInit._(JSObject _) implements JSObject {
  external factory IntersectionObserverInit({
    JSObject? root,
    String rootMargin,
    String scrollMargin,
    JSAny threshold,
  });

  external JSObject? get root;
  external set root(JSObject? value);
  external String get rootMargin;
  external set rootMargin(String value);
  external String get scrollMargin;
  external set scrollMargin(String value);
  external JSAny get threshold;
  external set threshold(JSAny value);
}
