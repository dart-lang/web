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
  external void focus([FocusOptions options]);
  external void blur();
  external SVGSVGElement? get ownerSVGElement;
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
  external String get nonce;
  external set nonce(String value);
  external bool get autofocus;
  external set autofocus(bool value);
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
  /// > **Note:** CSS property names are converted to JavaScript identifier with
  /// > these rules:
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
  external DOMMatrix? getCTM();
  external DOMMatrix? getScreenCTM();
  external SVGAnimatedTransformList get transform;
  external SVGStringList get requiredExtensions;
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
  /// The **`SVGGeometryElement.isPointInFill()`** method determines
  /// whether a given point is within the fill shape of an element. Normal hit
  /// testing rules
  /// apply; the value of the  property on the element determines
  /// whether a point is considered to be within the fill. The `point` argument
  /// is
  /// interpreted as a point in the local coordinate system of the element.
  external bool isPointInFill([DOMPointInit point]);

  /// The **`SVGGeometryElement.isPointInStroke()`** method
  /// determines whether a given point is within the stroke shape of an element.
  /// Normal hit
  /// testing rules apply; the value of the  property on the
  /// element determines whether a point is considered to be within the stroke.
  /// The
  /// `point` argument is interpreted as a point in the local coordinate system
  /// of
  /// the element.
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
  external double get value;
  external set value(num value);
}

///
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

  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );
  external void convertToSpecifiedUnits(int unitType);
  external int get unitType;
  external double get value;
  external set value(num value);
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);
  external String get valueAsString;
  external set valueAsString(String value);
}

/// The `SVGAngle` interface is used to represent a value that can be an  or
/// value. An `SVGAngle` reflected through the `animVal` attribute is always
/// read only.
///
/// An `SVGAngle` object can be designated as read only, which means that
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
/// exposed through the `baseVal` member of an [SVGAnimatedAngle]),
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

  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );
  external void convertToSpecifiedUnits(int unitType);
  external int get unitType;
  external double get value;
  external set value(num value);
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);
  external String get valueAsString;
  external set valueAsString(String value);
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList).
extension type SVGNumberList._(JSObject _) implements JSObject {
  external void clear();
  external SVGNumber initialize(SVGNumber newItem);
  external SVGNumber getItem(int index);
  external SVGNumber insertItemBefore(
    SVGNumber newItem,
    int index,
  );
  external SVGNumber replaceItem(
    SVGNumber newItem,
    int index,
  );
  external SVGNumber removeItem(int index);
  external SVGNumber appendItem(SVGNumber newItem);
  external void operator []=(
    int index,
    SVGNumber newItem,
  );
  external int get length;
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList).
extension type SVGLengthList._(JSObject _) implements JSObject {
  external void clear();
  external SVGLength initialize(SVGLength newItem);
  external SVGLength getItem(int index);
  external SVGLength insertItemBefore(
    SVGLength newItem,
    int index,
  );
  external SVGLength replaceItem(
    SVGLength newItem,
    int index,
  );
  external SVGLength removeItem(int index);
  external SVGLength appendItem(SVGLength newItem);
  external void operator []=(
    int index,
    SVGLength newItem,
  );
  external int get length;
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList).
extension type SVGStringList._(JSObject _) implements JSObject {
  external void clear();
  external String initialize(String newItem);
  external String getItem(int index);
  external String insertItemBefore(
    String newItem,
    int index,
  );
  external String replaceItem(
    String newItem,
    int index,
  );
  external String removeItem(int index);
  external String appendItem(String newItem);
  external void operator []=(
    int index,
    String newItem,
  );
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean).
extension type SVGAnimatedBoolean._(JSObject _) implements JSObject {
  external bool get baseVal;
  external set baseVal(bool value);
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
  external int get baseVal;
  external set baseVal(int value);
  external int get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber).
extension type SVGAnimatedNumber._(JSObject _) implements JSObject {
  external double get baseVal;
  external set baseVal(num value);
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
  external SVGAngle get baseVal;
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

  /// AnimVal attribute or animVal property contains the same value as the
  /// [SVGAnimatedString.baseVal] property. If the given attribute or property
  /// is being animated, contains the current animated value of the attribute or
  /// property. If the given attribute or property is not currently being
  /// animated, then it contains the same value as baseVal
  ///
  /// > **Note:** The **animVal** property is a read only property.
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
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList).
extension type SVGAnimatedNumberList._(JSObject _) implements JSObject {
  external SVGNumberList get baseVal;
  external SVGNumberList get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList).
