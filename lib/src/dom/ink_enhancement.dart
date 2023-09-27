// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'pointerevents.dart';

@JS('Ink')
@staticInterop
class Ink implements JSObject {}

extension InkExtension on Ink {
  external JSPromise requestPresenter([InkPresenterParam param]);
}

@JS()
@staticInterop
@anonymous
class InkPresenterParam implements JSObject {
  external factory InkPresenterParam({Element? presentationArea});
}

extension InkPresenterParamExtension on InkPresenterParam {
  external set presentationArea(Element? value);
  external Element? get presentationArea;
}

@JS('InkPresenter')
@staticInterop
class InkPresenter implements JSObject {}

extension InkPresenterExtension on InkPresenter {
  external JSVoid updateInkTrailStartPoint(
    PointerEvent event,
    InkTrailStyle style,
  );
  external Element? get presentationArea;
  external int get expectedImprovement;
}

@JS()
@staticInterop
@anonymous
class InkTrailStyle implements JSObject {
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
