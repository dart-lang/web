// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

import 'css_typed_om.dart';
import 'cssom.dart';
import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

/// All of the SVG DOM interfaces that correspond directly to elements in the
/// SVG language derive from the `SVGElement` interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement).
extension type SVGElement._(JSObject _) implements Element, JSObject {
  /// The **`SVGElement.focus()`** method sets focus on the specified SVG
  /// element, if it can be focused.
  /// The focused element is the element that will receive keyboard and similar
  /// events by default.
  ///
  /// By default the browser will scroll the element into view after focusing
  /// it, and it may also provide visible indication of the focused element
  /// (typically by displaying a "focus ring" around the element).
  /// Parameter options are provided to disable the default scrolling and force
  /// visible indication on elements.
  external void focus([FocusOptions options]);

  /// The **`SVGElement.blur()`** method removes keyboard focus from the current
  /// SVG element.
  external void blur();

  /// The **`ownerSVGElement`** property of the [SVGElement] interface reflects
  /// the nearest ancestor  element. `null` if the given element is the
  /// outermost `<svg>` element.
  external SVGSVGElement? get ownerSVGElement;

  /// The **`viewportElement`** property of the [SVGElement] interface
  /// represents the `SVGElement` which established the current viewport. Often
  /// the nearest ancestor  element. `null` if the given element is the
  /// outermost `<svg>` element.
  external SVGElement? get viewportElement;
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onauxclick;
  external set onauxclick(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforetoggle;
  external set onbeforetoggle(EventHandler value);
  external EventHandler get onblur;
  external set onblur(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncopy;
  external set oncopy(EventHandler value);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external EventHandler get oncut;
  external set oncut(EventHandler value);
  external EventHandler get ondblclick;
  external set ondblclick(EventHandler value);
  external EventHandler get ondrag;
  external set ondrag(EventHandler value);
  external EventHandler get ondragend;
  external set ondragend(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragover;
  external set ondragover(EventHandler value);
  external EventHandler get ondragstart;
  external set ondragstart(EventHandler value);
  external EventHandler get ondrop;
  external set ondrop(EventHandler value);
  external EventHandler get ondurationchange;
  external set ondurationchange(EventHandler value);
  external EventHandler get onemptied;
  external set onemptied(EventHandler value);
  external EventHandler get onended;
  external set onended(EventHandler value);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onfocus;
  external set onfocus(EventHandler value);
  external EventHandler get onformdata;
  external set onformdata(EventHandler value);
  external EventHandler get oninput;
  external set oninput(EventHandler value);
  external EventHandler get oninvalid;
  external set oninvalid(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeyup;
  external set onkeyup(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onmousedown;
  external set onmousedown(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmousemove;
  external set onmousemove(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseup;
  external set onmouseup(EventHandler value);
  external EventHandler get onpaste;
  external set onpaste(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onplay;
  external set onplay(EventHandler value);
  external EventHandler get onplaying;
  external set onplaying(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onratechange;
  external set onratechange(EventHandler value);
  external EventHandler get onreset;
  external set onreset(EventHandler value);
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onseeked;
  external set onseeked(EventHandler value);
  external EventHandler get onseeking;
  external set onseeking(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
  external EventHandler get onstalled;
  external set onstalled(EventHandler value);
  external EventHandler get onsubmit;
  external set onsubmit(EventHandler value);
  external EventHandler get onsuspend;
  external set onsuspend(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontoggle;
  external set ontoggle(EventHandler value);
  external EventHandler get onvolumechange;
  external set onvolumechange(EventHandler value);
  external EventHandler get onwaiting;
  external set onwaiting(EventHandler value);
  external EventHandler get onwheel;
  external set onwheel(EventHandler value);
  external EventHandler get onanimationstart;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationcancel;
  external set onanimationcancel(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerleave;
  external set onpointerleave(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectionchange;
  external set onselectionchange(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchcancel;
  external set ontouchcancel(EventHandler value);

  /// The **`dataset`** read-only property of the [SVGElement] interface
  /// provides read/write access to
  /// [custom data attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/data-*)
  /// (`data-*`) on elements. It exposes a map of strings ([DOMStringMap]) with
  /// an entry for each `data-*` attribute.
  ///
  /// For more information on the behavior of `dataset`, see
  /// [HTMLElement.dataset].
  external DOMStringMap get dataset;

  /// The **`nonce`** property of the [SVGElement] interface returns the nonce
  /// that is used by
  /// [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)
  /// to determine whether a given fetch will be allowed to proceed.
  external String get nonce;
  external set nonce(String value);
  external bool get autofocus;
  external set autofocus(bool value);

  /// The **`tabIndex`** property of the [SVGElement] interface represents the
  /// tab order of the current SVG element.
  ///
  /// Tab order is as follows:
  ///
  /// 1. Elements with a positive `tabIndex`. Elements that have identical
  /// `tabIndex` values should be navigated in the order they appear. Navigation
  /// proceeds from the lowest `tabIndex` to the highest `tabIndex`.
  /// 2. Elements that do not support the `tabIndex` attribute or support it and
  /// assign `tabIndex` to `0`, in the order they appear.
  ///
  /// Elements that are disabled do not participate in the tabbing order.
  ///
  /// Values don't need to be sequential, nor must they begin with any
  /// particular value. They
  /// may even be negative, though each browser trims very large values.
  external int get tabIndex;
  external set tabIndex(int value);

  /// The read-only **`style`** property of the [SVGElement] returns the
  /// _inline_ style of an element in the form of a live [CSSStyleDeclaration]
  /// object that contains a list of all styles properties for that element with
  /// values assigned only for the attributes that are defined in the element's
  /// inline
  /// [`style`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/style)
  /// attribute.
  ///
  /// Shorthand properties are expanded. If you set `style="border-top: 1px
  /// solid black"`, the longhand properties (, , and ) are set instead.
  ///
  /// This property is read-only, meaning it is not possible to assign a
  /// [CSSStyleDeclaration] object to it. Nevertheless, it is possible to set an
  /// inline style by assigning a _string_ directly to the `style` property. In
  /// this case the string is forwarded to [CSSStyleDeclaration.cssText]. Using
  /// `style` in this manner will completely overwrite all inline styles on the
  /// element.
  ///
  /// Therefore, to add specific styles to an element without altering other
  /// style values, it is generally preferable to set individual properties on
  /// the [CSSStyleDeclaration] object. For example, you can write
  /// `element.style.backgroundColor = "red"`.
  ///
  /// A style declaration is reset by setting it to `null` or an empty string,
  /// e.g., `elt.style.color = null`.
  ///
  /// > [!NOTE]
  /// > CSS property names are converted to JavaScript identifier with these
  /// > rules:
  /// >
  /// > - If the property is made of one word, it remains as it is: `height`
  /// > stays as is (in lowercase).
  /// > - If the property is made of several words, separated by dashes, the
  /// > dashes are removed and it is converted to : `background-attachment`
  /// > becomes `backgroundAttachment`.
  /// > - The property `float`, being a reserved JavaScript keyword, is
  /// > converted to `cssFloat`.
  /// >
  /// > The `style` property has the same priority in the CSS cascade as an
  /// > inline style declaration set via the `style` attribute.
  external CSSStyleDeclaration get style;

  /// The **`attributeStyleMap`** read-only property of the [SVGElement]
  /// interface returns a live [StylePropertyMap] object that contains a list of
  /// style properties of the element that are defined in the element's inline
  /// `style` attribute, or assigned using the [SVGElement.style] property of
  /// the [SVGElement] interface via script.
  ///
  /// Shorthand properties are expanded. If you set `border-top: 1px solid
  /// black`, the longhand properties (, , and ) are set instead.
  ///
  /// The main difference between [SVGElement.style] property and
  /// `attributeStyleMap` property is that, the `style` property will return a
  /// [CSSStyleDeclaration] object, while the `attributeStyleMap` property will
  /// return a [StylePropertyMap] object.
  ///
  /// Though the property itself is not writable, you could read and write
  /// inline styles through the [StylePropertyMap] object that it returns, just
  /// like through the [CSSStyleDeclaration] object that returns via the `style`
  /// property.
  external StylePropertyMap get attributeStyleMap;
}

extension SVGElementExtension on SVGElement {
  external SVGAnimatedString get className;
}

extension type SVGBoundingBoxOptions._(JSObject _) implements JSObject {
  external factory SVGBoundingBoxOptions({
    bool fill,
    bool stroke,
    bool markers,
    bool clipped,
  });

  external bool get fill;
  external set fill(bool value);
  external bool get stroke;
  external set stroke(bool value);
  external bool get markers;
  external set markers(bool value);
  external bool get clipped;
  external set clipped(bool value);
}

/// The **`SVGGraphicsElement`** interface represents SVG elements whose primary
/// purpose is to directly render graphics into a group.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement).
extension type SVGGraphicsElement._(JSObject _)
    implements SVGElement, JSObject {
  /// The **`SVGGraphicsElement.getBBox()`** method allows us to determine
  /// the coordinates of the smallest rectangle in which the object fits. The
  /// coordinates
  /// returned are with respect to the current SVG space (after the application
  /// of all
  /// geometry attributes on all the elements contained in the target element).
  ///
  /// > **Note:** `getBBox()` must return the actual bounding box at
  /// > the time the method was called—even in case the element has not yet been
  /// > rendered. It
  /// > also does not account for any transformation applied to the element or
  /// > its parents.
  ///
  /// > **Note:** `getBBox` returns different values than
  /// > [Element.getBoundingClientRect], as the
  /// > latter returns value relative to the viewport
  external DOMRect getBBox([SVGBoundingBoxOptions options]);

  /// The `getCTM()` method of the [SVGGraphicsElement] interface represents the
  /// matrix that transforms the current element's coordinate system to its SVG
  /// viewport's coordinate system.
  external DOMMatrix? getCTM();

  /// The `getScreenCTM()` method of the [SVGGraphicsElement] interface
  /// represents the matrix that transforms the current element's coordinate
  /// system to the coordinate system of the SVG viewport for the SVG document
  /// fragment.
  external DOMMatrix? getScreenCTM();

  /// The **`transform`** read-only property of the [SVGGraphicsElement]
  /// interface reflects the computed value of the transform property and its
  /// corresponding `transform` attribute of the given element.
  external SVGAnimatedTransformList get transform;

  /// The **`requiredExtensions`** read-only property of the
  /// [SVGGraphicsElement] interface reflects the `requiredExtensions` attribute
  /// of the given element.
  external SVGStringList get requiredExtensions;

  /// The **`systemLanguage`** read-only property of the [SVGGraphicsElement]
  /// interface reflects the `systemLanguage` attribute of the given element.
  external SVGStringList get systemLanguage;
}

/// The `SVGGeometryElement` interface represents SVG elements whose rendering
/// is defined by geometry with an equivalent path, and which can be filled and
/// stroked. This includes paths and the basic shapes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement).
extension type SVGGeometryElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// The **`isPointInFill()`** method of the [SVGGeometryElement] interface
  /// determines whether a given point is within the fill shape of an element.
  /// The `point` argument is interpreted as a point in the local coordinate
  /// system of the element.
  external bool isPointInFill([DOMPointInit point]);

  /// The **`isPointInStroke()`** method of the [SVGGeometryElement] interface
  /// determines whether a given point is within the stroke shape of an element.
  /// The `point` argument is interpreted as a point in the local coordinate
  /// system of the element.
  external bool isPointInStroke([DOMPointInit point]);

  /// The **`SVGGeometryElement.getTotalLength()`** method returns
  /// the user agent's computed value for the total length of the path in user
  /// units.
  external double getTotalLength();

  /// The
  /// **`SVGGeometryElement.getPointAtLength()`** method returns the
  /// point at a given distance along the path.
  external DOMPoint getPointAtLength(num distance);

  /// The **`SVGGeometryElement.pathLength`** property reflects the
  /// `pathLength` attribute and returns the total length of the path, in user
  /// units.
  external SVGAnimatedNumber get pathLength;
}

/// The **`SVGNumber`** interface corresponds to the  basic data type.
///
/// An `SVGNumber` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber).
extension type SVGNumber._(JSObject _) implements JSObject {
  /// The **`value`** read-only property of the [SVGNumber] interface represents
  /// the number.
  external double get value;
  external set value(num value);
}

/// The **`SVGLength`** interface correspond to the
/// [\<length>](/en-US/docs/Web/SVG/Content_type#length) basic data type.
///
/// An `SVGLength` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength).
extension type SVGLength._(JSObject _) implements JSObject {
  static const int SVG_LENGTHTYPE_UNKNOWN = 0;

  static const int SVG_LENGTHTYPE_NUMBER = 1;

  static const int SVG_LENGTHTYPE_PERCENTAGE = 2;

  static const int SVG_LENGTHTYPE_EMS = 3;

  static const int SVG_LENGTHTYPE_EXS = 4;

  static const int SVG_LENGTHTYPE_PX = 5;

  static const int SVG_LENGTHTYPE_CM = 6;

  static const int SVG_LENGTHTYPE_MM = 7;

  static const int SVG_LENGTHTYPE_IN = 8;

  static const int SVG_LENGTHTYPE_PT = 9;

  static const int SVG_LENGTHTYPE_PC = 10;

  /// The `newValueSpecifiedUnits()` method of the [SVGLength] interface resets
  /// the value as a number with an associated [SVGLength.unitType], thereby
  /// replacing the values for all of the attributes on the object.
  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );

  /// The `convertToSpecifiedUnits()` method of the [SVGLength] interface allows
  /// you to convert the length's value to the specified unit type.
  ///
  /// This function will:
  ///
  /// - Set the [SVGLength.unitType] property to the given unit type
  /// - Update the [SVGLength.valueInSpecifiedUnits] and
  ///   [SVGLength.valueAsString] properties so the length value is represented
  ///   in the given unit type
  external void convertToSpecifiedUnits(int unitType);

  /// The **`unitType`** property of the [SVGLength] interface that represents
  /// type of the value as specified by one of the `SVG_LENGTHTYPE_*` constants
  /// defined on this interface.
  external int get unitType;

  /// The `value` property of the [SVGLength] interface represents the floating
  /// point value of the [\<length>](/en-US/docs/Web/SVG/Content_type#length) in
  /// user units.
  ///
  /// Setting this attribute will cause [SVGLength.valueInSpecifiedUnits] and
  /// [SVGLength.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get value;
  external set value(num value);

  /// The `valueInSpecifiedUnits` property of the [SVGLength] interface
  /// represents floating point value, in the units expressed by
  /// [SVGLength.unitType].
  ///
  /// Setting this attribute will cause [SVGLength.value] and
  /// [SVGLength.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);

  /// The `valueAsString` property of the [SVGLength] interface represents the
  /// [\<length>](/en-US/docs/Web/SVG/Content_type#length)'s value as a strin\*,
  /// in the units expressed by [SVGLength.unitType].
  ///
  /// Setting this attribute will cause [SVGLength.value],
  /// [SVGLength.valueInSpecifiedUnits], and [SVGLength.unitType] to be updated
  /// automatically to reflect this setting.
  external String get valueAsString;
  external set valueAsString(String value);
}

/// The `SVGAngle` interface is used to represent a value that can be an  or
/// value.
///
/// The `SVGAngle` returned from [SVGAnimatedAngle.animVal] and
/// [SVGAnimatedAngle.baseVal] is read only, but the `SVGAngle` returned from
/// [SVGSVGElement.createSVGAngle] is writable. When designated as read only,
/// attempts to modify the object will result in an exception being thrown.
///
/// An `SVGAngle` object can be associated with a particular element. The
/// associated element is used to determine which element's content attribute to
/// update if the object reflects an attribute. Unless otherwise described, an
/// `SVGAngle` object is not associated with any element.
///
/// Every `SVGAngle` object operates in one of two modes:
///
/// 1. **_Reflect the base value_** of a reflected animatable attribute (being
/// exposed through the [SVGAnimatedAngle.baseVal] member of an
/// [SVGAnimatedAngle]),
/// 2. **_Be detached_,** which is the case for `SVGAngle` objects created with
/// [SVGSVGElement.createSVGAngle].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle).
extension type SVGAngle._(JSObject _) implements JSObject {
  static const int SVG_ANGLETYPE_UNKNOWN = 0;

  static const int SVG_ANGLETYPE_UNSPECIFIED = 1;

  static const int SVG_ANGLETYPE_DEG = 2;

  static const int SVG_ANGLETYPE_RAD = 3;

  static const int SVG_ANGLETYPE_GRAD = 4;

  /// The `newValueSpecifiedUnits()` method of the [SVGAngle] interface sets the
  /// value to a number with an associated [SVGAngle.unitType], thereby
  /// replacing the values for all of the attributes on the object.
  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );

  /// The `convertToSpecifiedUnits()` method of the [SVGAngle] interface allows
  /// you to convert the angle's value to the specified unit type.
  ///
  /// This function will:
  ///
  /// - Set the [SVGAngle.unitType] property to the given unit type
  /// - Update the [SVGAngle.valueInSpecifiedUnits] and [SVGAngle.valueAsString]
  ///   properties so the angle value is represented in the given unit type
  external void convertToSpecifiedUnits(int unitType);

  /// The **`unitType`** property of the [SVGAngle] interface is one of the
  /// [unit type constants](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle#constants)
  /// and represents the units in which this angle's value is expressed.
  external int get unitType;

  /// The `value` property of the [SVGAngle] interface represents the floating
  /// point value of the [`<angle>`](/en-US/docs/Web/SVG/Content_type#angle) in
  /// degrees.
  ///
  /// Setting this attribute will cause [SVGAngle.valueInSpecifiedUnits] and
  /// [SVGAngle.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get value;
  external set value(num value);

  /// The `valueInSpecifiedUnits` property of the [SVGAngle] interface
  /// represents the value of this angle as a number, in the units expressed by
  /// the angle's [SVGAngle.unitType].
  ///
  /// Setting this attribute will cause [SVGAngle.value] and
  /// [SVGAngle.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);

  /// The `valueAsString` property of the [SVGAngle] interface represents the
  /// angle's value as a string, in the units expressed by [SVGAngle.unitType].
  ///
  /// Setting this attribute will cause [SVGAngle.value],
  /// [SVGAngle.valueInSpecifiedUnits], and [SVGAngle.unitType] to be updated
  /// automatically to reflect this setting.
  external String get valueAsString;
  external set valueAsString(String value);
}

/// The **`SVGNumberList`** interface defines a list of numbers.
///
/// An `SVGNumberList` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// An `SVGNumberList` object is indexable and can be accessed like an array.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList).
extension type SVGNumberList._(JSObject _) implements JSObject {
  /// The **`clear()`** method of the [SVGNumberList] interface clears all
  /// existing items from the list, with the result being an empty list.
  external void clear();

  /// The **`initialize()`** method of the [SVGNumberList] interface clears all
  /// existing items from the list and re-initializes the list to hold the
  /// single item specified by the parameter. If the inserted item is already in
  /// a list, it is removed from its previous list before it is inserted into
  /// this list. The inserted item is the item itself and not a copy. The return
  /// value is the item inserted into the list.
  external SVGNumber initialize(SVGNumber newItem);

  /// The **`getItem()`** method of the [SVGNumberList] interface returns the
  /// specified item from the list. The returned item is the item itself and not
  /// a copy. Any changes made to the item are immediately reflected in the
  /// list. The first item is indexed 0.
  external SVGNumber getItem(int index);

  /// The **`insertItemBefore()`** method of the [SVGNumberList] interface
  /// inserts a new item into the list at the specified position. The first item
  /// is indexed 0. The inserted item is the item itself and not a copy.
  ///
  /// - If the new item is already in a list, it is removed from its previous
  ///   list before it is inserted into this list.
  /// - If the item is already in this list, note that the index of the item to
  ///   insert before is before the removal of the item.
  /// - If the index is equal to 0, then the new item is inserted at the front
  ///   of the list.
  /// - If the index is greater than or equal to the [SVGNumberList.length],
  ///   then the new item is appended to the end of the list.
  external SVGNumber insertItemBefore(
    SVGNumber newItem,
    int index,
  );

  /// The **`replaceItem()`** method of the [SVGNumberList] interface replaces
  /// an existing item in the list with a new item. If the new item is already
  /// in a list, it is removed from its previous list before it is inserted into
  /// this list. The inserted item is the item itself and not a copy. If the
  /// item is already in this list, note that the index of the item to replace
  /// is before the removal of the item.
  external SVGNumber replaceItem(
    SVGNumber newItem,
    int index,
  );

  /// The **`removeItem()`** method of the [SVGNumberList] interface removes an
  /// existing item at the given index from the list.
  external SVGNumber removeItem(int index);

  /// The **`appendItem()`** method of the [SVGNumberList] interface inserts a
  /// new item at the end of the list. If the given item is already in a list,
  /// it is removed from its previous list before it is inserted into this list.
  /// The inserted item is the item itself and not a copy.
  external SVGNumber appendItem(SVGNumber newItem);
  external void operator []=(
    int index,
    SVGNumber newItem,
  );

  /// The **`length`** property of the [SVGNumberList] interface returns the
  /// number of items in the list. It is an alias of
  /// [SVGNumberList.numberOfItems] to make SVG lists more
  /// [array-like](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#array-like_objects).
  external int get length;

  /// The **`numberOfItems`** property of the [SVGNumberList] interface returns
  /// the number of items in the list. [SVGNumberList.length] is an alias of of
  /// it.
  external int get numberOfItems;
}

/// The **`SVGLengthList`** interface defines a list of [SVGLength] objects. It
/// is used for the [SVGAnimatedLengthList.baseVal] and
/// [SVGAnimatedLengthList.animVal] properties of [SVGAnimatedLengthList].
///
/// An `SVGLengthList` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// An `SVGLengthList` object is indexable and can be accessed like an array.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList).
extension type SVGLengthList._(JSObject _) implements JSObject {
  /// The **`clear()`** method of the [SVGLengthList] interface clears all
  /// existing items from the list, with the result being an empty list.
  external void clear();

  /// The **`initialize()`** method of the [SVGLengthList] interface clears all
  /// existing items from the list and re-initializes the list to hold the
  /// single item specified by the parameter. If the inserted item is already in
  /// a list, it is removed from its previous list before it is inserted into
  /// this list. The inserted item is the item itself and not a copy. The return
  /// value is the item inserted into the list.
  external SVGLength initialize(SVGLength newItem);

  /// The **`getItem()`** method of the [SVGLengthList] interface returns the
  /// specified item from the list. The returned item is the item itself and not
  /// a copy. Any changes made to the item are immediately reflected in the
  /// list. The first item is indexed 0.
  external SVGLength getItem(int index);

  /// The **`insertItemBefore()`** method of the [SVGLengthList] interface
  /// inserts a new item into the list at the specified position. The first item
  /// is indexed 0. The inserted item is the item itself and not a copy.
  ///
  /// - If the new item is already in a list, it is removed from its previous
  ///   list before it is inserted into this list.
  /// - If the item is already in this list, note that the index of the item to
  ///   insert before is before the removal of the item.
  /// - If the index is equal to 0, then the new item is inserted at the front
  ///   of the list.
  /// - If the index is greater than or equal to the [SVGLengthList.length],
  ///   then the new item is appended to the end of the list.
  external SVGLength insertItemBefore(
    SVGLength newItem,
    int index,
  );

  /// The **`replaceItem()`** method of the [SVGLengthList] interface replaces
  /// an existing item in the list with a new item. If the new item is already
  /// in a list, it is removed from its previous list before it is inserted into
  /// this list. The inserted item is the item itself and not a copy. If the
  /// item is already in this list, note that the index of the item to replace
  /// is before the removal of the item.
  external SVGLength replaceItem(
    SVGLength newItem,
    int index,
  );

  /// The **`removeItem()`** method of the [SVGLengthList] interface removes an
  /// existing item at the given index from the list.
  external SVGLength removeItem(int index);

  /// The **`appendItem()`** method of the [SVGLengthList] interface inserts a
  /// new item at the end of the list. If the given item is already in a list,
  /// it is removed from its previous list before it is inserted into this list.
  /// The inserted item is the item itself and not a copy.
  external SVGLength appendItem(SVGLength newItem);
  external void operator []=(
    int index,
    SVGLength newItem,
  );

  /// The **`length`** property of the [SVGLengthList] interface returns the
  /// number of items in the list. It is an alias of
  /// [SVGLengthList.numberOfItems] to make SVG lists more
  /// [array-like](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#array-like_objects).
  external int get length;

  /// The **`numberOfItems`** property of the [SVGLengthList] interface returns
  /// the number of items in the list. [SVGLengthList.length] is an alias of of
  /// it.
  external int get numberOfItems;
}

/// The **`SVGStringList`** interface defines a list of strings.
///
/// An `SVGStringList` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// An `SVGStringList` object is indexable and can be accessed like an array.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList).
extension type SVGStringList._(JSObject _) implements JSObject {
  /// The **`clear()`** method of the [SVGStringList] interface clears all
  /// existing items from the list, with the result being an empty list.
  external void clear();

  /// The **`initialize()`** method of the [SVGStringList] interface clears all
  /// existing items from the list and re-initializes the list to hold the
  /// single item specified by the parameter. If the inserted item is already in
  /// a list, it is removed from its previous list before it is inserted into
  /// this list. The inserted item is the item itself and not a copy. The return
  /// value is the item inserted into the list.
  external String initialize(String newItem);

  /// The **`getItem()`** method of the [SVGStringList] interface returns the
  /// specified item from the list. The returned item is the item itself and not
  /// a copy. Any changes made to the item are immediately reflected in the
  /// list. The first item is indexed 0.
  external String getItem(int index);

  /// The **`insertItemBefore()`** method of the [SVGStringList] interface
  /// inserts a new item into the list at the specified position. The first item
  /// is indexed 0. The inserted item is the item itself and not a copy.
  ///
  /// - If the new item is already in a list, it is removed from its previous
  ///   list before it is inserted into this list.
  /// - If the item is already in this list, note that the index of the item to
  ///   insert before is before the removal of the item.
  /// - If the index is equal to 0, then the new item is inserted at the front
  ///   of the list.
  /// - If the index is greater than or equal to the [SVGStringList.length],
  ///   then the new item is appended to the end of the list.
  external String insertItemBefore(
    String newItem,
    int index,
  );

  /// The **`replaceItem()`** method of the [SVGStringList] interface replaces
  /// an existing item in the list with a new item. The inserted item is the
  /// item itself and not a copy.
  ///
  /// - If the new item is already in a list, it is removed from its previous
  ///   list before it is inserted into this list.
  /// - If the item is already in this list, note that the index of the item to
  ///   replace is before the removal of the item.
  external String replaceItem(
    String newItem,
    int index,
  );

  /// The **`removeItem()`** method of the [SVGStringList] interface removes an
  /// existing item at the given index from the list.
  external String removeItem(int index);

  /// The **`appendItem()`** method of the [SVGStringList] interface inserts a
  /// new item at the end of the list. If the given item is already in a list,
  /// it is removed from its previous list before it is inserted into this list.
  /// The inserted item is the item itself and not a copy.
  external String appendItem(String newItem);
  external void operator []=(
    int index,
    String newItem,
  );

  /// The **`length`** property of the [SVGStringList] interface returns the
  /// number of items in the list. It is an alias of
  /// [SVGStringList.numberOfItems] to make SVG lists more
  /// [array-like](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#array-like_objects).
  external int get length;

  /// The **`numberOfItems`** property of the [SVGStringList] interface returns
  /// the number of items in the list. [SVGStringList.length] is an alias of of
  /// it.
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean).
extension type SVGAnimatedBoolean._(JSObject _) implements JSObject {
  /// The **`baseVal`** property of the [SVGAnimatedBoolean] interface is the
  /// value of the associated animatable boolean SVG attribute in its base
  /// (none-animated) state. It reflects the value of the associated animatable
  /// boolean attribute when no animations are applied.
  ///
  /// Some boolean SVG attributes, such as
  /// [`preserveAlpha`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preserveAlpha),
  /// are animatable. In such cases, `SVGAnimatedBoolean.baseVal` property is
  /// `false` when the attribute is set to `false`, is omitted and defaults to
  /// `false`, or is inheritable and inherits `false`. Otherwise, the value is
  /// `true`.
  external bool get baseVal;
  external set baseVal(bool value);

  /// The **`animVal`** read-only property of the [SVGAnimatedBoolean] interface
  /// represents the current animated value of the associated animatable boolean
  /// SVG attribute. If the attribute is not animated, `animVal` is the same as
  /// [SVGAnimatedBoolean.baseVal].
  ///
  /// Some boolean SVG attributes, such as
  /// [`preserveAlpha`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preserveAlpha),
  /// are animatable. In such cases, `SVGAnimatedBoolean.animVal` property is
  /// `true` when the attribute value resolves to true. Otherwise, the value is
  /// `false`.
  external bool get animVal;
}

/// The **`SVGAnimatedEnumeration`** interface describes attribute values which
/// are constants from a particular enumeration and which can be animated.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration).
extension type SVGAnimatedEnumeration._(JSObject _) implements JSObject {
  /// The **`baseVal`** property of the [SVGAnimatedEnumeration] interface
  /// contains the initial value of an SVG enumeration.
  external int get baseVal;
  external set baseVal(int value);

  /// The **`animVal`** property of the [SVGAnimatedEnumeration] interface
  /// contains the current value of an SVG enumeration. If there is no
  /// animation, it is the same value as the [SVGAnimatedEnumeration.baseVal].
  external int get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger).
extension type SVGAnimatedInteger._(JSObject _) implements JSObject {
  /// The **`baseVal`** property of the [SVGAnimatedInteger] interface
  /// represents the base (non-animated) value of an animatable
  /// [`<integer>`](/en-US/docs/Web/SVG/Content_type#integer).
  ///
  /// Some attributes, like the `numOctaves` attribute of the  element or the
  /// `order` attribute of the  accept a `long` integer as a value. This
  /// property provides access to the static non-animated state of the attribute
  /// as a number.
  external int get baseVal;
  external set baseVal(int value);

  /// The **`animVal`** property of the [SVGAnimatedInteger] interface
  /// represents the animated value of an
  /// [`<integer>`](/en-US/docs/Web/SVG/Content_type#integer). If no animation
  /// is applied, `animVal` equals `baseVal`.
  ///
  /// Some attributes, like the `numOctaves` attribute of the  element or the
  /// `order` attribute of the  accept a `long` integer as a value. This
  /// property provides access to the current animated state of the attribute as
  /// a number.
  external int get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber).
extension type SVGAnimatedNumber._(JSObject _) implements JSObject {
  /// The **`baseVal`** property of the [SVGAnimatedNumber] interface represents
  /// the base (non-animated) value of an animatable numeric attribute.
  ///
  /// Some animatable SVG attributes accept a single numeric value, such as the
  /// `radius` attribute of the  or  elements and the `width` and `height`
  /// attributes of the  element, and many others. The `baseVal` property
  /// reflects and updates the base, or non-animated, value of the numeric
  /// attribute.
  external double get baseVal;
  external set baseVal(num value);

  /// The **`animVal`** read-only property of the [SVGAnimatedNumber] interface
  /// represents the animated value of an SVG element's numeric attribute.
  ///
  /// Some animatable SVG attributes accept a single number, such as the
  /// `radius` attribute of the  or  elements and the `width` and `height`
  /// attributes of the  element, and many others. The `animVal` attribute
  /// provides access to the current animated value of the animatable numeric
  /// attribute during animations.
  external double get animVal;
}

/// The **`SVGAnimatedLength`** interface represents attributes of type
/// [\<length>](/en-US/docs/Web/SVG/Content_type#length) which can be animated.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength).
extension type SVGAnimatedLength._(JSObject _) implements JSObject {
  /// The **`baseVal`** property of the [SVGAnimatedLength] interface contains
  /// the initial value of an SVG enumeration.
  external SVGLength get baseVal;

  /// The **`animVal`** property of the [SVGAnimatedLength] interface contains
  /// the current value of an SVG enumeration. If there is no animation, it is
  /// the same value as the [SVGAnimatedLength.baseVal].
  external SVGLength get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle).
extension type SVGAnimatedAngle._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedAngle] interface
  /// represents the base (non-animated) value of the associated
  /// [`<angle>`](/en-US/docs/Web/SVG/Content_type#angle) on an SVG element.
  /// This property is used to retrieve the static value of the `<angle>`,
  /// unaffected by any ongoing animations.
  ///
  /// This property reflects the `<angle>` value of the `orient` attribute of
  /// the SVG  element, which is the same as the [SVGMarkerElement.orientAngle]
  /// property.
  external SVGAngle get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedAngle] interface
  /// represents the current animated value of the associated
  /// [`<angle>`](/en-US/docs/Web/SVG/Content_type#angle) on an SVG element. If
  /// the attribute is not currently being animated, `animVal` will be the same
  /// as the `baseVal`.
  ///
  /// This property reflects the animated state of the angle of the animating
  /// `orient` attribute of the SVG  element, providing access to the value of
  /// the angle during animations.
  external SVGAngle get animVal;
}

/// The **`SVGAnimatedString`** interface represents string attributes which can
/// be animated from each SVG declaration. You need to create SVG attribute
/// before doing anything else, everything should be declared inside this.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString).
extension type SVGAnimatedString._(JSObject _) implements JSObject {
  /// BaseVal gets or sets the base value of the given attribute before any
  /// animations are applied. The base value of the given attribute before
  /// applying any animations. Setter throws DOMException.
  external String get baseVal;
  external set baseVal(String value);

  /// The `animVal` read-only property of the [SVGAnimatedString] interface
  /// contains the same value as the [SVGAnimatedString.baseVal] property. If
  /// the given attribute or property is being animated, it contains the current
  /// animated value of the attribute or property. If the given attribute or
  /// property is not currently being animated, then it contains the same value
  /// as `baseVal`.
  external String get animVal;
}

/// The `SVGAnimatedRect` interface is used for attributes of basic [SVGRect]
/// which can be animated.
///
/// ### Interface overview
///
/// <table class="no-markdown">
///   <tbody>
///     <tr>
///       <th scope="row">Also implement</th>
///       <td><em>None</em></td>
///     </tr>
///     <tr>
///       <th scope="row">Methods</th>
///       <td><em>None</em></td>
///     </tr>
///     <tr>
///       <th scope="row">Properties</th>
///       <td>
///         <ul>
///           <li>
/// readonly [SVGRect] <code>baseVal</code>
///           </li>
///           <li>
/// readonly [SVGRect] <code>animVal</code>
///           </li>
///         </ul>
///       </td>
///     </tr>
///     <tr>
///       <th scope="row">Normative document</th>
///       <td>
///         <a
/// href="https://www.w3.org/TR/SVG11/types.html#InterfaceSVGAnimatedRect"
/// >SVG 1.1 (2nd Edition)</a
/// >
///       </td>
///     </tr>
///   </tbody>
/// </table>
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect).
extension type SVGAnimatedRect._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedRect] interface
  /// represents the current non-animated value of the `viewBox` attribute of an
  /// SVG element.
  ///
  /// This property reflects the SVG element's `viewBox` attribute value as a
  /// read-only [DOMRect] object. It provides access to the static rectangle
  /// defined by the `viewBox` attribute, including the `x`, `y`, `width`, and
  /// `height` values.
  external DOMRect get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedRect] interface
  /// represents the current animated value of the `viewBox` attribute of an SVG
  /// element as a read-only [DOMRectReadOnly] object. It provides access to the
  /// rectangle's dynamic state, including the `x`, `y`, `width`, and `height`
  /// values during the animation.
  ///
  /// If no animation is applied, the `animVal` property reflects the SVG
  /// element's `viewBox` attribute value and will be identical to
  /// [SVGAnimatedRect.baseVal].
  external DOMRectReadOnly get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList).
extension type SVGAnimatedNumberList._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedNumberList]
  /// interface represents the base (non-animated) value of an animatable
  /// attribute that accepts a list of
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number) values.
  ///
  /// This property reflects the
  /// [`viewBox`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewBox)
  /// attribute of the
  /// [`<svg>`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg)
  /// element, the
  /// [`values`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/values#fecolormatrix)
  /// attribute of the
  /// [`feColorMatrix`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feColorMatrix)
  /// element and the `points` attribute of the , , or  element as a readonly
  /// [SVGNumberList], providing access to a static list of points defined by
  /// the `points` attribute.
  external SVGNumberList get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedNumberList]
  /// interface represents the current animated value of an animatable attribute
  /// that accepts a list of
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number) values.
  ///
  /// This property reflects the
  /// [`viewBox`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewBox)
  /// attribute of the
  /// [`<svg>`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg)
  /// element, the
  /// [`values`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/values#fecolormatrix)
  /// attribute of the
  /// [`feColorMatrix`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feColorMatrix)
  /// element and the `points` attribute of the , , or  element as a readonly
  /// [SVGNumberList], providing access to a dynamically updated list of points
  /// defined by the `points` attribute.
  external SVGNumberList get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList).
