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

/// The **`CSSFontFaceRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
extension type CSSFontFaceRule._(JSObject _) implements CSSRule, JSObject {
  external CSSStyleDeclaration get style;
}

/// The **`CSSFontFeatureValuesRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule), letting
/// developers assign for each font face a common name to specify features
/// indices to be used in .
extension type CSSFontFeatureValuesRule._(JSObject _)
    implements CSSRule, JSObject {
  external set fontFamily(String value);
  external String get fontFamily;
  external CSSFontFeatureValuesMap get annotation;
  external CSSFontFeatureValuesMap get ornaments;
  external CSSFontFeatureValuesMap get stylistic;
  external CSSFontFeatureValuesMap get swash;
  external CSSFontFeatureValuesMap get characterVariant;
  external CSSFontFeatureValuesMap get styleset;
}
extension type CSSFontFeatureValuesMap._(JSObject _) implements JSObject {
  external void set(
    String featureValueName,
    JSAny values,
  );
}

/// The **`CSSFontPaletteValuesRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
extension type CSSFontPaletteValuesRule._(JSObject _)
    implements CSSRule, JSObject {
  external String get name;
  external String get fontFamily;
  external String get basePalette;
  external String get overrideColors;
}
