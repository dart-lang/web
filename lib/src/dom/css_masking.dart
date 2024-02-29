// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'svg.dart';

/// The **`SVGClipPathElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
extension type SVGClipPathElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGClipPathElement] using the tag 'clipPath'.
  SVGClipPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'clipPath',
        );

  external SVGAnimatedEnumeration get clipPathUnits;
  external SVGAnimatedTransformList get transform;
}

/// The **`SVGMaskElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
extension type SVGMaskElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGMaskElement] using the tag 'mask'.
  SVGMaskElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'mask',
        );

  external SVGAnimatedEnumeration get maskUnits;
  external SVGAnimatedEnumeration get maskContentUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}
