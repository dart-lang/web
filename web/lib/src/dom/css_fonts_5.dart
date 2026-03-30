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
  external String get fontSize;
  external set fontSize(String value);
  @JS('font-size')
  external String get font_size;
  @JS('font-size')
  external set font_size(String value);
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
  external String get fontVariationSettings;
  external set fontVariationSettings(String value);
  @JS('font-variation-settings')
  external String get font_variation_settings;
  @JS('font-variation-settings')
  external set font_variation_settings(String value);
  external String get fontNamedInstance;
  external set fontNamedInstance(String value);
  @JS('font-named-instance')
  external String get font_named_instance;
  @JS('font-named-instance')
  external set font_named_instance(String value);
  external String get fontDisplay;
  external set fontDisplay(String value);
  @JS('font-display')
  external String get font_display;
  @JS('font-display')
  external set font_display(String value);
  external String get fontLanguageOverride;
  external set fontLanguageOverride(String value);
  @JS('font-language-override')
  external String get font_language_override;
  @JS('font-language-override')
  external set font_language_override(String value);
  external String get ascentOverride;
  external set ascentOverride(String value);
  @JS('ascent-override')
  external String get ascent_override;
  @JS('ascent-override')
  external set ascent_override(String value);
  external String get descentOverride;
  external set descentOverride(String value);
  @JS('descent-override')
  external String get descent_override;
  @JS('descent-override')
  external set descent_override(String value);
  external String get lineGapOverride;
  external set lineGapOverride(String value);
  @JS('line-gap-override')
  external String get line_gap_override;
  @JS('line-gap-override')
  external set line_gap_override(String value);
  external String get superscriptPositionOverride;
  external set superscriptPositionOverride(String value);
  @JS('superscript-position-override')
  external String get superscript_position_override;
  @JS('superscript-position-override')
  external set superscript_position_override(String value);
  external String get subscriptPositionOverride;
  external set subscriptPositionOverride(String value);
  @JS('subscript-position-override')
  external String get subscript_position_override;
  @JS('subscript-position-override')
  external set subscript_position_override(String value);
  external String get superscriptSizeOverride;
  external set superscriptSizeOverride(String value);
  @JS('superscript-size-override')
  external String get superscript_size_override;
  @JS('superscript-size-override')
  external set superscript_size_override(String value);
  external String get subscriptSizeOverride;
  external set subscriptSizeOverride(String value);
  @JS('subscript-size-override')
  external String get subscript_size_override;
  @JS('subscript-size-override')
  external set subscript_size_override(String value);
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
