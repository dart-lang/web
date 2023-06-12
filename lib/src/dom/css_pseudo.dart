// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'cssom_view.dart';
import 'dom.dart';

@JS('CSSPseudoElement')
@staticInterop
class CSSPseudoElement implements EventTarget, GeometryUtils {}

extension CSSPseudoElementExtension on CSSPseudoElement {
  external CSSPseudoElement? pseudo(String type);
  external String get type;
  external Element get element;
  external JSAny? get parent;
}
