// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/cssom.dart';

@JS('PropertyDefinition')
@staticInterop
class PropertyDefinition {
  external factory PropertyDefinition();
}

extension PropertyDefinitionExtension on PropertyDefinition {}

@JS('CSSPropertyRule')
@staticInterop
class CSSPropertyRule extends CSSRule {
  external factory CSSPropertyRule();
}

extension CSSPropertyRuleExtension on CSSPropertyRule {
  external JSString get name;
  external JSString get syntax;
  external JSBoolean get inherits;
  external JSString? get initialValue;
}
