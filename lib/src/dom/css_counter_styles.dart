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

/// The **`CSSCounterStyleRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
extension type CSSCounterStyleRule._(JSObject _) implements CSSRule, JSObject {
  external set name(String value);
  external String get name;
  external set system(String value);
  external String get system;
  external set symbols(String value);
  external String get symbols;
  external set additiveSymbols(String value);
  external String get additiveSymbols;
  external set negative(String value);
  external String get negative;
  external set prefix(String value);
  external String get prefix;
  external set suffix(String value);
  external String get suffix;
  external set range(String value);
  external String get range;
  external set pad(String value);
  external String get pad;
  external set speakAs(String value);
  external String get speakAs;
  external set fallback(String value);
  external String get fallback;
}
