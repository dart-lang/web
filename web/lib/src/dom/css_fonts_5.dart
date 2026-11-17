// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore

@JS()
library;

import 'dart:js_interop';

import 'cssom.dart';

extension type CSSFontFaceDescriptors._(JSObject _)
    implements CSSStyleDeclaration, JSObject {
  external String get src;
  external set src(String value);
  external String get fontFamily;
  external set fontFamily(String value);
  @JS('font-family')
  external String get font_family;
  @JS('font-family')
  external set font_family(String value);
  external String get fontStyle;
  external set fontStyle(String value);
  @JS('font-style')
  external String get font_style;
  @JS('font-style')
  external set font_style(String value);
  external String get fontWeight;
  external set fontWeight(String value);
  @JS('font-weight')
  external String get font_weight;
  @JS('font-weight')
  external set font_weight(String value);
  external String get fontStretch;
  external set fontStretch(String value);
  @JS('font-stretch')
  external String get font_stretch;
  @JS('font-stretch')
  external set font_stretch(String value);
  external String get fontWidth;
  external set fontWidth(String value);
  @JS('font-width')
  external String get font_width;
  @JS('font-width')
  external set font_width(String value);
  external String get sizeAdjust;
  external set sizeAdjust(String value);
  @JS('size-adjust')
  external String get size_adjust;
  @JS('size-adjust')
  external set size_adjust(String value);
  external String get unicodeRange;
  external set unicodeRange(String value);
  @JS('unicode-range')
  external String get unicode_range;
  @JS('unicode-range')
  external set unicode_range(String value);
  external String get fontFeatureSettings;
  external set fontFeatureSettings(String value);
  @JS('font-feature-settings')
  external String get font_feature_settings;
  @JS('font-feature-settings')
  external set font_feature_settings(String value);
  external String get fontDisplay;
  external set fontDisplay(String value);
  @JS('font-display')
  external String get font_display;
  @JS('font-display')
  external set font_display(String value);
}

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
  external CSSFontFaceDescriptors get style;
}
