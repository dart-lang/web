// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

  external set source(Element? value);
  external Element? get source;
  external set axis(ScrollAxis value);
  external ScrollAxis get axis;
}

/// The **`ScrollTimeline`** interface of the [Web Animations API] represents a
/// scroll progress timeline (see
/// [CSS scroll-driven animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_scroll-driven_animations)
/// for more details).
///
/// Pass a `ScrollTimeline` instance to the [Animation.Animation] constructor or
/// the [Element.animate] method to specify it as the timeline that will control
/// the progress of the animation.
extension type ScrollTimeline._(JSObject _)
    implements AnimationTimeline, JSObject {
  external factory ScrollTimeline([ScrollTimelineOptions options]);

  external Element? get source;
  external ScrollAxis get axis;
}
extension type ViewTimelineOptions._(JSObject _) implements JSObject {
  external factory ViewTimelineOptions({
    Element subject,
    ScrollAxis axis,
    JSAny inset,
  });

  external set subject(Element value);
  external Element get subject;
  external set axis(ScrollAxis value);
  external ScrollAxis get axis;
  external set inset(JSAny value);
  external JSAny get inset;
}

/// The **`ViewTimeline`** interface of the [Web Animations API] represents a
/// view progress timeline (see
/// [CSS scroll-driven animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_scroll-driven_animations)
/// for more details).
///
/// Pass a `ViewTimeline` instance to the [Animation.Animation] constructor or
/// the [Element.animate] method to specify it as the timeline that will control
/// the progress of the animation.
extension type ViewTimeline._(JSObject _) implements ScrollTimeline, JSObject {
  external factory ViewTimeline([ViewTimelineOptions options]);

  external Element get subject;
  external CSSNumericValue get startOffset;
  external CSSNumericValue get endOffset;
}
