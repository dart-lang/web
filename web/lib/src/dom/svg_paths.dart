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
import 'geometry.dart';
import 'svg.dart';

/// The **`SVGPathElement`** interface corresponds to the  element.
///
/// > [!NOTE]
/// > In SVG 2 the `getPathSegAtLength()` and `createSVGPathSeg*` methods were
/// > removed and the `pathLength` property and the `getTotalLength()` and
/// > `getPointAtLength()` methods were moved to [SVGGeometryElement].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement).
extension type SVGPathElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGPathElement] using the tag 'path'.
  SVGPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'path',
        );

  external double getTotalLength();
  external DOMPoint getPointAtLength(num distance);
  external SVGAnimatedNumber get pathLength;
}
