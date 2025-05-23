// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

/// The **`CSSLayerBlockRule`** represents a  block rule.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSLayerBlockRule).
extension type CSSLayerBlockRule._(JSObject _)
    implements CSSGroupingRule, JSObject {
  /// The read-only **`name`** property of the [CSSLayerBlockRule] interface
  /// represents the name of the associated cascade layer.
  external String get name;
}

/// The **`CSSLayerStatementRule`** represents a  statement rule. Unlike
/// [CSSLayerBlockRule], it doesn't contain other rules and merely defines one
/// or several layers by providing their names.
///
/// This rule allows to explicitly declare the ordering layer that is in an
/// apparent way at the beginning of a CSS file: the layer order is defined by
/// the order of first occurrence of each layer name. Declaring them with a
/// statement allows the reader to understand the layer order. It also allows
/// inline and imported layers to be interleaved, which is not possible when
/// using the `CSSLayerBlockRule` syntax.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSLayerStatementRule).
extension type CSSLayerStatementRule._(JSObject _)
    implements CSSRule, JSObject {
  /// The read-only **`nameList`** property of the [CSSLayerStatementRule]
  /// interface return the list of associated cascade layer names. The names
  /// can't be modified.
  external JSArray<JSString> get nameList;
}
