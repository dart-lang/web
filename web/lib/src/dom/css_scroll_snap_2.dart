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

extension type SnapEventInit._(JSObject _) implements EventInit, JSObject {
  external factory SnapEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Node? snapTargetBlock,
    Node? snapTargetInline,
  });

  external Node? get snapTargetBlock;
  external set snapTargetBlock(Node? value);
  external Node? get snapTargetInline;
  external set snapTargetInline(Node? value);
}

/// The **`SnapEvent`** interface defines the event object for the
/// [Element.scrollsnapchanging_event] and [Element.scrollsnapchange_event]
/// events. Respectively, these fire on on a
/// [scroll container](https://developer.mozilla.org/en-US/docs/Glossary/Scroll_container)
/// when the browser determines that a new scroll snap target is pending (will
/// be selected when the current scroll gesture ends), and when a new snap
/// target is selected.
///
/// These events can be used to run code in response to new elements being
/// snapped to; `SnapEvent` exposes references to the element snapped to in the
/// inline and/or block direction. The property values available on `SnapEvent`
/// correspond directly to the value of the  CSS property set on the scroll
/// container:
///
/// - If the snap axis is specified as `block` (or a physical axis value that
///   equates to `block` in the current writing mode), only
///   [SnapEvent.snapTargetBlock] returns an element reference.
/// - If the snap axis is specified as `inline` (or a physical axis value that
///   equates to `inline` in the current writing mode), only
///   [SnapEvent.snapTargetInline] returns an element reference.
/// - If the snap axis is specified as `both`, `snapTargetBlock` and
///   `snapTargetInline` return an element reference.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SnapEvent).
extension type SnapEvent._(JSObject _) implements Event, JSObject {
  external factory SnapEvent(
    String type, [
    SnapEventInit eventInitDict,
  ]);

  /// The **`snapTargetBlock`** read-only property of the
  /// [SnapEvent] interface returns a reference to the element snapped to in the
  /// block direction when the event fired.
  ///
  /// Specifically:
  ///
  /// - In the case of the [Element.scrollsnapchanging_event] event, this refers
  ///   to a pending block-direction snap target (i.e. it will be selected when
  ///   the current scroll gesture ends).
  /// - In the case of the [Element.scrollsnapchange_event] event, this refers
  ///   to a newly-selected block-direction snap target.
  ///
  /// The property values available on `SnapEvent` correspond directly to the
  /// value of the  CSS property set on the scroll container. `snapTargetBlock`
  /// only returns an element reference if the snap axis is specified as `block`
  /// (or a physical axis value that equates to `block` in the current writing
  /// mode) or `both`.
  external Node? get snapTargetBlock;

  /// The **`snapTargetInline`** read-only property of the
  /// [SnapEvent] interface returns a reference to the element snapped to in the
  /// inline direction when the event fired.
  ///
  /// Specifically:
  ///
  /// - In the case of the [Element.scrollsnapchanging_event] event, this refers
  ///   to a pending inline-direction snap target (i.e. it will be selected when
  ///   the current scroll gesture ends).
  /// - In the case of the [Element.scrollsnapchange_event] event, this refers
  ///   to a newly-selected inline-direction snap target.
  ///
  /// The property values available on `SnapEvent` correspond directly to the
  /// value of the  CSS property set on the scroll container. `snapTargetInline`
  /// only returns an element reference if the snap axis is specified as
  /// `inline` (or a physical axis value that equates to `inline` in the current
  /// writing mode) or `both`.
  external Node? get snapTargetInline;
}
