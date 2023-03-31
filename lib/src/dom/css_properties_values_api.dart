// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'cssom.dart';

@JS()
@staticInterop
@anonymous
class PropertyDefinition {
  external factory PropertyDefinition({
    required JSString name,
    JSString syntax,
    required JSBoolean inherits,
    JSString initialValue,
  });
}

extension PropertyDefinitionExtension on PropertyDefinition {
  external set name(JSString value);
  external JSString get name;
  external set syntax(JSString value);
  external JSString get syntax;
  external set inherits(JSBoolean value);
  external JSBoolean get inherits;
  external set initialValue(JSString value);
  external JSString get initialValue;
}

@JS('CSSPropertyRule')
@staticInterop
class CSSPropertyRule implements CSSRule {}

extension CSSPropertyRuleExtension on CSSPropertyRule {
  external JSString get name;
  external JSString get syntax;
  external JSBoolean get inherits;
  external JSString? get initialValue;
}
