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

import 'css_conditional.dart';

/// The **`CSSContainerRule`** interface represents a single CSS  rule.
///
/// An object of this type can be used to get the query conditions for the ,
/// along with the container name if one is defined.
/// Note that the container name and query together define the "condition text",
/// which can be obtained using [CSSConditionRule.conditionText].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSContainerRule).
extension type CSSContainerRule._(JSObject _)
    implements CSSConditionRule, JSObject {
  /// The read-only **`containerName`** property of the [CSSContainerRule]
  /// interface represents the container name of the associated CSS  at-rule.
  ///
  /// For example, the value of `containerName` for the  below is `sidebar`:
  ///
  /// ```css
  /// @container sidebar (min-width: 700px) {
  ///   .card {
  ///     font-size: 2em;
  ///   }
  /// }
  /// ```
  external String get containerName;

  /// The read-only **`containerQuery`** property of the [CSSContainerRule]
  /// interface returns a string representing the container conditions that are
  /// evaluated when the container changes size in order to determine if the
  /// styles in the associated  are applied.
  ///
  /// For example, the value of `containerQuery` for the  below is `(min-width:
  /// 700px)`:
  ///
  /// ```css
  /// @container sidebar (min-width: 700px) {
  ///   .card {
  ///     font-size: 2em;
  ///   }
  /// }
  /// ```
  external String get containerQuery;
}