extension type SVGAnimatedLengthList._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedLengthList]
  /// interface represents the base (non-animated) value of an animatable
  /// attribute that accepts a list of
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number) values.
  ///
  /// Some SVG attributes, like the `x`, `y`, `dx`, and `dy` attributes of the
  /// [`<tspan>`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan)
  /// and
  /// [`<text>`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text)
  /// elements, accept a list of length, percentages, or numbers as a value.
  /// This property reflects the attribute value, in its non-animated state, as
  /// a live [SVGLengthList] object.
  external SVGLengthList get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedLengthList]
  /// interface represents the animated value of an attribute that accepts a
  /// list of [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number) values.
  ///
  /// Some SVG attributes, like the `x`, `y`, `dx`, and `dy` attributes of the
  /// [`<tspan>`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan)
  /// and
  /// [`<text>`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text)
  /// elements, accept a list of length, percentages, or numbers as a value.
  /// This property provides access to the current animated state of the
  /// attribute as a live [SVGLengthList] object.
  external SVGLengthList get animVal;
}

/// The **`SVGUnitTypes`** interface defines a commonly used set of constants
/// used for reflecting `gradientUnits`, `patternContentUnits` and other similar
/// attributes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes).
extension type SVGUnitTypes._(JSObject _) implements JSObject {
  static const int SVG_UNIT_TYPE_UNKNOWN = 0;

