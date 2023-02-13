// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('Ink')
@staticInterop
class Ink {
  external factory Ink();
}

extension InkExtension on Ink {
  external JSPromise requestPresenter();
  external JSPromise requestPresenter_1(InkPresenterParam param);
}

@JS('InkPresenterParam')
@staticInterop
class InkPresenterParam {
  external factory InkPresenterParam();
}

extension InkPresenterParamExtension on InkPresenterParam {
  // TODO
}

@JS('InkPresenter')
@staticInterop
class InkPresenter {
  external factory InkPresenter();
}

extension InkPresenterExtension on InkPresenter {
  external Element? get presentationArea;
  external JSNumber get expectedImprovement;
  external JSUndefined updateInkTrailStartPoint(
      PointerEvent event, InkTrailStyle style);
}

@JS('InkTrailStyle')
@staticInterop
class InkTrailStyle {
  external factory InkTrailStyle();
}

extension InkTrailStyleExtension on InkTrailStyle {
  // TODO
  // TODO
}
