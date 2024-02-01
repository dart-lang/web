// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'geometry.dart';
import 'html.dart';

extension type TextDetector._(JSObject _) implements JSObject {
  external factory TextDetector();

  external JSPromise detect(ImageBitmapSource image);
}
extension type DetectedText._(JSObject _) implements JSObject {
  external factory DetectedText({
    required DOMRectReadOnly boundingBox,
    required String rawValue,
    required JSArray cornerPoints,
  });

  external set boundingBox(DOMRectReadOnly value);
  external DOMRectReadOnly get boundingBox;
  external set rawValue(String value);
  external String get rawValue;
  external set cornerPoints(JSArray value);
  external JSArray get cornerPoints;
}
