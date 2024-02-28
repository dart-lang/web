// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'css_typed_om.dart';
import 'cssom.dart';
import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'web_animations.dart';

/// All of the SVG DOM interfaces that correspond directly to elements in the
/// SVG language derive from the `SVGElement` interface.
extension type SVGElement._(JSObject _) implements Element, JSObject {
  external void focus([FocusOptions options]);
  external void blur();
  external SVGSVGElement? get ownerSVGElement;
  external SVGElement? get viewportElement;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationstart;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationcancel(EventHandler value);
  external EventHandler get onanimationcancel;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onauxclick(EventHandler value);
  external EventHandler get onauxclick;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforematch(EventHandler value);
  external EventHandler get onbeforematch;
  external set onbeforetoggle(EventHandler value);
  external EventHandler get onbeforetoggle;
  external set onblur(EventHandler value);
  external EventHandler get onblur;
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onclick(EventHandler value);
  external EventHandler get onclick;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncopy(EventHandler value);
  external EventHandler get oncopy;
  external set oncuechange(EventHandler value);
  external EventHandler get oncuechange;
  external set oncut(EventHandler value);
  external EventHandler get oncut;
  external set ondblclick(EventHandler value);
  external EventHandler get ondblclick;
  external set ondrag(EventHandler value);
  external EventHandler get ondrag;
  external set ondragend(EventHandler value);
  external EventHandler get ondragend;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragover(EventHandler value);
  external EventHandler get ondragover;
  external set ondragstart(EventHandler value);
  external EventHandler get ondragstart;
  external set ondrop(EventHandler value);
  external EventHandler get ondrop;
  external set ondurationchange(EventHandler value);
  external EventHandler get ondurationchange;
  external set onemptied(EventHandler value);
  external EventHandler get onemptied;
  external set onended(EventHandler value);
  external EventHandler get onended;
  external set onerror(OnErrorEventHandler value);
  external OnErrorEventHandler get onerror;
  external set onfocus(EventHandler value);
  external EventHandler get onfocus;
  external set onformdata(EventHandler value);
  external EventHandler get onformdata;
  external set oninput(EventHandler value);
  external EventHandler get oninput;
  external set oninvalid(EventHandler value);
  external EventHandler get oninvalid;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeyup(EventHandler value);
  external EventHandler get onkeyup;
  external set onload(EventHandler value);
  external EventHandler get onload;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadstart(EventHandler value);
  external EventHandler get onloadstart;
  external set onmousedown(EventHandler value);
  external EventHandler get onmousedown;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmousemove(EventHandler value);
  external EventHandler get onmousemove;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseup(EventHandler value);
  external EventHandler get onmouseup;
  external set onpaste(EventHandler value);
  external EventHandler get onpaste;
  external set onpause(EventHandler value);
  external EventHandler get onpause;
  external set onplay(EventHandler value);
  external EventHandler get onplay;
  external set onplaying(EventHandler value);
  external EventHandler get onplaying;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
  external set onratechange(EventHandler value);
  external EventHandler get onratechange;
  external set onreset(EventHandler value);
  external EventHandler get onreset;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
  external set onscroll(EventHandler value);
  external EventHandler get onscroll;
  external set onscrollend(EventHandler value);
  external EventHandler get onscrollend;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onseeked(EventHandler value);
  external EventHandler get onseeked;
  external set onseeking(EventHandler value);
  external EventHandler get onseeking;
  external set onselect(EventHandler value);
  external EventHandler get onselect;
  external set onslotchange(EventHandler value);
  external EventHandler get onslotchange;
  external set onstalled(EventHandler value);
  external EventHandler get onstalled;
  external set onsubmit(EventHandler value);
  external EventHandler get onsubmit;
  external set onsuspend(EventHandler value);
  external EventHandler get onsuspend;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontoggle(EventHandler value);
  external EventHandler get ontoggle;
  external set onvolumechange(EventHandler value);
  external EventHandler get onvolumechange;
  external set onwaiting(EventHandler value);
  external EventHandler get onwaiting;
  external set onwebkitanimationend(EventHandler value);
  external EventHandler get onwebkitanimationend;
  external set onwebkitanimationiteration(EventHandler value);
  external EventHandler get onwebkitanimationiteration;
  external set onwebkitanimationstart(EventHandler value);
  external EventHandler get onwebkitanimationstart;
  external set onwebkittransitionend(EventHandler value);
  external EventHandler get onwebkittransitionend;
  external set onwheel(EventHandler value);
  external EventHandler get onwheel;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointerrawupdate(EventHandler value);
  external EventHandler get onpointerrawupdate;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerleave(EventHandler value);
  external EventHandler get onpointerleave;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectionchange(EventHandler value);
  external EventHandler get onselectionchange;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchcancel(EventHandler value);
  external EventHandler get ontouchcancel;
  external SVGElement? get correspondingElement;
  external SVGUseElement? get correspondingUseElement;
  external DOMStringMap get dataset;
  external set nonce(String value);
  external String get nonce;
  external set autofocus(bool value);
  external bool get autofocus;
  external set tabIndex(int value);
  external int get tabIndex;
  external StylePropertyMap get attributeStyleMap;
  external CSSStyleDeclaration get style;
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

