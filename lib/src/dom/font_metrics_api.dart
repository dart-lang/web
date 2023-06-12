// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('FontMetrics')
@staticInterop
class FontMetrics implements JSObject {}

extension FontMetricsExtension on FontMetrics {
  external double get width;
  external JSArray get advances;
  external double get boundingBoxLeft;
  external double get boundingBoxRight;
  external double get height;
  external double get emHeightAscent;
  external double get emHeightDescent;
  external double get boundingBoxAscent;
  external double get boundingBoxDescent;
  external double get fontBoundingBoxAscent;
  external double get fontBoundingBoxDescent;
  external Baseline get dominantBaseline;
  external JSArray get baselines;
  external JSArray get fonts;
}

@JS('Baseline')
@staticInterop
class Baseline implements JSObject {}

extension BaselineExtension on Baseline {
  external String get name;
  external double get value;
}

@JS('Font')
@staticInterop
class Font implements JSObject {}

extension FontExtension on Font {
  external String get name;
  external int get glyphsRendered;
}
