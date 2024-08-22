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

/// An object implementing the **`CSSConditionRule`** interface represents a
/// single condition CSS
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule), which
/// consists of a condition and a statement block.
///
/// Three objects derive from `CSSConditionRule`: [CSSMediaRule],
/// [CSSContainerRule] and [CSSSupportsRule].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSConditionRule).
extension type CSSConditionRule._(JSObject _)
    implements CSSGroupingRule, JSObject {
  /// The read-only **`conditionText`** property of
  /// the [CSSConditionRule] interface returns or sets the text of the CSS
  /// rule.
  external String get conditionText;
}

/// The **`CSSMediaRule`** interface represents a single CSS  rule.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule).
extension type CSSMediaRule._(JSObject _)
    implements CSSConditionRule, JSObject {
  /// The read-only **`media`** property of the
  /// [CSSMediaRule] interface [MediaList] represents the intended
  /// destination medium for style information.
  external MediaList get media;
}

/// The **`CSSSupportsRule`** interface represents a single CSS
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule).
extension type CSSSupportsRule._(JSObject _)
    implements CSSConditionRule, JSObject {}