  external set fill(bool value);
  external bool get fill;
  external set stroke(bool value);
  external bool get stroke;
  external set markers(bool value);
  external bool get markers;
  external set clipped(bool value);
  external bool get clipped;
}

/// The **`SVGGraphicsElement`** interface represents SVG elements whose primary
/// purpose is to directly render graphics into a group.
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
  external num getTotalLength();

  /// The
  /// **`SVGGeometryElement.getPointAtLength()`** method returns the
  /// point at a given distance along the path.
  external DOMPoint getPointAtLength(num distance);
  external SVGAnimatedNumber get pathLength;
}

/// The **`SVGNumber`** interface corresponds to the  basic data type.
///
/// An `SVGNumber` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
extension type SVGNumber._(JSObject _) implements JSObject {
  external set value(num value);
  external num get value;
}

///
extension type SVGLength._(JSObject _) implements JSObject {
  external static int get SVG_LENGTHTYPE_UNKNOWN;
  external static int get SVG_LENGTHTYPE_NUMBER;
  external static int get SVG_LENGTHTYPE_PERCENTAGE;
  external static int get SVG_LENGTHTYPE_EMS;
  external static int get SVG_LENGTHTYPE_EXS;
  external static int get SVG_LENGTHTYPE_PX;
  external static int get SVG_LENGTHTYPE_CM;
  external static int get SVG_LENGTHTYPE_MM;
  external static int get SVG_LENGTHTYPE_IN;
  external static int get SVG_LENGTHTYPE_PT;
  external static int get SVG_LENGTHTYPE_PC;
  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );
  external void convertToSpecifiedUnits(int unitType);
  external int get unitType;
  external set value(num value);
  external num get value;
  external set valueInSpecifiedUnits(num value);
  external num get valueInSpecifiedUnits;
  external set valueAsString(String value);
  external String get valueAsString;
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
extension type SVGAngle._(JSObject _) implements JSObject {
  external static int get SVG_ANGLETYPE_UNKNOWN;
  external static int get SVG_ANGLETYPE_UNSPECIFIED;
  external static int get SVG_ANGLETYPE_DEG;
  external static int get SVG_ANGLETYPE_RAD;
  external static int get SVG_ANGLETYPE_GRAD;
  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );
  external void convertToSpecifiedUnits(int unitType);
  external int get unitType;
  external set value(num value);
  external num get value;
  external set valueInSpecifiedUnits(num value);
  external num get valueInSpecifiedUnits;
  external set valueAsString(String value);
  external String get valueAsString;
}

///
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
  external int get length;
  external int get numberOfItems;
}

///
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
  external int get length;
  external int get numberOfItems;
}

///
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
  external int get length;
  external int get numberOfItems;
}

///
extension type SVGAnimatedBoolean._(JSObject _) implements JSObject {
  external set baseVal(bool value);
  external bool get baseVal;
  external bool get animVal;
}

