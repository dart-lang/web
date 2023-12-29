// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'pointerevents.dart';

extension type Ink._(JSObject _) implements JSObject {}

extension InkExtension on Ink {
  external JSPromise requestPresenter([InkPresenterParam param]);
}

extension type InkPresenterParam._(JSObject _) implements JSObject {
  external factory InkPresenterParam({Element? presentationArea});
}

extension InkPresenterParamExtension on InkPresenterParam {
  external set presentationArea(Element? value);
  external Element? get presentationArea;
}

extension type InkPresenter._(JSObject _) implements JSObject {}

extension InkPresenterExtension on InkPresenter {
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
}

extension InkTrailStyleExtension on InkTrailStyle {
  external set color(String value);
  external String get color;
  external set diameter(num value);
  external num get diameter;
}
