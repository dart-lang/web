// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library scroll_animations;

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
extension type ViewTimeline._(JSObject _) implements ScrollTimeline, JSObject {
  external factory ViewTimeline([ViewTimelineOptions options]);

  external Element get subject;
  external CSSNumericValue get startOffset;
  external CSSNumericValue get endOffset;
}