/// The **`SVGAnimatedEnumeration`** interface describes attribute values which
/// are constants from a particular enumeration and which can be animated.
extension type SVGAnimatedEnumeration._(JSObject _) implements JSObject {
  external set baseVal(int value);
  external int get baseVal;
  external int get animVal;
}

///
extension type SVGAnimatedInteger._(JSObject _) implements JSObject {
  external set baseVal(int value);
  external int get baseVal;
  external int get animVal;
}

///
extension type SVGAnimatedNumber._(JSObject _) implements JSObject {
  external set baseVal(num value);
  external num get baseVal;
  external num get animVal;
}

/// The **`SVGAnimatedLength`** interface represents attributes of type
/// [\<length>](/en-US/docs/Web/SVG/Content_type#length) which can be animated.
extension type SVGAnimatedLength._(JSObject _) implements JSObject {
  external SVGLength get baseVal;
  external SVGLength get animVal;
}

///
extension type SVGAnimatedAngle._(JSObject _) implements JSObject {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;
}

/// The **`SVGAnimatedString`** interface represents string attributes which can
/// be animated from each SVG declaration. You need to create SVG attribute
/// before doing anything else, everything should be declared inside this.
extension type SVGAnimatedString._(JSObject _) implements JSObject {
  external set baseVal(String value);
  external String get baseVal;
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
extension type SVGAnimatedRect._(JSObject _) implements JSObject {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}

///
extension type SVGAnimatedNumberList._(JSObject _) implements JSObject {
  external SVGNumberList get baseVal;
  external SVGNumberList get animVal;
}

///
extension type SVGAnimatedLengthList._(JSObject _) implements JSObject {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;
}

/// The **`SVGUnitTypes`** interface defines a commonly used set of constants
/// used for reflecting `gradientUnits`, `patternContentUnits` and other similar
/// attributes.
extension type SVGUnitTypes._(JSObject _) implements JSObject {
  external static int get SVG_UNIT_TYPE_UNKNOWN;
  external static int get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static int get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
}

/// The **`SVGSVGElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them. This interface contains
/// also various miscellaneous commonly-used utility methods, such as matrix
/// operations and the ability to control the time of redraw on visual rendering
/// devices.
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
  external num getCurrentTime();
  external void setCurrentTime(num seconds);
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external set currentScale(num value);
  external num get currentScale;
  external DOMPointReadOnly get currentTranslate;
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepadconnected;
  external set ongamepaddisconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set onafterprint(EventHandler value);
  external EventHandler get onafterprint;
  external set onbeforeprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onhashchange(EventHandler value);
  external EventHandler get onhashchange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onoffline(EventHandler value);
  external EventHandler get onoffline;
  external set ononline(EventHandler value);
  external EventHandler get ononline;
  external set onpagehide(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagereveal(EventHandler value);
  external EventHandler get onpagereveal;
  external set onpageshow(EventHandler value);
  external EventHandler get onpageshow;
  external set onpopstate(EventHandler value);
  external EventHandler get onpopstate;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onstorage(EventHandler value);
  external EventHandler get onstorage;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunload(EventHandler value);
  external EventHandler get onunload;
}

/// The **`SVGGElement`** interface corresponds to the  element.
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
extension type SVGDescElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGDescElement] using the tag 'desc'.
  SVGDescElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'desc',
        );
}

/// The **`SVGMetadataElement`** interface corresponds to the  element.
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
extension type SVGTitleElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGTitleElement] using the tag 'title'.
  SVGTitleElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'title',
        );
}

/// The **`SVGSymbolElement`** interface corresponds to the  element.
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
  external SVGElement? get instanceRoot;
  external SVGElement? get animatedInstanceRoot;
  external SVGAnimatedString get href;
}
extension type SVGUseElementShadowRoot._(JSObject _)
    implements ShadowRoot, JSObject {}
extension type ShadowAnimation._(JSObject _) implements Animation, JSObject {
  external factory ShadowAnimation(
    Animation source,
    JSObject newTarget,
  );

  external Animation get sourceAnimation;
}

