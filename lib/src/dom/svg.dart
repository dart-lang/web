// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
  external set onbeforexrselect(EventHandler value);
  external EventHandler get onbeforexrselect;
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
extension type SVGGraphicsElement._(JSObject _)
    implements SVGElement, JSObject {
  external DOMRect getBBox([SVGBoundingBoxOptions options]);
  external DOMMatrix? getCTM();
  external DOMMatrix? getScreenCTM();
  external SVGAnimatedTransformList get transform;
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}
extension type SVGGeometryElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  external bool isPointInFill([DOMPointInit point]);
  external bool isPointInStroke([DOMPointInit point]);
  external num getTotalLength();
  external DOMPoint getPointAtLength(num distance);
  external SVGAnimatedNumber get pathLength;
}
extension type SVGNumber._(JSObject _) implements JSObject {
  external set value(num value);
  external num get value;
}
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
extension type SVGAnimatedBoolean._(JSObject _) implements JSObject {
  external set baseVal(bool value);
  external bool get baseVal;
  external bool get animVal;
}
extension type SVGAnimatedEnumeration._(JSObject _) implements JSObject {
  external set baseVal(int value);
  external int get baseVal;
  external int get animVal;
}
extension type SVGAnimatedInteger._(JSObject _) implements JSObject {
  external set baseVal(int value);
  external int get baseVal;
  external int get animVal;
}
extension type SVGAnimatedNumber._(JSObject _) implements JSObject {
  external set baseVal(num value);
  external num get baseVal;
  external num get animVal;
}
extension type SVGAnimatedLength._(JSObject _) implements JSObject {
  external SVGLength get baseVal;
  external SVGLength get animVal;
}
extension type SVGAnimatedAngle._(JSObject _) implements JSObject {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;
}
extension type SVGAnimatedString._(JSObject _) implements JSObject {
  external set baseVal(String value);
  external String get baseVal;
  external String get animVal;
}
extension type SVGAnimatedRect._(JSObject _) implements JSObject {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}
extension type SVGAnimatedNumberList._(JSObject _) implements JSObject {
  external SVGNumberList get baseVal;
  external SVGNumberList get animVal;
}
extension type SVGAnimatedLengthList._(JSObject _) implements JSObject {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;
}
extension type SVGUnitTypes._(JSObject _) implements JSObject {
  external static int get SVG_UNIT_TYPE_UNKNOWN;
  external static int get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static int get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
}
extension type SVGSVGElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
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
  external set onportalactivate(EventHandler value);
  external EventHandler get onportalactivate;
}
extension type SVGGElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {}
extension type SVGDefsElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {}
extension type SVGDescElement._(JSObject _) implements SVGElement, JSObject {}
extension type SVGMetadataElement._(JSObject _)
    implements SVGElement, JSObject {}
extension type SVGTitleElement._(JSObject _) implements SVGElement, JSObject {}
extension type SVGSymbolElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}
extension type SVGUseElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
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
extension type SVGSwitchElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {}
extension type SVGStyleElement._(JSObject _) implements SVGElement, JSObject {
  external set type(String value);
  external String get type;
  external set media(String value);
  external String get media;
  external set title(String value);
  external String get title;
  external CSSStyleSheet? get sheet;
}
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
extension type SVGAnimatedTransformList._(JSObject _) implements JSObject {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;
}
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
extension type SVGAnimatedPreserveAspectRatio._(JSObject _)
    implements JSObject {
  external SVGPreserveAspectRatio get baseVal;
  external SVGPreserveAspectRatio get animVal;
}
extension type SVGPathElement._(JSObject _)
    implements SVGGeometryElement, JSObject {}
extension type SVGRectElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}
extension type SVGCircleElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
}
extension type SVGEllipseElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}
extension type SVGLineElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}
extension type SVGPointList._(JSObject _) implements JSObject {
  external void clear();
  external DOMPoint initialize(DOMPoint newItem);
  external DOMPoint getItem(int index);
  external DOMPoint insertItemBefore(
    DOMPoint newItem,
    int index,
  );
  external DOMPoint replaceItem(
    DOMPoint newItem,
    int index,
  );
  external DOMPoint removeItem(int index);
  external DOMPoint appendItem(DOMPoint newItem);
  external int get length;
  external int get numberOfItems;
}
extension type SVGPolylineElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
}
extension type SVGPolygonElement._(JSObject _)
    implements SVGGeometryElement, JSObject {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
}
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
extension type SVGTextPositioningElement._(JSObject _)
    implements SVGTextContentElement, JSObject {
  external SVGAnimatedLengthList get x;
  external SVGAnimatedLengthList get y;
  external SVGAnimatedLengthList get dx;
  external SVGAnimatedLengthList get dy;
  external SVGAnimatedNumberList get rotate;
}
extension type SVGTextElement._(JSObject _)
    implements SVGTextPositioningElement, JSObject {}
extension type SVGTSpanElement._(JSObject _)
    implements SVGTextPositioningElement, JSObject {}
extension type SVGTextPathElement._(JSObject _)
    implements SVGTextContentElement, JSObject {
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
extension type SVGImageElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external SVGAnimatedString get href;
}
extension type SVGForeignObjectElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}
extension type SVGMarkerElement._(JSObject _) implements SVGElement, JSObject {
  external static int get SVG_MARKERUNITS_UNKNOWN;
  external static int get SVG_MARKERUNITS_USERSPACEONUSE;
  external static int get SVG_MARKERUNITS_STROKEWIDTH;
  external static int get SVG_MARKER_ORIENT_UNKNOWN;
  external static int get SVG_MARKER_ORIENT_AUTO;
  external static int get SVG_MARKER_ORIENT_ANGLE;
  external void setOrientToAuto();
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
extension type SVGLinearGradientElement._(JSObject _)
    implements SVGGradientElement, JSObject {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}
extension type SVGRadialGradientElement._(JSObject _)
    implements SVGGradientElement, JSObject {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
  external SVGAnimatedLength get fx;
  external SVGAnimatedLength get fy;
  external SVGAnimatedLength get fr;
}
extension type SVGStopElement._(JSObject _) implements SVGElement, JSObject {
  external SVGAnimatedNumber get offset;
}
extension type SVGPatternElement._(JSObject _) implements SVGElement, JSObject {
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
extension type SVGScriptElement._(JSObject _) implements SVGElement, JSObject {
  external set type(String value);
  external String get type;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external SVGAnimatedString get href;
}
extension type SVGAElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
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
extension type SVGViewElement._(JSObject _) implements SVGElement, JSObject {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}
