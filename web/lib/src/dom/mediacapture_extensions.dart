// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore

@JS()
library;

import 'dart:js_interop';

import 'geometry.dart';
import 'image_capture.dart';

typedef GetUserMediaSemantics = String;
typedef SegmentType = String;
extension type Segment._(JSObject _) implements JSObject {
  external factory Segment({
    required SegmentType type,
    required int id,
    int partOf,
    required num probability,
    Point2D centerPoint,
    DOMRectInit boundingBox,
  });

  external SegmentType get type;
  external set type(SegmentType value);
  external int get id;
  external set id(int value);
  external int get partOf;
  external set partOf(int value);
  external double get probability;
  external set probability(num value);
  external Point2D get centerPoint;
  external set centerPoint(Point2D value);
  external DOMRectInit get boundingBox;
  external set boundingBox(DOMRectInit value);
}
extension type BackgroundBlur._(JSObject _)
    implements MediaEffectInfo, JSObject {
  external factory BackgroundBlur({required bool enabled});
}
extension type MediaEffectInfo._(JSObject _) implements JSObject {
  external factory MediaEffectInfo({required bool enabled});

  external bool get enabled;
  external set enabled(bool value);
}