  static const int SVG_UNIT_TYPE_USERSPACEONUSE = 1;

  static const int SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;
}

/// The **`SVGSVGElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them. This interface contains
/// also various miscellaneous commonly-used utility methods, such as matrix
/// operations and the ability to control the time of redraw on visual rendering
/// devices.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement).
extension type SVGSVGElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGSVGElement] using the tag 'svg'.
  SVGSVGElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'svg',
        );

  external NodeList getIntersectionList(
    DOMRectReadOnly rect,
    SVGElement? referenceElement,
  );
  external NodeList getEnclosureList(
    DOMRectReadOnly rect,
    SVGElement? referenceElement,
  );

  /// The `checkIntersection()` method of the [SVGSVGElement] interface checks
  /// if the rendered content of the given element intersects the supplied
  /// rectangle.
  ///
  /// Each candidate graphics element is to be considered a match only if the
  /// same graphics element can be a target of pointer events as defined in
  /// processing.
  external bool checkIntersection(
    SVGElement element,
    DOMRectReadOnly rect,
  );

  /// The `checkEnclosure()` method of the [SVGSVGElement] interface checks if
  /// the rendered content of the given element is entirely contained within the
  /// supplied rectangle.
  ///
  /// Each candidate graphics element is to be considered a match only if the
  /// same graphics element can be a target of pointer events as defined in
  /// processing.
  external bool checkEnclosure(
    SVGElement element,
    DOMRectReadOnly rect,
  );

  /// The `deselectAll()` method of the [SVGSVGElement] interface unselects any
  /// selected objects, including any selections of text strings and type-in
  /// bars.
  external void deselectAll();

  /// The `createSVGNumber()` method of the [SVGSVGElement] interface creates an
  /// [SVGNumber] object outside of any document trees.
  external SVGNumber createSVGNumber();

  /// The `createSVGLength()` method of the [SVGSVGElement] interface creates an
  /// [SVGLength] object outside of any document trees.
  external SVGLength createSVGLength();

  /// The `createSVGAngle()` method of the [SVGSVGElement] interface creates an
  /// [SVGAngle] object outside of any document trees.
  external SVGAngle createSVGAngle();

  /// The `createSVGPoint()` method of the [SVGSVGElement] interface creates an
  /// [SVGPoint] object outside of any document trees.
  external DOMPoint createSVGPoint();

  /// The `createSVGMatrix()` method of the [SVGSVGElement] interface creates a
  /// [DOMMatrix] object outside of any document trees.
  external DOMMatrix createSVGMatrix();

  /// The `createSVGRect()` method of the [SVGSVGElement] interface creates an
  /// [DOMRect] object outside of any document trees.
  external DOMRect createSVGRect();

  /// The `createSVGTransform()` method of the [SVGSVGElement] interface creates
  /// an [SVGTransform] object outside of any document trees.
  external SVGTransform createSVGTransform();

  /// The `createSVGTransformFromMatrix()` method of the [SVGSVGElement]
  /// interface creates an [SVGTransform] object outside of any document trees,
  /// based on the given [DOMMatrix] object.
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);

  /// The `getElementById()` method of the [SVGSVGElement] interface searches
  /// the SVG document fragment (i.e., the search is restricted to a subset of
  /// the document tree) for an [Element] whose `id` property matches the
  /// specified string.
  external Element getElementById(String elementId);
  external int suspendRedraw(int maxWaitMilliseconds);
  external void unsuspendRedraw(int suspendHandleID);
  external void unsuspendRedrawAll();
  external void forceRedraw();

  /// The `pauseAnimations()` method of the [SVGSVGElement] interface suspends
  /// (i.e., pauses) all currently running animations that are defined within
  /// the SVG document fragment corresponding to this  element, causing the
  /// animation clock corresponding to this document fragment to stand still
  /// until it is unpaused.
  external void pauseAnimations();

  /// The `unpauseAnimations()` method of the [SVGSVGElement] interface resumes
  /// (i.e., unpauses) currently running animations that are defined within the
  /// SVG document fragment, causing the animation clock to continue from the
  /// time at which it was suspended.
  external void unpauseAnimations();

  /// The `animationsPaused()` method of the [SVGSVGElement] interface checks
  /// whether the animations in the SVG document fragment are currently paused.
  external bool animationsPaused();

  /// The `getCurrentTime()` method of the [SVGSVGElement] interface returns the
  /// current time in seconds relative to the start time for the current SVG
  /// document fragment.
  ///
  /// If `getCurrentTime()` is called before the document timeline has begun
  /// (for example, by script running in a  element before the document's
  /// `SVGLoad` event is dispatched), then `0` is returned.
  external double getCurrentTime();

  /// The `setCurrentTime()` method of the [SVGSVGElement] interface adjusts the
  /// clock for this SVG document fragment, establishing a new current time.
  ///
  /// If `setCurrentTime()` is called before the document timeline has begun
  /// (for example, by script running in a  element before the document's
  /// `SVGLoad` event is dispatched), then the value of seconds in the last
  /// invocation of the method gives the time that the document will seek to
  /// once the document timeline has begun.
  external void setCurrentTime(num seconds);

  /// The **`x`** read-only property of the [SVGSVGElement] interface describes
  /// the horizontal coordinate of the position of that SVG as an
  /// [SVGAnimatedLength]. When an  is nested within another `<svg>`, the
  /// horizontal coordinate is a length in the user coordinate system that is
  /// the given distance from the origin of the user coordinate system along the
  /// x-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `x` geometric attribute. The default value is
  /// `0`. The `x` attribute has no effect on outermost `<svg>` elements; only
  /// one nested ones. The CSS `x` property takes precedence over the `<svg>`
  /// element's `x` attribute, so the value may not reflect the element's
  /// appearance.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGSVGElement] interface describes
  /// the vertical coordinate of the position of that SVG as an
  /// [SVGAnimatedLength]. When an  is nested within another `<svg>`, the
  /// vertical coordinate is a length in the user coordinate system that is the
  /// given distance from the origin of the user coordinate system along the
  /// y-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `y` geometric attribute. The default value is
  /// `0`. The `y` attribute has no effect on outermost `<svg>` elements; only
  /// on nested ones. The CSS `y` property takes precedence over the `<svg>`
  /// element's `y` attribute, so the value may not reflect the element's
  /// appearance.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGSVGElement] interface
  /// describes the horizontal size of element as an [SVGAnimatedLength]. It
  /// reflects the  element's `width` attribute, which may not be the SVG's
  /// rendered width.
  ///
  /// The CSS `width` property takes precedence over the `<svg>` element's
  /// `width` attribute, so the value may not reflect the element's appearance.
  /// If both the `viewBox` and `width` attributes are omitted, the `width`
  /// property reflects that actual width.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGSVGElement] interface
  /// describes the vertical size of element as an [SVGAnimatedLength]. It
  /// reflects the  element's `height` attribute, which may not be the SVG's
  /// rendered height.
  ///
  /// The CSS `height` property takes precedence over the `<svg>` element's
  /// `height` attribute, so the value may not reflect the element's appearance.
  /// If both the `viewBox` and `height` attributes are omitted, the `height`
  /// property reflects that actual height.
  external SVGAnimatedLength get height;

  /// The **`currentScale`** property of the [SVGSVGElement] interface reflects
  /// the current scale factor relative to the initial view to take into account
  /// user magnification and panning operations on the outermost  element.
  ///
  /// DOM attributes `currentScale` and `currentTranslate` are equivalent to the
  /// 2×3 matrix `[a b c d e f] = [currentScale 0 0 currentScale
  /// currentTranslate.x currentTranslate.y]`. If "magnification" is enabled
  /// (i.e., `zoomAndPan="magnify"`), then the effect is as if an extra
  /// transformation were placed at the outermost level on the SVG document
  /// fragment (i.e., outside the outermost  element).
  ///
  /// If the  element is not at the outermost level, then `currentScale` is
  /// always `1` and setting it has no effect.
  external double get currentScale;
  external set currentScale(num value);

  /// The **`currentTranslate`** read-only property of the [SVGSVGElement]
  /// interface reflects the translation factor that takes into account user
  /// "magnification" corresponding to an outermost  element.
  ///
  /// If the  element is not at the outermost level, then `currentTranslate` is
  /// always `{ x: 0, y: 0 }` and is read-only. Otherwise, it is writable.
  external DOMPointReadOnly get currentTranslate;

  /// The **`viewBox`** read-only property of the [SVGSVGElement] interface
  /// reflects the  element's `viewBox` attribute as an [SVGAnimatedRect].
  ///
  /// The property describes the `<svg>` element's `<viewBox>` attribute, which
  /// is used to defined the x-coordinate, y-coordinate, width, and height of an
  /// `<svg>` element. The [SVGAnimatedRect.baseVal] and
  /// [SVGAnimatedRect.animVal] properties are both [SVGRect] objects, or `null`
  /// if the `viewBox` is not defined. These objects' components my differ from
  /// the [SVGSVGElement.x], [SVGSVGElement.y], [SVGSVGElement.width] and
  /// [SVGSVGElement.height] properties, as the `x`, `y`, `width`, and `height`
  /// attributes take precedence over the `viewBox` attribute.
  ///
  /// For non-nested SVG elements, the values of the CSS `x`, `y`, `width`, and
  /// `height` properties take precedence over any element attributes, so the
  /// values defined by the `viewBox` may not be reflected in the element's
  /// appearance.
  external SVGAnimatedRect get viewBox;

  /// The **`preserveAspectRatio`** read-only property of the [SVGSVGElement]
  /// interface reflects the `preserveAspectRatio` attribute of the given
  /// element. It defines how the SVG element's content should be scaled to fit
  /// the given space, preserving its aspect ratio.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external EventHandler get onafterprint;
  external set onafterprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeprint(EventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external EventHandler get onhashchange;
  external set onhashchange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onoffline;
  external set onoffline(EventHandler value);
  external EventHandler get ononline;
  external set ononline(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagehide(EventHandler value);
  external EventHandler get onpagereveal;
  external set onpagereveal(EventHandler value);
  external EventHandler get onpageshow;
  external set onpageshow(EventHandler value);
  external EventHandler get onpageswap;
  external set onpageswap(EventHandler value);
  external EventHandler get onpopstate;
  external set onpopstate(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onstorage;
  external set onstorage(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunload;
  external set onunload(EventHandler value);
  external EventHandler get ongamepadconnected;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set ongamepaddisconnected(EventHandler value);
}

/// The **`SVGGElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGGElement).
extension type SVGGElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGGElement] using the tag 'g'.
  SVGGElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'g',
        );
}

