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

/// The **`Ink`** interface of the
/// [Ink API](https://developer.mozilla.org/en-US/docs/Web/API/Ink_API) provides
/// access to [InkPresenter] objects for the application to use to render ink
/// strokes.
@JS('Ink')
@staticInterop
class Ink {}

extension InkExtension on Ink {
  /// The **`requestPresenter()`** method of the [Ink] interface returns a
  /// `Promise` that fulfills with an [InkPresenter] object to handle rendering
  /// strokes.
  external JSPromise requestPresenter([InkPresenterParam param]);
}

@JS()
@staticInterop
@anonymous
class InkPresenterParam {
  external factory InkPresenterParam({Element? presentationArea});
}

extension InkPresenterParamExtension on InkPresenterParam {
  external set presentationArea(Element? value);
  external Element? get presentationArea;
}

/// The **`InkPresenter`** interface of the
/// [Ink API](https://developer.mozilla.org/en-US/docs/Web/API/Ink_API) provides
/// the ability to instruct the OS-level compositor to render ink strokes
/// between pointer event dispatches.
@JS('InkPresenter')
@staticInterop
class InkPresenter {}

extension InkPresenterExtension on InkPresenter {
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

@JS()
@staticInterop
@anonymous
class InkTrailStyle {
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
