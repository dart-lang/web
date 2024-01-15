// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'cssom.dart';
import 'status.dart';

@JS('CSSFontFaceRule')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class CSSFontFaceRule implements CSSRule {}

extension CSSFontFaceRuleExtension on CSSFontFaceRule {
  external CSSStyleDeclaration get style;
}

@JS('CSSFontFeatureValuesRule')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class CSSFontFeatureValuesRule implements CSSRule {}

extension CSSFontFeatureValuesRuleExtension on CSSFontFeatureValuesRule {
  external set fontFamily(String value);
  external String get fontFamily;
  external CSSFontFeatureValuesMap get annotation;
  external CSSFontFeatureValuesMap get ornaments;
  external CSSFontFeatureValuesMap get stylistic;
  external CSSFontFeatureValuesMap get swash;
  external CSSFontFeatureValuesMap get characterVariant;
  external CSSFontFeatureValuesMap get styleset;
}

@JS('CSSFontFeatureValuesMap')
@staticInterop
class CSSFontFeatureValuesMap {}

extension CSSFontFeatureValuesMapExtension on CSSFontFeatureValuesMap {
  external void set(
    String featureValueName,
    JSAny values,
  );
}

@JS('CSSFontPaletteValuesRule')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class CSSFontPaletteValuesRule implements CSSRule {}

extension CSSFontPaletteValuesRuleExtension on CSSFontPaletteValuesRule {
  external String get name;
  external String get fontFamily;
  external String get basePalette;
  external String get overrideColors;
}