/// The **`SVGDefsElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGDefsElement).
extension type SVGDefsElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGDefsElement] using the tag 'defs'.
  SVGDefsElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'defs',
        );
}

/// The **`SVGDescElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGDescElement).
extension type SVGDescElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGDescElement] using the tag 'desc'.
  SVGDescElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'desc',
        );
}

/// The **`SVGMetadataElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGMetadataElement).
extension type SVGMetadataElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGMetadataElement] using the tag 'metadata'.
  SVGMetadataElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'metadata',
        );
}

/// The **`SVGTitleElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTitleElement).
extension type SVGTitleElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGTitleElement] using the tag 'title'.
  SVGTitleElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'title',
        );
}

/// The **`SVGSymbolElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement).
extension type SVGSymbolElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGSymbolElement] using the tag 'symbol'.
  SVGSymbolElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'symbol',
        );

  /// The **`viewBox`** read-only property of the [SVGSymbolElement] interface
  /// reflects the `viewBox` attribute of the given  element.
  external SVGAnimatedRect get viewBox;

  /// The **`preserveAspectRatio`** read-only property of the [SVGSymbolElement]
  /// interface reflects the `preserveAspectRatio` attribute of the given
  /// element. It defines how the `symbol`'s content should be scaled to fit the
  /// given space, preserving its aspect ratio.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement).
