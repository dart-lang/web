// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'cssom.dart';
import 'dom.dart';
import 'html.dart';

@JS('MathMLElement')
@staticInterop
class MathMLElement
    implements
        Element,
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        HTMLOrSVGElement {}
