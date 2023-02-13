// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef ScrollAxis = JSString;

@JS('ScrollTimelineOptions')
@staticInterop
class ScrollTimelineOptions {
  external factory ScrollTimelineOptions();
}

extension ScrollTimelineOptionsExtension on ScrollTimelineOptions {
  // TODO
  // TODO
}

@JS('ScrollTimeline')
@staticInterop
class ScrollTimeline extends AnimationTimeline {
  external factory ScrollTimeline();
  external factory ScrollTimeline.a1();
  external factory ScrollTimeline.a1_1(ScrollTimelineOptions options);
}

extension ScrollTimelineExtension on ScrollTimeline {
  external Element? get source;
  external ScrollAxis get axis;
}

@JS('ViewTimelineOptions')
@staticInterop
class ViewTimelineOptions {
  external factory ViewTimelineOptions();
}

extension ViewTimelineOptionsExtension on ViewTimelineOptions {
  // TODO
  // TODO
}

@JS('ViewTimeline')
@staticInterop
class ViewTimeline extends ScrollTimeline {
  external factory ViewTimeline();
  external factory ViewTimeline.a1();
  external factory ViewTimeline.a1_1(ViewTimelineOptions options);
}

extension ViewTimelineExtension on ViewTimeline {
  external Element get subject;
  external CSSNumericValue get startOffset;
  external CSSNumericValue get endOffset;
}
