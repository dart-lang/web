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

import 'cssom_view.dart';
import 'dom.dart';
import 'geometry.dart';

/// The **`CSSPseudoElement`** interface represents a pseudo-element that may be
/// the target of an event or animated using the [Web Animations API]. Instances
/// of this interface may be obtained by calling [Element.pseudo].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSPseudoElement).
extension type CSSPseudoElement._(JSObject _) implements EventTarget, JSObject {
  external CSSPseudoElement? pseudo(String type);
  external JSArray<DOMQuad> getBoxQuads([BoxQuadOptions options]);
  external DOMQuad convertQuadFromNode(
    DOMQuadInit quad,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMQuad convertRectFromNode(
    DOMRectReadOnly rect,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMPoint convertPointFromNode(
    DOMPointInit point,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);

  /// The **`type`** read-only property of the
  /// [CSSPseudoElement] interface returns the type of the pseudo-element as a
  /// string, represented in the form of a
  /// [CSS selector](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_pseudo-elements#selectors).
  external String get type;

  /// The **`element`** read-only property of the
  /// [CSSPseudoElement] interface returns a reference to the originating
  /// element
  /// of the pseudo-element, in other words its parent element.
  external Element get element;
  external JSObject get parent;
}
