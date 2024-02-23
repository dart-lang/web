// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'svg.dart';

extension type SVGClipPathElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGClipPathElement] using the tag 'clipPath'.
  SVGClipPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'clipPath',
        );

  external SVGAnimatedEnumeration get clipPathUnits;
  external SVGAnimatedTransformList get transform;
}
extension type SVGMaskElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGMaskElement] using the tag 'mask'.
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
