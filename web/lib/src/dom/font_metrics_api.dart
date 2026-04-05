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

extension type FontMetrics._(JSObject _) implements JSObject {
  external double get width;
  external JSArray<JSNumber> get advances;
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
  external JSArray<Baseline> get baselines;
  external JSArray<Font> get fonts;
}
extension type Baseline._(JSObject _) implements JSObject {
  external String get name;
  external double get value;
}
extension type Font._(JSObject _) implements JSObject {
  external String get name;
  external int get glyphsRendered;
}