extension type SVGAnimatedLengthList._(JSObject _) implements JSObject {
  external SVGLengthList get baseVal;
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
  external bool checkIntersection(
    SVGElement element,
    DOMRectReadOnly rect,
  );
  external bool checkEnclosure(
    SVGElement element,
    DOMRectReadOnly rect,
  );
  external void deselectAll();
  external SVGNumber createSVGNumber();
  external SVGLength createSVGLength();
  external SVGAngle createSVGAngle();
  external DOMPoint createSVGPoint();
  external DOMMatrix createSVGMatrix();
  external DOMRect createSVGRect();
  external SVGTransform createSVGTransform();
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);
  external Element getElementById(String elementId);
  external int suspendRedraw(int maxWaitMilliseconds);
  external void unsuspendRedraw(int suspendHandleID);
  external void unsuspendRedrawAll();
  external void forceRedraw();
  external void pauseAnimations();
  external void unpauseAnimations();
  external bool animationsPaused();
  external double getCurrentTime();
  external void setCurrentTime(num seconds);
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external double get currentScale;
  external set currentScale(num value);
  external DOMPointReadOnly get currentTranslate;
  external SVGAnimatedRect get viewBox;
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
  external EventHandler get onpageshow;
  external set onpageshow(EventHandler value);
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

  external SVGAnimatedRect get viewBox;
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

  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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
  /// [alternate style sheets](https://developer.mozilla.org/en-US/docs/Web/CSS/Alternative_style_sheets).
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

  external void setMatrix([DOMMatrix2DInit matrix]);
  external void setTranslate(
    num tx,
    num ty,
  );
  external void setScale(
    num sx,
    num sy,
  );
  external void setRotate(
    num angle,
    num cx,
    num cy,
  );
  external void setSkewX(num angle);
  external void setSkewY(num angle);
  external int get type;
  external DOMMatrix get matrix;
  external double get angle;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList).
extension type SVGTransformList._(JSObject _) implements JSObject {
  external void clear();
  external SVGTransform initialize(SVGTransform newItem);
  external SVGTransform getItem(int index);
  external SVGTransform insertItemBefore(
    SVGTransform newItem,
    int index,
  );
  external SVGTransform replaceItem(
    SVGTransform newItem,
    int index,
  );
  external SVGTransform removeItem(int index);
  external SVGTransform appendItem(SVGTransform newItem);
  external void operator []=(
    int index,
    SVGTransform newItem,
  );
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);
  external SVGTransform? consolidate();
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList).
extension type SVGAnimatedTransformList._(JSObject _) implements JSObject {
  external SVGTransformList get baseVal;
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

  external int get align;
  external set align(int value);
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
  external SVGPreserveAspectRatio get baseVal;
  external SVGPreserveAspectRatio get animVal;
}

/// The **`SVGPathElement`** interface corresponds to the  element.
///
/// > **Note:** In SVG 2 the `getPathSegAtLength()` and `createSVGPathSeg*`
/// > methods were removed and the `pathLength` property and the
/// > `getTotalLength()` and `getPointAtLength()` methods were moved to
/// > [SVGGeometryElement].
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

  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedLength get rx;
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

  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get rx;
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

  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
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

  external SVGPointList get points;
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

  external SVGPointList get points;
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

  external int getNumberOfChars();
  external double getComputedTextLength();
  external double getSubStringLength(
    int charnum,
    int nchars,
  );
  external DOMPoint getStartPositionOfChar(int charnum);
  external DOMPoint getEndPositionOfChar(int charnum);
  external DOMRect getExtentOfChar(int charnum);
  external double getRotationOfChar(int charnum);
  external int getCharNumAtPosition([DOMPointInit point]);
  external void selectSubString(
    int charnum,
    int nchars,
  );
  external SVGAnimatedLength get textLength;
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
  external SVGAnimatedLengthList get x;
  external SVGAnimatedLengthList get y;
  external SVGAnimatedLengthList get dx;
  external SVGAnimatedLengthList get dy;
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

  external SVGAnimatedLength get startOffset;
  external SVGAnimatedEnumeration get method;
  external SVGAnimatedEnumeration get spacing;
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

  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
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

  external SVGAnimatedEnumeration get gradientUnits;
  external SVGAnimatedTransformList get gradientTransform;
  external SVGAnimatedEnumeration get spreadMethod;
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

  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
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

  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
  external SVGAnimatedLength get fx;
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

  external SVGAnimatedEnumeration get patternUnits;
  external SVGAnimatedEnumeration get patternContentUnits;
  external SVGAnimatedTransformList get patternTransform;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
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

  external String get type;
  external set type(String value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
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

  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}