extension type SVGUseElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGUseElement] using the tag 'use'.
  SVGUseElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'use',
        );

  /// The **`x`** read-only property of the [SVGUseElement] interface describes
  /// the x-axis coordinate of the start point of the referenced element as an
  /// [SVGAnimatedLength]. It reflects the computed value of the `x` attribute
  /// on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the top-left
  /// corner of the referenced element in the user coordinate system.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGUseElement] interface describes
  /// the y-axis coordinate of the start point of the referenced element as an
  /// [SVGAnimatedLength]. It reflects the computed value of the `y` attribute
  /// on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the top-left
  /// corner of the referenced element in the user coordinate system.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGUseElement] interface
  /// describes the width of the referenced element as an [SVGAnimatedLength].
  /// It reflects the computed value of the `width` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the width of the referenced element
  /// in the user coordinate system.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGUseElement] interface
  /// describes the height of the referenced element as an [SVGAnimatedLength].
  /// It reflects the computed value of the `height` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the height of the referenced element
  /// in the user coordinate system.
  external SVGAnimatedLength get height;

  /// The **`href`** read-only property of the [SVGUseElement] interface
  /// reflects the `href` or   attribute of the given element.
  external SVGAnimatedString get href;
}

/// The **`SVGSwitchElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGSwitchElement).
extension type SVGSwitchElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGSwitchElement] using the tag 'switch'.
  SVGSwitchElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'switch',
        );
}

/// The **`SVGStyleElement`** interface corresponds to the SVG  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement).
extension type SVGStyleElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGStyleElement] using the tag 'style'.
  SVGStyleElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'style',
        );

  /// The **`SVGStyleElement.type`** property returns the type of the current
  /// style.
  /// The value reflects the associated SVG `<style>` element's
  /// [`type`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style#type)
  /// attribute.
  ///
  /// Authors should not use this property or rely on the value.
  external String get type;
  external set type(String value);

  /// The **`SVGStyleElement.media`** property is a media query string
  /// corresponding to the
  /// [`media`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style#media)
  /// attribute of the given SVG style element.
  ///
  /// The query must be matched for the style to apply.
  external String get media;
  external set media(String value);

  /// The **`SVGStyleElement.title`** property is a string corresponding to the
  /// [`title`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style#title)
  /// attribute of the given SVG style element.
  /// It may be used to select between
  /// [alternate style sheets](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel/alternate_stylesheet).
  external String get title;
  external set title(String value);

  /// The **`SVGStyleElement.sheet`** read-only property returns the
  /// [CSSStyleSheet] corresponding to the given SVG style element, or `null` if
  /// there is none.
  external CSSStyleSheet? get sheet;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform).
extension type SVGTransform._(JSObject _) implements JSObject {
  static const int SVG_TRANSFORM_UNKNOWN = 0;

  static const int SVG_TRANSFORM_MATRIX = 1;

  static const int SVG_TRANSFORM_TRANSLATE = 2;

  static const int SVG_TRANSFORM_SCALE = 3;

  static const int SVG_TRANSFORM_ROTATE = 4;

  static const int SVG_TRANSFORM_SKEWX = 5;

  static const int SVG_TRANSFORM_SKEWY = 6;

  /// The `setMatrix()` method of the [SVGTransform] interface sets the
  /// transform type to `SVG_TRANSFORM_MATRIX`, with parameter `matrix` defining
  /// the new transformation.
  ///
  /// Note that the values from the parameter `matrix` are copied, meaning
  /// changes to the `matrix` object after calling this method will not affect
  /// the transformation.
  external void setMatrix([DOMMatrix2DInit matrix]);

  /// The `setTranslate()` method of the [SVGTransform] interface sets the
  /// transform type to `SVG_TRANSFORM_TRANSLATE`, with parameters `tx` and `ty`
  /// defining the translation amounts.
  external void setTranslate(
    num tx,
    num ty,
  );

  /// The `setScale()` method of the [SVGTransform] interface sets the transform
  /// type to `SVG_TRANSFORM_SCALE`, with parameters `sx` and `sy` defining the
  /// scale amounts.
  external void setScale(
    num sx,
    num sy,
  );

  /// The `setRotate()` method of the [SVGTransform] interface sets the
  /// transform type to `SVG_TRANSFORM_ROTATE`, with parameter `angle` defining
  /// the rotation angle and parameters `cx` and `cy` defining the optional
  /// center of rotation.
  external void setRotate(
    num angle,
    num cx,
    num cy,
  );

  /// The `setSkewX()` method of the [SVGTransform] interface sets the transform
  /// type to `SVG_TRANSFORM_SKEWX`, with parameter `angle` defining the amount
  /// of skew along the X-axis.
  external void setSkewX(num angle);

  /// The `setSkewY()` method of the [SVGTransform] interface sets the transform
  /// type to `SVG_TRANSFORM_SKEWY`, with parameter `angle` defining the amount
  /// of skew along the Y-axis.
  external void setSkewY(num angle);

  /// The **`type`** read-only property of the [SVGTransform] interface
  /// represents the `type` of transformation applied, specified by one of the
  /// `SVG_TRANSFORM_*` constants defined on this interface.
  external int get type;

  /// The **`matrix`** read-only property of the [SVGTransform] interface
  /// represents the transformation matrix that corresponds to the
  /// transformation `type`.
  ///
  /// In case the `matrix` object is changed directly (i.e., without using the
  /// methods on the `SVGTransform` interface itself) then the `type` of the
  /// `SVGTransform` changes to `SVG_TRANSFORM_MATRIX`.
  ///
  /// - For `SVG_TRANSFORM_MATRIX`, the matrix contains the a, b, c, d, e, f
  ///   values supplied by the user.
  ///
  /// - For `SVG_TRANSFORM_TRANSLATE`, e and f represent the translation amounts
  ///   (a=1, b=0, c=0 and d=1).
  ///
  /// - For `SVG_TRANSFORM_SCALE`, a and d represent the scale amounts (b=0,
  ///   c=0, e=0 and f=0).
  ///
  /// - For `SVG_TRANSFORM_SKEWX` and `SVG_TRANSFORM_SKEWY`, a, b, c and d
  ///   represent the matrix which will result in the given skew (e=0 and f=0).
  ///
  /// - For `SVG_TRANSFORM_ROTATE`, a, b, c, d, e and f together represent the
  ///   matrix which will result in the given rotation. When the rotation is
  ///   around the center point (0, 0), e and f will be zero.
  external DOMMatrix get matrix;

  /// The **`angle`** read-only property of the [SVGTransform] interface
  /// represents the angle of the transformation in degrees.
  ///
  /// For `SVG_TRANSFORM_ROTATE`, `SVG_TRANSFORM_SKEWX`, and
  /// `SVG_TRANSFORM_SKEWY`, `angle` reflects the transformation's rotation or
  /// skewing angle.
  ///
  /// For `SVG_TRANSFORM_MATRIX`, `SVG_TRANSFORM_TRANSLATE` and
  /// `SVG_TRANSFORM_SCALE`, `angle` will be zero.
  external double get angle;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList).
extension type SVGTransformList._(JSObject _) implements JSObject {
  /// The `clear()` method of the [SVGTransformList] interface clears all
  /// existing current items from the list, with the result being an empty list.
  external void clear();

  /// The `initialize()` method of the [SVGTransformList] interface clears all
  /// existing current items from the list and re-initializes the list to hold
  /// the single item specified by the parameter.
  ///
  /// If the inserted item is already in a list, it is removed from its previous
  /// list before it is inserted into this list. The inserted item is the item
  /// itself and not a copy.
  external SVGTransform initialize(SVGTransform newItem);

  /// The `getItem()` method of the [SVGTransformList] interface returns the
  /// specified item from the list.
  ///
  /// The returned item is the item itself and not a copy. Any changes made to
  /// the item are immediately reflected in the list.
  ///
  /// The first item is indexed at `0`.
  external SVGTransform getItem(int index);

  /// The `insertItemBefore()` method of the [SVGTransformList] interface
  /// inserts a new item into the list at the specified position.
  ///
  /// The first item is indexed at `0`. The inserted item is the item itself and
  /// not a copy.
  ///
  /// - If `newItem` is already in a list, it is removed from its previous list
  ///   before it is inserted into this list.
  ///
  /// - If the item is already in this list, note that the `index` of the item
  ///   to insert before is before the removal of the item.
  ///
  /// - If the `index` is equal to `0`, then the new item is inserted at the
  ///   front of the list.
  ///
  /// - If the `index` is greater than or equal to
  ///   [SVGTransformList.numberOfItems], then the new item is appended to the
  ///   end of the list.
  external SVGTransform insertItemBefore(
    SVGTransform newItem,
    int index,
  );

  /// The `replaceItem()` method of the [SVGTransformList] interface replaces an
  /// existing item in the list with a new item.
  ///
  /// The inserted item is the item itself and not a copy.
  ///
  /// - If `newItem` is already in a list, it is removed from its previous list
  ///   before it is inserted into this list.
  ///
  /// - If the item is already in this list, note that the `index` of the item
  ///   to replace is before the removal of the item.
  external SVGTransform replaceItem(
    SVGTransform newItem,
    int index,
  );

  /// The `removeItem()` method of the [SVGTransformList] interface removes an
  /// existing item from the list.
  external SVGTransform removeItem(int index);

  /// The `appendItem()` method of the [SVGTransformList] interface inserts a
  /// new item at the end of the list.
  ///
  /// The inserted item is the item itself and not a copy.
  ///
  /// - If `newItem` is already in a list, it is removed from its previous list
  ///   before it is inserted into this list.
  external SVGTransform appendItem(SVGTransform newItem);
  external void operator []=(
    int index,
    SVGTransform newItem,
  );

  /// The `createSVGTransformFromMatrix()` method of the [SVGTransformList]
  /// interface creates an [SVGTransform] object which is initialized to a
  /// transform of type `SVG_TRANSFORM_MATRIX` and whose values are the given
  /// matrix.
  ///
  /// The values from the parameter matrix are copied; the matrix parameter is
  /// not adopted as `SVGTransform::matrix`.
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);

  /// The `consolidate()` method of the [SVGTransformList] interface
  /// consolidates the list of separate [SVGTransform] objects by multiplying
  /// the equivalent transformation matrices together to result in a list
  /// consisting of a single `SVGTransform` object of type
  /// `SVG_TRANSFORM_MATRIX`.
  ///
  /// The consolidation operation creates a new `SVGTransform` object as the
  /// first and only item in the list.
  ///
  /// The returned item is the item itself and not a copy. Any changes made to
  /// the item are immediately reflected in the list.
  external SVGTransform? consolidate();

  /// The **`length`** read-only property of the [SVGTransformList] interface
  /// represents the number of items in the list.
  external int get length;

  /// The **`numberOfItems`** read-only property of the [SVGTransformList]
  /// interface represents the number of items in the list.
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList).
extension type SVGAnimatedTransformList._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedTransformList]
  /// interface represents the non-animated value of the `transform` attribute
  /// of an SVG element.
  ///
  /// This property reflects the SVG element's `transform`, the  or  element's
  /// `gradientTransform` attribute, or the  element's `patternTransform`
  /// attribute value as a readonly [SVGTransformList], providing access to a
  /// static [SVGTransform] for each transform function set on the SVG element.
  external SVGTransformList get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedTransformList]
  /// interface represents the animated value of the `transform` attribute of an
  /// SVG element.
  ///
  /// This property reflects the SVG element's `transform`, the  or  element's
  /// `gradientTransform` attribute, or the  element's `patternTransform`
  /// attribute as a readonly [SVGTransformList], providing access to the
  /// dynamically updated [SVGTransform] for each transform function during an
  /// animation. If no animation is active, this property will return the same
  /// value as `baseVal`.
  external SVGTransformList get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio).
