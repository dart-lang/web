// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'css_highlight_api.dart';
import 'css_properties_values_api.dart';
import 'css_typed_om.dart';

/// The **`MediaList`** interface represents the media queries of a stylesheet,
/// e.g. those set using a `link` element's `media` attribute.
///
/// > **Note:** `MediaList` is a live list; updating the list using properties
/// > or methods listed below will immediately update the behavior of the
/// > document.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaList).
extension type MediaList._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [MediaList] interface returns the media
  /// query at the specified `index`, or `null` if the specified `index` doesn't
  /// exist.
  external String? item(int index);

  /// The `appendMedium()` method of the [MediaList] interface adds a media
  /// query to the list. If the media query is already in the collection, this
  /// method does nothing.
  external void appendMedium(String medium);

  /// The `deleteMedium()` method of the [MediaList] interface removes from this
  /// `MediaList` the given media query.
  external void deleteMedium(String medium);

  /// The **`mediaText`** property of the [MediaList]
  /// interface is a  that returns a string representing the
  /// `MediaList` as text, and also allows you to set a new `MediaList`.
  external String get mediaText;
  external set mediaText(String value);

  /// The read-only **`length`** property of the [MediaList] interface returns
  /// the number of media queries in the list.
  external int get length;
}

/// An object implementing the `StyleSheet` interface represents a single style
/// sheet. CSS style sheets will further implement the more specialized
/// [CSSStyleSheet] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet).
extension type StyleSheet._(JSObject _) implements JSObject {
  /// The **`type`** property of the [StyleSheet]
  /// interface specifies the style sheet language for the given style sheet.
  external String get type;

  /// The **`href`** property of the [StyleSheet]
  /// interface returns the location of the style sheet.
  ///
  /// This property is read-only.
  external String? get href;

  /// The **`ownerNode`** property of the
  /// [StyleSheet] interface returns the node that associates this style sheet
  /// with the document.
  ///
  /// This is usually an HTML
  /// [`<link>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link)
  /// or
  /// [`<style>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style)
  /// element, but
  /// can also return a
  /// [processing instruction node](https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction)
  /// in the case of `<?xml-stylesheet ?>`.
  external JSObject? get ownerNode;

  /// The **`parentStyleSheet`** property of the
  /// [StyleSheet] interface returns the style sheet, if any, that is including
  /// the given style sheet.
  external CSSStyleSheet? get parentStyleSheet;

  /// The **`title`** property of the [StyleSheet] interface returns the
  /// advisory title of the current style sheet.
  ///
  /// The title is often specified in the [StyleSheet.OwnerNode].
  external String? get title;

  /// The **`media`** property of the [StyleSheet] interface specifies the
  /// intended destination media for style information. It is a read-only,
  /// array-like `MediaList` object and can be removed with `deleteMedium()` and
  /// added with `appendMedium()`.
  external MediaList get media;

  /// The **`disabled`** property of the
  /// [StyleSheet] interface determines whether the style sheet is prevented
  /// from
  /// applying to the document.
  ///
  /// A style sheet may be disabled by manually setting this property to `true`
  /// or
  /// if it's an inactive
  /// [alternative style sheet](https://developer.mozilla.org/en-US/docs/Web/CSS/Alternative_style_sheets).
  /// Note that `disabled === false` does not guarantee the style
  /// sheet is applied (it could be removed from the document, for instance).
  external bool get disabled;
  external set disabled(bool value);
}

/// The **`CSSStyleSheet`** interface represents a single
/// [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS) stylesheet, and lets
/// you inspect and modify the list of rules contained in the stylesheet. It
/// inherits properties and methods from its parent, [StyleSheet].
///
/// A stylesheet consists of a collection of [CSSRule] objects representing each
/// of the rules in the stylesheet. The rules are contained in a [CSSRuleList],
/// which can be obtained from the stylesheet's [CSSStyleSheet.cssRules]
/// property.
///
/// For example, one rule might be a [CSSStyleRule] object containing a style
/// such as:
///
/// ```css
/// h1,
/// h2 {
///   font-size: 16pt;
/// }
/// ```
///
/// Another rule might be an _at-rule_ such as  or , and so forth.
///
/// See the [Obtaining a StyleSheet](#obtaining_a_stylesheet) section for the
/// various ways a `CSSStyleSheet` object can be obtained. A `CSSStyleSheet`
/// object can also be directly constructed. The constructor, and the
/// [CSSStyleSheet.replace], and [CSSStyleSheet.replaceSync] methods are newer
/// additions to the specification, enabling _Constructable Stylesheets_.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet).
extension type CSSStyleSheet._(JSObject _) implements StyleSheet, JSObject {
  external factory CSSStyleSheet([CSSStyleSheetInit options]);

  /// The **`CSSStyleSheet.insertRule()`**
  /// method inserts a new
  /// [CSS rule](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule) into
  /// the
  /// [current style sheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet).
  ///
  /// > **Note:** Although `insertRule()` is exclusively a method of
  /// > [CSSStyleSheet], it actually inserts the rule into
  /// > `[CSSStyleSheet].cssRules` — its internal
  /// > [CSSRuleList].
  external int insertRule(
    String rule, [
    int index,
  ]);

  /// The [CSSStyleSheet] method
  /// **`deleteRule()`** removes a rule from the stylesheet
  /// object.
  external void deleteRule(int index);

  /// The **`replace()`** method of the [CSSStyleSheet] interface asynchronously
  /// replaces the content of the stylesheet with the content passed into it.
  /// The method returns a promise that resolves with the `CSSStyleSheet`
  /// object.
  ///
  /// The `replace()` and [CSSStyleSheet.replaceSync] methods can only be used
  /// on a stylesheet created with the [CSSStyleSheet.CSSStyleSheet]
  /// constructor.
  external JSPromise<CSSStyleSheet> replace(String text);

  /// The **`replaceSync()`** method of the [CSSStyleSheet] interface
  /// synchronously replaces the content of the stylesheet with the content
  /// passed into it.
  ///
  /// The `replaceSync()` and [CSSStyleSheet.replace] methods can only be used
  /// on a stylesheet created with the [CSSStyleSheet.CSSStyleSheet]
  /// constructor.
  external void replaceSync(String text);

  /// The obsolete [CSSStyleSheet] interface's
  /// **`addRule()`** _legacy method_ adds a new rule to the
  /// stylesheet. You should avoid using this method, and should instead use the
  /// more standard
  /// [CSSStyleSheet.insertRule] method.
  external int addRule([
    String selector,
    String style,
    int index,
  ]);

  /// The obsolete [CSSStyleSheet] method
  /// **`removeRule()`** removes a rule from the stylesheet
  /// object. It is functionally identical to the standard, preferred method
  /// [CSSStyleSheet.deleteRule].
  ///
  /// > **Note:** This is a _legacy method_ which has been replaced by
  /// > the standard method [CSSStyleSheet.deleteRule]. You
  /// > should use that instead.
  external void removeRule([int index]);

  /// The read-only [CSSStyleSheet] property
  /// **`ownerRule`** returns the [CSSImportRule]
  /// corresponding to the  at-rule which imported the stylesheet into
  /// the document. If the stylesheet wasn't imported into the document using
  /// `@import`, the returned value is `null`.
  external CSSRule? get ownerRule;

  /// The read-only [CSSStyleSheet] property
  /// **`cssRules`** returns a live [CSSRuleList] which
  /// provides a real-time, up-to-date list of every CSS rule which comprises
  /// the
  /// stylesheet. Each item in the list is a [CSSRule] defining a single
  /// rule.
  external CSSRuleList get cssRules;

