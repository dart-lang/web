// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'css_highlight_api.dart';
import 'css_parser_api.dart';
import 'css_properties_values_api.dart';
import 'css_typed_om.dart';
import 'html.dart';

@JS('MediaList')
@staticInterop
class MediaList {
  external factory MediaList();
}

extension MediaListExtension on MediaList {
  external set mediaText(JSString value);
  external JSString get mediaText;
  external JSNumber get length;
  external JSString? item(JSNumber index);
  external JSVoid appendMedium(JSString medium);
  external JSVoid deleteMedium(JSString medium);
}

@JS('StyleSheet')
@staticInterop
class StyleSheet {
  external factory StyleSheet();
}

extension StyleSheetExtension on StyleSheet {
  external JSString get type;
  external JSString? get href;
  external JSAny? get ownerNode;
  external CSSStyleSheet? get parentStyleSheet;
  external JSString? get title;
  external MediaList get media;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
}

@JS('CSSStyleSheet')
@staticInterop
class CSSStyleSheet extends StyleSheet {
  external factory CSSStyleSheet();

  external factory CSSStyleSheet.a1();

  external factory CSSStyleSheet.a2(CSSStyleSheetInit options);
}

extension CSSStyleSheetExtension on CSSStyleSheet {
  external CSSRule? get ownerRule;
  external CSSRuleList get cssRules;
  external JSNumber insertRule(JSString rule);
  external JSNumber insertRule1(
    JSString rule,
    JSNumber index,
  );
  external JSVoid deleteRule(JSNumber index);
  external JSPromise replace(JSString text);
  external JSVoid replaceSync(JSString text);
  external CSSRuleList get rules;
  external JSNumber addRule();
  external JSNumber addRule1(JSString selector);
  external JSNumber addRule2(
    JSString selector,
    JSString style,
  );
  external JSNumber addRule3(
    JSString selector,
    JSString style,
    JSNumber index,
  );
  external JSVoid removeRule();
  external JSVoid removeRule1(JSNumber index);
}

@JS('CSSStyleSheetInit')
@staticInterop
class CSSStyleSheetInit {
  external factory CSSStyleSheetInit();
}

extension CSSStyleSheetInitExtension on CSSStyleSheetInit {}

@JS('StyleSheetList')
@staticInterop
class StyleSheetList {
  external factory StyleSheetList();
}

extension StyleSheetListExtension on StyleSheetList {
  external CSSStyleSheet? item(JSNumber index);
  external JSNumber get length;
}

@JS('LinkStyle')
@staticInterop
class LinkStyle {
  external factory LinkStyle();
}

extension LinkStyleExtension on LinkStyle {
  external CSSStyleSheet? get sheet;
}

@JS('CSSRuleList')
@staticInterop
class CSSRuleList {
  external factory CSSRuleList();
}

extension CSSRuleListExtension on CSSRuleList {
  external CSSRule? item(JSNumber index);
  external JSNumber get length;
}

@JS('CSSRule')
@staticInterop
class CSSRule {
  external factory CSSRule();

  external static JSNumber get KEYFRAMES_RULE;
  external static JSNumber get KEYFRAME_RULE;
  external static JSNumber get SUPPORTS_RULE;
  external static JSNumber get COUNTER_STYLE_RULE;
  external static JSNumber get FONT_FEATURE_VALUES_RULE;
  external static JSNumber get STYLE_RULE;
  external static JSNumber get CHARSET_RULE;
  external static JSNumber get IMPORT_RULE;
  external static JSNumber get MEDIA_RULE;
  external static JSNumber get FONT_FACE_RULE;
  external static JSNumber get PAGE_RULE;
  external static JSNumber get MARGIN_RULE;
  external static JSNumber get NAMESPACE_RULE;
}

extension CSSRuleExtension on CSSRule {
  external set cssText(JSString value);
  external JSString get cssText;
  external CSSRule? get parentRule;
  external CSSStyleSheet? get parentStyleSheet;
  external JSNumber get type;
}