extension type SVGPreserveAspectRatio._(JSObject _) implements JSObject {
  static const int SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;

  static const int SVG_PRESERVEASPECTRATIO_NONE = 1;

  static const int SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;

  static const int SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;

  static const int SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;

  static const int SVG_PRESERVEASPECTRATIO_XMINYMID = 5;

  static const int SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;

  static const int SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;

  static const int SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;

  static const int SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;

  static const int SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;

  static const int SVG_MEETORSLICE_UNKNOWN = 0;

  static const int SVG_MEETORSLICE_MEET = 1;

  static const int SVG_MEETORSLICE_SLICE = 2;

  /// The **`align`** read-only property of the [SVGPreserveAspectRatio]
  /// interface reflects the type of the alignment value as specified by one of
  /// the `SVG_PRESERVEASPECTRATIO_*` constants defined on this interface.
  external int get align;
  external set align(int value);

  /// The **`meetOrSlice`** read-only property of the [SVGPreserveAspectRatio]
  /// interface reflects the type of the meet-or-slice value as specified by one
  /// of the `SVG_MEETORSLICE_*` constants defined on this interface.
  external int get meetOrSlice;
  external set meetOrSlice(int value);
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio).
extension type SVGAnimatedPreserveAspectRatio._(JSObject _)
    implements JSObject {
  /// The **`baseVal`** read-only property of the
  /// [SVGAnimatedPreserveAspectRatio] interface represents the base
  /// (non-animated) value of the `preserveAspectRatio` attribute of an SVG
  /// element.
  external SVGPreserveAspectRatio get baseVal;

  /// The **`animVal`** read-only property of the
  /// [SVGAnimatedPreserveAspectRatio] interface represents the value of the
  /// `preserveAspectRatio` attribute of an SVG element after any animations or
  /// transformations are applied.
  external SVGPreserveAspectRatio get animVal;
}

/// The **`SVGPathElement`** interface corresponds to the  element.
///
/// > [!NOTE]
/// > In SVG 2 the `getPathSegAtLength()` and `createSVGPathSeg*` methods were
/// > removed and the `pathLength` property and the `getTotalLength()` and
/// > `getPointAtLength()` methods were moved to [SVGGeometryElement].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement).
extension type SVGPathElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGPathElement] using the tag 'path'.
  SVGPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'path',
        );
}

/// The `SVGRectElement` interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement).
extension type SVGRectElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGRectElement] using the tag 'rect'.
  SVGRectElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'rect',
        );

  /// The **`x`** read-only property of the [SVGRectElement] interface describes
  /// the horizontal coordinate of the position of an SVG rectangle as a
  /// [SVGAnimatedLength]. The `<coordinate>` is a length in the user coordinate
  /// system that is the given distance from the origin of the user coordinate
  /// system along the x-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `x` geometric attribute value. The CSS `x`
  /// property takes precedence over the SVG `x` geometric attribute, so the
  /// value may not reflect the element's appearance. The default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGRectElement] interface describes
  /// the vertical coordinate of the position of an SVG rectangle as a
  /// [SVGAnimatedLength]. The `<coordinate>` is a length in the user coordinate
  /// system that is the given distance from the origin of the user coordinate
  /// system along the y-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `y` geometric attribute value. The CSS `y`
  /// property takes precedence over the SVG `y` attribute, so the value may not
  /// reflect the element's appearance. The default value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGRectElement] interface
  /// describes the horizontal size of an SVG rectangle as a
  /// [SVGAnimatedLength]. The length is in user coordinate system units along
  /// the x-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `width` presentational attribute. The CSS
  /// `width` property takes precedence over the SVG `width` presentational
  /// attribute, so the value may not reflect the elements actual size. The
  /// default value is `0`.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGRectElement] interface
  /// describes the vertical size of an SVG rectangle as a [SVGAnimatedLength].
  /// The length is in user coordinate system units along the y-axis. Its syntax
  /// is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `height` presentational attribute. The CSS
  /// `height` property takes precedence over the SVG `height` presentational
  /// attribute, so the value may not reflect the elements actual size. The
  /// default value is `0`.
  external SVGAnimatedLength get height;

  /// The **`rx`** read-only property of the [SVGRectElement] interface
  /// describes the horizontal curve of the corners of an SVG rectangle as a
  /// [SVGAnimatedLength]. The length is in user coordinate system units along
  /// the x-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `rx` presentational attribute. The CSS `rx`
  /// property takes precedence over the SVG `rx` presentational attribute, so
  /// the value may not reflect the actual size of the rounded corners. The
  /// default value is `0`, which draws a rectangle with square corners.
  external SVGAnimatedLength get rx;

  /// The **`ry`** read-only property of the [SVGRectElement] interface
  /// describes the vertical curve of the corners of an SVG rectangle as a
  /// [SVGAnimatedLength]. The length is in user coordinate system units along
  /// the y-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `ry` presentational attribute. The CSS `ry`
  /// property takes precedence over the SVG `ry` presentational attribute, so
  /// the value may not reflect the actual size of the rounded corners. The
  /// default value is `0`, which draws a rectangle with square corners.
  external SVGAnimatedLength get ry;
}

/// The **`SVGCircleElement`** interface is an interface for the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement).
extension type SVGCircleElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGCircleElement] using the tag 'circle'.
  SVGCircleElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'circle',
        );

  /// The **`cx`** read-only property of the [SVGCircleElement] interface
  /// reflects the `cx` attribute of a  element and by that defines the
  /// x-coordinate of the circle's center.<
  ///
  /// If unspecified, the effect is as if the value is set to `0`.
  external SVGAnimatedLength get cx;

  /// The **`cy`** read-only property of the [SVGCircleElement] interface
  /// reflects the `cy` attribute of a  element and by that defines the
  /// y-coordinate of the circle's center.
  ///
  /// If unspecified, the effect is as if the value is set to `0`.
  external SVGAnimatedLength get cy;

  /// The **`r`** read-only property of the [SVGCircleElement] interface
  /// reflects the `r` attribute of a  element and by that defines the radius of
  /// the circle.
  ///
  /// If unspecified, the effect is as if the value is set to `0`.
  external SVGAnimatedLength get r;
}

/// The **`SVGEllipseElement`** interface provides access to the properties of
/// elements.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement).
extension type SVGEllipseElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGEllipseElement] using the tag 'ellipse'.
  SVGEllipseElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'ellipse',
        );

  /// The **`cx`** read-only property of the [SVGEllipseElement] interface
  /// describes the x-axis coordinate of the center of the ellipse as an
  /// [SVGAnimatedLength]. It reflects the computed value of the `cx` attribute
  /// on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the ellipse's
  /// center in the user coordinate system.
  external SVGAnimatedLength get cx;

  /// The **`cy`** read-only property of the [SVGEllipseElement] interface
  /// describes the y-axis coordinate of the center of the ellipse as an
  /// [SVGAnimatedLength]. It reflects the computed value of the `cy` attribute
  /// on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the ellipse's
  /// center in the user coordinate system.
  external SVGAnimatedLength get cy;

  /// The **`rx`** read-only property of the [SVGEllipseElement] interface
  /// describes the x-axis radius of the ellipse as an [SVGAnimatedLength]. It
  /// reflects the computed value of the `rx` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the radius of the ellipse along the
  /// x-axis in the user coordinate system.
  external SVGAnimatedLength get rx;

  /// The **`ry`** read-only property of the [SVGEllipseElement] interface
  /// describes the y-axis radius of the ellipse as an [SVGAnimatedLength]. It
  /// reflects the computed value of the `ry` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the radius of the ellipse along the
  /// y-axis in the user coordinate system.
  external SVGAnimatedLength get ry;
}

/// The **`SVGLineElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement).
extension type SVGLineElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGLineElement] using the tag 'line'.
  SVGLineElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'line',
        );

  /// The **`x1`** read-only property of the [SVGLineElement] interface
  /// describes the start of the SVG line along the x-axis as an
  /// [SVGAnimatedLength]. It reflects the  element's `x1` geometric attribute.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is that start position as a length
  /// along the x-axis in user coordinate system units.
  external SVGAnimatedLength get x1;

  /// The **`y1`** read-only property of the [SVGLineElement] interface
  /// describes the start of the SVG line along the y-axis as an
  /// [SVGAnimatedLength]. It reflects the  element's `y1` geometric attribute.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is that start position as a length
  /// along the y-axis in user coordinate system units.
  external SVGAnimatedLength get y1;

  /// The **`x2`** read-only property of the [SVGLineElement] interface
  /// describes the x-axis coordinate value of the end of a line as an
  /// [SVGAnimatedLength]. It reflects the  element's `x2` geometric attribute.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is that end position along the x-axis
  /// in user coordinate system units.
  external SVGAnimatedLength get x2;

  /// The **`y2`** read-only property of the [SVGLineElement] interface
  /// describes the v-axis coordinate value of the end of a line as an
  /// [SVGAnimatedLength]. It reflects the  element's `y2` geometric attribute.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is that end position along the y-axis
  /// in user coordinate system units.
  external SVGAnimatedLength get y2;
}

/// The **`SVGPointList`** interface represents a list of [SVGPoint] objects.
///
/// An `SVGPointList` can be designated as read-only, which means that attempts
/// to modify the object will result in an exception being thrown.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList).
extension type SVGPointList._(JSObject _) implements JSObject {
  /// The **`clear()`** method of the [SVGPointList] interface removes all items
  /// from the list.
  external void clear();

  /// The **`initialize()`** method of the [SVGPointList] interface clears the
  /// list then adds a single new [SVGPoint] object to the list.
  external DOMPoint initialize(DOMPoint newItem);

  /// The **`getItem()`** method of the [SVGPointList] interface gets one item
  /// from the list at the specified index.
  external DOMPoint getItem(int index);

  /// The **`insertItemBefore()`** method of the [SVGPointList] interface
  /// inserts a [SVGPoint] before another item in the list.
  external DOMPoint insertItemBefore(
    DOMPoint newItem,
    int index,
  );

  /// The **`replaceItem()`** method of the [SVGPointList] interface replaces a
  /// [SVGPoint] in the list.
  external DOMPoint replaceItem(
    DOMPoint newItem,
    int index,
  );

  /// The **`removeItem()`** method of the [SVGPointList] interface removes a
  /// [SVGPoint] from the list.
  external DOMPoint removeItem(int index);

  /// The **`appendItem()`** method of the [SVGPointList] interface adds a
  /// [SVGPoint] to the end of the list.
  external DOMPoint appendItem(DOMPoint newItem);
  external void operator []=(
    int index,
    DOMPoint newItem,
  );

  /// The **`length`** read-only property of the [SVGPointList] interface
  /// returns the number of items in the list.
  external int get length;

  /// The **`numberOfItems`** read-only property of the [SVGPointList] interface
  /// returns the number of items in the list.
  external int get numberOfItems;
}

/// The **`SVGPolylineElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement).
extension type SVGPolylineElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGPolylineElement] using the tag 'polyline'.
  SVGPolylineElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'polyline',
        );

  /// The **`points`** read-only property of the [SVGPolylineElement] interface
  /// reflects the base (i.e., static) value of the element's `points`
  /// attribute. Modifications via the [SVGPointList] object are reflected in
  /// the `points` attribute, and vice versa.
  external SVGPointList get points;

  /// The **`animatedPoints`** read-only property of the [SVGPolylineElement]
  /// interface reflects the animated value of the element's `points` attribute.
  /// If the `points` attribute is not being animated, it contains the same
  /// value as the `points` property.
  external SVGPointList get animatedPoints;
}