  /// **`rules`** is a _deprecated_
  /// _legacy property_ of the [CSSStyleSheet] interface. Functionally
  /// identical to the preferred [CSSStyleSheet.cssRules] property,
  /// it provides access to a live-updating list of the CSS rules comprising the
  /// stylesheet.
  ///
  /// > **Note:** As a legacy property, you should not use `rules` and
  /// > should instead use the preferred [CSSStyleSheet.cssRules].
  /// > While `rules` is unlikely to be removed soon, its availability is not as
  /// > widespread and using it will result in compatibility problems for your
  /// > site or app.
  external CSSRuleList get rules;
}
extension type CSSStyleSheetInit._(JSObject _) implements JSObject {
  external factory CSSStyleSheetInit({
    String baseURL,
    JSAny media,
    bool disabled,
  });

  external String get baseURL;
  external set baseURL(String value);
  external JSAny get media;
  external set media(JSAny value);
  external bool get disabled;
  external set disabled(bool value);
}

/// The `StyleSheetList` interface represents a list of [CSSStyleSheet] objects.
/// An instance of this object can be returned by [Document.styleSheets].
///
/// It is an array-like object but can't be iterated over using `Array` methods.
/// However it can be iterated over in a standard `for` loop over its indices,
/// or converted to an `Array`.
///
/// > **Note:** Typically list interfaces like `StyleSheetList` wrap around
/// > `Array` types, so you can use `Array` methods on them.
/// > This is not the case here for
/// > [historical reasons](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156).
/// > However, you can convert `StyleSheetList` to an `Array` in order to use
/// > those methods (see the example below).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList).
extension type StyleSheetList._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [StyleSheetList] interface returns a single
  /// [CSSStyleSheet] object.
  external CSSStyleSheet? item(int index);

  /// The **`length`** read-only property of the [StyleSheetList] interface
  /// returns the number of [CSSStyleSheet] objects in the collection.
  external int get length;
}

/// A `CSSRuleList` represents an ordered collection of read-only [CSSRule]
/// objects.
///
/// While the `CSSRuleList` object is read-only, and cannot be directly
/// modified, it is considered a `live` object, as the content can change over
/// time.
///
/// To edit the underlying rules returned by `CSSRule` objects, use
/// [CSSStyleSheet.insertRule] and [CSSStyleSheet.deleteRule], which are methods
/// of [CSSStyleSheet].
///
/// This interface was an
/// [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// and only continues to be supported to not break code that's already using
/// it. Modern APIs represent list structures using types based on JavaScript
/// [arrays](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array),
/// thus making many array methods available, and at the same time imposing
/// additional semantics on their usage (such as making their items read-only).
///
/// These historical reasons do not mean that you as a developer should avoid
/// `CSSRuleList`. You don't create `CSSRuleList` objects yourself, but you get
/// them from APIs such as [CSSStyleSheet.cssRules] and
/// [CSSKeyframesRule.cssRules], and these APIs are not deprecated. However, be
/// careful of the semantic differences from a real array.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList).
extension type CSSRuleList._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [CSSRuleList] interface returns the
  /// [CSSRule] object at the specified `index` or `null` if the specified
  /// `index` doesn't exist.
  external CSSRule? item(int index);

  /// The **`length`** property of the [CSSRuleList] interface returns the
  /// number of [CSSRule] objects in the list.
  external int get length;
}

/// The **`CSSRule`** interface represents a single CSS rule. There are several
/// types of rules which inherit properties from `CSSRule`.
///
/// - [CSSGroupingRule]
/// - [CSSStyleRule]
/// - [CSSImportRule]
/// - [CSSMediaRule]
/// - [CSSFontFaceRule]
/// - [CSSPageRule]
/// - [CSSNamespaceRule]
/// - [CSSKeyframesRule]
/// - [CSSKeyframeRule]
/// - [CSSCounterStyleRule]
/// - [CSSSupportsRule]
/// - [CSSFontFeatureValuesRule]
/// - [CSSFontPaletteValuesRule]
/// - [CSSLayerBlockRule]
/// - [CSSLayerStatementRule]
/// - [CSSPropertyRule]
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule).
extension type CSSRule._(JSObject _) implements JSObject {
  static const int STYLE_RULE = 1;

  static const int CHARSET_RULE = 2;

  static const int IMPORT_RULE = 3;

  static const int MEDIA_RULE = 4;

  static const int FONT_FACE_RULE = 5;

  static const int PAGE_RULE = 6;

  static const int MARGIN_RULE = 9;

  static const int NAMESPACE_RULE = 10;

  static const int KEYFRAMES_RULE = 7;

  static const int KEYFRAME_RULE = 8;

  static const int SUPPORTS_RULE = 12;

  static const int COUNTER_STYLE_RULE = 11;

  static const int FONT_FEATURE_VALUES_RULE = 14;

  static const int VIEW_TRANSITION_RULE = 15;

  /// The **`cssText`** property of the [CSSRule]
  /// interface returns the actual text of a [CSSStyleSheet] style-rule.
  ///
  /// > **Note:** Do not confuse this property with element-style
  /// > [CSSStyleDeclaration.cssText].
  ///
  /// Be aware that this property can no longer be set directly, as it is
  /// [now specified](https://www.w3.org/TR/cssom-1/#changes-from-5-december-2013)
  /// to be _functionally_ modify-only, and silently so. In other words,
  /// attempting to
  /// set it _does absolutely nothing_, and doesn't even omit a warning or
  /// error.
  /// Furthermore, it has no settable sub-properties. Therefore, to modify it,
  /// use the
  /// stylesheet's [CSSRuleList]`[index]` properties
  /// [CSSStyleRule.selectorText] and
  /// [CSSStyleRule.style] (or its sub-properties). See
  /// [Using dynamic styling information](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model/Using_dynamic_styling_information)
  /// for details.
  external String get cssText;
  external set cssText(String value);

  /// The **`parentRule`** property of the [CSSRule]
  /// interface returns the containing rule of the current rule if this exists,
  /// or otherwise
  /// returns null.
  external CSSRule? get parentRule;

  /// The **`parentStyleSheet`** property of the
  /// [CSSRule] interface returns the [StyleSheet] object in which
  /// the current rule is defined.
  external CSSStyleSheet? get parentStyleSheet;

  /// The read-only **`type`** property of the
  /// [CSSRule] interface is a deprecated property that returns an integer
  /// indicating which type of rule the [CSSRule] represents.
  ///
  /// If you need to distinguish different types of CSS rule, a good alternative
  /// is to use
  /// [`constructor.name`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/name):
  ///
  /// ```js
  /// const sheets = Array.from(document.styleSheets);
  /// const rules = sheets.map((sheet) => Array.from(sheet.cssRules)).flat();
  ///
  /// for (const rule of rules) {
  ///   console.log(rule.constructor.name);
  /// }
  /// ```
  external int get type;
}

/// The **`CSSStyleRule`** interface represents a single CSS style rule.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule).
extension type CSSStyleRule._(JSObject _) implements CSSGroupingRule, JSObject {
  /// The **`selectorText`** property of the [CSSStyleRule] interface gets and
  /// sets the selectors associated with the `CSSStyleRule`.
  external String get selectorText;
  external set selectorText(String value);

  /// The read-only **`style`** property is the [CSSStyleDeclaration] interface
  /// for the
  /// [declaration block](https://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#block)
  /// of the [CSSStyleRule].
  external JSObject get style;

  /// The **`styleMap`** read-only property of the
  /// [CSSStyleRule] interface returns a [StylePropertyMap] object
  /// which provides access to the rule's property-value pairs.
  external StylePropertyMap get styleMap;
}

/// The **`CSSImportRule`** interface represents an
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule).
extension type CSSImportRule._(JSObject _) implements CSSRule, JSObject {
  /// The read-only **`href`** property of the
  /// [CSSImportRule] interface returns the URL specified by the
  /// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
  ///
  /// The resolved URL will be the
  /// [`href`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#href)
  /// attribute of the
  /// associated stylesheet.
  external String get href;

  /// The read-only **`media`** property of the
  /// [CSSImportRule] interface returns a [MediaList] object,
  /// containing the value of the `media` attribute of the associated
  /// stylesheet.
  external MediaList get media;

