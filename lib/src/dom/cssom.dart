// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'css_highlight_api.dart';
import 'css_parser_api.dart';
import 'css_properties_values_api.dart';
import 'css_typed_om.dart';
import 'html.dart';

@JS('MediaList')
@staticInterop
class MediaList implements JSObject {}

extension MediaListExtension on MediaList {
  external String? item(int index);
  external JSVoid appendMedium(String medium);
  external JSVoid deleteMedium(String medium);
  external set mediaText(String value);
  external String get mediaText;
  external int get length;
}

@JS('StyleSheet')
@staticInterop
class StyleSheet implements JSObject {}

extension StyleSheetExtension on StyleSheet {
  external String get type;
  external String? get href;
  external JSAny? get ownerNode;
  external CSSStyleSheet? get parentStyleSheet;
  external String? get title;
  external MediaList get media;
  external set disabled(bool value);
  external bool get disabled;
}

@JS('CSSStyleSheet')
@staticInterop
class CSSStyleSheet implements StyleSheet {
  external factory CSSStyleSheet([CSSStyleSheetInit options]);
}

extension CSSStyleSheetExtension on CSSStyleSheet {
  external int insertRule(
    String rule, [
    int index,
  ]);
  external JSVoid deleteRule(int index);
  external JSPromise replace(String text);
  external JSVoid replaceSync(String text);
  external int addRule([
    String selector,
    String style,
    int index,
  ]);
  external JSVoid removeRule([int index]);
  external CSSRule? get ownerRule;
  external CSSRuleList get cssRules;
  external CSSRuleList get rules;
}

@JS()
@staticInterop
@anonymous
class CSSStyleSheetInit implements JSObject {
  external factory CSSStyleSheetInit({
    String baseURL,
    JSAny? media,
    bool disabled,
  });
}

extension CSSStyleSheetInitExtension on CSSStyleSheetInit {
  external set baseURL(String value);
  external String get baseURL;
  external set media(JSAny? value);
  external JSAny? get media;
  external set disabled(bool value);
  external bool get disabled;
}

@JS('StyleSheetList')
@staticInterop
class StyleSheetList implements JSObject {}

extension StyleSheetListExtension on StyleSheetList {
  external CSSStyleSheet? item(int index);
  external int get length;
}

@JS('LinkStyle')
@staticInterop
class LinkStyle implements JSObject {}

extension LinkStyleExtension on LinkStyle {
  external CSSStyleSheet? get sheet;
}

@JS('CSSRuleList')
@staticInterop
class CSSRuleList implements JSObject {}

extension CSSRuleListExtension on CSSRuleList {
  external CSSRule? item(int index);
  external int get length;
}

@JS('CSSRule')
@staticInterop
class CSSRule implements JSObject {
  external static int get KEYFRAMES_RULE;
  external static int get KEYFRAME_RULE;
  external static int get SUPPORTS_RULE;
  external static int get COUNTER_STYLE_RULE;
  external static int get FONT_FEATURE_VALUES_RULE;
  external static int get STYLE_RULE;
  external static int get CHARSET_RULE;
  external static int get IMPORT_RULE;
  external static int get MEDIA_RULE;
  external static int get FONT_FACE_RULE;
  external static int get PAGE_RULE;
  external static int get MARGIN_RULE;
  external static int get NAMESPACE_RULE;
}

extension CSSRuleExtension on CSSRule {
  external set cssText(String value);
  external String get cssText;
  external CSSRule? get parentRule;
  external CSSStyleSheet? get parentStyleSheet;
  external int get type;
}

@JS('CSSStyleRule')
@staticInterop
class CSSStyleRule implements CSSGroupingRule {}