@JS('CSSStyleRule')
@staticInterop
class CSSStyleRule extends CSSRule {
  external factory CSSStyleRule();
}

extension CSSStyleRuleExtension on CSSStyleRule {
  external CSSRuleList get cssRules;
  external JSNumber insertRule(JSString rule);
  external JSNumber insertRule1(
    JSString rule,
    JSNumber index,
  );
  external JSVoid deleteRule(JSNumber index);
  external StylePropertyMap get styleMap;
  external set selectorText(JSString value);
  external JSString get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSImportRule')
@staticInterop
class CSSImportRule extends CSSRule {
  external factory CSSImportRule();
}

extension CSSImportRuleExtension on CSSImportRule {
  external JSString? get layerName;
  external JSString get href;
  external MediaList get media;
  external CSSStyleSheet get styleSheet;
}

@JS('CSSGroupingRule')
@staticInterop
class CSSGroupingRule extends CSSRule {
  external factory CSSGroupingRule();
}

extension CSSGroupingRuleExtension on CSSGroupingRule {
  external CSSRuleList get cssRules;
  external JSNumber insertRule(JSString rule);
  external JSNumber insertRule1(
    JSString rule,
    JSNumber index,
  );
  external JSVoid deleteRule(JSNumber index);
}

@JS('CSSPageRule')
@staticInterop
class CSSPageRule extends CSSGroupingRule {
  external factory CSSPageRule();
}

extension CSSPageRuleExtension on CSSPageRule {
  external set selectorText(JSString value);
  external JSString get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSMarginRule')
@staticInterop
class CSSMarginRule extends CSSRule {
  external factory CSSMarginRule();
}

extension CSSMarginRuleExtension on CSSMarginRule {
  external JSString get name;
  external CSSStyleDeclaration get style;
}

@JS('CSSNamespaceRule')
@staticInterop
class CSSNamespaceRule extends CSSRule {
  external factory CSSNamespaceRule();
}

extension CSSNamespaceRuleExtension on CSSNamespaceRule {
  external JSString get namespaceURI;
  external JSString get prefix;
}

@JS('CSSStyleDeclaration')
@staticInterop
class CSSStyleDeclaration {
  external factory CSSStyleDeclaration();
}

extension CSSStyleDeclarationExtension on CSSStyleDeclaration {
  external set cssText(JSString value);
  external JSString get cssText;
  external JSNumber get length;
  external JSString item(JSNumber index);
  external JSString getPropertyValue(JSString property);
  external JSString getPropertyPriority(JSString property);
  external JSVoid setProperty(
    JSString property,
    JSString value,
  );
  external JSVoid setProperty1(
    JSString property,
    JSString value,
    JSString priority,
  );
  external JSString removeProperty(JSString property);
  external CSSRule? get parentRule;
  external set cssFloat(JSString value);
  external JSString get cssFloat;
}

@JS('ElementCSSInlineStyle')
@staticInterop
class ElementCSSInlineStyle {
  external factory ElementCSSInlineStyle();
}

extension ElementCSSInlineStyleExtension on ElementCSSInlineStyle {
  external StylePropertyMap get attributeStyleMap;
  external CSSStyleDeclaration get style;
}

@JS()
external _CSS get CSS;

@JS('CSS')
@staticInterop
class _CSS {
  external factory _CSS();
}

extension _CSSExtension on _CSS {
  external Worklet get animationWorklet;
  external JSBoolean supports(
    JSString property,
    JSString value,
  );
  @JS('supports')
  external JSBoolean supports_1_(JSString conditionText);
  external HighlightRegistry get highlights;
  external JSAny get elementSources;
  external Worklet get layoutWorklet;
  external Worklet get paintWorklet;
  external JSPromise parseStylesheet(CSSStringSource css);
  external JSPromise parseStylesheet1(
    CSSStringSource css,
    CSSParserOptions options,
  );
  external JSPromise parseRuleList(CSSStringSource css);
  external JSPromise parseRuleList1(
    CSSStringSource css,
    CSSParserOptions options,
  );
  external JSPromise parseRule(CSSStringSource css);
  external JSPromise parseRule1(
    CSSStringSource css,
    CSSParserOptions options,
  );
  external JSPromise parseDeclarationList(CSSStringSource css);
  external JSPromise parseDeclarationList1(
    CSSStringSource css,
    CSSParserOptions options,
  );
  external CSSParserDeclaration parseDeclaration(JSString css);
  external CSSParserDeclaration parseDeclaration1(
    JSString css,
    CSSParserOptions options,
  );
  external CSSToken parseValue(JSString css);
  external JSArray parseValueList(JSString css);
  external JSArray parseCommaValueList(JSString css);
  external JSVoid registerProperty(PropertyDefinition definition);
  external CSSUnitValue number(JSNumber value);
  external CSSUnitValue percent(JSNumber value);
  external CSSUnitValue em(JSNumber value);
  external CSSUnitValue ex(JSNumber value);
  external CSSUnitValue ch(JSNumber value);
  external CSSUnitValue ic(JSNumber value);
  external CSSUnitValue rem(JSNumber value);
  external CSSUnitValue lh(JSNumber value);
  external CSSUnitValue rlh(JSNumber value);
  external CSSUnitValue vw(JSNumber value);
  external CSSUnitValue vh(JSNumber value);
  external CSSUnitValue vi(JSNumber value);
  external CSSUnitValue vb(JSNumber value);
  external CSSUnitValue vmin(JSNumber value);
  external CSSUnitValue vmax(JSNumber value);
  external CSSUnitValue svw(JSNumber value);
  external CSSUnitValue svh(JSNumber value);
  external CSSUnitValue svi(JSNumber value);
  external CSSUnitValue svb(JSNumber value);
  external CSSUnitValue svmin(JSNumber value);
  external CSSUnitValue svmax(JSNumber value);
  external CSSUnitValue lvw(JSNumber value);
  external CSSUnitValue lvh(JSNumber value);
  external CSSUnitValue lvi(JSNumber value);
  external CSSUnitValue lvb(JSNumber value);
  external CSSUnitValue lvmin(JSNumber value);
  external CSSUnitValue lvmax(JSNumber value);
  external CSSUnitValue dvw(JSNumber value);
  external CSSUnitValue dvh(JSNumber value);
  external CSSUnitValue dvi(JSNumber value);
  external CSSUnitValue dvb(JSNumber value);
  external CSSUnitValue dvmin(JSNumber value);
  external CSSUnitValue dvmax(JSNumber value);
  external CSSUnitValue cqw(JSNumber value);
  external CSSUnitValue cqh(JSNumber value);
  external CSSUnitValue cqi(JSNumber value);
  external CSSUnitValue cqb(JSNumber value);
  external CSSUnitValue cqmin(JSNumber value);
  external CSSUnitValue cqmax(JSNumber value);
  external CSSUnitValue cm(JSNumber value);
  external CSSUnitValue mm(JSNumber value);
  external CSSUnitValue Q(JSNumber value);
  @JS('in')
  external CSSUnitValue in_0_(JSNumber value);
  external CSSUnitValue pt(JSNumber value);
  external CSSUnitValue pc(JSNumber value);
  external CSSUnitValue px(JSNumber value);
  external CSSUnitValue deg(JSNumber value);
  external CSSUnitValue grad(JSNumber value);
  external CSSUnitValue rad(JSNumber value);
  external CSSUnitValue turn(JSNumber value);
  external CSSUnitValue s(JSNumber value);
  external CSSUnitValue ms(JSNumber value);
  external CSSUnitValue Hz(JSNumber value);
  external CSSUnitValue kHz(JSNumber value);
  external CSSUnitValue dpi(JSNumber value);
  external CSSUnitValue dpcm(JSNumber value);
  external CSSUnitValue dppx(JSNumber value);
  external CSSUnitValue fr(JSNumber value);
  external JSString escape(JSString ident);
}
