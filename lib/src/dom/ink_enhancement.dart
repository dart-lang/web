// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'pointerevents.dart';

extension type Ink._(JSObject _) implements JSObject {
  /// The **`requestPresenter()`** method of the [Ink] interface returns a
  /// `Promise` that fulfills with an [InkPresenter] object to handle rendering
  /// strokes.
  external JSPromise requestPresenter([InkPresenterParam param]);
}
extension type InkPresenterParam._(JSObject _) implements JSObject {
  external factory InkPresenterParam({Element? presentationArea});

  external set presentationArea(Element? value);
  external Element? get presentationArea;
}
extension type InkPresenter._(JSObject _) implements JSObject {
  /// The **`updateInkTrailStartPoint()`** method of the [InkPresenter]
  /// interface indicates which [PointerEvent] was used as the last rendering
  /// point for the current frame, allowing the OS-level compositor to render a
  /// delegated ink trail ahead of the next pointer event being dispatched.
  external void updateInkTrailStartPoint(
    PointerEvent event,
    InkTrailStyle style,
  );
  external Element? get presentationArea;
  external int get expectedImprovement;
}
extension type InkTrailStyle._(JSObject _) implements JSObject {
  external factory InkTrailStyle({
    required String color,
    required num diameter,
  });

  external set color(String value);
  external String get color;
  external set diameter(num value);
  external num get diameter;
}