/// The **`SVGSwitchElement`** interface corresponds to the  element.
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
extension type SVGStyleElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGStyleElement] using the tag 'style'.
  SVGStyleElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'style',
        );

  external set type(String value);
  external String get type;
  external set media(String value);
  external String get media;
  external set title(String value);
  external String get title;
  external CSSStyleSheet? get sheet;
}

///
extension type SVGTransform._(JSObject _) implements JSObject {
  external static int get SVG_TRANSFORM_UNKNOWN;
  external static int get SVG_TRANSFORM_MATRIX;
  external static int get SVG_TRANSFORM_TRANSLATE;
  external static int get SVG_TRANSFORM_SCALE;
  external static int get SVG_TRANSFORM_ROTATE;
  external static int get SVG_TRANSFORM_SKEWX;
  external static int get SVG_TRANSFORM_SKEWY;
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
  external num get angle;
}

///
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
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);
  external SVGTransform? consolidate();
  external int get length;
  external int get numberOfItems;
}

///
extension type SVGAnimatedTransformList._(JSObject _) implements JSObject {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;
}

///
extension type SVGPreserveAspectRatio._(JSObject _) implements JSObject {
  external static int get SVG_PRESERVEASPECTRATIO_UNKNOWN;
  external static int get SVG_PRESERVEASPECTRATIO_NONE;
  external static int get SVG_PRESERVEASPECTRATIO_XMINYMIN;
  external static int get SVG_PRESERVEASPECTRATIO_XMIDYMIN;
  external static int get SVG_PRESERVEASPECTRATIO_XMAXYMIN;
  external static int get SVG_PRESERVEASPECTRATIO_XMINYMID;
  external static int get SVG_PRESERVEASPECTRATIO_XMIDYMID;
  external static int get SVG_PRESERVEASPECTRATIO_XMAXYMID;
  external static int get SVG_PRESERVEASPECTRATIO_XMINYMAX;
  external static int get SVG_PRESERVEASPECTRATIO_XMIDYMAX;
  external static int get SVG_PRESERVEASPECTRATIO_XMAXYMAX;
  external static int get SVG_MEETORSLICE_UNKNOWN;
  external static int get SVG_MEETORSLICE_MEET;
  external static int get SVG_MEETORSLICE_SLICE;
  external set align(int value);
  external int get align;
  external set meetOrSlice(int value);
  external int get meetOrSlice;
}

///
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
extension type SVGCircleElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  /// Creates an [SVGCircleElement] using the tag 'circle'.
  SVGCircleElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'circle',
        );

  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
}

/// The **`SVGEllipseElement`** interface provides access to the properties of
/// elements.
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
  external int get length;
  external int get numberOfItems;
}

/// The **`SVGPolylineElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
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
extension type SVGTextContentElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  external static int get LENGTHADJUST_UNKNOWN;
  external static int get LENGTHADJUST_SPACING;
  external static int get LENGTHADJUST_SPACINGANDGLYPHS;
  external int getNumberOfChars();
  external num getComputedTextLength();
  external num getSubStringLength(
    int charnum,
    int nchars,
  );
  external DOMPoint getStartPositionOfChar(int charnum);
  external DOMPoint getEndPositionOfChar(int charnum);
  external DOMRect getExtentOfChar(int charnum);
  external num getRotationOfChar(int charnum);
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
extension type SVGTextPositioningElement._(JSObject _)
    implements SVGTextContentElement, JSObject {
  external SVGAnimatedLengthList get x;
  external SVGAnimatedLengthList get y;
  external SVGAnimatedLengthList get dx;
  external SVGAnimatedLengthList get dy;
  external SVGAnimatedNumberList get rotate;
}

/// The **`SVGTextElement`** interface corresponds to the  elements.
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
extension type SVGTextPathElement._(JSObject _)
    implements SVGTextContentElement, JSObject {
  /// Creates an [SVGTextPathElement] using the tag 'textPath'.
  SVGTextPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'textPath',
        );

  external static int get TEXTPATH_METHODTYPE_UNKNOWN;
  external static int get TEXTPATH_METHODTYPE_ALIGN;
  external static int get TEXTPATH_METHODTYPE_STRETCH;
  external static int get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external static int get TEXTPATH_SPACINGTYPE_AUTO;
  external static int get TEXTPATH_SPACINGTYPE_EXACT;
  external SVGAnimatedLength get startOffset;
  external SVGAnimatedEnumeration get method;
  external SVGAnimatedEnumeration get spacing;
  external SVGAnimatedString get href;
}