/// The **`SVGPolygonElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement).
extension type SVGPolygonElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGPolygonElement] using the tag 'polygon'.
  SVGPolygonElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'polygon',
        );

  /// The **`points`** read-only property of the [SVGPolygonElement] interface
  /// reflects the base (i.e., static) value of the element's `points`
  /// attribute. Modifications via the [SVGPointList] object are reflected in
  /// the `points` attribute, and vice versa.
  external SVGPointList get points;

  /// The **`animatedPoints`** read-only property of the [SVGPolygonElement]
  /// interface reflects the animated value of the element's `points` attribute.
  /// If the `points` attribute is not being animated, it contains the same
  /// value as the `points` property.
  external SVGPointList get animatedPoints;
}

/// The **`SVGTextContentElement`** interface is implemented by elements that
/// support rendering child text content. It is inherited by various
/// text-related interfaces, such as [SVGTextElement], [SVGTSpanElement],
/// [SVGTRefElement], and [SVGTextPathElement].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement).
extension type SVGTextContentElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  static const int LENGTHADJUST_UNKNOWN = 0;

  static const int LENGTHADJUST_SPACING = 1;

  static const int LENGTHADJUST_SPACINGANDGLYPHS = 2;

  /// The `getNumberOfChars()` method of the [SVGTextContentElement] interface
  /// represents the total number of addressable characters available for
  /// rendering within the current element, regardless of whether they will be
  /// rendered.
  external int getNumberOfChars();

  /// The `getComputedTextLength()` method of the [SVGTextContentElement]
  /// interface represents the computed length for the text within the element.
  external double getComputedTextLength();

  /// The `getSubStringLength()` method of the [SVGTextContentElement] interface
  /// represents the computed length of the formatted text advance distance for
  /// a substring of text within the element.
  ///
  /// Note that this method only accounts for the widths of the glyphs in the
  /// substring and any extra spacing inserted by the CSS
  /// [`letter-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
  /// and
  /// [`word-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/word-spacing)
  /// properties. Visual spacing adjustments made by the
  /// [`x`](https://developer.mozilla.org/en-US/docs/Web/CSS/x) attribute are
  /// ignored.
  external double getSubStringLength(
    int charnum,
    int nchars,
  );

  /// The `getStartPositionOfChar()` method of the [SVGTextContentElement]
  /// interface returns the position of a typographic character after text
  /// layout has been performed.
  external DOMPoint getStartPositionOfChar(int charnum);

  /// The `getEndPositionOfChar()` method of the [SVGTextContentElement]
  /// interface returns the trailing position of a typographic character after
  /// text layout has been performed.
  external DOMPoint getEndPositionOfChar(int charnum);

  /// The `getExtentOfChar()` method of the [SVGTextContentElement] interface
  /// the represents computed tight bounding box of the glyph cell that
  /// corresponds to a given typographic character.
  external DOMRect getExtentOfChar(int charnum);

  /// The `getRotationOfChar()` method of the [SVGTextContentElement] interface
  /// the represents the rotation of a typographic character.
  external double getRotationOfChar(int charnum);

  /// The `getCharNumAtPosition()` method of the [SVGTextContentElement]
  /// interface represents the character which caused a text glyph to be
  /// rendered at a given position in the coordinate system. Because the
  /// relationship between characters and glyphs is not one-to-one, only the
  /// first character of the relevant typographic character is returned.
  ///
  /// If no character is found at the specified position, `-1` is returned.
  external int getCharNumAtPosition([DOMPointInit point]);
  external void selectSubString(
    int charnum,
    int nchars,
  );

  /// The **`textLength`** read-only property of the [SVGTextContentElement]
  /// interface reflects the `textLength` attribute of the given element.
  external SVGAnimatedLength get textLength;

  /// The **`lengthAdjust`** read-only property of the [SVGTextContentElement]
  /// interface reflects the `lengthAdjust` attribute of the given element. It
  /// takes one of the `LENGTHADJUST_*` constants defined on this interface.
  external SVGAnimatedEnumeration get lengthAdjust;
}

/// The **`SVGTextPositioningElement`** interface is implemented by elements
/// that support attributes that position individual text glyphs. It is
/// inherited by [SVGTextElement], [SVGTSpanElement], and [SVGTRefElement].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement).
extension type SVGTextPositioningElement._(JSObject _)
    implements SVGTextContentElement, JSObject {
  /// The **`x`** read-only property of the [SVGTextPositioningElement]
  /// interface describes the x-axis coordinate of the [SVGTextElement],
  /// [SVGTSpanElement], or [SVGTRefElement] as an [SVGAnimatedLengthList]. It
  /// reflects the `x` attribute's horizontal position of the individual text
  /// glyphs in the user coordinate system.
  ///
  /// The attribute value is a list of
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric values
  /// in the [SVGAnimatedLengthList.baseVal] reflect the x-coordinates in the
  /// user coordinate system.
  external SVGAnimatedLengthList get x;

  /// The **`y`** read-only property of the [SVGTextPositioningElement]
  /// interface describes the y-axis coordinate of the [SVGTextElement],
  /// [SVGTSpanElement], or [SVGTRefElement] as an [SVGAnimatedLengthList]. It
  /// reflects the `y` attribute's vertical position of the individual text
  /// glyphs in the user coordinate system.
  ///
  /// The attribute value is a list of
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric values
  /// in the [SVGAnimatedLengthList.baseVal] reflect the y-coordinates in the
  /// user coordinate system.
  external SVGAnimatedLengthList get y;

  /// The **`dx`** read-only property of the [SVGTextPositioningElement]
  /// interface describes the x-axis coordinate of the [SVGTextElement],
  /// [SVGTSpanElement], or [SVGTRefElement] as an [SVGAnimatedLengthList]. It
  /// reflects the `dx` attribute's horizontal displacement of the individual
  /// text glyphs in the user coordinate system.
  ///
  /// The attribute value is a list of
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric values
  /// in the [SVGAnimatedLengthList.baseVal] reflect the horizontal
  /// displacements in the user coordinate system.
  external SVGAnimatedLengthList get dx;

  /// The **`dy`** read-only property of the [SVGTextPositioningElement]
  /// interface describes the y-axis coordinate of the [SVGTextElement],
  /// [SVGTSpanElement], or [SVGTRefElement] as an [SVGAnimatedLengthList]. It
  /// reflects the `dy` attribute's vertical displacement of the individual text
  /// glyphs in the user coordinate system.
  ///
  /// The attribute value is a list of
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric values
  /// in the [SVGAnimatedLengthList.baseVal] reflect the vertical displacements
  /// in the user coordinate system.
  external SVGAnimatedLengthList get dy;

  /// The **`rotate`** read-only property of the [SVGTextPositioningElement]
  /// interface reflects the rotation of individual text glyphs, as specified by
  /// the `rotate` attribute of the given element.
  external SVGAnimatedNumberList get rotate;
}

/// The **`SVGTextElement`** interface corresponds to the  elements.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement).
extension type SVGTextElement._(JSObject _)
    implements SVGTextPositioningElement, JSObject {
  /// Creates an [SVGTextElement] using the tag 'text'.
  SVGTextElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'text',
        );
}

/// The **`SVGTSpanElement`** interface represents a  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTSpanElement).
extension type SVGTSpanElement._(JSObject _)
    implements SVGTextPositioningElement, JSObject {
  /// Creates an [SVGTSpanElement] using the tag 'tspan'.
  SVGTSpanElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'tspan',
        );
}

/// The **`SVGTextPathElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement).
extension type SVGTextPathElement._(JSObject _)
    implements SVGTextContentElement, JSObject {
  /// Creates an [SVGTextPathElement] using the tag 'textPath'.
  SVGTextPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'textPath',
        );

  static const int TEXTPATH_METHODTYPE_UNKNOWN = 0;

  static const int TEXTPATH_METHODTYPE_ALIGN = 1;

  static const int TEXTPATH_METHODTYPE_STRETCH = 2;

  static const int TEXTPATH_SPACINGTYPE_UNKNOWN = 0;

  static const int TEXTPATH_SPACINGTYPE_AUTO = 1;

  static const int TEXTPATH_SPACINGTYPE_EXACT = 2;

  /// The **`startOffset`** read-only property of the [SVGTextPathElement]
  /// interface reflects the X component of the `startOffset` attribute of the
  /// given , which defines an offset from the start of the path for the initial
  /// current text position along the path after converting the path to the
  /// `<textPath>` element's coordinate system.
  external SVGAnimatedLength get startOffset;

  /// The **`method`** read-only property of the [SVGTextPathElement] interface
  /// reflects the `method` attribute of the given  element. It takes one of the
  /// [`TEXTPATH_METHODTYPE_*`
  /// constants](/en-US/docs/Web/API/SVGTextPathElement#method_types) defined on
  /// this interface.
  external SVGAnimatedEnumeration get method;

  /// The **`spacing`** read-only property of the [SVGTextPathElement] interface
  /// reflects the `spacing` attribute of the given  element. It takes one of
  /// the [`TEXTPATH_SPACINGTYPE_*`
  /// constants](/en-US/docs/Web/API/SVGTextPathElement#spacing_types) defined
  /// on this interface.
  external SVGAnimatedEnumeration get spacing;

  /// The **`href`** read-only property of the [SVGTextPathElement] interface
  /// reflects the `href` attribute (or the deprecated  attribute) of the given
  /// element.
  external SVGAnimatedString get href;
}

/// The **`SVGImageElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement).
extension type SVGImageElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGImageElement] using the tag 'image'.
  SVGImageElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'image',
        );

  /// The **`x`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `x` attribute of the given
  /// element.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `y` attribute of the given
  /// element.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `width` attribute of the given
  /// element.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `height` attribute of the given
  /// element.
  external SVGAnimatedLength get height;

  /// The **`preserveAspectRatio`** read-only
  /// property of the [SVGImageElement] interface returns an
  /// [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// `preserveAspectRatio` attribute of the given
  /// element.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The **`href`** read-only property of the [SVGImageElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}

/// The **`SVGForeignObjectElement`** interface provides access to the
/// properties of  elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement).
extension type SVGForeignObjectElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGForeignObjectElement] using the tag 'foreignObject'.
  SVGForeignObjectElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'foreignObject',
        );

  /// The **`x`** read-only property of the [SVGForeignObjectElement] interface
  /// describes the x-axis coordinate of the `<foreignObject>` element. It
  /// reflects the computed value of the `x` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the
  /// `<foreignObject>` element in the user coordinate system.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGForeignObjectElement] interface
  /// describes the y-axis coordinate of the `<foreignObject>` element. It
  /// reflects the computed value of the `y` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the
  /// `<foreignObject>` element in the user coordinate system.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGForeignObjectElement]
  /// interface describes the width of the `<foreignObject>` element. It
  /// reflects the computed value of the `width` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the
  /// `<foreignObject>` element in the user coordinate system.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGForeignObjectElement]
  /// interface describes the height of the `<foreignObject>` element. It
  /// reflects the computed value of the `height` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the
  /// `<foreignObject>` element in the user coordinate system.
  external SVGAnimatedLength get height;
}

