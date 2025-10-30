// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

/// The **`CSSFontFaceRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_syntax/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule).
extension type CSSFontFaceRule._(JSObject _) implements CSSRule, JSObject {
  /// The read-only **`style`** property of the [CSSFontFaceRule] interface
  /// returns the style information from the
  /// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_syntax/At-rule).
  /// This will be in the form of a [CSSStyleDeclaration] object.
  external JSObject get style;
}
