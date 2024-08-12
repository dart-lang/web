// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef ConstrainPoint2D = JSObject;
extension type MediaSettingsRange._(JSObject _) implements JSObject {
  external factory MediaSettingsRange({
    num max,
    num min,
    num step,
  });

  external double get max;
  external set max(num value);
  external double get min;
  external set min(num value);
  external double get step;
  external set step(num value);
}
extension type ConstrainPoint2DParameters._(JSObject _) implements JSObject {
  external factory ConstrainPoint2DParameters({
    JSArray<Point2D> exact,
    JSArray<Point2D> ideal,
  });

  external JSArray<Point2D> get exact;
  external set exact(JSArray<Point2D> value);
  external JSArray<Point2D> get ideal;
  external set ideal(JSArray<Point2D> value);
}
extension type Point2D._(JSObject _) implements JSObject {
  external factory Point2D({
    num x,
    num y,
  });

  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
}
