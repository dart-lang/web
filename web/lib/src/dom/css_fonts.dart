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

/// The **`CSSFontFeatureValuesRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_syntax/At-rule),
/// letting developers assign for each font face a common name to specify
/// features indices to be used in .
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFeatureValuesRule).
extension type CSSFontFeatureValuesRule._(JSObject _)
    implements CSSRule, JSObject {
  /// The **`fontFamily`** property of the [CSSConditionRule] interface
  /// represents the name of the font family it applies to.
  external String get fontFamily;
  external set fontFamily(String value);
}

/// The **`CSSFontPaletteValuesRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_syntax/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSFontPaletteValuesRule).
extension type CSSFontPaletteValuesRule._(JSObject _)
    implements CSSRule, JSObject {
  /// The read-only **`name`** property of the [CSSFontPaletteValuesRule]
  /// interface represents the name identifying the associated  at-rule. A valid
  /// name always starts with two dashes, such as `--Alternate`.
  external String get name;

  /// The read-only **`fontFamily`** property of the [CSSFontPaletteValuesRule]
  /// interface lists the font families the rule can be applied to. The font
  /// families must be _named_ families; _generic_ families like `courier` are
  /// not valid.
  external String get fontFamily;

  /// The read-only **`basePalette`** property of the [CSSFontPaletteValuesRule]
  /// interface indicates the base palette associated with the rule.
  external String get basePalette;

  /// The read-only **`overrideColors`** property of the
  /// [CSSFontPaletteValuesRule] interface is a string containing a list of
  /// color index and color pair that are to be used instead. It is specified in
  /// the same format as the corresponding  descriptor.
  external String get overrideColors;
}
