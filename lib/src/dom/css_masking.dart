// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('SVGClipPathElement')
@staticInterop
class SVGClipPathElement extends SVGElement {
  external factory SVGClipPathElement();
}

extension SVGClipPathElementExtension on SVGClipPathElement {
  external SVGAnimatedEnumeration get clipPathUnits;
  external SVGAnimatedTransformList get transform;
}

@JS('SVGMaskElement')
@staticInterop
class SVGMaskElement extends SVGElement {
  external factory SVGMaskElement();
}

extension SVGMaskElementExtension on SVGMaskElement {
  external SVGAnimatedEnumeration get maskUnits;
  external SVGAnimatedEnumeration get maskContentUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}
