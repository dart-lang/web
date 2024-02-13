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

/// An object implementing the **`CSSConditionRule`** interface represents a
/// single condition CSS
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule), which
/// consists of a condition and a statement block.
///
/// Three objects derive from `CSSConditionRule`: [CSSMediaRule],
/// [CSSContainerRule] and [CSSSupportsRule].
extension type CSSConditionRule._(JSObject _)
    implements CSSGroupingRule, JSObject {
  external String get conditionText;
}

/// The **`CSSMediaRule`** interface represents a single CSS  rule.
extension type CSSMediaRule._(JSObject _)
    implements CSSConditionRule, JSObject {
  external MediaList get media;
}

/// The **`CSSSupportsRule`** interface represents a single CSS
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
extension type CSSSupportsRule._(JSObject _)
    implements CSSConditionRule, JSObject {}
