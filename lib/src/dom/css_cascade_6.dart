// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'cssom.dart';

/// The **`CSSScopeRule`** interface of the
/// [CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// represents a CSS  at-rule.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSScopeRule).
extension type CSSScopeRule._(JSObject _) implements CSSGroupingRule, JSObject {
  /// The **`start`** property of the [CSSScopeRule] interface returns a string
  /// containing the value of the `@scope` at-rule's scope root.
  external String? get start;

  /// The **`end`** property of the [CSSScopeRule] interface returns a string
  /// containing the value of the `@scope` at-rule's scope limit.
  external String? get end;
}
