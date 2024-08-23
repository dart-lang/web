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

/// The **`CSSCounterStyleRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSCounterStyleRule).
extension type CSSCounterStyleRule._(JSObject _) implements CSSRule, JSObject {
  /// The **`name`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the  defined as the `name` for the associated rule.
  external String get name;
  external set name(String value);

  /// The **`system`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get system;
  external set system(String value);

  /// The **`symbols`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get symbols;
  external set symbols(String value);

  /// The **`additiveSymbols`** property of the [CSSCounterStyleRule] interface
  /// gets and sets the value of the  descriptor. If the descriptor does not
  /// have a value set, this attribute returns an empty string.
  external String get additiveSymbols;
  external set additiveSymbols(String value);

  /// The **`negative`** property of the [CSSCounterStyleRule] interface gets
  /// and sets the value of the  descriptor. If the descriptor does not have a
  /// value set, this attribute returns an empty string.
  external String get negative;
  external set negative(String value);

  /// The **`prefix`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get prefix;
  external set prefix(String value);

  /// The **`suffix`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get suffix;
  external set suffix(String value);

  /// The **`range`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get range;
  external set range(String value);

  /// The **`pad`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get pad;
  external set pad(String value);

  /// The **`speakAs`** property of the [CSSCounterStyleRule] interface gets and
  /// sets the value of the  descriptor. If the descriptor does not have a value
  /// set, this attribute returns an empty string.
  external String get speakAs;
  external set speakAs(String value);

  /// The **`fallback`** property of the [CSSCounterStyleRule] interface gets
  /// and sets the value of the  descriptor. If the descriptor does not have a
  /// value set, this attribute returns an empty string.
  external String get fallback;
  external set fallback(String value);
}
