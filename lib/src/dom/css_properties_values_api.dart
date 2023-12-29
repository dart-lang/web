// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'cssom.dart';

extension type PropertyDefinition._(JSObject _) implements JSObject {
  external factory PropertyDefinition({
    required String name,
    String syntax,
    required bool inherits,
    String initialValue,
  });
}

extension PropertyDefinitionExtension on PropertyDefinition {
  external set name(String value);
  external String get name;
  external set syntax(String value);
  external String get syntax;
  external set inherits(bool value);
  external bool get inherits;
  external set initialValue(String value);
  external String get initialValue;
}

extension type CSSPropertyRule._(JSObject _) implements CSSRule, JSObject {}

extension CSSPropertyRuleExtension on CSSPropertyRule {
  external String get name;
  external String get syntax;
  external bool get inherits;
  external String? get initialValue;
}
