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
import 'web_animations.dart';

/// The **`CSSStartingStyleRule`** interface of the
/// [CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// represents a CSS  at-rule.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSStartingStyleRule).
extension type CSSStartingStyleRule._(JSObject _)
    implements CSSGroupingRule, JSObject {}

/// The **`CSSTransition`** interface of the [Web Animations API] represents an
/// [Animation] object used for a
/// [CSS Transition](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transitions).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSTransition).
extension type CSSTransition._(JSObject _) implements Animation, JSObject {
  /// The **`transitionProperty`** property of the
  /// [CSSTransition] interface returns the **expanded transition property
  /// name** of the transition. This is the longhand CSS property for which the
  /// transition was generated.
  external String get transitionProperty;
}