/// The **`SVGMarkerElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them. The  element defines the
/// graphics used for drawing marks on a shape.
///
/// The following properties and methods all return, or act on the attributes of
/// the  element represented by `SVGMarkerElement`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement).
extension type SVGMarkerElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGMarkerElement] using the tag 'marker'.
  SVGMarkerElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'marker',
        );

  static const int SVG_MARKERUNITS_UNKNOWN = 0;

  static const int SVG_MARKERUNITS_USERSPACEONUSE = 1;

  static const int SVG_MARKERUNITS_STROKEWIDTH = 2;

  static const int SVG_MARKER_ORIENT_UNKNOWN = 0;

  static const int SVG_MARKER_ORIENT_AUTO = 1;

  static const int SVG_MARKER_ORIENT_ANGLE = 2;

  /// The **`setOrientToAuto()`** method of the [SVGMarkerElement] interface
  /// sets the value of the `orient` attribute to `auto`.
  external void setOrientToAuto();

  /// The **`setOrientToAngle()`** method of the [SVGMarkerElement] interface
  /// sets the value of the `orient` attribute to the value in the [SVGAngle]
  /// passed in.
  external void setOrientToAngle(SVGAngle angle);

  /// The **`refX`** read-only property of the [SVGMarkerElement] interface
  /// returns an [SVGAnimatedLength] object containing the value of the `refX`
  /// attribute of the .
  external SVGAnimatedLength get refX;

  /// The **`refY`** read-only property of the [SVGMarkerElement] interface
  /// returns an [SVGAnimatedLength] object containing the value of the `refY`
  /// attribute of the .
  external SVGAnimatedLength get refY;

  /// The **`markerUnits`** read-only property of the [SVGMarkerElement]
  /// interface returns an [SVGAnimatedEnumeration] object. This object returns
  /// an integer which represents the keyword values that the `markerUnits`
  /// attribute accepts.
  external SVGAnimatedEnumeration get markerUnits;

  /// The **`markerWidth`** read-only property of the [SVGMarkerElement]
  /// interface returns an [SVGAnimatedLength] object containing the width of
  /// the  viewport as defined by the `markerWidth` attribute.
  external SVGAnimatedLength get markerWidth;

  /// The **`markerHeight`** read-only property of the [SVGMarkerElement]
  /// interface returns an [SVGAnimatedLength] object containing the height of
  /// the  viewport as defined by the `markerHeight` attribute.
  external SVGAnimatedLength get markerHeight;

  /// The **`orientType`** read-only property of the [SVGMarkerElement]
  /// interface returns an [SVGAnimatedEnumeration] object indicating whether
  /// the `orient` attribute is `auto`, an angle value, or something else.
  ///
  /// This _something else_ is most likely to be the keyword
  /// `auto-start-reverse` however the spec leaves it open for this to be other
  /// values. Unsupported values will generally be thrown away by the parser,
  /// leaving the value the default of `auto`.
  external SVGAnimatedEnumeration get orientType;

  /// The **`orientAngle`** read-only property of the [SVGMarkerElement]
  /// interface returns an [SVGAnimatedAngle] object containing the angle of the
  /// `orient` attribute.
  external SVGAnimatedAngle get orientAngle;
  external String get orient;
  external set orient(String value);

  /// The **`viewBox`** read-only property of the [SVGMarkerElement] interface
  /// returns an [SVGAnimatedRect] object which contains the values set by the
  /// `viewBox` attribute on the .
  external SVGAnimatedRect get viewBox;

  /// The **`preserveAspectRatio`** read-only property of the [SVGMarkerElement]
  /// interface returns an [SVGAnimatedPreserveAspectRatio] object containing
  /// the value of the `preserveAspectRatio` attribute of the .
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

/// The **`SVGGradient`** interface is a base interface used by
/// [SVGLinearGradientElement] and [SVGRadialGradientElement].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement).
extension type SVGGradientElement._(JSObject _)
    implements SVGElement, JSObject {
  static const int SVG_SPREADMETHOD_UNKNOWN = 0;

  static const int SVG_SPREADMETHOD_PAD = 1;

  static const int SVG_SPREADMETHOD_REFLECT = 2;

  static const int SVG_SPREADMETHOD_REPEAT = 3;

  /// The **`gradientUnits`** read-only property of the [SVGGradientElement]
  /// interface reflects the `gradientUnits` attribute of the given element. It
  /// takes one of the `SVG_UNIT_TYPE_*` constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get gradientUnits;

  /// The **`gradientTransform`** read-only property of the [SVGGradientElement]
  /// interface reflects the `gradientTransform` attribute of the given element.
  external SVGAnimatedTransformList get gradientTransform;

  /// The **`spreadMethod`** read-only property of the [SVGGradientElement]
  /// interface reflects the `spreadMethod` attribute of the given element. It
  /// takes one of the `SVG_SPREADMETHOD_*` constants defined on this interface.
  external SVGAnimatedEnumeration get spreadMethod;

  /// The **`href`** read-only property of the [SVGGradientElement] interface
  /// reflects the `href` or   attribute of the given element.
  external SVGAnimatedString get href;
}

/// The **`SVGLinearGradientElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement).
extension type SVGLinearGradientElement._(JSObject _)
    implements SVGGradientElement, JSObject {
  /// Creates an [SVGLinearGradientElement] using the tag 'linearGradient'.
  SVGLinearGradientElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'linearGradient',
        );

  /// The **`x1`** read-only property of the [SVGLinearGradientElement]
  /// interface describes the x-axis coordinate of the start point of the
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `x1` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the gradient's
  /// starting point in the user coordinate system.
  external SVGAnimatedLength get x1;

  /// The **`y1`** read-only property of the [SVGLinearGradientElement]
  /// interface describes the y-axis coordinate of the start point of the
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `y1` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the gradient's
  /// starting point in the user coordinate system.
  external SVGAnimatedLength get y1;

  /// The **`x2`** read-only property of the [SVGLinearGradientElement]
  /// interface describes the x-axis coordinate of the start point of the
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `x2` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the gradient's
  /// end point in the user coordinate system.
  external SVGAnimatedLength get x2;

  /// The **`y2`** read-only property of the [SVGLinearGradientElement]
  /// interface describes the y-axis coordinate of the start point of the
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `y2` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the gradient's
  /// end point in the user coordinate system.
  external SVGAnimatedLength get y2;
}

/// The **`SVGRadialGradientElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement).
extension type SVGRadialGradientElement._(JSObject _)
    implements SVGGradientElement, JSObject {
  /// Creates an [SVGRadialGradientElement] using the tag 'radialGradient'.
  SVGRadialGradientElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'radialGradient',
        );

  /// The **`cx`** read-only property of the [SVGRadialGradientElement]
  /// interface describes the x-axis coordinate of the center of the radial
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `cx` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the radial
  /// gradient's center in the user coordinate system.
  external SVGAnimatedLength get cx;

  /// The **`cy`** read-only property of the [SVGRadialGradientElement]
  /// interface describes the y-axis coordinate of the center of the radial
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `cy` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the radial
  /// gradient's center in the user coordinate system.
  external SVGAnimatedLength get cy;

  /// The **`r`** read-only property of the [SVGRadialGradientElement] interface
  /// describes the radius of the radial gradient as an [SVGAnimatedLength]. It
  /// reflects the computed value of the `r` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the radius of the radial gradient in
  /// the user coordinate system.
  external SVGAnimatedLength get r;

  /// The **`fx`** read-only property of the [SVGRadialGradientElement]
  /// interface describes the x-axis coordinate of the focal point of the radial
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `fx` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the focal point
  /// of the radial gradient in the user coordinate system.
  external SVGAnimatedLength get fx;

  /// The **`fy`** read-only property of the [SVGRadialGradientElement]
  /// interface describes the y-axis coordinate of the focal point of the radial
  /// gradient as an [SVGAnimatedLength]. It reflects the computed value of the
  /// `fy` attribute on the  element.
  ///
  /// The attribute value is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the focal point
  /// of the radial gradient in the user coordinate system.
  external SVGAnimatedLength get fy;
  external SVGAnimatedLength get fr;
}

/// The **`SVGStopElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement).
extension type SVGStopElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGStopElement] using the tag 'stop'.
  SVGStopElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'stop',
        );

  /// The **`offset`** read-only property of the [SVGStopElement] interface
  /// reflects the `offset` attribute of the given  element.
  external SVGAnimatedNumber get offset;
}

/// The **`SVGPatternElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement).
extension type SVGPatternElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGPatternElement] using the tag 'pattern'.
  SVGPatternElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'pattern',
        );

  /// The **`patternUnits`** read-only property of the [SVGPatternElement]
  /// interface reflects the `patternUnits` attribute of the given  element. It
  /// specifies the coordinate system for the pattern content and takes one of
  /// the constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get patternUnits;

  /// The **`patternContentUnits`** read-only property of the
  /// [SVGPatternElement] interface reflects the `patternContentUnits` attribute
  /// of the given  element. It specifies the coordinate system for the pattern
  /// content and takes one of the constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get patternContentUnits;

  /// The **`patternTransform`** read-only property of the [SVGPatternElement]
  /// interface reflects the `patternTransform` attribute of the given  element.
  /// This property holds the transformation applied to the pattern itself,
  /// allowing for operations like `translate`, `rotate`, `scale`, and `skew`.
  external SVGAnimatedTransformList get patternTransform;

  /// The **`x`** read-only property of the [SVGPatternElement] interface
  /// describes the x-axis coordinate of the start point of the pattern as an
  /// [SVGAnimatedLength]. It reflects the computed value of the `x` attribute
  /// on the  element.
  ///
  /// The attribute value can be a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the x-coordinate of the pattern's
  /// starting point in the user coordinate system.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGPatternElement] interface
  /// describes the y-axis coordinate of the start point of the pattern as an
  /// [SVGAnimatedLength]. It reflects the computed value of the `y` attribute
  /// on the  element.
  ///
  /// The attribute value can be a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] is the y-coordinate of the pattern's
  /// starting point in the user coordinate system.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGPatternElement] interface
  /// describes the width of the pattern as an [SVGAnimatedLength]. It reflects
  /// the computed value of the `width` attribute on the  element.
  ///
  /// The attribute value can be a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] represents the width of the pattern in
  /// the user coordinate system.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGPatternElement] interface
  /// describes the height of the pattern as an [SVGAnimatedLength]. It reflects
  /// the computed value of the `height` attribute on the  element.
  ///
  /// The attribute value can be a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length),
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage), or
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The numeric value
  /// of the [SVGAnimatedLength.baseVal] represents the height of the pattern in
  /// the user coordinate system.
  external SVGAnimatedLength get height;

  /// The **`viewBox`** read-only property of the [SVGPatternElement] interface
  /// reflects the `viewBox` attribute of the given element. It represents the
  /// `x`, `y`, `width`, and `height` values defining the area to be used for
  /// the pattern's `viewBox`.
  external SVGAnimatedRect get viewBox;

  /// The **`preserveAspectRatio`** read-only property of the
  /// [SVGPatternElement] interface reflects the `preserveAspectRatio` attribute
  /// of the given element. It defines how the pattern's content should be
  /// scaled to fit the given space, preserving its aspect ratio.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;

  /// The **`href`** read-only property of the [SVGPatternElement] interface
  /// reflects the `href` or   attribute of the given element.
  external SVGAnimatedString get href;
}

/// The **`SVGScriptElement`** interface corresponds to the SVG  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement).
extension type SVGScriptElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGScriptElement] using the tag 'script'.
  SVGScriptElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'script',
        );

  /// The **`type`** read-only property of the [SVGScriptElement] interface
  /// reflects the `type` attribute of the given  element.
  external String get type;
  external set type(String value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The **`href`** read-only property of the [SVGScriptElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}

/// The **`SVGAElement`** interface provides access to the properties of an
/// element, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement).
extension type SVGAElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGAElement] using the tag 'a'.
  SVGAElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'a',
        );

  /// The **`SVGAElement.target`** read-only property of [SVGAElement] returns
  /// an [SVGAnimatedString] object that specifies the portion of a target
  /// window, frame, pane into which a document is to be opened when a link is
  /// activated.
  ///
  /// This property is used when there are multiple possible targets for the
  /// ending resource, like when the parent document is a multi-frame HTML or
  /// XHTML document.
  external SVGAnimatedString get target;
  external String get download;
  external set download(String value);
  external String get ping;
  external set ping(String value);
  external String get rel;
  external set rel(String value);
  external DOMTokenList get relList;
  external String get hreflang;
  external set hreflang(String value);
  external String get type;
  external set type(String value);
  external String get text;
  external set text(String value);
  external String get referrerPolicy;
  external set referrerPolicy(String value);

  /// The **`href`** read-only property of the [SVGAElement] returns an
  /// [SVGAnimatedString] object reflecting the value of the href attribute,
  /// and, in certain cases, the   attribute. It specifies the target URI
  /// associated with the link.
  ///
  /// This property enables access to the URI set for a link within an SVG
  /// document.
  external SVGAnimatedString get href;
}

/// The **`SVGViewElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement).
extension type SVGViewElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGViewElement] using the tag 'view'.
  SVGViewElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'view',
        );

  /// The **`viewBox`** read-only property of the [SVGViewElement] interface
  /// reflects the `viewBox` attribute of the given  element. It represents the
  /// `x`, `y`, `width`, and `height` values defining the area to be used for
  /// the `view`'s `viewBox`.
  external SVGAnimatedRect get viewBox;

  /// The **`preserveAspectRatio`** read-only property of the [SVGViewElement]
  /// interface reflects the `preserveAspectRatio` attribute of the given
  /// element. It defines how the content within the `view` should be scaled to
  /// fit its viewport while preserving its aspect ratio.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}