  /// The read-only **`styleSheet`** property of the
  /// [CSSImportRule] interface returns the CSS Stylesheet specified by the
  /// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule). This
  /// will be
  /// in the form of a [CSSStyleSheet] object.
  ///
  /// An  [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule)
  /// always has
  /// an associated stylesheet.
  external CSSStyleSheet? get styleSheet;

  /// The read-only **`layerName`** property of the [CSSImportRule] interface
  /// returns the name of the cascade layer created by the
  /// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
  ///
  /// If the created layer is anonymous, the string is empty (`""`), if no layer
  /// has been
  /// created, it is the `null` object.
  external String? get layerName;

  /// The read-only **`supportsText`** property of the [CSSImportRule] interface
  /// returns the supports condition specified by the
  /// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
  external String? get supportsText;
}

/// The **`CSSGroupingRule`** interface of the
/// [CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// represents any CSS
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule) that
/// contains other rules nested within it.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule).
extension type CSSGroupingRule._(JSObject _) implements CSSRule, JSObject {
  /// The **`insertRule()`** method of the
  /// [CSSGroupingRule] interface adds a new CSS rule to a list of CSS rules.
  external int insertRule(
    String rule, [
    int index,
  ]);

  /// The **`deleteRule()`** method of the
  /// [CSSGroupingRule] interface removes a CSS rule from a list of child CSS
  /// rules.
  external void deleteRule(int index);

  /// The **`cssRules`** property of the
  /// [CSSGroupingRule] interface returns a [CSSRuleList] containing
  /// a collection of [CSSRule] objects.
  external CSSRuleList get cssRules;
}

/// **`CSSPageRule`** represents a single CSS  rule.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule).
extension type CSSPageRule._(JSObject _) implements CSSGroupingRule, JSObject {
  /// The **`selectorText`** property of the [CSSPageRule] interface gets and
  /// sets the selectors associated with the `CSSPageRule`.
  external String get selectorText;
  external set selectorText(String value);

  /// The **`style`** read-only property of the [CSSPageRule] interface returns
  /// a [CSSStyleDeclaration] object. This represents an object that is a
  /// [CSS declaration block](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model/CSS_Declaration_Block),
  /// and exposes style information and various style-related methods and
  /// properties.
  external JSObject get style;
}

/// The **`CSSNamespaceRule`** interface describes an object representing a
/// single CSS
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule).
extension type CSSNamespaceRule._(JSObject _) implements CSSRule, JSObject {
  /// The read-only **`namespaceURI`** property of the [CSSNamespaceRule]
  /// returns a string containing the text of the URI of the given namespace.
  external String get namespaceURI;

  /// The read-only **`prefix`** property of the [CSSNamespaceRule] returns a
  /// string with the name of the prefix associated to this namespace. If there
  /// is no such prefix, it returns an empty string.
  external String get prefix;
}

/// The **`CSSStyleDeclaration`** interface represents an object that is a CSS
/// declaration block, and exposes style information and various style-related
/// methods and properties.
///
/// A `CSSStyleDeclaration` object can be exposed using three different APIs:
///
/// - Via [HTMLElement.style], which deals with the inline styles of a single
///   element (e.g., `<div style="…">`).
/// - Via the [CSSStyleSheet] API. For example,
///   `document.styleSheets[0].cssRules[0].style` returns a
///   `CSSStyleDeclaration` object on the first CSS rule in the document's first
///   stylesheet.
/// - Via [Window.getComputedStyle], which exposes the `CSSStyleDeclaration`
///   object as a **read-only** interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration).
extension type CSSStyleDeclaration._(JSObject _) implements JSObject {
  /// The `CSSStyleDeclaration.item()`
  /// method interface returns a CSS property name from a [CSSStyleDeclaration]
  /// by index.
  ///
  /// This method doesn't throw exceptions as long as you provide
  /// arguments; the empty string is returned if the index is out of range and a
  /// `TypeError` is thrown if no argument is provided.
  external String item(int index);

  /// The **CSSStyleDeclaration.getPropertyValue()** method interface returns a
  /// string containing the value of a specified CSS property.
  external String getPropertyValue(String property);

  /// The **CSSStyleDeclaration.getPropertyPriority()** method interface returns
  /// a string that provides all explicitly set priorities on the CSS
  /// property.
  external String getPropertyPriority(String property);

  /// The
  /// **`CSSStyleDeclaration.setProperty()`** method interface sets
  /// a new value for a property on a CSS style declaration object.
  external void setProperty(
    String property,
    String value, [
    String priority,
  ]);

  /// The **`CSSStyleDeclaration.removeProperty()`** method interface
  /// removes a property from a CSS style declaration object.
  external String removeProperty(String property);

  /// The **`cssText`** property of the [CSSStyleDeclaration] interface returns
  /// or sets the text of the element's **inline** style declaration only.
  ///
  /// To be able to set a **stylesheet** rule dynamically, see
  /// [Using dynamic styling information](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model/Using_dynamic_styling_information).
  ///
  /// Not to be confused with stylesheet style-rule [CSSRule.cssText].
  external String get cssText;
  external set cssText(String value);

  /// The read-only property returns an integer that represents the
  /// number of style declarations in this CSS declaration block.
  external int get length;

