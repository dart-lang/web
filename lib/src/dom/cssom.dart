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
  external JSString? item(JSNumber index);
  external JSVoid appendMedium(JSString medium);
  external JSVoid deleteMedium(JSString medium);
  external set mediaText(JSString value);
  external JSString get mediaText;
  external JSNumber get length;
}

@JS('StyleSheet')
@staticInterop
class StyleSheet implements JSObject {}

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
class CSSStyleSheet implements StyleSheet {
  external factory CSSStyleSheet([CSSStyleSheetInit options]);
}

extension CSSStyleSheetExtension on CSSStyleSheet {
  external JSNumber insertRule(
    JSString rule, [
    JSNumber index,
  ]);
  external JSVoid deleteRule(JSNumber index);
  external JSPromise replace(JSString text);
  external JSVoid replaceSync(JSString text);
  external JSNumber addRule([
    JSString selector,
    JSString style,
    JSNumber index,
  ]);
  external JSVoid removeRule([JSNumber index]);
  external CSSRule? get ownerRule;
  external CSSRuleList get cssRules;
  external CSSRuleList get rules;
}

@JS()
@staticInterop
@anonymous
class CSSStyleSheetInit implements JSObject {
  external factory CSSStyleSheetInit({
    JSString baseURL,
    JSAny media,
    JSBoolean disabled,
  });
}

extension CSSStyleSheetInitExtension on CSSStyleSheetInit {
  external set baseURL(JSString value);
  external JSString get baseURL;
  external set media(JSAny value);
  external JSAny get media;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
}

@JS('StyleSheetList')
@staticInterop
class StyleSheetList implements JSObject {}

extension StyleSheetListExtension on StyleSheetList {
  external CSSStyleSheet? item(JSNumber index);
  external JSNumber get length;
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
  external CSSRule? item(JSNumber index);
  external JSNumber get length;
}

