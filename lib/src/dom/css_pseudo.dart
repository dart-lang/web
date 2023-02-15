// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'cssom_view.dart';
import 'dom.dart';

@JS('CSSPseudoElement')
@staticInterop
class CSSPseudoElement extends EventTarget implements GeometryUtils {
  external factory CSSPseudoElement();
}

extension CSSPseudoElementExtension on CSSPseudoElement {
  external JSString get type;
  external Element get element;
  external JSAny get parent;
  external CSSPseudoElement? pseudo(JSString type);
}
