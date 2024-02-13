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

import 'cssom.dart';

extension type PropertyDefinition._(JSObject _) implements JSObject {
  external factory PropertyDefinition({
    required String name,
    String syntax,
    required bool inherits,
    String initialValue,
  });

  external set name(String value);
  external String get name;
  external set syntax(String value);
  external String get syntax;
  external set inherits(bool value);
  external bool get inherits;
  external set initialValue(String value);
  external String get initialValue;
}

/// The **`CSSPropertyRule`** interface of the
/// [CSS Properties and Values API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Properties_and_Values_API)
/// represents a single CSS  rule.
extension type CSSPropertyRule._(JSObject _) implements CSSRule, JSObject {
  external String get name;
  external String get syntax;
  external bool get inherits;
  external String? get initialValue;
}