@JS('CSSRule')
@staticInterop
class CSSRule implements JSObject {
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
class CSSStyleRule implements CSSRule {}

extension CSSStyleRuleExtension on CSSStyleRule {
  external JSNumber insertRule(
    JSString rule, [
    JSNumber index,
  ]);
  external JSVoid deleteRule(JSNumber index);
  external CSSRuleList get cssRules;
  external StylePropertyMap get styleMap;
  external set selectorText(JSString value);
  external JSString get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSImportRule')
@staticInterop
class CSSImportRule implements CSSRule {}

extension CSSImportRuleExtension on CSSImportRule {
  external JSString get href;
  external MediaList get media;
  external CSSStyleSheet? get styleSheet;
  external JSString? get layerName;
  external JSString? get supportsText;
}

@JS('CSSGroupingRule')
@staticInterop
class CSSGroupingRule implements CSSRule {}

extension CSSGroupingRuleExtension on CSSGroupingRule {
  external JSNumber insertRule(
    JSString rule, [
    JSNumber index,
  ]);
  external JSVoid deleteRule(JSNumber index);
  external CSSRuleList get cssRules;
}

@JS('CSSPageRule')
@staticInterop
class CSSPageRule implements CSSGroupingRule {}

extension CSSPageRuleExtension on CSSPageRule {
  external set selectorText(JSString value);
  external JSString get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSMarginRule')
@staticInterop
class CSSMarginRule implements CSSRule {}

extension CSSMarginRuleExtension on CSSMarginRule {
  external JSString get name;
  external CSSStyleDeclaration get style;
}

@JS('CSSNamespaceRule')
@staticInterop
class CSSNamespaceRule implements CSSRule {}

extension CSSNamespaceRuleExtension on CSSNamespaceRule {
  external JSString get namespaceURI;
  external JSString get prefix;
}

@JS('CSSStyleDeclaration')
@staticInterop
class CSSStyleDeclaration implements JSObject {}

extension CSSStyleDeclarationExtension on CSSStyleDeclaration {
  external JSString item(JSNumber index);
  external JSString getPropertyValue(JSString property);
  external JSString getPropertyPriority(JSString property);
  external JSVoid setProperty(
    JSString property,
    JSString value, [
    JSString priority,
  ]);
  external JSString removeProperty(JSString property);
  external set cssText(JSString value);
  external JSString get cssText;
  external JSNumber get length;
  external CSSRule? get parentRule;
  external set cssFloat(JSString value);
  external JSString get cssFloat;
  external set accentColor(JSString value);
  external JSString get accentColor;
  external set alignContent(JSString value);
  external JSString get alignContent;
  external set alignItems(JSString value);
  external JSString get alignItems;
  external set alignSelf(JSString value);
  external JSString get alignSelf;
  external set alignTracks(JSString value);
  external JSString get alignTracks;
  external set alignmentBaseline(JSString value);
  external JSString get alignmentBaseline;
  external set all(JSString value);
  external JSString get all;
  external set anchorDefault(JSString value);
  external JSString get anchorDefault;
  external set anchorName(JSString value);
  external JSString get anchorName;
  external set anchorScroll(JSString value);
  external JSString get anchorScroll;
  external set animation(JSString value);
  external JSString get animation;
  external set animationComposition(JSString value);
  external JSString get animationComposition;
  external set animationDelay(JSString value);
  external JSString get animationDelay;
  external set animationDirection(JSString value);
  external JSString get animationDirection;
  external set animationDuration(JSString value);
  external JSString get animationDuration;
  external set animationFillMode(JSString value);
  external JSString get animationFillMode;
  external set animationIterationCount(JSString value);
  external JSString get animationIterationCount;
  external set animationName(JSString value);
  external JSString get animationName;
  external set animationPlayState(JSString value);
  external JSString get animationPlayState;
  external set animationRange(JSString value);
  external JSString get animationRange;
  external set animationRangeEnd(JSString value);
  external JSString get animationRangeEnd;
  external set animationRangeStart(JSString value);
  external JSString get animationRangeStart;
  external set animationTimeline(JSString value);
  external JSString get animationTimeline;
  external set animationTimingFunction(JSString value);
  external JSString get animationTimingFunction;
  external set appearance(JSString value);
  external JSString get appearance;
  external set aspectRatio(JSString value);
  external JSString get aspectRatio;
  external set backdropFilter(JSString value);
  external JSString get backdropFilter;
  external set backfaceVisibility(JSString value);
  external JSString get backfaceVisibility;
  external set background(JSString value);
  external JSString get background;
  external set backgroundAttachment(JSString value);
  external JSString get backgroundAttachment;
  external set backgroundBlendMode(JSString value);
  external JSString get backgroundBlendMode;
  external set backgroundClip(JSString value);
  external JSString get backgroundClip;
  external set backgroundColor(JSString value);
  external JSString get backgroundColor;
  external set backgroundImage(JSString value);
  external JSString get backgroundImage;
  external set backgroundOrigin(JSString value);
  external JSString get backgroundOrigin;
  external set backgroundPosition(JSString value);
  external JSString get backgroundPosition;
  external set backgroundPositionBlock(JSString value);
  external JSString get backgroundPositionBlock;
  external set backgroundPositionInline(JSString value);
  external JSString get backgroundPositionInline;
  external set backgroundPositionX(JSString value);
  external JSString get backgroundPositionX;
  external set backgroundPositionY(JSString value);
  external JSString get backgroundPositionY;
  external set backgroundRepeat(JSString value);
  external JSString get backgroundRepeat;
  external set backgroundSize(JSString value);
  external JSString get backgroundSize;
  external set baselineShift(JSString value);
  external JSString get baselineShift;
  external set baselineSource(JSString value);
  external JSString get baselineSource;
  external set blockEllipsis(JSString value);
  external JSString get blockEllipsis;
  external set blockSize(JSString value);
  external JSString get blockSize;
  external set blockStep(JSString value);
  external JSString get blockStep;
  external set blockStepAlign(JSString value);
  external JSString get blockStepAlign;
  external set blockStepInsert(JSString value);
  external JSString get blockStepInsert;
  external set blockStepRound(JSString value);
  external JSString get blockStepRound;
  external set blockStepSize(JSString value);
  external JSString get blockStepSize;
  external set bookmarkLabel(JSString value);
  external JSString get bookmarkLabel;
  external set bookmarkLevel(JSString value);
  external JSString get bookmarkLevel;
  external set bookmarkState(JSString value);
  external JSString get bookmarkState;
  external set border(JSString value);
  external JSString get border;
  external set borderBlock(JSString value);
  external JSString get borderBlock;
  external set borderBlockColor(JSString value);
  external JSString get borderBlockColor;
  external set borderBlockEnd(JSString value);
  external JSString get borderBlockEnd;
  external set borderBlockEndColor(JSString value);
  external JSString get borderBlockEndColor;
  external set borderBlockEndRadius(JSString value);
  external JSString get borderBlockEndRadius;
  external set borderBlockEndStyle(JSString value);
  external JSString get borderBlockEndStyle;
  external set borderBlockEndWidth(JSString value);
  external JSString get borderBlockEndWidth;
  external set borderBlockStart(JSString value);
  external JSString get borderBlockStart;
  external set borderBlockStartColor(JSString value);
  external JSString get borderBlockStartColor;
  external set borderBlockStartRadius(JSString value);
  external JSString get borderBlockStartRadius;
  external set borderBlockStartStyle(JSString value);
  external JSString get borderBlockStartStyle;
  external set borderBlockStartWidth(JSString value);
  external JSString get borderBlockStartWidth;
  external set borderBlockStyle(JSString value);
  external JSString get borderBlockStyle;
  external set borderBlockWidth(JSString value);
  external JSString get borderBlockWidth;
  external set borderBottom(JSString value);
  external JSString get borderBottom;
  external set borderBottomColor(JSString value);
  external JSString get borderBottomColor;
  external set borderBottomLeftRadius(JSString value);
  external JSString get borderBottomLeftRadius;
  external set borderBottomRadius(JSString value);
  external JSString get borderBottomRadius;
  external set borderBottomRightRadius(JSString value);
  external JSString get borderBottomRightRadius;
  external set borderBottomStyle(JSString value);
  external JSString get borderBottomStyle;
  external set borderBottomWidth(JSString value);
  external JSString get borderBottomWidth;
  external set borderBoundary(JSString value);
  external JSString get borderBoundary;
  external set borderClip(JSString value);
  external JSString get borderClip;
  external set borderClipBottom(JSString value);
  external JSString get borderClipBottom;
  external set borderClipLeft(JSString value);
  external JSString get borderClipLeft;
  external set borderClipRight(JSString value);
  external JSString get borderClipRight;
  external set borderClipTop(JSString value);
  external JSString get borderClipTop;
  external set borderCollapse(JSString value);
  external JSString get borderCollapse;
  external set borderColor(JSString value);
  external JSString get borderColor;
  external set borderEndEndRadius(JSString value);
  external JSString get borderEndEndRadius;
  external set borderEndStartRadius(JSString value);
  external JSString get borderEndStartRadius;
  external set borderImage(JSString value);
  external JSString get borderImage;
  external set borderImageOutset(JSString value);
  external JSString get borderImageOutset;
  external set borderImageRepeat(JSString value);
  external JSString get borderImageRepeat;
  external set borderImageSlice(JSString value);
  external JSString get borderImageSlice;
  external set borderImageSource(JSString value);
  external JSString get borderImageSource;
  external set borderImageWidth(JSString value);
  external JSString get borderImageWidth;
  external set borderInline(JSString value);
  external JSString get borderInline;
  external set borderInlineColor(JSString value);
  external JSString get borderInlineColor;
  external set borderInlineEnd(JSString value);
  external JSString get borderInlineEnd;
  external set borderInlineEndColor(JSString value);
  external JSString get borderInlineEndColor;
  external set borderInlineEndRadius(JSString value);
  external JSString get borderInlineEndRadius;
  external set borderInlineEndStyle(JSString value);
  external JSString get borderInlineEndStyle;
  external set borderInlineEndWidth(JSString value);
  external JSString get borderInlineEndWidth;
  external set borderInlineStart(JSString value);
  external JSString get borderInlineStart;
  external set borderInlineStartColor(JSString value);
  external JSString get borderInlineStartColor;
  external set borderInlineStartRadius(JSString value);
  external JSString get borderInlineStartRadius;
  external set borderInlineStartStyle(JSString value);
  external JSString get borderInlineStartStyle;
  external set borderInlineStartWidth(JSString value);
  external JSString get borderInlineStartWidth;
  external set borderInlineStyle(JSString value);
  external JSString get borderInlineStyle;
  external set borderInlineWidth(JSString value);
  external JSString get borderInlineWidth;
  external set borderLeft(JSString value);
  external JSString get borderLeft;
  external set borderLeftColor(JSString value);
  external JSString get borderLeftColor;
  external set borderLeftRadius(JSString value);
  external JSString get borderLeftRadius;
  external set borderLeftStyle(JSString value);
  external JSString get borderLeftStyle;
  external set borderLeftWidth(JSString value);
  external JSString get borderLeftWidth;
  external set borderLimit(JSString value);
  external JSString get borderLimit;
  external set borderRadius(JSString value);
  external JSString get borderRadius;
  external set borderRight(JSString value);
  external JSString get borderRight;
  external set borderRightColor(JSString value);
  external JSString get borderRightColor;
  external set borderRightRadius(JSString value);
  external JSString get borderRightRadius;
  external set borderRightStyle(JSString value);
  external JSString get borderRightStyle;
  external set borderRightWidth(JSString value);
  external JSString get borderRightWidth;
  external set borderSpacing(JSString value);
  external JSString get borderSpacing;
  external set borderStartEndRadius(JSString value);
  external JSString get borderStartEndRadius;
  external set borderStartStartRadius(JSString value);
  external JSString get borderStartStartRadius;
  external set borderStyle(JSString value);
  external JSString get borderStyle;
  external set borderTop(JSString value);
  external JSString get borderTop;
  external set borderTopColor(JSString value);
  external JSString get borderTopColor;
  external set borderTopLeftRadius(JSString value);
  external JSString get borderTopLeftRadius;
  external set borderTopRadius(JSString value);
  external JSString get borderTopRadius;
  external set borderTopRightRadius(JSString value);
  external JSString get borderTopRightRadius;
  external set borderTopStyle(JSString value);
  external JSString get borderTopStyle;
  external set borderTopWidth(JSString value);
  external JSString get borderTopWidth;
  external set borderWidth(JSString value);
  external JSString get borderWidth;
  external set bottom(JSString value);
  external JSString get bottom;
  external set boxDecorationBreak(JSString value);
  external JSString get boxDecorationBreak;
  external set boxShadow(JSString value);
  external JSString get boxShadow;
  external set boxShadowBlur(JSString value);
  external JSString get boxShadowBlur;
  external set boxShadowColor(JSString value);
  external JSString get boxShadowColor;
  external set boxShadowOffset(JSString value);
  external JSString get boxShadowOffset;
  external set boxShadowPosition(JSString value);
  external JSString get boxShadowPosition;
  external set boxShadowSpread(JSString value);
  external JSString get boxShadowSpread;
  external set boxSizing(JSString value);
  external JSString get boxSizing;
  external set boxSnap(JSString value);
  external JSString get boxSnap;
  external set breakAfter(JSString value);
  external JSString get breakAfter;
  external set breakBefore(JSString value);
  external JSString get breakBefore;
  external set breakInside(JSString value);
  external JSString get breakInside;
  external set captionSide(JSString value);
  external JSString get captionSide;
  external set caret(JSString value);
  external JSString get caret;
  external set caretColor(JSString value);
  external JSString get caretColor;
  external set caretShape(JSString value);
  external JSString get caretShape;
  external set clear(JSString value);
  external JSString get clear;
  external set clip(JSString value);
  external JSString get clip;
  external set clipPath(JSString value);
  external JSString get clipPath;
  external set clipRule(JSString value);
  external JSString get clipRule;
  external set color(JSString value);
  external JSString get color;
  external set colorAdjust(JSString value);
  external JSString get colorAdjust;
  external set colorInterpolation(JSString value);
  external JSString get colorInterpolation;
  external set colorInterpolationFilters(JSString value);
  external JSString get colorInterpolationFilters;
  external set colorScheme(JSString value);
  external JSString get colorScheme;
  external set columnCount(JSString value);
  external JSString get columnCount;
  external set columnFill(JSString value);
  external JSString get columnFill;
  external set columnGap(JSString value);
  external JSString get columnGap;
  external set columnRule(JSString value);
  external JSString get columnRule;
  external set columnRuleColor(JSString value);
  external JSString get columnRuleColor;
  external set columnRuleStyle(JSString value);
  external JSString get columnRuleStyle;
  external set columnRuleWidth(JSString value);
  external JSString get columnRuleWidth;
  external set columnSpan(JSString value);
  external JSString get columnSpan;
  external set columnWidth(JSString value);
  external JSString get columnWidth;
  external set columns(JSString value);
  external JSString get columns;
  external set contain(JSString value);
  external JSString get contain;
  external set containIntrinsicBlockSize(JSString value);
  external JSString get containIntrinsicBlockSize;
  external set containIntrinsicHeight(JSString value);
  external JSString get containIntrinsicHeight;
  external set containIntrinsicInlineSize(JSString value);
  external JSString get containIntrinsicInlineSize;
  external set containIntrinsicSize(JSString value);
  external JSString get containIntrinsicSize;
  external set containIntrinsicWidth(JSString value);
  external JSString get containIntrinsicWidth;
  external set container(JSString value);
  external JSString get container;
  external set containerName(JSString value);
  external JSString get containerName;
  external set containerType(JSString value);
  external JSString get containerType;
  external set content(JSString value);
  external JSString get content;
  external set contentVisibility(JSString value);
  external JSString get contentVisibility;
  @JS('continue')
  external set continue_(JSString value);
  @JS('continue')
  external JSString get continue_;
  external set copyInto(JSString value);
  external JSString get copyInto;
  external set cornerShape(JSString value);
  external JSString get cornerShape;
  external set corners(JSString value);
  external JSString get corners;
  external set counterIncrement(JSString value);
  external JSString get counterIncrement;
  external set counterReset(JSString value);
  external JSString get counterReset;
  external set counterSet(JSString value);
  external JSString get counterSet;
  external set cue(JSString value);
  external JSString get cue;
  external set cueAfter(JSString value);
  external JSString get cueAfter;
  external set cueBefore(JSString value);
  external JSString get cueBefore;
  external set cursor(JSString value);
  external JSString get cursor;
  external set cx(JSString value);
  external JSString get cx;
  external set cy(JSString value);
  external JSString get cy;
  external set d(JSString value);
  external JSString get d;
  external set direction(JSString value);
  external JSString get direction;
  external set display(JSString value);
  external JSString get display;
  external set dominantBaseline(JSString value);
  external JSString get dominantBaseline;
  external set emptyCells(JSString value);
  external JSString get emptyCells;
  external set fill(JSString value);
  external JSString get fill;
  external set fillBreak(JSString value);
  external JSString get fillBreak;
  external set fillColor(JSString value);
  external JSString get fillColor;
  external set fillImage(JSString value);
  external JSString get fillImage;
  external set fillOpacity(JSString value);
  external JSString get fillOpacity;
  external set fillOrigin(JSString value);
  external JSString get fillOrigin;
  external set fillPosition(JSString value);
  external JSString get fillPosition;
  external set fillRepeat(JSString value);
  external JSString get fillRepeat;
  external set fillRule(JSString value);
  external JSString get fillRule;
  external set fillSize(JSString value);
  external JSString get fillSize;
  external set filter(JSString value);
  external JSString get filter;
  external set flex(JSString value);
  external JSString get flex;
  external set flexBasis(JSString value);
  external JSString get flexBasis;
  external set flexDirection(JSString value);
  external JSString get flexDirection;
  external set flexFlow(JSString value);
  external JSString get flexFlow;
  external set flexGrow(JSString value);
  external JSString get flexGrow;
  external set flexShrink(JSString value);
  external JSString get flexShrink;
  external set flexWrap(JSString value);
  external JSString get flexWrap;
  external set float(JSString value);
  external JSString get float;
  external set floatDefer(JSString value);
  external JSString get floatDefer;
  external set floatOffset(JSString value);
  external JSString get floatOffset;
  external set floatReference(JSString value);
  external JSString get floatReference;
  external set floodColor(JSString value);
  external JSString get floodColor;
  external set floodOpacity(JSString value);
  external JSString get floodOpacity;
  external set flowFrom(JSString value);
  external JSString get flowFrom;
  external set flowInto(JSString value);
  external JSString get flowInto;
  external set font(JSString value);
  external JSString get font;
  external set fontFamily(JSString value);
  external JSString get fontFamily;
  external set fontFeatureSettings(JSString value);
  external JSString get fontFeatureSettings;
  external set fontKerning(JSString value);
  external JSString get fontKerning;
  external set fontLanguageOverride(JSString value);
  external JSString get fontLanguageOverride;
  external set fontOpticalSizing(JSString value);
  external JSString get fontOpticalSizing;
  external set fontPalette(JSString value);
  external JSString get fontPalette;
  external set fontSize(JSString value);
  external JSString get fontSize;
  external set fontSizeAdjust(JSString value);
  external JSString get fontSizeAdjust;
  external set fontStretch(JSString value);
  external JSString get fontStretch;
  external set fontStyle(JSString value);
  external JSString get fontStyle;
  external set fontSynthesis(JSString value);
  external JSString get fontSynthesis;
  external set fontSynthesisSmallCaps(JSString value);
  external JSString get fontSynthesisSmallCaps;
  external set fontSynthesisStyle(JSString value);
  external JSString get fontSynthesisStyle;
  external set fontSynthesisWeight(JSString value);
  external JSString get fontSynthesisWeight;
  external set fontVariant(JSString value);
  external JSString get fontVariant;
  external set fontVariantAlternates(JSString value);
  external JSString get fontVariantAlternates;
  external set fontVariantCaps(JSString value);
  external JSString get fontVariantCaps;
  external set fontVariantEastAsian(JSString value);
  external JSString get fontVariantEastAsian;
  external set fontVariantEmoji(JSString value);
  external JSString get fontVariantEmoji;
  external set fontVariantLigatures(JSString value);
  external JSString get fontVariantLigatures;
  external set fontVariantNumeric(JSString value);
  external JSString get fontVariantNumeric;
  external set fontVariantPosition(JSString value);
  external JSString get fontVariantPosition;
  external set fontVariationSettings(JSString value);
  external JSString get fontVariationSettings;
  external set fontWeight(JSString value);
  external JSString get fontWeight;
  external set footnoteDisplay(JSString value);
  external JSString get footnoteDisplay;
  external set footnotePolicy(JSString value);
  external JSString get footnotePolicy;
  external set forcedColorAdjust(JSString value);
  external JSString get forcedColorAdjust;
  external set gap(JSString value);
  external JSString get gap;
  external set glyphOrientationVertical(JSString value);
  external JSString get glyphOrientationVertical;
  external set grid(JSString value);
  external JSString get grid;
  external set gridArea(JSString value);
  external JSString get gridArea;
  external set gridAutoColumns(JSString value);
  external JSString get gridAutoColumns;
  external set gridAutoFlow(JSString value);
  external JSString get gridAutoFlow;
  external set gridAutoRows(JSString value);
  external JSString get gridAutoRows;
  external set gridColumn(JSString value);
  external JSString get gridColumn;
  external set gridColumnEnd(JSString value);
  external JSString get gridColumnEnd;
  external set gridColumnGap(JSString value);
  external JSString get gridColumnGap;
  external set gridColumnStart(JSString value);
  external JSString get gridColumnStart;
  external set gridGap(JSString value);
  external JSString get gridGap;
  external set gridRow(JSString value);
  external JSString get gridRow;
  external set gridRowEnd(JSString value);
  external JSString get gridRowEnd;
  external set gridRowGap(JSString value);
  external JSString get gridRowGap;
  external set gridRowStart(JSString value);
  external JSString get gridRowStart;
  external set gridTemplate(JSString value);
  external JSString get gridTemplate;
  external set gridTemplateAreas(JSString value);
  external JSString get gridTemplateAreas;
  external set gridTemplateColumns(JSString value);
  external JSString get gridTemplateColumns;
  external set gridTemplateRows(JSString value);
  external JSString get gridTemplateRows;
  external set hangingPunctuation(JSString value);
  external JSString get hangingPunctuation;
  external set height(JSString value);
  external JSString get height;
  external set hyphenateCharacter(JSString value);
  external JSString get hyphenateCharacter;
  external set hyphenateLimitChars(JSString value);
  external JSString get hyphenateLimitChars;
  external set hyphenateLimitLast(JSString value);
  external JSString get hyphenateLimitLast;
  external set hyphenateLimitLines(JSString value);
  external JSString get hyphenateLimitLines;
  external set hyphenateLimitZone(JSString value);
  external JSString get hyphenateLimitZone;
  external set hyphens(JSString value);
  external JSString get hyphens;
  external set imageOrientation(JSString value);
  external JSString get imageOrientation;
  external set imageRendering(JSString value);
  external JSString get imageRendering;
  external set imageResolution(JSString value);
  external JSString get imageResolution;
  external set initialLetter(JSString value);
  external JSString get initialLetter;
  external set initialLetterAlign(JSString value);
  external JSString get initialLetterAlign;
  external set initialLetterWrap(JSString value);
  external JSString get initialLetterWrap;
  external set inlineSize(JSString value);
  external JSString get inlineSize;
  external set inlineSizing(JSString value);
  external JSString get inlineSizing;
  external set inputSecurity(JSString value);
  external JSString get inputSecurity;
  external set inset(JSString value);
  external JSString get inset;
  external set insetBlock(JSString value);
  external JSString get insetBlock;
  external set insetBlockEnd(JSString value);
  external JSString get insetBlockEnd;
  external set insetBlockStart(JSString value);
  external JSString get insetBlockStart;
  external set insetInline(JSString value);
  external JSString get insetInline;
  external set insetInlineEnd(JSString value);
  external JSString get insetInlineEnd;
  external set insetInlineStart(JSString value);
  external JSString get insetInlineStart;
  external set isolation(JSString value);
  external JSString get isolation;
  external set justifyContent(JSString value);
  external JSString get justifyContent;
  external set justifyItems(JSString value);
  external JSString get justifyItems;
  external set justifySelf(JSString value);
  external JSString get justifySelf;
  external set justifyTracks(JSString value);
  external JSString get justifyTracks;
  external set layoutOrder(JSString value);
  external JSString get layoutOrder;
  external set left(JSString value);
  external JSString get left;
  external set letterSpacing(JSString value);
  external JSString get letterSpacing;
  external set lightingColor(JSString value);
  external JSString get lightingColor;
  external set lineBreak(JSString value);
  external JSString get lineBreak;
  external set lineClamp(JSString value);
  external JSString get lineClamp;
  external set lineGrid(JSString value);
  external JSString get lineGrid;
  external set lineHeight(JSString value);
  external JSString get lineHeight;
  external set lineHeightStep(JSString value);
  external JSString get lineHeightStep;
  external set linePadding(JSString value);
  external JSString get linePadding;
  external set lineSnap(JSString value);
  external JSString get lineSnap;
  external set linkParameters(JSString value);
  external JSString get linkParameters;
  external set listStyle(JSString value);
  external JSString get listStyle;
  external set listStyleImage(JSString value);
  external JSString get listStyleImage;
  external set listStylePosition(JSString value);
  external JSString get listStylePosition;
  external set listStyleType(JSString value);
  external JSString get listStyleType;
  external set margin(JSString value);
  external JSString get margin;
  external set marginBlock(JSString value);
  external JSString get marginBlock;
  external set marginBlockEnd(JSString value);
  external JSString get marginBlockEnd;
  external set marginBlockStart(JSString value);
  external JSString get marginBlockStart;
  external set marginBottom(JSString value);
  external JSString get marginBottom;
  external set marginBreak(JSString value);
  external JSString get marginBreak;
  external set marginInline(JSString value);
  external JSString get marginInline;
  external set marginInlineEnd(JSString value);
  external JSString get marginInlineEnd;
  external set marginInlineStart(JSString value);
  external JSString get marginInlineStart;
  external set marginLeft(JSString value);
  external JSString get marginLeft;
  external set marginRight(JSString value);
  external JSString get marginRight;
  external set marginTop(JSString value);
  external JSString get marginTop;
  external set marginTrim(JSString value);
  external JSString get marginTrim;
  external set marker(JSString value);
  external JSString get marker;
  external set markerEnd(JSString value);
  external JSString get markerEnd;
  external set markerMid(JSString value);
  external JSString get markerMid;
  external set markerSide(JSString value);
  external JSString get markerSide;
  external set markerStart(JSString value);
  external JSString get markerStart;
  external set mask(JSString value);
  external JSString get mask;
  external set maskBorder(JSString value);
  external JSString get maskBorder;
  external set maskBorderMode(JSString value);
  external JSString get maskBorderMode;
  external set maskBorderOutset(JSString value);
  external JSString get maskBorderOutset;
  external set maskBorderRepeat(JSString value);
  external JSString get maskBorderRepeat;
  external set maskBorderSlice(JSString value);
  external JSString get maskBorderSlice;
  external set maskBorderSource(JSString value);
  external JSString get maskBorderSource;
  external set maskBorderWidth(JSString value);
  external JSString get maskBorderWidth;
  external set maskClip(JSString value);
  external JSString get maskClip;
  external set maskComposite(JSString value);
  external JSString get maskComposite;
  external set maskImage(JSString value);
  external JSString get maskImage;
  external set maskMode(JSString value);
  external JSString get maskMode;
  external set maskOrigin(JSString value);
  external JSString get maskOrigin;
  external set maskPosition(JSString value);
  external JSString get maskPosition;
  external set maskRepeat(JSString value);
  external JSString get maskRepeat;
  external set maskSize(JSString value);
  external JSString get maskSize;
  external set maskType(JSString value);
  external JSString get maskType;
  external set masonryAutoFlow(JSString value);
  external JSString get masonryAutoFlow;
  external set mathDepth(JSString value);
  external JSString get mathDepth;
  external set mathShift(JSString value);
  external JSString get mathShift;
  external set mathStyle(JSString value);
  external JSString get mathStyle;
  external set maxBlockSize(JSString value);
  external JSString get maxBlockSize;
  external set maxHeight(JSString value);
  external JSString get maxHeight;
  external set maxInlineSize(JSString value);
  external JSString get maxInlineSize;
  external set maxLines(JSString value);
  external JSString get maxLines;
  external set maxWidth(JSString value);
  external JSString get maxWidth;
  external set minBlockSize(JSString value);
  external JSString get minBlockSize;
  external set minHeight(JSString value);
  external JSString get minHeight;
  external set minInlineSize(JSString value);
  external JSString get minInlineSize;
  external set minIntrinsicSizing(JSString value);
  external JSString get minIntrinsicSizing;
  external set minWidth(JSString value);
  external JSString get minWidth;
  external set mixBlendMode(JSString value);
  external JSString get mixBlendMode;
  external set navDown(JSString value);
  external JSString get navDown;
  external set navLeft(JSString value);
  external JSString get navLeft;
  external set navRight(JSString value);
  external JSString get navRight;
  external set navUp(JSString value);
  external JSString get navUp;
  external set objectFit(JSString value);
  external JSString get objectFit;
  external set objectPosition(JSString value);
  external JSString get objectPosition;
  external set objectViewBox(JSString value);
  external JSString get objectViewBox;
  external set offset(JSString value);
  external JSString get offset;
  external set offsetAnchor(JSString value);
  external JSString get offsetAnchor;
  external set offsetDistance(JSString value);
  external JSString get offsetDistance;
  external set offsetPath(JSString value);
  external JSString get offsetPath;
  external set offsetPosition(JSString value);
  external JSString get offsetPosition;
  external set offsetRotate(JSString value);
  external JSString get offsetRotate;
  external set opacity(JSString value);
  external JSString get opacity;
  external set order(JSString value);
  external JSString get order;
  external set orphans(JSString value);
  external JSString get orphans;
  external set outline(JSString value);
  external JSString get outline;
  external set outlineColor(JSString value);
  external JSString get outlineColor;
  external set outlineOffset(JSString value);
  external JSString get outlineOffset;
  external set outlineStyle(JSString value);
  external JSString get outlineStyle;
  external set outlineWidth(JSString value);
  external JSString get outlineWidth;
  external set overflow(JSString value);
  external JSString get overflow;
  external set overflowAnchor(JSString value);
  external JSString get overflowAnchor;
  external set overflowBlock(JSString value);
  external JSString get overflowBlock;
  external set overflowClipMargin(JSString value);
  external JSString get overflowClipMargin;
  external set overflowClipMarginBlock(JSString value);
  external JSString get overflowClipMarginBlock;
  external set overflowClipMarginBlockEnd(JSString value);
  external JSString get overflowClipMarginBlockEnd;
  external set overflowClipMarginBlockStart(JSString value);
  external JSString get overflowClipMarginBlockStart;
  external set overflowClipMarginBottom(JSString value);
  external JSString get overflowClipMarginBottom;
  external set overflowClipMarginInline(JSString value);
  external JSString get overflowClipMarginInline;
  external set overflowClipMarginInlineEnd(JSString value);
  external JSString get overflowClipMarginInlineEnd;
  external set overflowClipMarginInlineStart(JSString value);
  external JSString get overflowClipMarginInlineStart;
  external set overflowClipMarginLeft(JSString value);
  external JSString get overflowClipMarginLeft;
  external set overflowClipMarginRight(JSString value);
  external JSString get overflowClipMarginRight;
  external set overflowClipMarginTop(JSString value);
  external JSString get overflowClipMarginTop;
  external set overflowInline(JSString value);
  external JSString get overflowInline;
  external set overflowWrap(JSString value);
  external JSString get overflowWrap;
  external set overflowX(JSString value);
  external JSString get overflowX;
  external set overflowY(JSString value);
  external JSString get overflowY;
  external set overlay(JSString value);
  external JSString get overlay;
  external set overscrollBehavior(JSString value);
  external JSString get overscrollBehavior;
  external set overscrollBehaviorBlock(JSString value);
  external JSString get overscrollBehaviorBlock;
  external set overscrollBehaviorInline(JSString value);
  external JSString get overscrollBehaviorInline;
  external set overscrollBehaviorX(JSString value);
  external JSString get overscrollBehaviorX;
  external set overscrollBehaviorY(JSString value);
  external JSString get overscrollBehaviorY;
  external set padding(JSString value);
  external JSString get padding;
  external set paddingBlock(JSString value);
  external JSString get paddingBlock;
  external set paddingBlockEnd(JSString value);
  external JSString get paddingBlockEnd;
  external set paddingBlockStart(JSString value);
  external JSString get paddingBlockStart;
  external set paddingBottom(JSString value);
  external JSString get paddingBottom;
  external set paddingInline(JSString value);
  external JSString get paddingInline;
  external set paddingInlineEnd(JSString value);
  external JSString get paddingInlineEnd;
  external set paddingInlineStart(JSString value);
  external JSString get paddingInlineStart;
  external set paddingLeft(JSString value);
  external JSString get paddingLeft;
  external set paddingRight(JSString value);
  external JSString get paddingRight;
  external set paddingTop(JSString value);
  external JSString get paddingTop;
  external set page(JSString value);
  external JSString get page;
  external set pageBreakAfter(JSString value);
  external JSString get pageBreakAfter;
  external set pageBreakBefore(JSString value);
  external JSString get pageBreakBefore;
  external set pageBreakInside(JSString value);
  external JSString get pageBreakInside;
  external set paintOrder(JSString value);
  external JSString get paintOrder;
  external set pause(JSString value);
  external JSString get pause;
  external set pauseAfter(JSString value);
  external JSString get pauseAfter;
  external set pauseBefore(JSString value);
  external JSString get pauseBefore;
  external set perspective(JSString value);
  external JSString get perspective;
  external set perspectiveOrigin(JSString value);
  external JSString get perspectiveOrigin;
  external set placeContent(JSString value);
  external JSString get placeContent;
  external set placeItems(JSString value);
  external JSString get placeItems;
  external set placeSelf(JSString value);
  external JSString get placeSelf;
  external set pointerEvents(JSString value);
  external JSString get pointerEvents;
  external set position(JSString value);
  external JSString get position;
  external set positionFallback(JSString value);
  external JSString get positionFallback;
  external set printColorAdjust(JSString value);
  external JSString get printColorAdjust;
  external set quotes(JSString value);
  external JSString get quotes;
  external set r(JSString value);
  external JSString get r;
  external set readingOrder(JSString value);
  external JSString get readingOrder;
  external set regionFragment(JSString value);
  external JSString get regionFragment;
  external set resize(JSString value);
  external JSString get resize;
  external set rest(JSString value);
  external JSString get rest;
  external set restAfter(JSString value);
  external JSString get restAfter;
  external set restBefore(JSString value);
  external JSString get restBefore;
  external set right(JSString value);
  external JSString get right;
  external set rotate(JSString value);
  external JSString get rotate;
  external set rowGap(JSString value);
  external JSString get rowGap;
  external set rubyAlign(JSString value);
  external JSString get rubyAlign;
  external set rubyMerge(JSString value);
  external JSString get rubyMerge;
  external set rubyOverhang(JSString value);
  external JSString get rubyOverhang;
  external set rubyPosition(JSString value);
  external JSString get rubyPosition;
  external set rx(JSString value);
  external JSString get rx;
  external set ry(JSString value);
  external JSString get ry;
  external set scale(JSString value);
  external JSString get scale;
  external set scrollBehavior(JSString value);
  external JSString get scrollBehavior;
  external set scrollMargin(JSString value);
  external JSString get scrollMargin;
  external set scrollMarginBlock(JSString value);
  external JSString get scrollMarginBlock;
  external set scrollMarginBlockEnd(JSString value);
  external JSString get scrollMarginBlockEnd;
  external set scrollMarginBlockStart(JSString value);
  external JSString get scrollMarginBlockStart;
  external set scrollMarginBottom(JSString value);
  external JSString get scrollMarginBottom;
  external set scrollMarginInline(JSString value);
  external JSString get scrollMarginInline;
  external set scrollMarginInlineEnd(JSString value);
  external JSString get scrollMarginInlineEnd;
  external set scrollMarginInlineStart(JSString value);
  external JSString get scrollMarginInlineStart;
  external set scrollMarginLeft(JSString value);
  external JSString get scrollMarginLeft;
  external set scrollMarginRight(JSString value);
  external JSString get scrollMarginRight;
  external set scrollMarginTop(JSString value);
  external JSString get scrollMarginTop;
  external set scrollPadding(JSString value);
  external JSString get scrollPadding;
  external set scrollPaddingBlock(JSString value);
  external JSString get scrollPaddingBlock;
  external set scrollPaddingBlockEnd(JSString value);
  external JSString get scrollPaddingBlockEnd;
  external set scrollPaddingBlockStart(JSString value);
  external JSString get scrollPaddingBlockStart;
  external set scrollPaddingBottom(JSString value);
  external JSString get scrollPaddingBottom;
  external set scrollPaddingInline(JSString value);
  external JSString get scrollPaddingInline;
  external set scrollPaddingInlineEnd(JSString value);
  external JSString get scrollPaddingInlineEnd;
  external set scrollPaddingInlineStart(JSString value);
  external JSString get scrollPaddingInlineStart;
  external set scrollPaddingLeft(JSString value);
  external JSString get scrollPaddingLeft;
  external set scrollPaddingRight(JSString value);
  external JSString get scrollPaddingRight;
  external set scrollPaddingTop(JSString value);
  external JSString get scrollPaddingTop;
  external set scrollSnapAlign(JSString value);
  external JSString get scrollSnapAlign;
  external set scrollSnapStop(JSString value);
  external JSString get scrollSnapStop;
  external set scrollSnapType(JSString value);
  external JSString get scrollSnapType;
  external set scrollTimeline(JSString value);
  external JSString get scrollTimeline;
  external set scrollTimelineAttachment(JSString value);
  external JSString get scrollTimelineAttachment;
  external set scrollTimelineAxis(JSString value);
  external JSString get scrollTimelineAxis;
  external set scrollTimelineName(JSString value);
  external JSString get scrollTimelineName;
  external set scrollbarColor(JSString value);
  external JSString get scrollbarColor;
  external set scrollbarGutter(JSString value);
  external JSString get scrollbarGutter;
  external set scrollbarWidth(JSString value);
  external JSString get scrollbarWidth;
  external set shapeImageThreshold(JSString value);
  external JSString get shapeImageThreshold;
  external set shapeInside(JSString value);
  external JSString get shapeInside;
  external set shapeMargin(JSString value);
  external JSString get shapeMargin;
  external set shapeOutside(JSString value);
  external JSString get shapeOutside;
  external set shapePadding(JSString value);
  external JSString get shapePadding;
  external set shapeRendering(JSString value);
  external JSString get shapeRendering;
  external set shapeSubtract(JSString value);
  external JSString get shapeSubtract;
  external set spatialNavigationAction(JSString value);
  external JSString get spatialNavigationAction;
  external set spatialNavigationContain(JSString value);
  external JSString get spatialNavigationContain;
  external set spatialNavigationFunction(JSString value);
  external JSString get spatialNavigationFunction;
  external set speak(JSString value);
  external JSString get speak;
  external set speakAs(JSString value);
  external JSString get speakAs;
  external set stopColor(JSString value);
  external JSString get stopColor;
  external set stopOpacity(JSString value);
  external JSString get stopOpacity;
  external set stringSet(JSString value);
  external JSString get stringSet;
  external set stroke(JSString value);
  external JSString get stroke;
  external set strokeAlign(JSString value);
  external JSString get strokeAlign;
  external set strokeAlignment(JSString value);
  external JSString get strokeAlignment;
  external set strokeBreak(JSString value);
  external JSString get strokeBreak;
  external set strokeColor(JSString value);
  external JSString get strokeColor;
  external set strokeDashCorner(JSString value);
  external JSString get strokeDashCorner;
  external set strokeDashJustify(JSString value);
  external JSString get strokeDashJustify;
  external set strokeDashadjust(JSString value);
  external JSString get strokeDashadjust;
  external set strokeDasharray(JSString value);
  external JSString get strokeDasharray;
  external set strokeDashcorner(JSString value);
  external JSString get strokeDashcorner;
  external set strokeDashoffset(JSString value);
  external JSString get strokeDashoffset;
  external set strokeImage(JSString value);
  external JSString get strokeImage;
  external set strokeLinecap(JSString value);
  external JSString get strokeLinecap;
  external set strokeLinejoin(JSString value);
  external JSString get strokeLinejoin;
  external set strokeMiterlimit(JSString value);
  external JSString get strokeMiterlimit;
  external set strokeOpacity(JSString value);
  external JSString get strokeOpacity;
  external set strokeOrigin(JSString value);
  external JSString get strokeOrigin;
  external set strokePosition(JSString value);
  external JSString get strokePosition;
  external set strokeRepeat(JSString value);
  external JSString get strokeRepeat;
  external set strokeSize(JSString value);
  external JSString get strokeSize;
  external set strokeWidth(JSString value);
  external JSString get strokeWidth;
  external set tabSize(JSString value);
  external JSString get tabSize;
  external set tableLayout(JSString value);
  external JSString get tableLayout;
  external set textAlign(JSString value);
  external JSString get textAlign;
  external set textAlignAll(JSString value);
  external JSString get textAlignAll;
  external set textAlignLast(JSString value);
  external JSString get textAlignLast;
  external set textAnchor(JSString value);
  external JSString get textAnchor;
  external set textAutospace(JSString value);
  external JSString get textAutospace;
  external set textBoxEdge(JSString value);
  external JSString get textBoxEdge;
  external set textBoxTrim(JSString value);
  external JSString get textBoxTrim;
  external set textCombineUpright(JSString value);
  external JSString get textCombineUpright;
  external set textDecoration(JSString value);
  external JSString get textDecoration;
  external set textDecorationColor(JSString value);
  external JSString get textDecorationColor;
  external set textDecorationLine(JSString value);
  external JSString get textDecorationLine;
  external set textDecorationSkip(JSString value);
  external JSString get textDecorationSkip;
  external set textDecorationSkipBox(JSString value);
  external JSString get textDecorationSkipBox;
  external set textDecorationSkipInk(JSString value);
  external JSString get textDecorationSkipInk;
  external set textDecorationSkipSelf(JSString value);
  external JSString get textDecorationSkipSelf;
  external set textDecorationSkipSpaces(JSString value);
  external JSString get textDecorationSkipSpaces;
  external set textDecorationStyle(JSString value);
  external JSString get textDecorationStyle;
  external set textDecorationThickness(JSString value);
  external JSString get textDecorationThickness;
  external set textDecorationTrim(JSString value);
  external JSString get textDecorationTrim;
  external set textEmphasis(JSString value);
  external JSString get textEmphasis;
  external set textEmphasisColor(JSString value);
  external JSString get textEmphasisColor;
  external set textEmphasisPosition(JSString value);
  external JSString get textEmphasisPosition;
  external set textEmphasisSkip(JSString value);
  external JSString get textEmphasisSkip;
  external set textEmphasisStyle(JSString value);
  external JSString get textEmphasisStyle;
  external set textGroupAlign(JSString value);
  external JSString get textGroupAlign;
  external set textIndent(JSString value);
  external JSString get textIndent;
  external set textJustify(JSString value);
  external JSString get textJustify;
  external set textOrientation(JSString value);
  external JSString get textOrientation;
  external set textOverflow(JSString value);
  external JSString get textOverflow;
  external set textRendering(JSString value);
  external JSString get textRendering;
  external set textShadow(JSString value);
  external JSString get textShadow;
  external set textSizeAdjust(JSString value);
  external JSString get textSizeAdjust;
  external set textSpacing(JSString value);
  external JSString get textSpacing;
  external set textSpacingTrim(JSString value);
  external JSString get textSpacingTrim;
  external set textTransform(JSString value);
  external JSString get textTransform;
  external set textUnderlineOffset(JSString value);
  external JSString get textUnderlineOffset;
  external set textUnderlinePosition(JSString value);
  external JSString get textUnderlinePosition;
  external set textWrap(JSString value);
  external JSString get textWrap;
  external set top(JSString value);
  external JSString get top;
  external set touchAction(JSString value);
  external JSString get touchAction;
  external set transform(JSString value);
  external JSString get transform;
  external set transformBox(JSString value);
  external JSString get transformBox;
  external set transformOrigin(JSString value);
  external JSString get transformOrigin;
  external set transformStyle(JSString value);
  external JSString get transformStyle;
  external set transition(JSString value);
  external JSString get transition;
  external set transitionDelay(JSString value);
  external JSString get transitionDelay;
  external set transitionDuration(JSString value);
  external JSString get transitionDuration;
  external set transitionProperty(JSString value);
  external JSString get transitionProperty;
  external set transitionTimingFunction(JSString value);
  external JSString get transitionTimingFunction;
  external set translate(JSString value);
  external JSString get translate;
  external set unicodeBidi(JSString value);
  external JSString get unicodeBidi;
  external set userSelect(JSString value);
  external JSString get userSelect;
  external set vectorEffect(JSString value);
  external JSString get vectorEffect;
  external set verticalAlign(JSString value);
  external JSString get verticalAlign;
  external set viewTimeline(JSString value);
  external JSString get viewTimeline;
  external set viewTimelineAttachment(JSString value);
  external JSString get viewTimelineAttachment;
  external set viewTimelineAxis(JSString value);
  external JSString get viewTimelineAxis;
  external set viewTimelineInset(JSString value);
  external JSString get viewTimelineInset;
  external set viewTimelineName(JSString value);
  external JSString get viewTimelineName;
  external set viewTransitionName(JSString value);
  external JSString get viewTransitionName;
  external set visibility(JSString value);
  external JSString get visibility;
  external set voiceBalance(JSString value);
  external JSString get voiceBalance;
  external set voiceDuration(JSString value);
  external JSString get voiceDuration;
  external set voiceFamily(JSString value);
  external JSString get voiceFamily;
  external set voicePitch(JSString value);
  external JSString get voicePitch;
  external set voiceRange(JSString value);
  external JSString get voiceRange;
  external set voiceRate(JSString value);
  external JSString get voiceRate;
  external set voiceStress(JSString value);
  external JSString get voiceStress;
  external set voiceVolume(JSString value);
  external JSString get voiceVolume;
  external set whiteSpace(JSString value);
  external JSString get whiteSpace;
  external set whiteSpaceCollapse(JSString value);
  external JSString get whiteSpaceCollapse;
  external set whiteSpaceTrim(JSString value);
  external JSString get whiteSpaceTrim;
  external set widows(JSString value);
  external JSString get widows;
  external set width(JSString value);
  external JSString get width;
  external set willChange(JSString value);
  external JSString get willChange;
  external set wordBoundaryDetection(JSString value);
  external JSString get wordBoundaryDetection;
  external set wordBoundaryExpansion(JSString value);
  external JSString get wordBoundaryExpansion;
  external set wordBreak(JSString value);
  external JSString get wordBreak;
  external set wordSpacing(JSString value);
  external JSString get wordSpacing;
  external set wordWrap(JSString value);
  external JSString get wordWrap;
  external set wrapAfter(JSString value);
  external JSString get wrapAfter;
  external set wrapBefore(JSString value);
  external JSString get wrapBefore;
  external set wrapFlow(JSString value);
  external JSString get wrapFlow;
  external set wrapInside(JSString value);
  external JSString get wrapInside;
  external set wrapThrough(JSString value);
  external JSString get wrapThrough;
  external set writingMode(JSString value);
  external JSString get writingMode;
  external set x(JSString value);
  external JSString get x;
  external set y(JSString value);
  external JSString get y;
  external set zIndex(JSString value);
  external JSString get zIndex;
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
  external JSBoolean supports(
    JSString conditionTextOrProperty, [
    JSString value,
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
    JSString css, [
    CSSParserOptions options,
  ]);
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
  external CSSUnitValue in_(JSNumber value);
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
  external Worklet get animationWorklet;
  external HighlightRegistry get highlights;
  external JSAny get elementSources;
  external Worklet get layoutWorklet;
  external Worklet get paintWorklet;
}