/// The **`SVGImageElement`** interface corresponds to the  element.
extension type SVGImageElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGImageElement] using the tag 'image'.
  SVGImageElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'image',
        );

  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external SVGAnimatedString get href;
}

/// The **`SVGForeignObjectElement`** interface provides access to the
/// properties of  elements, as well as methods to manipulate them.
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
extension type SVGMarkerElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGMarkerElement] using the tag 'marker'.
  SVGMarkerElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'marker',
        );

  external static int get SVG_MARKERUNITS_UNKNOWN;
  external static int get SVG_MARKERUNITS_USERSPACEONUSE;
  external static int get SVG_MARKERUNITS_STROKEWIDTH;
  external static int get SVG_MARKER_ORIENT_UNKNOWN;
  external static int get SVG_MARKER_ORIENT_AUTO;
  external static int get SVG_MARKER_ORIENT_ANGLE;

  /// The **`setOrientToAuto()`** method of the [SVGMarkerElement] interface
  /// sets the value of the `orient` attribute to `auto`.
  external void setOrientToAuto();

  /// The **`setOrientToAngle()`** method of the [SVGMarkerElement] interface
  /// sets the value of the `orient` attribute to the value in the [SVGAngle]
  /// passed in.
  external void setOrientToAngle(SVGAngle angle);
  external SVGAnimatedLength get refX;
  external SVGAnimatedLength get refY;
  external SVGAnimatedEnumeration get markerUnits;
  external SVGAnimatedLength get markerWidth;
  external SVGAnimatedLength get markerHeight;
  external SVGAnimatedEnumeration get orientType;
  external SVGAnimatedAngle get orientAngle;
  external set orient(String value);
  external String get orient;
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

/// The **`SVGGradient`** interface is a base interface used by
/// [SVGLinearGradientElement] and [SVGRadialGradientElement].
extension type SVGGradientElement._(JSObject _)
    implements SVGElement, JSObject {
  external static int get SVG_SPREADMETHOD_UNKNOWN;
  external static int get SVG_SPREADMETHOD_PAD;
  external static int get SVG_SPREADMETHOD_REFLECT;
  external static int get SVG_SPREADMETHOD_REPEAT;
  external SVGAnimatedEnumeration get gradientUnits;
  external SVGAnimatedTransformList get gradientTransform;
  external SVGAnimatedEnumeration get spreadMethod;
  external SVGAnimatedString get href;
}

/// The **`SVGLinearGradientElement`** interface corresponds to the  element.
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
extension type SVGScriptElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGScriptElement] using the tag 'script'.
  SVGScriptElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'script',
        );

  external set type(String value);
  external String get type;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external SVGAnimatedString get href;
}

/// The **`SVGAElement`** interface provides access to the properties of an
/// element, as well as methods to manipulate them.
extension type SVGAElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGAElement] using the tag 'a'.
  SVGAElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'a',
        );

  external SVGAnimatedString get target;
  external set download(String value);
  external String get download;
  external set ping(String value);
  external String get ping;
  external set rel(String value);
  external String get rel;
  external DOMTokenList get relList;
  external set hreflang(String value);
  external String get hreflang;
  external set type(String value);
  external String get type;
  external set text(String value);
  external String get text;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external String get origin;
  external set protocol(String value);
  external String get protocol;
  external set username(String value);
  external String get username;
  external set password(String value);
  external String get password;
  external set host(String value);
  external String get host;
  external set hostname(String value);
  external String get hostname;
  external set port(String value);
  external String get port;
  external set pathname(String value);
  external String get pathname;
  external set search(String value);
  external String get search;
  external set hash(String value);
  external String get hash;
  external SVGAnimatedString get href;
}

/// The **`SVGViewElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
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
