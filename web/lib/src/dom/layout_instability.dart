// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
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
import 'geometry.dart';
import 'performance_timeline.dart';

/// The `LayoutShift` interface of the
/// [Performance API](https://developer.mozilla.org/en-US/docs/Web/API/Performance_API)
/// provides insights into the layout stability of web pages based on movements
/// of the elements on the page.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/LayoutShift).
extension type LayoutShift._(JSObject _) implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [LayoutShift] interface is a ; it returns
  /// a JSON representation of the [LayoutShift] object.
  external JSObject toJSON();

  /// The **`value`** read-only property of the [LayoutShift] interface returns
  /// the layout shift score calculated as the impact fraction (fraction of the
  /// viewport that was shifted) multiplied by the distance fraction (distance
  /// moved as a fraction of viewport).
  external double get value;

  /// The **`hadRecentInput`** read-only property of the [LayoutShift] interface
  /// returns `true` if [LayoutShift.lastInputTime] is less than 500
  /// milliseconds in the past.
  ///
  /// Layout shifts are only a problem if the user is not expecting them, so
  /// layout shifts that are the result of user interactions (such as a user
  /// expanding a UI element) are often not considered in layout shift metrics.
  /// The `hadRecentInput` property allows you to exclude these shifts.
  external bool get hadRecentInput;

  /// The **`lastInputTime`** read-only property of the [LayoutShift] interface
  /// returns the time of the most recent excluding input or `0` if no excluding
  /// input has occurred.
  ///
  /// Layout shifts are only bad if the user wasn't expecting them. Layout shift
  /// metrics like  exclude shifts that occurred soon after certain user
  /// interactions. These interactions are called _excluding inputs_. Excluding
  /// inputs are:
  ///
  /// - Any events which signal a user's active interaction with the document:
  ///   ([`mousedown`](https://developer.mozilla.org/en-US/docs/Web/API/Element/mousedown_event),
  ///   [`keydown`](https://developer.mozilla.org/en-US/docs/Web/API/Element/keydown_event),
  ///   and
  ///   [`pointerdown`](https://developer.mozilla.org/en-US/docs/Web/API/Element/pointerdown_event))
  /// - Any events which directly changes the size of the viewport.
  /// - [`change`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/change_event)
  ///   events.
  ///
  /// The
  /// [`mousemove`](https://developer.mozilla.org/en-US/docs/Web/API/Element/mousemove_event)
  /// and
  /// [`pointermove`](https://developer.mozilla.org/en-US/docs/Web/API/Element/pointermove_event)
  /// events are **not** excluding inputs.
  external double get lastInputTime;

  /// The **`sources`** read-only property of the [LayoutShift] interface
  /// returns an array of [LayoutShiftAttribution] objects that indicate the DOM
  /// elements that moved during the layout shift.
  external JSArray<LayoutShiftAttribution> get sources;
}

/// The `LayoutShiftAttribution` interface provides debugging information about
/// elements which have shifted.
///
/// Instances of `LayoutShiftAttribution` are returned in an array by calling
/// [LayoutShift.sources].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/LayoutShiftAttribution).
extension type LayoutShiftAttribution._(JSObject _) implements JSObject {
  /// The **`node`** read-only property of the [LayoutShiftAttribution]
  /// interface returns a [Node] representing the object that has shifted.
  external Node? get node;

  /// The **`previousRect`** read-only property of the [LayoutShiftAttribution]
  /// interface returns a [DOMRectReadOnly] object representing the position of
  /// the element before the shift.
  external DOMRectReadOnly get previousRect;

  /// The **`currentRect`** read-only property of the [LayoutShiftAttribution]
  /// interface returns a [DOMRectReadOnly] object representing the position of
  /// the element after the shift.
  external DOMRectReadOnly get currentRect;
}
