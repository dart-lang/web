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

import 'dom.dart';
import 'pointerevents.dart';

/// The **`Ink`** interface of the
/// [Ink API](https://developer.mozilla.org/en-US/docs/Web/API/Ink_API) provides
/// access to [DelegatedInkTrailPresenter] objects for the application to use to
/// render ink strokes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Ink).
extension type Ink._(JSObject _) implements JSObject {
  /// The **`requestPresenter()`** method of the [Ink] interface returns a
  /// `Promise` that fulfills with a [DelegatedInkTrailPresenter] object to
  /// handle rendering strokes.
  external JSPromise<DelegatedInkTrailPresenter> requestPresenter(
      [InkPresenterParam param]);
}
extension type InkPresenterParam._(JSObject _) implements JSObject {
  external factory InkPresenterParam({Element? presentationArea});

  external Element? get presentationArea;
  external set presentationArea(Element? value);
}

/// The **`DelegatedInkTrailPresenter`** interface of the
/// [Ink API](https://developer.mozilla.org/en-US/docs/Web/API/Ink_API) provides
/// the ability to instruct the OS-level compositor to render ink strokes
/// between pointer event dispatches.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DelegatedInkTrailPresenter).
extension type DelegatedInkTrailPresenter._(JSObject _) implements JSObject {
  /// The **`updateInkTrailStartPoint()`** method of the
  /// [DelegatedInkTrailPresenter] interface indicates which [PointerEvent] was
  /// used as the last rendering point for the current frame, allowing the
  /// OS-level compositor to render a delegated ink trail ahead of the next
  /// pointer event being dispatched.
  external void updateInkTrailStartPoint(
    PointerEvent event,
    InkTrailStyle style,
  );

  /// The **`presentationArea`** read-only property of the
  /// [DelegatedInkTrailPresenter] interface returns the [Element] inside which
  /// rendering of ink strokes is confined.
  ///
  /// If the preceding [Ink.requestPresenter] method call included a specific
  /// `presentationArea` element definition, then that will be the element
  /// returned. Otherwise, the default is returned, which is the containing
  /// viewport.
  ///
  /// This area is always the client coordinates for the element's border box,
  /// so moving the element or scrolling the element requires no recalculation
  /// on the developer's part.
  ///
  /// ### Value
  ///
  /// An [Element].
  external Element? get presentationArea;
}
extension type InkTrailStyle._(JSObject _) implements JSObject {
  external factory InkTrailStyle({
    required String color,
    required num diameter,
  });

  external String get color;
  external set color(String value);
  external double get diameter;
  external set diameter(num value);
}
