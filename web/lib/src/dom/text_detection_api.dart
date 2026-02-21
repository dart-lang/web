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

import 'geometry.dart';
import 'html.dart';
import 'image_capture.dart';

extension type TextDetector._(JSObject _) implements JSObject {
  external factory TextDetector();

  external JSPromise<JSArray<DetectedText>> detect(ImageBitmapSource image);
}
extension type DetectedText._(JSObject _) implements JSObject {
  external factory DetectedText({
    required DOMRectReadOnly boundingBox,
    required String rawValue,
    required JSArray<Point2D> cornerPoints,
  });

  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly value);
  external String get rawValue;
  external set rawValue(String value);
  external JSArray<Point2D> get cornerPoints;
  external set cornerPoints(JSArray<Point2D> value);
}
