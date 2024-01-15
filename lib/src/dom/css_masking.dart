// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'status.dart';
import 'svg.dart';

@JS('SVGClipPathElement')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class SVGClipPathElement implements SVGElement {}

extension SVGClipPathElementExtension on SVGClipPathElement {
  external SVGAnimatedEnumeration get clipPathUnits;
  external SVGAnimatedTransformList get transform;
}

@JS('SVGMaskElement')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class SVGMaskElement implements SVGElement {}

extension SVGMaskElementExtension on SVGMaskElement {
  external SVGAnimatedEnumeration get maskUnits;
  external SVGAnimatedEnumeration get maskContentUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}