  /// The **CSSStyleDeclaration.parentRule** read-only
  /// property returns a [CSSRule] that is the parent of this style
  /// block, e.g. a [CSSStyleRule] representing the style for a CSS
  /// selector.
  external CSSRule? get parentRule;
  external String get accentColor;
  external set accentColor(String value);
  external String get alignContent;
  external set alignContent(String value);
  external String get alignItems;
  external set alignItems(String value);
  external String get alignSelf;
  external set alignSelf(String value);
  external String get alignmentBaseline;
  external set alignmentBaseline(String value);
  external String get all;
  external set all(String value);
  external String get anchorName;
  external set anchorName(String value);
  external String get anchorScope;
  external set anchorScope(String value);
  external String get animation;
  external set animation(String value);
  external String get animationComposition;
  external set animationComposition(String value);
  external String get animationDelay;
  external set animationDelay(String value);
  external String get animationDirection;
  external set animationDirection(String value);
  external String get animationDuration;
  external set animationDuration(String value);
  external String get animationFillMode;
  external set animationFillMode(String value);
  external String get animationIterationCount;
  external set animationIterationCount(String value);
  external String get animationName;
  external set animationName(String value);
  external String get animationPlayState;
  external set animationPlayState(String value);
  external String get animationRange;
  external set animationRange(String value);
  external String get animationRangeEnd;
  external set animationRangeEnd(String value);
  external String get animationRangeStart;
  external set animationRangeStart(String value);
  external String get animationTimeline;
  external set animationTimeline(String value);
  external String get animationTimingFunction;
  external set animationTimingFunction(String value);
  external String get appearance;
  external set appearance(String value);
  external String get aspectRatio;
  external set aspectRatio(String value);
  external String get backdropFilter;
  external set backdropFilter(String value);
  external String get backfaceVisibility;
  external set backfaceVisibility(String value);
  external String get background;
  external set background(String value);
  external String get backgroundAttachment;
  external set backgroundAttachment(String value);
  external String get backgroundBlendMode;
  external set backgroundBlendMode(String value);
  external String get backgroundClip;
  external set backgroundClip(String value);
  external String get backgroundColor;
  external set backgroundColor(String value);
  external String get backgroundImage;
  external set backgroundImage(String value);
  external String get backgroundOrigin;
  external set backgroundOrigin(String value);
  external String get backgroundPosition;
  external set backgroundPosition(String value);
  external String get backgroundPositionBlock;
  external set backgroundPositionBlock(String value);
  external String get backgroundPositionInline;
  external set backgroundPositionInline(String value);
  external String get backgroundPositionX;
  external set backgroundPositionX(String value);
  external String get backgroundPositionY;
  external set backgroundPositionY(String value);
  external String get backgroundRepeat;
  external set backgroundRepeat(String value);
  external String get backgroundSize;
  external set backgroundSize(String value);
  external String get backgroundTbd;
  external set backgroundTbd(String value);
  external String get baselineShift;
  external set baselineShift(String value);
  external String get baselineSource;
  external set baselineSource(String value);
  external String get blockEllipsis;
  external set blockEllipsis(String value);
  external String get blockSize;
  external set blockSize(String value);
  external String get blockStep;
  external set blockStep(String value);
  external String get blockStepAlign;
  external set blockStepAlign(String value);
  external String get blockStepInsert;
  external set blockStepInsert(String value);
  external String get blockStepRound;
  external set blockStepRound(String value);
  external String get blockStepSize;
  external set blockStepSize(String value);
  external String get bookmarkLabel;
  external set bookmarkLabel(String value);
  external String get bookmarkLevel;
  external set bookmarkLevel(String value);
  external String get bookmarkState;
  external set bookmarkState(String value);
  external String get border;
  external set border(String value);
  external String get borderBlock;
  external set borderBlock(String value);
  external String get borderBlockColor;
  external set borderBlockColor(String value);
  external String get borderBlockEnd;
  external set borderBlockEnd(String value);
  external String get borderBlockEndColor;
  external set borderBlockEndColor(String value);
  external String get borderBlockEndRadius;
  external set borderBlockEndRadius(String value);
  external String get borderBlockEndStyle;
  external set borderBlockEndStyle(String value);
  external String get borderBlockEndWidth;
  external set borderBlockEndWidth(String value);
  external String get borderBlockStart;
  external set borderBlockStart(String value);
  external String get borderBlockStartColor;
  external set borderBlockStartColor(String value);
  external String get borderBlockStartRadius;
  external set borderBlockStartRadius(String value);
  external String get borderBlockStartStyle;
  external set borderBlockStartStyle(String value);
  external String get borderBlockStartWidth;
  external set borderBlockStartWidth(String value);
  external String get borderBlockStyle;
  external set borderBlockStyle(String value);
  external String get borderBlockWidth;
  external set borderBlockWidth(String value);
  external String get borderBottom;
  external set borderBottom(String value);
  external String get borderBottomColor;
  external set borderBottomColor(String value);
  external String get borderBottomLeftRadius;
  external set borderBottomLeftRadius(String value);
  external String get borderBottomRadius;
  external set borderBottomRadius(String value);
  external String get borderBottomRightRadius;
  external set borderBottomRightRadius(String value);
  external String get borderBottomStyle;
  external set borderBottomStyle(String value);
  external String get borderBottomWidth;
  external set borderBottomWidth(String value);
  external String get borderBoundary;
  external set borderBoundary(String value);
  external String get borderClip;
  external set borderClip(String value);
  external String get borderClipBottom;
  external set borderClipBottom(String value);
  external String get borderClipLeft;
  external set borderClipLeft(String value);
  external String get borderClipRight;
  external set borderClipRight(String value);
  external String get borderClipTop;
  external set borderClipTop(String value);
  external String get borderCollapse;
  external set borderCollapse(String value);
  external String get borderColor;
  external set borderColor(String value);
  external String get borderEndEndRadius;
  external set borderEndEndRadius(String value);
  external String get borderEndStartRadius;
  external set borderEndStartRadius(String value);
  external String get borderImage;
  external set borderImage(String value);
  external String get borderImageOutset;
  external set borderImageOutset(String value);
  external String get borderImageRepeat;
  external set borderImageRepeat(String value);
  external String get borderImageSlice;
  external set borderImageSlice(String value);
  external String get borderImageSource;
  external set borderImageSource(String value);
  external String get borderImageWidth;
  external set borderImageWidth(String value);
  external String get borderInline;
  external set borderInline(String value);
  external String get borderInlineColor;
  external set borderInlineColor(String value);
  external String get borderInlineEnd;
  external set borderInlineEnd(String value);
  external String get borderInlineEndColor;
  external set borderInlineEndColor(String value);
  external String get borderInlineEndRadius;
  external set borderInlineEndRadius(String value);
  external String get borderInlineEndStyle;
  external set borderInlineEndStyle(String value);
  external String get borderInlineEndWidth;
  external set borderInlineEndWidth(String value);
  external String get borderInlineStart;
  external set borderInlineStart(String value);
  external String get borderInlineStartColor;
  external set borderInlineStartColor(String value);
  external String get borderInlineStartRadius;
  external set borderInlineStartRadius(String value);
  external String get borderInlineStartStyle;
  external set borderInlineStartStyle(String value);
  external String get borderInlineStartWidth;
  external set borderInlineStartWidth(String value);
  external String get borderInlineStyle;
  external set borderInlineStyle(String value);
  external String get borderInlineWidth;
  external set borderInlineWidth(String value);
  external String get borderLeft;
  external set borderLeft(String value);
  external String get borderLeftColor;
  external set borderLeftColor(String value);
  external String get borderLeftRadius;
  external set borderLeftRadius(String value);
  external String get borderLeftStyle;
  external set borderLeftStyle(String value);
  external String get borderLeftWidth;
  external set borderLeftWidth(String value);
  external String get borderLimit;
  external set borderLimit(String value);
  external String get borderRadius;
  external set borderRadius(String value);
  external String get borderRight;
  external set borderRight(String value);
  external String get borderRightColor;
  external set borderRightColor(String value);
  external String get borderRightRadius;
  external set borderRightRadius(String value);
  external String get borderRightStyle;
  external set borderRightStyle(String value);
  external String get borderRightWidth;
  external set borderRightWidth(String value);
  external String get borderSpacing;
  external set borderSpacing(String value);
  external String get borderStartEndRadius;
  external set borderStartEndRadius(String value);
  external String get borderStartStartRadius;
  external set borderStartStartRadius(String value);
  external String get borderStyle;
  external set borderStyle(String value);
  external String get borderTop;
  external set borderTop(String value);
  external String get borderTopColor;
  external set borderTopColor(String value);
  external String get borderTopLeftRadius;
  external set borderTopLeftRadius(String value);
  external String get borderTopRadius;
  external set borderTopRadius(String value);
  external String get borderTopRightRadius;
  external set borderTopRightRadius(String value);
  external String get borderTopStyle;
  external set borderTopStyle(String value);
  external String get borderTopWidth;
  external set borderTopWidth(String value);
  external String get borderWidth;
  external set borderWidth(String value);
  external String get bottom;
  external set bottom(String value);
  external String get boxDecorationBreak;
  external set boxDecorationBreak(String value);
  external String get boxShadow;
  external set boxShadow(String value);
  external String get boxShadowBlur;
  external set boxShadowBlur(String value);
  external String get boxShadowColor;
  external set boxShadowColor(String value);
  external String get boxShadowOffset;
  external set boxShadowOffset(String value);
  external String get boxShadowPosition;
  external set boxShadowPosition(String value);
  external String get boxShadowSpread;
  external set boxShadowSpread(String value);
  external String get boxSizing;
  external set boxSizing(String value);
  external String get boxSnap;
  external set boxSnap(String value);
  external String get breakAfter;
  external set breakAfter(String value);
  external String get breakBefore;
  external set breakBefore(String value);
  external String get breakInside;
  external set breakInside(String value);
  external String get captionSide;
  external set captionSide(String value);
  external String get caret;
  external set caret(String value);
  external String get caretAnimation;
  external set caretAnimation(String value);
  external String get caretColor;
  external set caretColor(String value);
  external String get caretShape;
  external set caretShape(String value);
  external String get clear;
  external set clear(String value);
  external String get clip;
  external set clip(String value);
  external String get clipPath;
  external set clipPath(String value);
  external String get clipRule;
  external set clipRule(String value);
  external String get color;
  external set color(String value);
  external String get colorAdjust;
  external set colorAdjust(String value);
  external String get colorInterpolation;
  external set colorInterpolation(String value);
  external String get colorInterpolationFilters;
  external set colorInterpolationFilters(String value);
  external String get colorScheme;
  external set colorScheme(String value);
  external String get columnCount;
  external set columnCount(String value);
  external String get columnFill;
  external set columnFill(String value);
  external String get columnGap;
  external set columnGap(String value);
  external String get columnRule;
  external set columnRule(String value);
  external String get columnRuleColor;
  external set columnRuleColor(String value);
  external String get columnRuleStyle;
  external set columnRuleStyle(String value);
  external String get columnRuleWidth;
  external set columnRuleWidth(String value);
  external String get columnSpan;
  external set columnSpan(String value);
  external String get columnWidth;
  external set columnWidth(String value);
  external String get columns;
  external set columns(String value);
  external String get contain;
  external set contain(String value);
  external String get containIntrinsicBlockSize;
  external set containIntrinsicBlockSize(String value);
  external String get containIntrinsicHeight;
  external set containIntrinsicHeight(String value);
  external String get containIntrinsicInlineSize;
  external set containIntrinsicInlineSize(String value);
  external String get containIntrinsicSize;
  external set containIntrinsicSize(String value);
  external String get containIntrinsicWidth;
  external set containIntrinsicWidth(String value);
  external String get container;
  external set container(String value);
  external String get containerName;
  external set containerName(String value);
  external String get containerType;
  external set containerType(String value);
  external String get content;
  external set content(String value);
  external String get contentVisibility;
  external set contentVisibility(String value);
  @JS('continue')
  external String get continue_;
  @JS('continue')
  external set continue_(String value);
  external String get copyInto;
  external set copyInto(String value);
  external String get cornerShape;
  external set cornerShape(String value);
  external String get corners;
  external set corners(String value);
  external String get counterIncrement;
  external set counterIncrement(String value);
  external String get counterReset;
  external set counterReset(String value);
  external String get counterSet;
  external set counterSet(String value);
  external String get cue;
  external set cue(String value);
  external String get cueAfter;
  external set cueAfter(String value);
  external String get cueBefore;
  external set cueBefore(String value);
  external String get cursor;
  external set cursor(String value);
  external String get cx;
  external set cx(String value);
  external String get cy;
  external set cy(String value);
  external String get d;
  external set d(String value);
  external String get direction;
  external set direction(String value);
  external String get display;
  external set display(String value);
  external String get dominantBaseline;
  external set dominantBaseline(String value);
  external String get dynamicRangeLimit;
  external set dynamicRangeLimit(String value);
  external String get emptyCells;
  external set emptyCells(String value);
  external String get fieldSizing;
  external set fieldSizing(String value);
  external String get fill;
  external set fill(String value);
  external String get fillBreak;
  external set fillBreak(String value);
  external String get fillColor;
  external set fillColor(String value);
  external String get fillImage;
  external set fillImage(String value);
  external String get fillOpacity;
  external set fillOpacity(String value);
  external String get fillOrigin;
  external set fillOrigin(String value);
  external String get fillPosition;
  external set fillPosition(String value);
  external String get fillRepeat;
  external set fillRepeat(String value);
  external String get fillRule;
  external set fillRule(String value);
  external String get fillSize;
  external set fillSize(String value);
  external String get filter;
  external set filter(String value);
  external String get flex;
  external set flex(String value);
  external String get flexBasis;
  external set flexBasis(String value);
  external String get flexDirection;
  external set flexDirection(String value);
  external String get flexFlow;
  external set flexFlow(String value);
  external String get flexGrow;
  external set flexGrow(String value);
  external String get flexShrink;
  external set flexShrink(String value);
  external String get flexWrap;
  external set flexWrap(String value);
  external String get float;
  external set float(String value);
  external String get floatDefer;
  external set floatDefer(String value);
  external String get floatOffset;
  external set floatOffset(String value);
  external String get floatReference;
  external set floatReference(String value);
  external String get floodColor;
  external set floodColor(String value);
  external String get floodOpacity;
  external set floodOpacity(String value);
  external String get flowFrom;
  external set flowFrom(String value);
  external String get flowInto;
  external set flowInto(String value);
  external String get font;
  external set font(String value);
  external String get fontFamily;
  external set fontFamily(String value);
  external String get fontFeatureSettings;
  external set fontFeatureSettings(String value);
  external String get fontKerning;
  external set fontKerning(String value);
  external String get fontLanguageOverride;
  external set fontLanguageOverride(String value);
  external String get fontOpticalSizing;
  external set fontOpticalSizing(String value);
  external String get fontPalette;
  external set fontPalette(String value);
  external String get fontSize;
  external set fontSize(String value);
  external String get fontSizeAdjust;
  external set fontSizeAdjust(String value);
  external String get fontStretch;
  external set fontStretch(String value);
  external String get fontStyle;
  external set fontStyle(String value);
  external String get fontSynthesis;
  external set fontSynthesis(String value);
  external String get fontSynthesisPosition;
  external set fontSynthesisPosition(String value);
  external String get fontSynthesisSmallCaps;
  external set fontSynthesisSmallCaps(String value);
  external String get fontSynthesisStyle;
  external set fontSynthesisStyle(String value);
  external String get fontSynthesisWeight;
  external set fontSynthesisWeight(String value);
  external String get fontVariant;
  external set fontVariant(String value);
  external String get fontVariantAlternates;
  external set fontVariantAlternates(String value);
  external String get fontVariantCaps;
  external set fontVariantCaps(String value);
  external String get fontVariantEastAsian;
  external set fontVariantEastAsian(String value);
  external String get fontVariantEmoji;
  external set fontVariantEmoji(String value);
  external String get fontVariantLigatures;
  external set fontVariantLigatures(String value);
  external String get fontVariantNumeric;
  external set fontVariantNumeric(String value);
  external String get fontVariantPosition;
  external set fontVariantPosition(String value);
  external String get fontVariationSettings;
  external set fontVariationSettings(String value);
  external String get fontWeight;
  external set fontWeight(String value);
  external String get fontWidth;
  external set fontWidth(String value);
  external String get footnoteDisplay;
  external set footnoteDisplay(String value);
  external String get footnotePolicy;
  external set footnotePolicy(String value);
  external String get forcedColorAdjust;
  external set forcedColorAdjust(String value);
  external String get gap;
  external set gap(String value);
  external String get glyphOrientationVertical;
  external set glyphOrientationVertical(String value);
  external String get grid;
  external set grid(String value);
  external String get gridArea;
  external set gridArea(String value);
  external String get gridAutoColumns;
  external set gridAutoColumns(String value);
  external String get gridAutoFlow;
  external set gridAutoFlow(String value);
  external String get gridAutoRows;
  external set gridAutoRows(String value);
  external String get gridColumn;
  external set gridColumn(String value);
  external String get gridColumnEnd;
  external set gridColumnEnd(String value);
  external String get gridColumnGap;
  external set gridColumnGap(String value);
  external String get gridColumnStart;
  external set gridColumnStart(String value);
  external String get gridGap;
  external set gridGap(String value);
  external String get gridRow;
  external set gridRow(String value);
  external String get gridRowEnd;
  external set gridRowEnd(String value);
  external String get gridRowGap;
  external set gridRowGap(String value);
  external String get gridRowStart;
  external set gridRowStart(String value);
  external String get gridTemplate;
  external set gridTemplate(String value);
  external String get gridTemplateAreas;
  external set gridTemplateAreas(String value);
  external String get gridTemplateColumns;
  external set gridTemplateColumns(String value);
  external String get gridTemplateRows;
  external set gridTemplateRows(String value);
  external String get hangingPunctuation;
  external set hangingPunctuation(String value);
  external String get height;
  external set height(String value);
  external String get hyphenateCharacter;
  external set hyphenateCharacter(String value);
  external String get hyphenateLimitChars;
  external set hyphenateLimitChars(String value);
  external String get hyphenateLimitLast;
  external set hyphenateLimitLast(String value);
  external String get hyphenateLimitLines;
  external set hyphenateLimitLines(String value);
  external String get hyphenateLimitZone;
  external set hyphenateLimitZone(String value);
  external String get hyphens;
  external set hyphens(String value);
  external String get imageOrientation;
  external set imageOrientation(String value);
  external String get imageRendering;
  external set imageRendering(String value);
  external String get imageResolution;
  external set imageResolution(String value);
  external String get initialLetter;
  external set initialLetter(String value);
  external String get initialLetterAlign;
  external set initialLetterAlign(String value);
  external String get initialLetterWrap;
  external set initialLetterWrap(String value);
  external String get inlineSize;
  external set inlineSize(String value);
  external String get inlineSizing;
  external set inlineSizing(String value);
  external String get inputSecurity;
  external set inputSecurity(String value);
  external String get inset;
  external set inset(String value);
  external String get insetArea;
  external set insetArea(String value);
  external String get insetBlock;
  external set insetBlock(String value);
  external String get insetBlockEnd;
  external set insetBlockEnd(String value);
  external String get insetBlockStart;
  external set insetBlockStart(String value);
  external String get insetInline;
  external set insetInline(String value);
  external String get insetInlineEnd;
  external set insetInlineEnd(String value);
  external String get insetInlineStart;
  external set insetInlineStart(String value);
  external String get isolation;
  external set isolation(String value);
  external String get justifyContent;
  external set justifyContent(String value);
  external String get justifyItems;
  external set justifyItems(String value);
  external String get justifySelf;
  external set justifySelf(String value);
  external String get left;
  external set left(String value);
  external String get letterSpacing;
  external set letterSpacing(String value);
  external String get lightingColor;
  external set lightingColor(String value);
  external String get lineBreak;
  external set lineBreak(String value);
  external String get lineClamp;
  external set lineClamp(String value);
  external String get lineGrid;
  external set lineGrid(String value);
  external String get lineHeight;
  external set lineHeight(String value);
  external String get lineHeightStep;
  external set lineHeightStep(String value);
  external String get linePadding;
  external set linePadding(String value);
  external String get lineSnap;
  external set lineSnap(String value);
  external String get linkParameters;
  external set linkParameters(String value);
  external String get listStyle;
  external set listStyle(String value);
  external String get listStyleImage;
  external set listStyleImage(String value);
  external String get listStylePosition;
  external set listStylePosition(String value);
  external String get listStyleType;
  external set listStyleType(String value);
  external String get margin;
  external set margin(String value);
  external String get marginBlock;
  external set marginBlock(String value);
  external String get marginBlockEnd;
  external set marginBlockEnd(String value);
  external String get marginBlockStart;
  external set marginBlockStart(String value);
  external String get marginBottom;
  external set marginBottom(String value);
  external String get marginBreak;
  external set marginBreak(String value);
  external String get marginInline;
  external set marginInline(String value);
  external String get marginInlineEnd;
  external set marginInlineEnd(String value);
  external String get marginInlineStart;
  external set marginInlineStart(String value);
  external String get marginLeft;
  external set marginLeft(String value);
  external String get marginRight;
  external set marginRight(String value);
  external String get marginTop;
  external set marginTop(String value);
  external String get marginTrim;
  external set marginTrim(String value);
  external String get marker;
  external set marker(String value);
  external String get markerEnd;
  external set markerEnd(String value);
  external String get markerMid;
  external set markerMid(String value);
  external String get markerSide;
  external set markerSide(String value);
  external String get markerStart;
  external set markerStart(String value);
  external String get mask;
  external set mask(String value);
  external String get maskBorder;
  external set maskBorder(String value);
  external String get maskBorderMode;
  external set maskBorderMode(String value);
  external String get maskBorderOutset;
  external set maskBorderOutset(String value);
  external String get maskBorderRepeat;
  external set maskBorderRepeat(String value);
  external String get maskBorderSlice;
  external set maskBorderSlice(String value);
  external String get maskBorderSource;
  external set maskBorderSource(String value);
  external String get maskBorderWidth;
  external set maskBorderWidth(String value);
  external String get maskClip;
  external set maskClip(String value);
  external String get maskComposite;
  external set maskComposite(String value);
  external String get maskImage;
  external set maskImage(String value);
  external String get maskMode;
  external set maskMode(String value);
  external String get maskOrigin;
  external set maskOrigin(String value);
  external String get maskPosition;
  external set maskPosition(String value);
  external String get maskRepeat;
  external set maskRepeat(String value);
  external String get maskSize;
  external set maskSize(String value);
  external String get maskType;
  external set maskType(String value);
  external String get masonryAutoFlow;
  external set masonryAutoFlow(String value);
  external String get mathDepth;
  external set mathDepth(String value);
  external String get mathShift;
  external set mathShift(String value);
  external String get mathStyle;
  external set mathStyle(String value);
  external String get maxBlockSize;
  external set maxBlockSize(String value);
  external String get maxHeight;
  external set maxHeight(String value);
  external String get maxInlineSize;
  external set maxInlineSize(String value);
  external String get maxLines;
  external set maxLines(String value);
  external String get maxWidth;
  external set maxWidth(String value);
  external String get minBlockSize;
  external set minBlockSize(String value);
  external String get minHeight;
  external set minHeight(String value);
  external String get minInlineSize;
  external set minInlineSize(String value);
  external String get minIntrinsicSizing;
  external set minIntrinsicSizing(String value);
  external String get minWidth;
  external set minWidth(String value);
  external String get mixBlendMode;
  external set mixBlendMode(String value);
  external String get navDown;
  external set navDown(String value);
  external String get navLeft;
  external set navLeft(String value);
  external String get navRight;
  external set navRight(String value);
  external String get navUp;
  external set navUp(String value);
  external String get objectFit;
  external set objectFit(String value);
  external String get objectPosition;
  external set objectPosition(String value);
  external String get objectViewBox;
  external set objectViewBox(String value);
  external String get offset;
  external set offset(String value);
  external String get offsetAnchor;
  external set offsetAnchor(String value);
  external String get offsetDistance;
  external set offsetDistance(String value);
  external String get offsetPath;
  external set offsetPath(String value);
  external String get offsetPosition;
  external set offsetPosition(String value);
  external String get offsetRotate;
  external set offsetRotate(String value);
  external String get opacity;
  external set opacity(String value);
  external String get order;
  external set order(String value);
  external String get orphans;
  external set orphans(String value);
  external String get outline;
  external set outline(String value);
  external String get outlineColor;
  external set outlineColor(String value);
  external String get outlineOffset;
  external set outlineOffset(String value);
  external String get outlineStyle;
  external set outlineStyle(String value);
  external String get outlineWidth;
  external set outlineWidth(String value);
  external String get overflow;
  external set overflow(String value);
  external String get overflowAnchor;
  external set overflowAnchor(String value);
  external String get overflowBlock;
  external set overflowBlock(String value);
  external String get overflowClipMargin;
  external set overflowClipMargin(String value);
  external String get overflowClipMarginBlock;
  external set overflowClipMarginBlock(String value);
  external String get overflowClipMarginBlockEnd;
  external set overflowClipMarginBlockEnd(String value);
  external String get overflowClipMarginBlockStart;
  external set overflowClipMarginBlockStart(String value);
  external String get overflowClipMarginBottom;
  external set overflowClipMarginBottom(String value);
  external String get overflowClipMarginInline;
  external set overflowClipMarginInline(String value);
  external String get overflowClipMarginInlineEnd;
  external set overflowClipMarginInlineEnd(String value);
  external String get overflowClipMarginInlineStart;
  external set overflowClipMarginInlineStart(String value);
  external String get overflowClipMarginLeft;
  external set overflowClipMarginLeft(String value);
  external String get overflowClipMarginRight;
  external set overflowClipMarginRight(String value);
  external String get overflowClipMarginTop;
  external set overflowClipMarginTop(String value);
  external String get overflowInline;
  external set overflowInline(String value);
  external String get overflowWrap;
  external set overflowWrap(String value);
  external String get overflowX;
  external set overflowX(String value);
  external String get overflowY;
  external set overflowY(String value);
  external String get overlay;
  external set overlay(String value);
  external String get overscrollBehavior;
  external set overscrollBehavior(String value);
  external String get overscrollBehaviorBlock;
  external set overscrollBehaviorBlock(String value);
  external String get overscrollBehaviorInline;
  external set overscrollBehaviorInline(String value);
  external String get overscrollBehaviorX;
  external set overscrollBehaviorX(String value);
  external String get overscrollBehaviorY;
  external set overscrollBehaviorY(String value);
  external String get padding;
  external set padding(String value);
  external String get paddingBlock;
  external set paddingBlock(String value);
  external String get paddingBlockEnd;
  external set paddingBlockEnd(String value);
  external String get paddingBlockStart;
  external set paddingBlockStart(String value);
  external String get paddingBottom;
  external set paddingBottom(String value);
  external String get paddingInline;
  external set paddingInline(String value);
  external String get paddingInlineEnd;
  external set paddingInlineEnd(String value);
  external String get paddingInlineStart;
  external set paddingInlineStart(String value);
  external String get paddingLeft;
  external set paddingLeft(String value);
  external String get paddingRight;
  external set paddingRight(String value);
  external String get paddingTop;
  external set paddingTop(String value);
  external String get page;
  external set page(String value);
  external String get pageBreakAfter;
  external set pageBreakAfter(String value);
  external String get pageBreakBefore;
  external set pageBreakBefore(String value);
  external String get pageBreakInside;
  external set pageBreakInside(String value);
  external String get paintOrder;
  external set paintOrder(String value);
  external String get pause;
  external set pause(String value);
  external String get pauseAfter;
  external set pauseAfter(String value);
  external String get pauseBefore;
  external set pauseBefore(String value);
  external String get perspective;
  external set perspective(String value);
  external String get perspectiveOrigin;
  external set perspectiveOrigin(String value);
  external String get placeContent;
  external set placeContent(String value);
  external String get placeItems;
  external set placeItems(String value);
  external String get placeSelf;
  external set placeSelf(String value);
  external String get pointerEvents;
  external set pointerEvents(String value);
  external String get position;
  external set position(String value);
  external String get positionAnchor;
  external set positionAnchor(String value);
  external String get positionTry;
  external set positionTry(String value);
  external String get positionTryOptions;
  external set positionTryOptions(String value);
  external String get positionTryOrder;
  external set positionTryOrder(String value);
  external String get positionVisibility;
  external set positionVisibility(String value);
  external String get printColorAdjust;
  external set printColorAdjust(String value);
  external String get quotes;
  external set quotes(String value);
  external String get r;
  external set r(String value);
  external String get readingFlow;
  external set readingFlow(String value);
  external String get regionFragment;
  external set regionFragment(String value);
  external String get resize;
  external set resize(String value);
  external String get rest;
  external set rest(String value);
  external String get restAfter;
  external set restAfter(String value);
  external String get restBefore;
  external set restBefore(String value);
  external String get right;
  external set right(String value);
  external String get rotate;
  external set rotate(String value);
  external String get rowGap;
  external set rowGap(String value);
  external String get rubyAlign;
  external set rubyAlign(String value);
  external String get rubyMerge;
  external set rubyMerge(String value);
  external String get rubyOverhang;
  external set rubyOverhang(String value);
  external String get rubyPosition;
  external set rubyPosition(String value);
  external String get rx;
  external set rx(String value);
  external String get ry;
  external set ry(String value);
  external String get scale;
  external set scale(String value);
  external String get scrollBehavior;
  external set scrollBehavior(String value);
  external String get scrollMargin;
  external set scrollMargin(String value);
  external String get scrollMarginBlock;
  external set scrollMarginBlock(String value);
  external String get scrollMarginBlockEnd;
  external set scrollMarginBlockEnd(String value);
  external String get scrollMarginBlockStart;
  external set scrollMarginBlockStart(String value);
  external String get scrollMarginBottom;
  external set scrollMarginBottom(String value);
  external String get scrollMarginInline;
  external set scrollMarginInline(String value);
  external String get scrollMarginInlineEnd;
  external set scrollMarginInlineEnd(String value);
  external String get scrollMarginInlineStart;
  external set scrollMarginInlineStart(String value);
  external String get scrollMarginLeft;
  external set scrollMarginLeft(String value);
  external String get scrollMarginRight;
  external set scrollMarginRight(String value);
  external String get scrollMarginTop;
  external set scrollMarginTop(String value);
  external String get scrollPadding;
  external set scrollPadding(String value);
  external String get scrollPaddingBlock;
  external set scrollPaddingBlock(String value);
  external String get scrollPaddingBlockEnd;
  external set scrollPaddingBlockEnd(String value);
  external String get scrollPaddingBlockStart;
  external set scrollPaddingBlockStart(String value);
  external String get scrollPaddingBottom;
  external set scrollPaddingBottom(String value);
  external String get scrollPaddingInline;
  external set scrollPaddingInline(String value);
  external String get scrollPaddingInlineEnd;
  external set scrollPaddingInlineEnd(String value);
  external String get scrollPaddingInlineStart;
  external set scrollPaddingInlineStart(String value);
  external String get scrollPaddingLeft;
  external set scrollPaddingLeft(String value);
  external String get scrollPaddingRight;
  external set scrollPaddingRight(String value);
  external String get scrollPaddingTop;
  external set scrollPaddingTop(String value);
  external String get scrollSnapAlign;
  external set scrollSnapAlign(String value);
  external String get scrollSnapStop;
  external set scrollSnapStop(String value);
  external String get scrollSnapType;
  external set scrollSnapType(String value);
  external String get scrollStart;
  external set scrollStart(String value);
  external String get scrollStartBlock;
  external set scrollStartBlock(String value);
  external String get scrollStartInline;
  external set scrollStartInline(String value);
  external String get scrollStartTarget;
  external set scrollStartTarget(String value);
  external String get scrollStartTargetBlock;
  external set scrollStartTargetBlock(String value);
  external String get scrollStartTargetInline;
  external set scrollStartTargetInline(String value);
  external String get scrollStartTargetX;
  external set scrollStartTargetX(String value);
  external String get scrollStartTargetY;
  external set scrollStartTargetY(String value);
  external String get scrollStartX;
  external set scrollStartX(String value);
  external String get scrollStartY;
  external set scrollStartY(String value);
  external String get scrollTimeline;
  external set scrollTimeline(String value);
  external String get scrollTimelineAxis;
  external set scrollTimelineAxis(String value);
  external String get scrollTimelineName;
  external set scrollTimelineName(String value);
  external String get scrollbarColor;
  external set scrollbarColor(String value);
  external String get scrollbarGutter;
  external set scrollbarGutter(String value);
  external String get scrollbarWidth;
  external set scrollbarWidth(String value);
  external String get shapeImageThreshold;
  external set shapeImageThreshold(String value);
  external String get shapeInside;
  external set shapeInside(String value);
  external String get shapeMargin;
  external set shapeMargin(String value);
  external String get shapeOutside;
  external set shapeOutside(String value);
  external String get shapePadding;
  external set shapePadding(String value);
  external String get shapeRendering;
  external set shapeRendering(String value);
  external String get shapeSubtract;
  external set shapeSubtract(String value);
  external String get spatialNavigationAction;
  external set spatialNavigationAction(String value);
  external String get spatialNavigationContain;
  external set spatialNavigationContain(String value);
  external String get spatialNavigationFunction;
  external set spatialNavigationFunction(String value);
  external String get speak;
  external set speak(String value);
  external String get speakAs;
  external set speakAs(String value);
  external String get stopColor;
  external set stopColor(String value);
  external String get stopOpacity;
  external set stopOpacity(String value);
  external String get stringSet;
  external set stringSet(String value);
  external String get stroke;
  external set stroke(String value);
  external String get strokeAlign;
  external set strokeAlign(String value);
  external String get strokeAlignment;
  external set strokeAlignment(String value);
  external String get strokeBreak;
  external set strokeBreak(String value);
  external String get strokeColor;
  external set strokeColor(String value);
  external String get strokeDashCorner;
  external set strokeDashCorner(String value);
  external String get strokeDashJustify;
  external set strokeDashJustify(String value);
  external String get strokeDashadjust;
  external set strokeDashadjust(String value);
  external String get strokeDasharray;
  external set strokeDasharray(String value);
  external String get strokeDashcorner;
  external set strokeDashcorner(String value);
  external String get strokeDashoffset;
  external set strokeDashoffset(String value);
  external String get strokeImage;
  external set strokeImage(String value);
  external String get strokeLinecap;
  external set strokeLinecap(String value);
  external String get strokeLinejoin;
  external set strokeLinejoin(String value);
  external String get strokeMiterlimit;
  external set strokeMiterlimit(String value);
  external String get strokeOpacity;
  external set strokeOpacity(String value);
  external String get strokeOrigin;
  external set strokeOrigin(String value);
  external String get strokePosition;
  external set strokePosition(String value);
  external String get strokeRepeat;
  external set strokeRepeat(String value);
  external String get strokeSize;
  external set strokeSize(String value);
  external String get strokeWidth;
  external set strokeWidth(String value);
  external String get tabSize;
  external set tabSize(String value);
  external String get tableLayout;
  external set tableLayout(String value);
  external String get textAlign;
  external set textAlign(String value);
  external String get textAlignAll;
  external set textAlignAll(String value);
  external String get textAlignLast;
  external set textAlignLast(String value);
  external String get textAnchor;
  external set textAnchor(String value);
  external String get textAutospace;
  external set textAutospace(String value);
  external String get textBoxEdge;
  external set textBoxEdge(String value);
  external String get textBoxTrim;
  external set textBoxTrim(String value);
  external String get textCombineUpright;
  external set textCombineUpright(String value);
  external String get textDecoration;
  external set textDecoration(String value);
  external String get textDecorationColor;
  external set textDecorationColor(String value);
  external String get textDecorationLine;
  external set textDecorationLine(String value);
  external String get textDecorationSkip;
  external set textDecorationSkip(String value);
  external String get textDecorationSkipBox;
  external set textDecorationSkipBox(String value);
  external String get textDecorationSkipInk;
  external set textDecorationSkipInk(String value);
  external String get textDecorationSkipSelf;
  external set textDecorationSkipSelf(String value);
  external String get textDecorationSkipSpaces;
  external set textDecorationSkipSpaces(String value);
  external String get textDecorationStyle;
  external set textDecorationStyle(String value);
  external String get textDecorationThickness;
  external set textDecorationThickness(String value);
  external String get textDecorationTrim;
  external set textDecorationTrim(String value);
  external String get textEmphasis;
  external set textEmphasis(String value);
  external String get textEmphasisColor;
  external set textEmphasisColor(String value);
  external String get textEmphasisPosition;
  external set textEmphasisPosition(String value);
  external String get textEmphasisSkip;
  external set textEmphasisSkip(String value);
  external String get textEmphasisStyle;
  external set textEmphasisStyle(String value);
  external String get textGroupAlign;
  external set textGroupAlign(String value);
  external String get textIndent;
  external set textIndent(String value);
  external String get textJustify;
  external set textJustify(String value);
  external String get textOrientation;
  external set textOrientation(String value);
  external String get textOverflow;
  external set textOverflow(String value);
  external String get textRendering;
  external set textRendering(String value);
  external String get textShadow;
  external set textShadow(String value);
  external String get textSizeAdjust;
  external set textSizeAdjust(String value);
  external String get textSpacing;
  external set textSpacing(String value);
  external String get textSpacingTrim;
  external set textSpacingTrim(String value);
  external String get textTransform;
  external set textTransform(String value);
  external String get textUnderlineOffset;
  external set textUnderlineOffset(String value);
  external String get textUnderlinePosition;
  external set textUnderlinePosition(String value);
  external String get textWrap;
  external set textWrap(String value);
  external String get textWrapMode;
  external set textWrapMode(String value);
  external String get textWrapStyle;
  external set textWrapStyle(String value);
  external String get timelineScope;
  external set timelineScope(String value);
  external String get top;
  external set top(String value);
  external String get touchAction;
  external set touchAction(String value);
  external String get transform;
  external set transform(String value);
  external String get transformBox;
  external set transformBox(String value);
  external String get transformOrigin;
  external set transformOrigin(String value);
  external String get transformStyle;
  external set transformStyle(String value);
  external String get transition;
  external set transition(String value);
  external String get transitionBehavior;
  external set transitionBehavior(String value);
  external String get transitionDelay;
  external set transitionDelay(String value);
  external String get transitionDuration;
  external set transitionDuration(String value);
  external String get transitionProperty;
  external set transitionProperty(String value);
  external String get transitionTimingFunction;
  external set transitionTimingFunction(String value);
  external String get translate;
  external set translate(String value);
  external String get unicodeBidi;
  external set unicodeBidi(String value);
  external String get userSelect;
  external set userSelect(String value);
  external String get vectorEffect;
  external set vectorEffect(String value);
  external String get verticalAlign;
  external set verticalAlign(String value);
  external String get viewTimeline;
  external set viewTimeline(String value);
  external String get viewTimelineAxis;
  external set viewTimelineAxis(String value);
  external String get viewTimelineInset;
  external set viewTimelineInset(String value);
  external String get viewTimelineName;
  external set viewTimelineName(String value);
  external String get viewTransitionClass;
  external set viewTransitionClass(String value);
  external String get viewTransitionName;
  external set viewTransitionName(String value);
  external String get visibility;
  external set visibility(String value);
  external String get voiceBalance;
  external set voiceBalance(String value);
  external String get voiceDuration;
  external set voiceDuration(String value);
  external String get voiceFamily;
  external set voiceFamily(String value);
  external String get voicePitch;
  external set voicePitch(String value);
  external String get voiceRange;
  external set voiceRange(String value);
  external String get voiceRate;
  external set voiceRate(String value);
  external String get voiceStress;
  external set voiceStress(String value);
  external String get voiceVolume;
  external set voiceVolume(String value);
  external String get whiteSpace;
  external set whiteSpace(String value);
  external String get whiteSpaceCollapse;
  external set whiteSpaceCollapse(String value);
  external String get whiteSpaceTrim;
  external set whiteSpaceTrim(String value);
  external String get widows;
  external set widows(String value);
  external String get width;
  external set width(String value);
  external String get willChange;
  external set willChange(String value);
  external String get wordBreak;
  external set wordBreak(String value);
  external String get wordSpaceTransform;
  external set wordSpaceTransform(String value);
  external String get wordSpacing;
  external set wordSpacing(String value);
  external String get wordWrap;
  external set wordWrap(String value);
  external String get wrapAfter;
  external set wrapAfter(String value);
  external String get wrapBefore;
  external set wrapBefore(String value);
  external String get wrapFlow;
  external set wrapFlow(String value);
  external String get wrapInside;
  external set wrapInside(String value);
  external String get wrapThrough;
  external set wrapThrough(String value);
  external String get writingMode;
  external set writingMode(String value);
  external String get x;
  external set x(String value);
  external String get y;
  external set y(String value);
  external String get zIndex;
  external set zIndex(String value);
  external String get zoom;
  external set zoom(String value);
}
@JS()
external $CSS get CSS;

/// The **`CSS`** interface holds useful CSS-related methods. No objects with
/// this interface are implemented: it contains only static methods and is
/// therefore a utilitarian interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSS).
@JS('CSS')
extension type $CSS._(JSObject _) implements JSObject {
  external String escape(String ident);
  external bool supports(
    String conditionTextOrProperty, [
    String value,
  ]);
  external void registerProperty(PropertyDefinition definition);
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
  external HighlightRegistry get highlights;
}
