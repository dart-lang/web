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

import 'css_typed_om.dart';
import 'dom.dart';
import 'web_animations.dart';

typedef ScrollAxis = String;
extension type ScrollTimelineOptions._(JSObject _) implements JSObject {
  external factory ScrollTimelineOptions({
    Element? source,
    ScrollAxis axis,
  });

  external Element? get source;
  external set source(Element? value);
  external ScrollAxis get axis;
  external set axis(ScrollAxis value);
}

/// The **`ScrollTimeline`** interface of the [Web Animations API] represents a
/// scroll progress timeline (see
/// [CSS scroll-driven animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_scroll-driven_animations)
/// for more details).
///
/// Pass a `ScrollTimeline` instance to the [Animation.Animation] constructor or
/// the [Element.animate] method to specify it as the timeline that will control
/// the progress of the animation.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ScrollTimeline).
extension type ScrollTimeline._(JSObject _)
    implements AnimationTimeline, JSObject {
  external factory ScrollTimeline([ScrollTimelineOptions options]);

  /// The **`source`** read-only property of the
  /// [ScrollTimeline] interface returns a reference to the scrollable element
  /// (_scroller_) whose scroll position is driving the progress of the timeline
  /// and therefore the animation.
  external Element? get source;

  /// The **`axis`** read-only property of the
  /// [ScrollTimeline] interface returns an enumerated value representing the
  /// scroll axis that is driving the progress of the timeline.
  external ScrollAxis get axis;
}
extension type ViewTimelineOptions._(JSObject _) implements JSObject {
  external factory ViewTimelineOptions({
    Element subject,
    ScrollAxis axis,
    JSAny inset,
  });

  external Element get subject;
  external set subject(Element value);
  external ScrollAxis get axis;
  external set axis(ScrollAxis value);
  external JSAny get inset;
  external set inset(JSAny value);
}

/// The **`ViewTimeline`** interface of the [Web Animations API] represents a
/// view progress timeline (see
/// [CSS scroll-driven animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_scroll-driven_animations)
/// for more details).
///
/// Pass a `ViewTimeline` instance to the [Animation.Animation] constructor or
/// the [Element.animate] method to specify it as the timeline that will control
/// the progress of the animation.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ViewTimeline).
extension type ViewTimeline._(JSObject _) implements ScrollTimeline, JSObject {
  external factory ViewTimeline([ViewTimelineOptions options]);

  /// The **`subject`** read-only property of the [ViewTimeline] interface
  /// returns a reference to the subject element whose visibility within its
  /// nearest ancestor scrollable element (scroller) is driving the progress of
  /// the timeline.
  external Element get subject;

  /// The **`startOffset`** read-only property of the [ViewTimeline] interface
  /// returns a [CSSNumericValue] representing the starting (0% progress) scroll
  /// position of the timeline as an offset from the start of the overflowing
  /// section of content in the scroller.
  external CSSNumericValue get startOffset;

  /// The **`endOffset`** read-only property of the [ViewTimeline] interface
  /// returns a [CSSNumericValue] representing the ending (100% progress) scroll
  /// position of the timeline as an offset from the start of the overflowing
  /// section of content in the scroller.
  external CSSNumericValue get endOffset;
}
