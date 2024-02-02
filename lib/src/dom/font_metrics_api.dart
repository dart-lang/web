// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

extension type FontMetrics._(JSObject _) implements JSObject {
  external num get width;
  external JSArray<JSNumber> get advances;
  external num get boundingBoxLeft;
  external num get boundingBoxRight;
  external num get height;
  external num get emHeightAscent;
  external num get emHeightDescent;
  external num get boundingBoxAscent;
  external num get boundingBoxDescent;
  external num get fontBoundingBoxAscent;
  external num get fontBoundingBoxDescent;
  external Baseline get dominantBaseline;
  external JSArray<Baseline> get baselines;
  external JSArray<Font> get fonts;
}
extension type Baseline._(JSObject _) implements JSObject {
  external String get name;
  external num get value;
}
extension type Font._(JSObject _) implements JSObject {
  external String get name;
  external int get glyphsRendered;
}
