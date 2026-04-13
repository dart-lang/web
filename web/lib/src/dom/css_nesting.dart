// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'cssom.dart';

/// The **`CSSNestedDeclarations`** interface of the
/// [CSS Rule API](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule) is
/// used to group nested [CSSRule]s.
///
/// The interface allows the [CSS Object Model
/// (CSSOM](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// to mirror the structure of CSS documents with nested CSS rules, and ensure
/// that rules are parsed and evaluated in the order that they are declared.
///
/// > [!NOTE] > [Browser versions](#browser_compatibility) with implementations
/// > that do not support this interface may parse nested rules in the wrong
/// > order.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSNestedDeclarations).
extension type CSSNestedDeclarations._(JSObject _)
    implements CSSRule, JSObject {
  /// The read-only **`style`** property of the [CSSNestedDeclarations]
  /// interface represents the styles associated with the nested rules.
  external CSSStyleProperties get style;
}