extension CSSStyleRuleExtension on CSSStyleRule {
  external StylePropertyMap get styleMap;
  external set selectorText(String value);
  external String get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSImportRule')
@staticInterop
class CSSImportRule implements CSSRule {}

extension CSSImportRuleExtension on CSSImportRule {
  external String get href;
  external MediaList get media;
  external CSSStyleSheet? get styleSheet;
  external String? get layerName;
  external String? get supportsText;
}

@JS('CSSGroupingRule')
@staticInterop
class CSSGroupingRule implements CSSRule {}

extension CSSGroupingRuleExtension on CSSGroupingRule {
  external int insertRule(
    String rule, [
    int index,
  ]);
  external JSVoid deleteRule(int index);
  external CSSRuleList get cssRules;
}

@JS('CSSPageRule')
@staticInterop
class CSSPageRule implements CSSGroupingRule {}

extension CSSPageRuleExtension on CSSPageRule {
  external set selectorText(String value);
  external String get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSMarginRule')
@staticInterop
class CSSMarginRule implements CSSRule {}

extension CSSMarginRuleExtension on CSSMarginRule {
  external String get name;
  external CSSStyleDeclaration get style;
}

@JS('CSSNamespaceRule')
@staticInterop
class CSSNamespaceRule implements CSSRule {}

extension CSSNamespaceRuleExtension on CSSNamespaceRule {
  external String get namespaceURI;
  external String get prefix;
}

@JS('CSSStyleDeclaration')
@staticInterop
class CSSStyleDeclaration implements JSObject {}

extension CSSStyleDeclarationExtension on CSSStyleDeclaration {
  external String item(int index);
  external String getPropertyValue(String property);
  external String getPropertyPriority(String property);
  external JSVoid setProperty(
    String property,
    String value, [
    String priority,
  ]);
  external String removeProperty(String property);
  external set cssText(String value);
  external String get cssText;
  external int get length;
  external CSSRule? get parentRule;
  external set cssFloat(String value);
  external String get cssFloat;
  external set accentColor(String value);
  external String get accentColor;
  external set alignContent(String value);
  external String get alignContent;
  external set alignItems(String value);
  external String get alignItems;
  external set alignSelf(String value);
  external String get alignSelf;
  external set alignTracks(String value);
  external String get alignTracks;
  external set alignmentBaseline(String value);
  external String get alignmentBaseline;
  external set all(String value);
  external String get all;
  external set anchorDefault(String value);
  external String get anchorDefault;
  external set anchorName(String value);
  external String get anchorName;
  external set animation(String value);
  external String get animation;
  external set animationComposition(String value);
  external String get animationComposition;
  external set animationDelay(String value);
  external String get animationDelay;
  external set animationDirection(String value);
  external String get animationDirection;
  external set animationDuration(String value);
  external String get animationDuration;
  external set animationFillMode(String value);
  external String get animationFillMode;
  external set animationIterationCount(String value);
  external String get animationIterationCount;
  external set animationName(String value);
  external String get animationName;
  external set animationPlayState(String value);
  external String get animationPlayState;
  external set animationRange(String value);
  external String get animationRange;
  external set animationRangeEnd(String value);
  external String get animationRangeEnd;
  external set animationRangeStart(String value);
  external String get animationRangeStart;
  external set animationTimeline(String value);
  external String get animationTimeline;
  external set animationTimingFunction(String value);
  external String get animationTimingFunction;
  external set appearance(String value);
  external String get appearance;
  external set aspectRatio(String value);
  external String get aspectRatio;
  external set backdropFilter(String value);
  external String get backdropFilter;
  external set backfaceVisibility(String value);
  external String get backfaceVisibility;
  external set background(String value);
  external String get background;
  external set backgroundAttachment(String value);
  external String get backgroundAttachment;
  external set backgroundBlendMode(String value);
  external String get backgroundBlendMode;
  external set backgroundClip(String value);
  external String get backgroundClip;
  external set backgroundColor(String value);
  external String get backgroundColor;
  external set backgroundImage(String value);
  external String get backgroundImage;
  external set backgroundOrigin(String value);
  external String get backgroundOrigin;
  external set backgroundPosition(String value);
  external String get backgroundPosition;
  external set backgroundPositionBlock(String value);
  external String get backgroundPositionBlock;
  external set backgroundPositionInline(String value);
  external String get backgroundPositionInline;
  external set backgroundPositionX(String value);
  external String get backgroundPositionX;
  external set backgroundPositionY(String value);
  external String get backgroundPositionY;
  external set backgroundRepeat(String value);
  external String get backgroundRepeat;
  external set backgroundSize(String value);
  external String get backgroundSize;
  external set baselineShift(String value);
  external String get baselineShift;
  external set baselineSource(String value);
  external String get baselineSource;
  external set blockEllipsis(String value);
  external String get blockEllipsis;
  external set blockSize(String value);
  external String get blockSize;
  external set blockStep(String value);
  external String get blockStep;
  external set blockStepAlign(String value);
  external String get blockStepAlign;
  external set blockStepInsert(String value);
  external String get blockStepInsert;
  external set blockStepRound(String value);
  external String get blockStepRound;
  external set blockStepSize(String value);
  external String get blockStepSize;
  external set bookmarkLabel(String value);
  external String get bookmarkLabel;
  external set bookmarkLevel(String value);
  external String get bookmarkLevel;
  external set bookmarkState(String value);
  external String get bookmarkState;
  external set border(String value);
  external String get border;
  external set borderBlock(String value);
  external String get borderBlock;
  external set borderBlockColor(String value);
  external String get borderBlockColor;
  external set borderBlockEnd(String value);
  external String get borderBlockEnd;
  external set borderBlockEndColor(String value);
  external String get borderBlockEndColor;
  external set borderBlockEndRadius(String value);
  external String get borderBlockEndRadius;
  external set borderBlockEndStyle(String value);
  external String get borderBlockEndStyle;
  external set borderBlockEndWidth(String value);
  external String get borderBlockEndWidth;
  external set borderBlockStart(String value);
  external String get borderBlockStart;
  external set borderBlockStartColor(String value);
  external String get borderBlockStartColor;
  external set borderBlockStartRadius(String value);
  external String get borderBlockStartRadius;
  external set borderBlockStartStyle(String value);
  external String get borderBlockStartStyle;
  external set borderBlockStartWidth(String value);
  external String get borderBlockStartWidth;
  external set borderBlockStyle(String value);
  external String get borderBlockStyle;
  external set borderBlockWidth(String value);
  external String get borderBlockWidth;
  external set borderBottom(String value);
  external String get borderBottom;
  external set borderBottomColor(String value);
  external String get borderBottomColor;
  external set borderBottomLeftRadius(String value);
  external String get borderBottomLeftRadius;
  external set borderBottomRadius(String value);
  external String get borderBottomRadius;
  external set borderBottomRightRadius(String value);
  external String get borderBottomRightRadius;
  external set borderBottomStyle(String value);
  external String get borderBottomStyle;
  external set borderBottomWidth(String value);
  external String get borderBottomWidth;
  external set borderBoundary(String value);
  external String get borderBoundary;
  external set borderClip(String value);
  external String get borderClip;
  external set borderClipBottom(String value);
  external String get borderClipBottom;
  external set borderClipLeft(String value);
  external String get borderClipLeft;
  external set borderClipRight(String value);
  external String get borderClipRight;
  external set borderClipTop(String value);
  external String get borderClipTop;
  external set borderCollapse(String value);
  external String get borderCollapse;
  external set borderColor(String value);
  external String get borderColor;
  external set borderEndEndRadius(String value);
  external String get borderEndEndRadius;
  external set borderEndStartRadius(String value);
  external String get borderEndStartRadius;
  external set borderImage(String value);
  external String get borderImage;
  external set borderImageOutset(String value);
  external String get borderImageOutset;
  external set borderImageRepeat(String value);
  external String get borderImageRepeat;
  external set borderImageSlice(String value);
  external String get borderImageSlice;
  external set borderImageSource(String value);
  external String get borderImageSource;
  external set borderImageWidth(String value);
  external String get borderImageWidth;
  external set borderInline(String value);
  external String get borderInline;
  external set borderInlineColor(String value);
  external String get borderInlineColor;
  external set borderInlineEnd(String value);
  external String get borderInlineEnd;
  external set borderInlineEndColor(String value);
  external String get borderInlineEndColor;
  external set borderInlineEndRadius(String value);
  external String get borderInlineEndRadius;
  external set borderInlineEndStyle(String value);
  external String get borderInlineEndStyle;
  external set borderInlineEndWidth(String value);
  external String get borderInlineEndWidth;
  external set borderInlineStart(String value);
  external String get borderInlineStart;
  external set borderInlineStartColor(String value);
  external String get borderInlineStartColor;
  external set borderInlineStartRadius(String value);
  external String get borderInlineStartRadius;
  external set borderInlineStartStyle(String value);
  external String get borderInlineStartStyle;
  external set borderInlineStartWidth(String value);
  external String get borderInlineStartWidth;
  external set borderInlineStyle(String value);
  external String get borderInlineStyle;
  external set borderInlineWidth(String value);
  external String get borderInlineWidth;
  external set borderLeft(String value);
  external String get borderLeft;
  external set borderLeftColor(String value);
  external String get borderLeftColor;
  external set borderLeftRadius(String value);
  external String get borderLeftRadius;
  external set borderLeftStyle(String value);
  external String get borderLeftStyle;
  external set borderLeftWidth(String value);
  external String get borderLeftWidth;
  external set borderLimit(String value);
  external String get borderLimit;
  external set borderRadius(String value);
  external String get borderRadius;
  external set borderRight(String value);
  external String get borderRight;
  external set borderRightColor(String value);
  external String get borderRightColor;
  external set borderRightRadius(String value);
  external String get borderRightRadius;
  external set borderRightStyle(String value);
  external String get borderRightStyle;
  external set borderRightWidth(String value);
  external String get borderRightWidth;
  external set borderSpacing(String value);
  external String get borderSpacing;
  external set borderStartEndRadius(String value);
  external String get borderStartEndRadius;
  external set borderStartStartRadius(String value);
  external String get borderStartStartRadius;
  external set borderStyle(String value);
  external String get borderStyle;
  external set borderTop(String value);
  external String get borderTop;
  external set borderTopColor(String value);
  external String get borderTopColor;
  external set borderTopLeftRadius(String value);
  external String get borderTopLeftRadius;
  external set borderTopRadius(String value);
  external String get borderTopRadius;
  external set borderTopRightRadius(String value);
  external String get borderTopRightRadius;
  external set borderTopStyle(String value);
  external String get borderTopStyle;
  external set borderTopWidth(String value);
  external String get borderTopWidth;
  external set borderWidth(String value);
  external String get borderWidth;
  external set bottom(String value);
  external String get bottom;
  external set boxDecorationBreak(String value);
  external String get boxDecorationBreak;
  external set boxShadow(String value);
  external String get boxShadow;
  external set boxShadowBlur(String value);
  external String get boxShadowBlur;
  external set boxShadowColor(String value);
  external String get boxShadowColor;
  external set boxShadowOffset(String value);
  external String get boxShadowOffset;
  external set boxShadowPosition(String value);
  external String get boxShadowPosition;
  external set boxShadowSpread(String value);
  external String get boxShadowSpread;
  external set boxSizing(String value);
  external String get boxSizing;
  external set boxSnap(String value);
  external String get boxSnap;
  external set breakAfter(String value);
  external String get breakAfter;
  external set breakBefore(String value);
  external String get breakBefore;
  external set breakInside(String value);
  external String get breakInside;
  external set captionSide(String value);
  external String get captionSide;
  external set caret(String value);
  external String get caret;
  external set caretColor(String value);
  external String get caretColor;
  external set caretShape(String value);
  external String get caretShape;
  external set clear(String value);
  external String get clear;
  external set clip(String value);
  external String get clip;
  external set clipPath(String value);
  external String get clipPath;
  external set clipRule(String value);
  external String get clipRule;
  external set color(String value);
  external String get color;
  external set colorAdjust(String value);
  external String get colorAdjust;
  external set colorInterpolation(String value);
  external String get colorInterpolation;
  external set colorInterpolationFilters(String value);
  external String get colorInterpolationFilters;
  external set colorScheme(String value);
  external String get colorScheme;
  external set columnCount(String value);
  external String get columnCount;
  external set columnFill(String value);
  external String get columnFill;
  external set columnGap(String value);
  external String get columnGap;
  external set columnRule(String value);
  external String get columnRule;
  external set columnRuleColor(String value);
  external String get columnRuleColor;
  external set columnRuleStyle(String value);
  external String get columnRuleStyle;
  external set columnRuleWidth(String value);
  external String get columnRuleWidth;
  external set columnSpan(String value);
  external String get columnSpan;
  external set columnWidth(String value);
  external String get columnWidth;
  external set columns(String value);
  external String get columns;
  external set contain(String value);
  external String get contain;
  external set containIntrinsicBlockSize(String value);
  external String get containIntrinsicBlockSize;
  external set containIntrinsicHeight(String value);
  external String get containIntrinsicHeight;
  external set containIntrinsicInlineSize(String value);
  external String get containIntrinsicInlineSize;
  external set containIntrinsicSize(String value);
  external String get containIntrinsicSize;
  external set containIntrinsicWidth(String value);
  external String get containIntrinsicWidth;
  external set container(String value);
  external String get container;
  external set containerName(String value);
  external String get containerName;
  external set containerType(String value);
  external String get containerType;
  external set content(String value);
  external String get content;
  external set contentVisibility(String value);
  external String get contentVisibility;
  @JS('continue')
  external set continue_(String value);
  @JS('continue')
  external String get continue_;
  external set copyInto(String value);
  external String get copyInto;
  external set cornerShape(String value);
  external String get cornerShape;
  external set corners(String value);
  external String get corners;
  external set counterIncrement(String value);
  external String get counterIncrement;
  external set counterReset(String value);
  external String get counterReset;
  external set counterSet(String value);
  external String get counterSet;
  external set cue(String value);
  external String get cue;
  external set cueAfter(String value);
  external String get cueAfter;
  external set cueBefore(String value);
  external String get cueBefore;
  external set cursor(String value);
  external String get cursor;
  external set cx(String value);
  external String get cx;
  external set cy(String value);
  external String get cy;
  external set d(String value);
  external String get d;
  external set direction(String value);
  external String get direction;
  external set display(String value);
  external String get display;
  external set dominantBaseline(String value);
  external String get dominantBaseline;
  external set emptyCells(String value);
  external String get emptyCells;
  external set fill(String value);
  external String get fill;
  external set fillBreak(String value);
  external String get fillBreak;
  external set fillColor(String value);
  external String get fillColor;
  external set fillImage(String value);
  external String get fillImage;
  external set fillOpacity(String value);
  external String get fillOpacity;
  external set fillOrigin(String value);
  external String get fillOrigin;
  external set fillPosition(String value);
  external String get fillPosition;
  external set fillRepeat(String value);
  external String get fillRepeat;
  external set fillRule(String value);
  external String get fillRule;
  external set fillSize(String value);
  external String get fillSize;
  external set filter(String value);
  external String get filter;
  external set flex(String value);
  external String get flex;
  external set flexBasis(String value);
  external String get flexBasis;
  external set flexDirection(String value);
  external String get flexDirection;
  external set flexFlow(String value);
  external String get flexFlow;
  external set flexGrow(String value);
  external String get flexGrow;
  external set flexShrink(String value);
  external String get flexShrink;
  external set flexWrap(String value);
  external String get flexWrap;
  external set float(String value);
  external String get float;
  external set floatDefer(String value);
  external String get floatDefer;
  external set floatOffset(String value);
  external String get floatOffset;
  external set floatReference(String value);
  external String get floatReference;
  external set floodColor(String value);
  external String get floodColor;
  external set floodOpacity(String value);
  external String get floodOpacity;
  external set flowFrom(String value);
  external String get flowFrom;
  external set flowInto(String value);
  external String get flowInto;
  external set font(String value);
  external String get font;
  external set fontFamily(String value);
  external String get fontFamily;
  external set fontFeatureSettings(String value);
  external String get fontFeatureSettings;
  external set fontKerning(String value);
  external String get fontKerning;
  external set fontLanguageOverride(String value);
  external String get fontLanguageOverride;
  external set fontOpticalSizing(String value);
  external String get fontOpticalSizing;
  external set fontPalette(String value);
  external String get fontPalette;
  external set fontSize(String value);
  external String get fontSize;
  external set fontSizeAdjust(String value);
  external String get fontSizeAdjust;
  external set fontStretch(String value);
  external String get fontStretch;
  external set fontStyle(String value);
  external String get fontStyle;
  external set fontSynthesis(String value);
  external String get fontSynthesis;
  external set fontSynthesisPosition(String value);
  external String get fontSynthesisPosition;
  external set fontSynthesisSmallCaps(String value);
  external String get fontSynthesisSmallCaps;
  external set fontSynthesisStyle(String value);
  external String get fontSynthesisStyle;
  external set fontSynthesisWeight(String value);
  external String get fontSynthesisWeight;
  external set fontVariant(String value);
  external String get fontVariant;
  external set fontVariantAlternates(String value);
  external String get fontVariantAlternates;
  external set fontVariantCaps(String value);
  external String get fontVariantCaps;
  external set fontVariantEastAsian(String value);
  external String get fontVariantEastAsian;
  external set fontVariantEmoji(String value);
  external String get fontVariantEmoji;
  external set fontVariantLigatures(String value);
  external String get fontVariantLigatures;
  external set fontVariantNumeric(String value);
  external String get fontVariantNumeric;
  external set fontVariantPosition(String value);
  external String get fontVariantPosition;
  external set fontVariationSettings(String value);
  external String get fontVariationSettings;
  external set fontWeight(String value);
  external String get fontWeight;
  external set footnoteDisplay(String value);
  external String get footnoteDisplay;
  external set footnotePolicy(String value);
  external String get footnotePolicy;
  external set forcedColorAdjust(String value);
  external String get forcedColorAdjust;
  external set gap(String value);
  external String get gap;
  external set glyphOrientationVertical(String value);
  external String get glyphOrientationVertical;
  external set grid(String value);
  external String get grid;
  external set gridArea(String value);
  external String get gridArea;
  external set gridAutoColumns(String value);
  external String get gridAutoColumns;
  external set gridAutoFlow(String value);
  external String get gridAutoFlow;
  external set gridAutoRows(String value);
  external String get gridAutoRows;
  external set gridColumn(String value);
  external String get gridColumn;
  external set gridColumnEnd(String value);
  external String get gridColumnEnd;
  external set gridColumnGap(String value);
  external String get gridColumnGap;
  external set gridColumnStart(String value);
  external String get gridColumnStart;
  external set gridGap(String value);
  external String get gridGap;
  external set gridRow(String value);
  external String get gridRow;
  external set gridRowEnd(String value);
  external String get gridRowEnd;
  external set gridRowGap(String value);
  external String get gridRowGap;
  external set gridRowStart(String value);
  external String get gridRowStart;
  external set gridTemplate(String value);
  external String get gridTemplate;
  external set gridTemplateAreas(String value);
  external String get gridTemplateAreas;
  external set gridTemplateColumns(String value);
  external String get gridTemplateColumns;
  external set gridTemplateRows(String value);
  external String get gridTemplateRows;
  external set hangingPunctuation(String value);
  external String get hangingPunctuation;
  external set height(String value);
  external String get height;
  external set hyphenateCharacter(String value);
  external String get hyphenateCharacter;
  external set hyphenateLimitChars(String value);
  external String get hyphenateLimitChars;
  external set hyphenateLimitLast(String value);
  external String get hyphenateLimitLast;
  external set hyphenateLimitLines(String value);
  external String get hyphenateLimitLines;
  external set hyphenateLimitZone(String value);
  external String get hyphenateLimitZone;
  external set hyphens(String value);
  external String get hyphens;
  external set imageOrientation(String value);
  external String get imageOrientation;
  external set imageRendering(String value);
  external String get imageRendering;
  external set imageResolution(String value);
  external String get imageResolution;
  external set initialLetter(String value);
  external String get initialLetter;
  external set initialLetterAlign(String value);
  external String get initialLetterAlign;
  external set initialLetterWrap(String value);
  external String get initialLetterWrap;
  external set inlineSize(String value);
  external String get inlineSize;
  external set inlineSizing(String value);
  external String get inlineSizing;
  external set inputSecurity(String value);
  external String get inputSecurity;
  external set inset(String value);
  external String get inset;
  external set insetBlock(String value);
  external String get insetBlock;
  external set insetBlockEnd(String value);
  external String get insetBlockEnd;
  external set insetBlockStart(String value);
  external String get insetBlockStart;
  external set insetInline(String value);
  external String get insetInline;
  external set insetInlineEnd(String value);
  external String get insetInlineEnd;
  external set insetInlineStart(String value);
  external String get insetInlineStart;
  external set isolation(String value);
  external String get isolation;
  external set justifyContent(String value);
  external String get justifyContent;
  external set justifyItems(String value);
  external String get justifyItems;
  external set justifySelf(String value);
  external String get justifySelf;
  external set justifyTracks(String value);
  external String get justifyTracks;
  external set layoutOrder(String value);
  external String get layoutOrder;
  external set left(String value);
  external String get left;
  external set letterSpacing(String value);
  external String get letterSpacing;
  external set lightingColor(String value);
  external String get lightingColor;
  external set lineBreak(String value);
  external String get lineBreak;
  external set lineClamp(String value);
  external String get lineClamp;
  external set lineGrid(String value);
  external String get lineGrid;
  external set lineHeight(String value);
  external String get lineHeight;
  external set lineHeightStep(String value);
  external String get lineHeightStep;
  external set linePadding(String value);
  external String get linePadding;
  external set lineSnap(String value);
  external String get lineSnap;
  external set linkParameters(String value);
  external String get linkParameters;
  external set listStyle(String value);
  external String get listStyle;
  external set listStyleImage(String value);
  external String get listStyleImage;
  external set listStylePosition(String value);
  external String get listStylePosition;
  external set listStyleType(String value);
  external String get listStyleType;
  external set margin(String value);
  external String get margin;
  external set marginBlock(String value);
  external String get marginBlock;
  external set marginBlockEnd(String value);
  external String get marginBlockEnd;
  external set marginBlockStart(String value);
  external String get marginBlockStart;
  external set marginBottom(String value);
  external String get marginBottom;
  external set marginBreak(String value);
  external String get marginBreak;
  external set marginInline(String value);
  external String get marginInline;
  external set marginInlineEnd(String value);
  external String get marginInlineEnd;
  external set marginInlineStart(String value);
  external String get marginInlineStart;
  external set marginLeft(String value);
  external String get marginLeft;
  external set marginRight(String value);
  external String get marginRight;
  external set marginTop(String value);
  external String get marginTop;
  external set marginTrim(String value);
  external String get marginTrim;
  external set marker(String value);
  external String get marker;
  external set markerEnd(String value);
  external String get markerEnd;
  external set markerMid(String value);
  external String get markerMid;
  external set markerSide(String value);
  external String get markerSide;
  external set markerStart(String value);
  external String get markerStart;
  external set mask(String value);
  external String get mask;
  external set maskBorder(String value);
  external String get maskBorder;
  external set maskBorderMode(String value);
  external String get maskBorderMode;
  external set maskBorderOutset(String value);
  external String get maskBorderOutset;
  external set maskBorderRepeat(String value);
  external String get maskBorderRepeat;
  external set maskBorderSlice(String value);
  external String get maskBorderSlice;
  external set maskBorderSource(String value);
  external String get maskBorderSource;
  external set maskBorderWidth(String value);
  external String get maskBorderWidth;
  external set maskClip(String value);
  external String get maskClip;
  external set maskComposite(String value);
  external String get maskComposite;
  external set maskImage(String value);
  external String get maskImage;
  external set maskMode(String value);
  external String get maskMode;
  external set maskOrigin(String value);
  external String get maskOrigin;
  external set maskPosition(String value);
  external String get maskPosition;
  external set maskRepeat(String value);
  external String get maskRepeat;
  external set maskSize(String value);
  external String get maskSize;
  external set maskType(String value);
  external String get maskType;
  external set masonryAutoFlow(String value);
  external String get masonryAutoFlow;
  external set mathDepth(String value);
  external String get mathDepth;
  external set mathShift(String value);
  external String get mathShift;
  external set mathStyle(String value);
  external String get mathStyle;
  external set maxBlockSize(String value);
  external String get maxBlockSize;
  external set maxHeight(String value);
  external String get maxHeight;
  external set maxInlineSize(String value);
  external String get maxInlineSize;
  external set maxLines(String value);
  external String get maxLines;
  external set maxWidth(String value);
  external String get maxWidth;
  external set minBlockSize(String value);
  external String get minBlockSize;
  external set minHeight(String value);
  external String get minHeight;
  external set minInlineSize(String value);
  external String get minInlineSize;
  external set minIntrinsicSizing(String value);
  external String get minIntrinsicSizing;
  external set minWidth(String value);
  external String get minWidth;
  external set mixBlendMode(String value);
  external String get mixBlendMode;
  external set navDown(String value);
  external String get navDown;
  external set navLeft(String value);
  external String get navLeft;
  external set navRight(String value);
  external String get navRight;
  external set navUp(String value);
  external String get navUp;
  external set objectFit(String value);
  external String get objectFit;
  external set objectPosition(String value);
  external String get objectPosition;
  external set objectViewBox(String value);
  external String get objectViewBox;
  external set offset(String value);
  external String get offset;
  external set offsetAnchor(String value);
  external String get offsetAnchor;
  external set offsetDistance(String value);
  external String get offsetDistance;
  external set offsetPath(String value);
  external String get offsetPath;
  external set offsetPosition(String value);
  external String get offsetPosition;
  external set offsetRotate(String value);
  external String get offsetRotate;
  external set opacity(String value);
  external String get opacity;
  external set order(String value);
  external String get order;
  external set orphans(String value);
  external String get orphans;
  external set outline(String value);
  external String get outline;
  external set outlineColor(String value);
  external String get outlineColor;
  external set outlineOffset(String value);
  external String get outlineOffset;
  external set outlineStyle(String value);
  external String get outlineStyle;
  external set outlineWidth(String value);
  external String get outlineWidth;
  external set overflow(String value);
  external String get overflow;
  external set overflowAnchor(String value);
  external String get overflowAnchor;
  external set overflowBlock(String value);
  external String get overflowBlock;
  external set overflowClipMargin(String value);
  external String get overflowClipMargin;
  external set overflowClipMarginBlock(String value);
  external String get overflowClipMarginBlock;
  external set overflowClipMarginBlockEnd(String value);
  external String get overflowClipMarginBlockEnd;
  external set overflowClipMarginBlockStart(String value);
  external String get overflowClipMarginBlockStart;
  external set overflowClipMarginBottom(String value);
  external String get overflowClipMarginBottom;
  external set overflowClipMarginInline(String value);
  external String get overflowClipMarginInline;
  external set overflowClipMarginInlineEnd(String value);
  external String get overflowClipMarginInlineEnd;
  external set overflowClipMarginInlineStart(String value);
  external String get overflowClipMarginInlineStart;
  external set overflowClipMarginLeft(String value);
  external String get overflowClipMarginLeft;
  external set overflowClipMarginRight(String value);
  external String get overflowClipMarginRight;
  external set overflowClipMarginTop(String value);
  external String get overflowClipMarginTop;
  external set overflowInline(String value);
  external String get overflowInline;
  external set overflowWrap(String value);
  external String get overflowWrap;
  external set overflowX(String value);
  external String get overflowX;
  external set overflowY(String value);
  external String get overflowY;
  external set overlay(String value);
  external String get overlay;
  external set overscrollBehavior(String value);
  external String get overscrollBehavior;
  external set overscrollBehaviorBlock(String value);
  external String get overscrollBehaviorBlock;
  external set overscrollBehaviorInline(String value);
  external String get overscrollBehaviorInline;
  external set overscrollBehaviorX(String value);
  external String get overscrollBehaviorX;
  external set overscrollBehaviorY(String value);
  external String get overscrollBehaviorY;
  external set padding(String value);
  external String get padding;
  external set paddingBlock(String value);
  external String get paddingBlock;
  external set paddingBlockEnd(String value);
  external String get paddingBlockEnd;
  external set paddingBlockStart(String value);
  external String get paddingBlockStart;
  external set paddingBottom(String value);
  external String get paddingBottom;
  external set paddingInline(String value);
  external String get paddingInline;
  external set paddingInlineEnd(String value);
  external String get paddingInlineEnd;
  external set paddingInlineStart(String value);
  external String get paddingInlineStart;
  external set paddingLeft(String value);
  external String get paddingLeft;
  external set paddingRight(String value);
  external String get paddingRight;
  external set paddingTop(String value);
  external String get paddingTop;
  external set page(String value);
  external String get page;
  external set pageBreakAfter(String value);
  external String get pageBreakAfter;
  external set pageBreakBefore(String value);
  external String get pageBreakBefore;
  external set pageBreakInside(String value);
  external String get pageBreakInside;
  external set paintOrder(String value);
  external String get paintOrder;
  external set pause(String value);
  external String get pause;
  external set pauseAfter(String value);
  external String get pauseAfter;
  external set pauseBefore(String value);
  external String get pauseBefore;
  external set perspective(String value);
  external String get perspective;
  external set perspectiveOrigin(String value);
  external String get perspectiveOrigin;
  external set placeContent(String value);
  external String get placeContent;
  external set placeItems(String value);
  external String get placeItems;
  external set placeSelf(String value);
  external String get placeSelf;
  external set pointerEvents(String value);
  external String get pointerEvents;
  external set position(String value);
  external String get position;
  external set positionFallback(String value);
  external String get positionFallback;
  external set positionFallbackBounds(String value);
  external String get positionFallbackBounds;
  external set printColorAdjust(String value);
  external String get printColorAdjust;
  external set quotes(String value);
  external String get quotes;
  external set r(String value);
  external String get r;
  external set readingOrder(String value);
  external String get readingOrder;
  external set regionFragment(String value);
  external String get regionFragment;
  external set resize(String value);
  external String get resize;
  external set rest(String value);
  external String get rest;
  external set restAfter(String value);
  external String get restAfter;
  external set restBefore(String value);
  external String get restBefore;
  external set right(String value);
  external String get right;
  external set rotate(String value);
  external String get rotate;
  external set rowGap(String value);
  external String get rowGap;
  external set rubyAlign(String value);
  external String get rubyAlign;
  external set rubyMerge(String value);
  external String get rubyMerge;
  external set rubyOverhang(String value);
  external String get rubyOverhang;
  external set rubyPosition(String value);
  external String get rubyPosition;
  external set rx(String value);
  external String get rx;
  external set ry(String value);
  external String get ry;
  external set scale(String value);
  external String get scale;
  external set scrollBehavior(String value);
  external String get scrollBehavior;
  external set scrollMargin(String value);
  external String get scrollMargin;
  external set scrollMarginBlock(String value);
  external String get scrollMarginBlock;
  external set scrollMarginBlockEnd(String value);
  external String get scrollMarginBlockEnd;
  external set scrollMarginBlockStart(String value);
  external String get scrollMarginBlockStart;
  external set scrollMarginBottom(String value);
  external String get scrollMarginBottom;
  external set scrollMarginInline(String value);
  external String get scrollMarginInline;
  external set scrollMarginInlineEnd(String value);
  external String get scrollMarginInlineEnd;
  external set scrollMarginInlineStart(String value);
  external String get scrollMarginInlineStart;
  external set scrollMarginLeft(String value);
  external String get scrollMarginLeft;
  external set scrollMarginRight(String value);
  external String get scrollMarginRight;
  external set scrollMarginTop(String value);
  external String get scrollMarginTop;
  external set scrollPadding(String value);
  external String get scrollPadding;
  external set scrollPaddingBlock(String value);
  external String get scrollPaddingBlock;
  external set scrollPaddingBlockEnd(String value);
  external String get scrollPaddingBlockEnd;
  external set scrollPaddingBlockStart(String value);
  external String get scrollPaddingBlockStart;
  external set scrollPaddingBottom(String value);
  external String get scrollPaddingBottom;
  external set scrollPaddingInline(String value);
  external String get scrollPaddingInline;
  external set scrollPaddingInlineEnd(String value);
  external String get scrollPaddingInlineEnd;
  external set scrollPaddingInlineStart(String value);
  external String get scrollPaddingInlineStart;
  external set scrollPaddingLeft(String value);
  external String get scrollPaddingLeft;
  external set scrollPaddingRight(String value);
  external String get scrollPaddingRight;
  external set scrollPaddingTop(String value);
  external String get scrollPaddingTop;
  external set scrollSnapAlign(String value);
  external String get scrollSnapAlign;
  external set scrollSnapStop(String value);
  external String get scrollSnapStop;
  external set scrollSnapType(String value);
  external String get scrollSnapType;
  external set scrollStart(String value);
  external String get scrollStart;
  external set scrollStartBlock(String value);
  external String get scrollStartBlock;
  external set scrollStartInline(String value);
  external String get scrollStartInline;
  external set scrollStartTarget(String value);
  external String get scrollStartTarget;
  external set scrollStartTargetBlock(String value);
  external String get scrollStartTargetBlock;
  external set scrollStartTargetInline(String value);
  external String get scrollStartTargetInline;
  external set scrollStartTargetX(String value);
  external String get scrollStartTargetX;
  external set scrollStartTargetY(String value);
  external String get scrollStartTargetY;
  external set scrollStartX(String value);
  external String get scrollStartX;
  external set scrollStartY(String value);
  external String get scrollStartY;
  external set scrollTimeline(String value);
  external String get scrollTimeline;
  external set scrollTimelineAxis(String value);
  external String get scrollTimelineAxis;
  external set scrollTimelineName(String value);
  external String get scrollTimelineName;
  external set scrollbarColor(String value);
  external String get scrollbarColor;
  external set scrollbarGutter(String value);
  external String get scrollbarGutter;
  external set scrollbarWidth(String value);
  external String get scrollbarWidth;
  external set shapeImageThreshold(String value);
  external String get shapeImageThreshold;
  external set shapeInside(String value);
  external String get shapeInside;
  external set shapeMargin(String value);
  external String get shapeMargin;
  external set shapeOutside(String value);
  external String get shapeOutside;
  external set shapePadding(String value);
  external String get shapePadding;
  external set shapeRendering(String value);
  external String get shapeRendering;
  external set shapeSubtract(String value);
  external String get shapeSubtract;
  external set spatialNavigationAction(String value);
  external String get spatialNavigationAction;
  external set spatialNavigationContain(String value);
  external String get spatialNavigationContain;
  external set spatialNavigationFunction(String value);
  external String get spatialNavigationFunction;
  external set speak(String value);
  external String get speak;
  external set speakAs(String value);
  external String get speakAs;
  external set stopColor(String value);
  external String get stopColor;
  external set stopOpacity(String value);
  external String get stopOpacity;
  external set stringSet(String value);
  external String get stringSet;
  external set stroke(String value);
  external String get stroke;
  external set strokeAlign(String value);
  external String get strokeAlign;
  external set strokeAlignment(String value);
  external String get strokeAlignment;
  external set strokeBreak(String value);
  external String get strokeBreak;
  external set strokeColor(String value);
  external String get strokeColor;
  external set strokeDashCorner(String value);
  external String get strokeDashCorner;
  external set strokeDashJustify(String value);
  external String get strokeDashJustify;
  external set strokeDashadjust(String value);
  external String get strokeDashadjust;
  external set strokeDasharray(String value);
  external String get strokeDasharray;
  external set strokeDashcorner(String value);
  external String get strokeDashcorner;
  external set strokeDashoffset(String value);
  external String get strokeDashoffset;
  external set strokeImage(String value);
  external String get strokeImage;
  external set strokeLinecap(String value);
  external String get strokeLinecap;
  external set strokeLinejoin(String value);
  external String get strokeLinejoin;
  external set strokeMiterlimit(String value);
  external String get strokeMiterlimit;
  external set strokeOpacity(String value);
  external String get strokeOpacity;
  external set strokeOrigin(String value);
  external String get strokeOrigin;
  external set strokePosition(String value);
  external String get strokePosition;
  external set strokeRepeat(String value);
  external String get strokeRepeat;
  external set strokeSize(String value);
  external String get strokeSize;
  external set strokeWidth(String value);
  external String get strokeWidth;
  external set tabSize(String value);
  external String get tabSize;
  external set tableLayout(String value);
  external String get tableLayout;
  external set textAlign(String value);
  external String get textAlign;
  external set textAlignAll(String value);
  external String get textAlignAll;
  external set textAlignLast(String value);
  external String get textAlignLast;
  external set textAnchor(String value);
  external String get textAnchor;
  external set textAutospace(String value);
  external String get textAutospace;
  external set textBoxEdge(String value);
  external String get textBoxEdge;
  external set textBoxTrim(String value);
  external String get textBoxTrim;
  external set textCombineUpright(String value);
  external String get textCombineUpright;
  external set textDecoration(String value);
  external String get textDecoration;
  external set textDecorationColor(String value);
  external String get textDecorationColor;
  external set textDecorationLine(String value);
  external String get textDecorationLine;
  external set textDecorationSkip(String value);
  external String get textDecorationSkip;
  external set textDecorationSkipBox(String value);
  external String get textDecorationSkipBox;
  external set textDecorationSkipInk(String value);
  external String get textDecorationSkipInk;
  external set textDecorationSkipSelf(String value);
  external String get textDecorationSkipSelf;
  external set textDecorationSkipSpaces(String value);
  external String get textDecorationSkipSpaces;
  external set textDecorationStyle(String value);
  external String get textDecorationStyle;
  external set textDecorationThickness(String value);
  external String get textDecorationThickness;
  external set textDecorationTrim(String value);
  external String get textDecorationTrim;
  external set textEmphasis(String value);
  external String get textEmphasis;
  external set textEmphasisColor(String value);
  external String get textEmphasisColor;
  external set textEmphasisPosition(String value);
  external String get textEmphasisPosition;
  external set textEmphasisSkip(String value);
  external String get textEmphasisSkip;
  external set textEmphasisStyle(String value);
  external String get textEmphasisStyle;
  external set textGroupAlign(String value);
  external String get textGroupAlign;
  external set textIndent(String value);
  external String get textIndent;
  external set textJustify(String value);
  external String get textJustify;
  external set textOrientation(String value);
  external String get textOrientation;
  external set textOverflow(String value);
  external String get textOverflow;
  external set textRendering(String value);
  external String get textRendering;
  external set textShadow(String value);
  external String get textShadow;
  external set textSizeAdjust(String value);
  external String get textSizeAdjust;
  external set textSpacing(String value);
  external String get textSpacing;
  external set textSpacingTrim(String value);
  external String get textSpacingTrim;
  external set textTransform(String value);
  external String get textTransform;
  external set textUnderlineOffset(String value);
  external String get textUnderlineOffset;
  external set textUnderlinePosition(String value);
  external String get textUnderlinePosition;
  external set textWrap(String value);
  external String get textWrap;
  external set textWrapMode(String value);
  external String get textWrapMode;
  external set textWrapStyle(String value);
  external String get textWrapStyle;
  external set timelineScope(String value);
  external String get timelineScope;
  external set top(String value);
  external String get top;
  external set touchAction(String value);
  external String get touchAction;
  external set transform(String value);
  external String get transform;
  external set transformBox(String value);
  external String get transformBox;
  external set transformOrigin(String value);
  external String get transformOrigin;
  external set transformStyle(String value);
  external String get transformStyle;
  external set transition(String value);
  external String get transition;
  external set transitionBehavior(String value);
  external String get transitionBehavior;
  external set transitionDelay(String value);
  external String get transitionDelay;
  external set transitionDuration(String value);
  external String get transitionDuration;
  external set transitionProperty(String value);
  external String get transitionProperty;
  external set transitionTimingFunction(String value);
  external String get transitionTimingFunction;
  external set translate(String value);
  external String get translate;
  external set unicodeBidi(String value);
  external String get unicodeBidi;
  external set userSelect(String value);
  external String get userSelect;
  external set vectorEffect(String value);
  external String get vectorEffect;
  external set verticalAlign(String value);
  external String get verticalAlign;
  external set viewTimeline(String value);
  external String get viewTimeline;
  external set viewTimelineAxis(String value);
  external String get viewTimelineAxis;
  external set viewTimelineInset(String value);
  external String get viewTimelineInset;
  external set viewTimelineName(String value);
  external String get viewTimelineName;
  external set viewTransitionName(String value);
  external String get viewTransitionName;
  external set visibility(String value);
  external String get visibility;
  external set voiceBalance(String value);
  external String get voiceBalance;
  external set voiceDuration(String value);
  external String get voiceDuration;
  external set voiceFamily(String value);
  external String get voiceFamily;
  external set voicePitch(String value);
  external String get voicePitch;
  external set voiceRange(String value);
  external String get voiceRange;
  external set voiceRate(String value);
  external String get voiceRate;
  external set voiceStress(String value);
  external String get voiceStress;
  external set voiceVolume(String value);
  external String get voiceVolume;
  external set whiteSpace(String value);
  external String get whiteSpace;
  external set whiteSpaceCollapse(String value);
  external String get whiteSpaceCollapse;
  external set whiteSpaceTrim(String value);
  external String get whiteSpaceTrim;
  external set widows(String value);
  external String get widows;
  external set width(String value);
  external String get width;
  external set willChange(String value);
  external String get willChange;
  external set wordBreak(String value);
  external String get wordBreak;
  external set wordSpaceTransform(String value);
  external String get wordSpaceTransform;
  external set wordSpacing(String value);
  external String get wordSpacing;
  external set wordWrap(String value);
  external String get wordWrap;
  external set wrapAfter(String value);
  external String get wrapAfter;
  external set wrapBefore(String value);
  external String get wrapBefore;
  external set wrapFlow(String value);
  external String get wrapFlow;
  external set wrapInside(String value);
  external String get wrapInside;
  external set wrapThrough(String value);
  external String get wrapThrough;
  external set writingMode(String value);
  external String get writingMode;
  external set x(String value);
  external String get x;
  external set y(String value);
  external String get y;
  external set zIndex(String value);
  external String get zIndex;
}

@JS('ElementCSSInlineStyle')
@staticInterop
class ElementCSSInlineStyle implements JSObject {}

extension ElementCSSInlineStyleExtension on ElementCSSInlineStyle {
  external StylePropertyMap get attributeStyleMap;
  external CSSStyleDeclaration get style;
}

@JS()
external $CSS get CSS;

@JS('CSS')
@staticInterop
abstract class $CSS {}

extension $CSSExtension on $CSS {
  external bool supports(
    String conditionTextOrProperty, [
    String value,
  ]);
  external JSPromise parseStylesheet(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external JSPromise parseRuleList(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external JSPromise parseRule(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external JSPromise parseDeclarationList(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external CSSParserDeclaration parseDeclaration(
    String css, [
    CSSParserOptions options,
  ]);
  external CSSToken parseValue(String css);
  external JSArray parseValueList(String css);
  external JSArray parseCommaValueList(String css);
  external JSVoid registerProperty(PropertyDefinition definition);
  external CSSUnitValue number(num value);
  external CSSUnitValue percent(num value);
  external CSSUnitValue cap(num value);
  external CSSUnitValue ch(num value);
  external CSSUnitValue em(num value);
  external CSSUnitValue ex(num value);
  external CSSUnitValue ic(num value);
  external CSSUnitValue lh(num value);
  external CSSUnitValue rcap(num value);
  external CSSUnitValue rch(num value);
  external CSSUnitValue rem(num value);
  external CSSUnitValue rex(num value);
  external CSSUnitValue ric(num value);
  external CSSUnitValue rlh(num value);
  external CSSUnitValue vw(num value);
  external CSSUnitValue vh(num value);
  external CSSUnitValue vi(num value);
  external CSSUnitValue vb(num value);
  external CSSUnitValue vmin(num value);
  external CSSUnitValue vmax(num value);
  external CSSUnitValue svw(num value);
  external CSSUnitValue svh(num value);
  external CSSUnitValue svi(num value);
  external CSSUnitValue svb(num value);
  external CSSUnitValue svmin(num value);
  external CSSUnitValue svmax(num value);
  external CSSUnitValue lvw(num value);
  external CSSUnitValue lvh(num value);
  external CSSUnitValue lvi(num value);
  external CSSUnitValue lvb(num value);
  external CSSUnitValue lvmin(num value);
  external CSSUnitValue lvmax(num value);
  external CSSUnitValue dvw(num value);
  external CSSUnitValue dvh(num value);
  external CSSUnitValue dvi(num value);
  external CSSUnitValue dvb(num value);
  external CSSUnitValue dvmin(num value);
  external CSSUnitValue dvmax(num value);
  external CSSUnitValue cqw(num value);
  external CSSUnitValue cqh(num value);
  external CSSUnitValue cqi(num value);
  external CSSUnitValue cqb(num value);
  external CSSUnitValue cqmin(num value);
  external CSSUnitValue cqmax(num value);
  external CSSUnitValue cm(num value);
  external CSSUnitValue mm(num value);
  external CSSUnitValue Q(num value);
  @JS('in')
  external CSSUnitValue in_(num value);
  external CSSUnitValue pt(num value);
  external CSSUnitValue pc(num value);
  external CSSUnitValue px(num value);
  external CSSUnitValue deg(num value);
  external CSSUnitValue grad(num value);
  external CSSUnitValue rad(num value);
  external CSSUnitValue turn(num value);
  external CSSUnitValue s(num value);
  external CSSUnitValue ms(num value);
  external CSSUnitValue Hz(num value);
  external CSSUnitValue kHz(num value);
  external CSSUnitValue dpi(num value);
  external CSSUnitValue dpcm(num value);
  external CSSUnitValue dppx(num value);
  external CSSUnitValue fr(num value);
  external String escape(String ident);
  external Worklet get animationWorklet;
  external HighlightRegistry get highlights;
  external JSAny? get elementSources;
  external Worklet get layoutWorklet;
  external Worklet get paintWorklet;
}
