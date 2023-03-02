// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'css_typed_om.dart';
import 'dom.dart';
import 'web_animations.dart';

typedef ScrollAxis = JSString;

@JS()
@staticInterop
@anonymous
class ScrollTimelineOptions {
  external factory ScrollTimelineOptions({
    Element? source,
    ScrollAxis axis,
  });
}

extension ScrollTimelineOptionsExtension on ScrollTimelineOptions {
  external set source(Element? value);
  external Element? get source;
  external set axis(ScrollAxis value);
  external ScrollAxis get axis;
}

@JS('ScrollTimeline')
@staticInterop
class ScrollTimeline implements AnimationTimeline {
  external factory ScrollTimeline([ScrollTimelineOptions options]);
}

extension ScrollTimelineExtension on ScrollTimeline {
  external Element? get source;
  external ScrollAxis get axis;
}

@JS()
@staticInterop
@anonymous
class ViewTimelineOptions {
  external factory ViewTimelineOptions({
    Element subject,
    ScrollAxis axis,
  });
}

extension ViewTimelineOptionsExtension on ViewTimelineOptions {
  external set subject(Element value);
  external Element get subject;
  external set axis(ScrollAxis value);
  external ScrollAxis get axis;
}

@JS('ViewTimeline')
@staticInterop
class ViewTimeline implements ScrollTimeline {
  external factory ViewTimeline([ViewTimelineOptions options]);
}

extension ViewTimelineExtension on ViewTimeline {
  external Element get subject;
  external CSSNumericValue get startOffset;
  external CSSNumericValue get endOffset;
}
