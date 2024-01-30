// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'cssom.dart';

extension type CSSFontFaceRule._(JSObject _) implements CSSRule, JSObject {
  external CSSStyleDeclaration get style;
}
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
extension type CSSFontPaletteValuesRule._(JSObject _)
    implements CSSRule, JSObject {
  external String get name;
  external String get fontFamily;
  external String get basePalette;
  external String get overrideColors;
}
