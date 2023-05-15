// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'cssom.dart';
import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'web_animations.dart';

@JS('SVGElement')
@staticInterop
class SVGElement
    implements
        Element,
        GlobalEventHandlers,
        SVGElementInstance,
        HTMLOrSVGElement,
        ElementCSSInlineStyle {}

extension SVGElementExtension on SVGElement {
  external SVGAnimatedString get className;
  external SVGSVGElement? get ownerSVGElement;
  external SVGElement? get viewportElement;
}

@JS()
@staticInterop
@anonymous
class SVGBoundingBoxOptions implements JSObject {
  external factory SVGBoundingBoxOptions({
    JSBoolean fill,
    JSBoolean stroke,
    JSBoolean markers,
    JSBoolean clipped,
  });
}

extension SVGBoundingBoxOptionsExtension on SVGBoundingBoxOptions {
  external set fill(JSBoolean value);
  external JSBoolean get fill;
  external set stroke(JSBoolean value);
  external JSBoolean get stroke;
  external set markers(JSBoolean value);
  external JSBoolean get markers;
  external set clipped(JSBoolean value);
  external JSBoolean get clipped;
}

@JS('SVGGraphicsElement')
@staticInterop
class SVGGraphicsElement implements SVGElement, SVGTests {}

extension SVGGraphicsElementExtension on SVGGraphicsElement {
  external DOMRect getBBox([SVGBoundingBoxOptions options]);
  external DOMMatrix? getCTM();
  external DOMMatrix? getScreenCTM();
  external SVGAnimatedTransformList get transform;
}

@JS('SVGGeometryElement')
@staticInterop
class SVGGeometryElement implements SVGGraphicsElement {}

extension SVGGeometryElementExtension on SVGGeometryElement {
  external JSBoolean isPointInFill([DOMPointInit point]);
  external JSBoolean isPointInStroke([DOMPointInit point]);
  external JSNumber getTotalLength();
  external DOMPoint getPointAtLength(JSNumber distance);
  external SVGAnimatedNumber get pathLength;
}

@JS('SVGNumber')
@staticInterop
class SVGNumber implements JSObject {}

extension SVGNumberExtension on SVGNumber {
  external set value(JSNumber value);
  external JSNumber get value;
}

@JS('SVGLength')
@staticInterop
class SVGLength implements JSObject {
  external static JSNumber get SVG_LENGTHTYPE_UNKNOWN;
  external static JSNumber get SVG_LENGTHTYPE_NUMBER;
  external static JSNumber get SVG_LENGTHTYPE_PERCENTAGE;
  external static JSNumber get SVG_LENGTHTYPE_EMS;
  external static JSNumber get SVG_LENGTHTYPE_EXS;
  external static JSNumber get SVG_LENGTHTYPE_PX;
  external static JSNumber get SVG_LENGTHTYPE_CM;
  external static JSNumber get SVG_LENGTHTYPE_MM;
  external static JSNumber get SVG_LENGTHTYPE_IN;
  external static JSNumber get SVG_LENGTHTYPE_PT;
  external static JSNumber get SVG_LENGTHTYPE_PC;
}

extension SVGLengthExtension on SVGLength {
  external JSVoid newValueSpecifiedUnits(
    JSNumber unitType,
    JSNumber valueInSpecifiedUnits,
  );
  external JSVoid convertToSpecifiedUnits(JSNumber unitType);
  external JSNumber get unitType;
  external set value(JSNumber value);
  external JSNumber get value;
  external set valueInSpecifiedUnits(JSNumber value);
  external JSNumber get valueInSpecifiedUnits;
  external set valueAsString(JSString value);
  external JSString get valueAsString;
}

@JS('SVGAngle')
@staticInterop
class SVGAngle implements JSObject {
  external static JSNumber get SVG_ANGLETYPE_UNKNOWN;
  external static JSNumber get SVG_ANGLETYPE_UNSPECIFIED;
  external static JSNumber get SVG_ANGLETYPE_DEG;
  external static JSNumber get SVG_ANGLETYPE_RAD;
  external static JSNumber get SVG_ANGLETYPE_GRAD;
}

extension SVGAngleExtension on SVGAngle {
  external JSVoid newValueSpecifiedUnits(
    JSNumber unitType,
    JSNumber valueInSpecifiedUnits,
  );
  external JSVoid convertToSpecifiedUnits(JSNumber unitType);
  external JSNumber get unitType;
  external set value(JSNumber value);
  external JSNumber get value;
  external set valueInSpecifiedUnits(JSNumber value);
  external JSNumber get valueInSpecifiedUnits;
  external set valueAsString(JSString value);
  external JSString get valueAsString;
}

@JS('SVGNumberList')
@staticInterop
class SVGNumberList implements JSObject {}

extension SVGNumberListExtension on SVGNumberList {
  external JSVoid clear();
  external SVGNumber initialize(SVGNumber newItem);
  external SVGNumber getItem(JSNumber index);
  external SVGNumber insertItemBefore(
    SVGNumber newItem,
    JSNumber index,
  );
  external SVGNumber replaceItem(
    SVGNumber newItem,
    JSNumber index,
  );
  external SVGNumber removeItem(JSNumber index);
  external SVGNumber appendItem(SVGNumber newItem);
  external JSNumber get length;
  external JSNumber get numberOfItems;
}

@JS('SVGLengthList')
@staticInterop
class SVGLengthList implements JSObject {}

extension SVGLengthListExtension on SVGLengthList {
  external JSVoid clear();
  external SVGLength initialize(SVGLength newItem);
  external SVGLength getItem(JSNumber index);
  external SVGLength insertItemBefore(
    SVGLength newItem,
    JSNumber index,
  );
  external SVGLength replaceItem(
    SVGLength newItem,
    JSNumber index,
  );
  external SVGLength removeItem(JSNumber index);
  external SVGLength appendItem(SVGLength newItem);
  external JSNumber get length;
  external JSNumber get numberOfItems;
}

@JS('SVGStringList')
@staticInterop
class SVGStringList implements JSObject {}

extension SVGStringListExtension on SVGStringList {
  external JSVoid clear();
  external JSString initialize(JSString newItem);
  external JSString getItem(JSNumber index);
  external JSString insertItemBefore(
    JSString newItem,
    JSNumber index,
  );
  external JSString replaceItem(
    JSString newItem,
    JSNumber index,
  );
  external JSString removeItem(JSNumber index);
  external JSString appendItem(JSString newItem);
  external JSNumber get length;
  external JSNumber get numberOfItems;
}

@JS('SVGAnimatedBoolean')
@staticInterop
class SVGAnimatedBoolean implements JSObject {}

extension SVGAnimatedBooleanExtension on SVGAnimatedBoolean {
  external set baseVal(JSBoolean value);
  external JSBoolean get baseVal;
  external JSBoolean get animVal;
}

@JS('SVGAnimatedEnumeration')
@staticInterop
class SVGAnimatedEnumeration implements JSObject {}

extension SVGAnimatedEnumerationExtension on SVGAnimatedEnumeration {
  external set baseVal(JSNumber value);
  external JSNumber get baseVal;
  external JSNumber get animVal;
}

@JS('SVGAnimatedInteger')
@staticInterop
class SVGAnimatedInteger implements JSObject {}

extension SVGAnimatedIntegerExtension on SVGAnimatedInteger {
  external set baseVal(JSNumber value);
  external JSNumber get baseVal;
  external JSNumber get animVal;
}

@JS('SVGAnimatedNumber')
@staticInterop
class SVGAnimatedNumber implements JSObject {}

extension SVGAnimatedNumberExtension on SVGAnimatedNumber {
  external set baseVal(JSNumber value);
  external JSNumber get baseVal;
  external JSNumber get animVal;
}

@JS('SVGAnimatedLength')
@staticInterop
class SVGAnimatedLength implements JSObject {}

extension SVGAnimatedLengthExtension on SVGAnimatedLength {
  external SVGLength get baseVal;
  external SVGLength get animVal;
}

@JS('SVGAnimatedAngle')
@staticInterop
class SVGAnimatedAngle implements JSObject {}

extension SVGAnimatedAngleExtension on SVGAnimatedAngle {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;
}

@JS('SVGAnimatedString')
@staticInterop
class SVGAnimatedString implements JSObject {}

extension SVGAnimatedStringExtension on SVGAnimatedString {
  external set baseVal(JSString value);
  external JSString get baseVal;
  external JSString get animVal;
}

@JS('SVGAnimatedRect')
@staticInterop
class SVGAnimatedRect implements JSObject {}

extension SVGAnimatedRectExtension on SVGAnimatedRect {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}

@JS('SVGAnimatedNumberList')
@staticInterop
class SVGAnimatedNumberList implements JSObject {}

extension SVGAnimatedNumberListExtension on SVGAnimatedNumberList {
  external SVGNumberList get baseVal;
  external SVGNumberList get animVal;
}

@JS('SVGAnimatedLengthList')
@staticInterop
class SVGAnimatedLengthList implements JSObject {}

extension SVGAnimatedLengthListExtension on SVGAnimatedLengthList {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;
}

@JS('SVGUnitTypes')
@staticInterop
class SVGUnitTypes implements JSObject {
  external static JSNumber get SVG_UNIT_TYPE_UNKNOWN;
  external static JSNumber get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static JSNumber get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
}

@JS('SVGTests')
@staticInterop
class SVGTests implements JSObject {}

extension SVGTestsExtension on SVGTests {
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}

@JS('SVGFitToViewBox')
@staticInterop
class SVGFitToViewBox implements JSObject {}

extension SVGFitToViewBoxExtension on SVGFitToViewBox {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

@JS('SVGURIReference')
@staticInterop
class SVGURIReference implements JSObject {}

extension SVGURIReferenceExtension on SVGURIReference {
  external SVGAnimatedString get href;
}

@JS('SVGSVGElement')
@staticInterop
class SVGSVGElement
    implements SVGGraphicsElement, SVGFitToViewBox, WindowEventHandlers {}

extension SVGSVGElementExtension on SVGSVGElement {
  external NodeList getIntersectionList(
    DOMRectReadOnly rect,
    SVGElement? referenceElement,
  );
  external NodeList getEnclosureList(
    DOMRectReadOnly rect,
    SVGElement? referenceElement,
  );
  external JSBoolean checkIntersection(
    SVGElement element,
    DOMRectReadOnly rect,
  );
  external JSBoolean checkEnclosure(
    SVGElement element,
    DOMRectReadOnly rect,
  );
  external JSVoid deselectAll();
  external SVGNumber createSVGNumber();
  external SVGLength createSVGLength();
  external SVGAngle createSVGAngle();
  external DOMPoint createSVGPoint();
  external DOMMatrix createSVGMatrix();
  external DOMRect createSVGRect();
  external SVGTransform createSVGTransform();
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);
  external Element getElementById(JSString elementId);
  external JSNumber suspendRedraw(JSNumber maxWaitMilliseconds);
  external JSVoid unsuspendRedraw(JSNumber suspendHandleID);
  external JSVoid unsuspendRedrawAll();
  external JSVoid forceRedraw();
  external JSVoid pauseAnimations();
  external JSVoid unpauseAnimations();
  external JSBoolean animationsPaused();
  external JSNumber getCurrentTime();
  external JSVoid setCurrentTime(JSNumber seconds);
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external set currentScale(JSNumber value);
  external JSNumber get currentScale;
  external DOMPointReadOnly get currentTranslate;
}

@JS('SVGGElement')
@staticInterop
class SVGGElement implements SVGGraphicsElement {}

@JS('SVGDefsElement')
@staticInterop
class SVGDefsElement implements SVGGraphicsElement {}

@JS('SVGDescElement')
@staticInterop
class SVGDescElement implements SVGElement {}

@JS('SVGMetadataElement')
@staticInterop
class SVGMetadataElement implements SVGElement {}

@JS('SVGTitleElement')
@staticInterop
class SVGTitleElement implements SVGElement {}

@JS('SVGSymbolElement')
@staticInterop
class SVGSymbolElement implements SVGGraphicsElement, SVGFitToViewBox {}

@JS('SVGUseElement')
@staticInterop
class SVGUseElement implements SVGGraphicsElement, SVGURIReference {}

extension SVGUseElementExtension on SVGUseElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGElement? get instanceRoot;
  external SVGElement? get animatedInstanceRoot;
}

@JS('SVGUseElementShadowRoot')
@staticInterop
class SVGUseElementShadowRoot implements ShadowRoot {}

@JS('SVGElementInstance')
@staticInterop
class SVGElementInstance implements JSObject {}

extension SVGElementInstanceExtension on SVGElementInstance {
  external SVGElement? get correspondingElement;
  external SVGUseElement? get correspondingUseElement;
}

@JS('ShadowAnimation')
@staticInterop
class ShadowAnimation implements Animation {
  external factory ShadowAnimation(
    Animation source,
    JSAny newTarget,
  );
}

extension ShadowAnimationExtension on ShadowAnimation {
  external Animation get sourceAnimation;
}

@JS('SVGSwitchElement')
@staticInterop
class SVGSwitchElement implements SVGGraphicsElement {}

@JS('GetSVGDocument')
@staticInterop
class GetSVGDocument implements JSObject {}

extension GetSVGDocumentExtension on GetSVGDocument {
  external Document getSVGDocument();
}

@JS('SVGStyleElement')
@staticInterop
class SVGStyleElement implements SVGElement, LinkStyle {}

extension SVGStyleElementExtension on SVGStyleElement {
  external set type(JSString value);
  external JSString get type;
  external set media(JSString value);
  external JSString get media;
  external set title(JSString value);
  external JSString get title;
}

@JS('SVGTransform')
@staticInterop
class SVGTransform implements JSObject {
  external static JSNumber get SVG_TRANSFORM_UNKNOWN;
  external static JSNumber get SVG_TRANSFORM_MATRIX;
  external static JSNumber get SVG_TRANSFORM_TRANSLATE;
  external static JSNumber get SVG_TRANSFORM_SCALE;
  external static JSNumber get SVG_TRANSFORM_ROTATE;
  external static JSNumber get SVG_TRANSFORM_SKEWX;
  external static JSNumber get SVG_TRANSFORM_SKEWY;
}

extension SVGTransformExtension on SVGTransform {
  external JSVoid setMatrix([DOMMatrix2DInit matrix]);
  external JSVoid setTranslate(
    JSNumber tx,
    JSNumber ty,
  );
  external JSVoid setScale(
    JSNumber sx,
    JSNumber sy,
  );
  external JSVoid setRotate(
    JSNumber angle,
    JSNumber cx,
    JSNumber cy,
  );
  external JSVoid setSkewX(JSNumber angle);
  external JSVoid setSkewY(JSNumber angle);
  external JSNumber get type;
  external DOMMatrix get matrix;
  external JSNumber get angle;
}

@JS('SVGTransformList')
@staticInterop
class SVGTransformList implements JSObject {}

extension SVGTransformListExtension on SVGTransformList {
  external JSVoid clear();
  external SVGTransform initialize(SVGTransform newItem);
  external SVGTransform getItem(JSNumber index);
  external SVGTransform insertItemBefore(
    SVGTransform newItem,
    JSNumber index,
  );
  external SVGTransform replaceItem(
    SVGTransform newItem,
    JSNumber index,
  );
  external SVGTransform removeItem(JSNumber index);
  external SVGTransform appendItem(SVGTransform newItem);
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);
  external SVGTransform? consolidate();
  external JSNumber get length;
  external JSNumber get numberOfItems;
}

@JS('SVGAnimatedTransformList')
@staticInterop
class SVGAnimatedTransformList implements JSObject {}

extension SVGAnimatedTransformListExtension on SVGAnimatedTransformList {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;
}

@JS('SVGPreserveAspectRatio')
@staticInterop
class SVGPreserveAspectRatio implements JSObject {
  external static JSNumber get SVG_PRESERVEASPECTRATIO_UNKNOWN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_NONE;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMINYMIN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMIDYMIN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMAXYMIN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMINYMID;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMIDYMID;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMAXYMID;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMINYMAX;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMIDYMAX;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMAXYMAX;
  external static JSNumber get SVG_MEETORSLICE_UNKNOWN;
  external static JSNumber get SVG_MEETORSLICE_MEET;
  external static JSNumber get SVG_MEETORSLICE_SLICE;
}

extension SVGPreserveAspectRatioExtension on SVGPreserveAspectRatio {
  external set align(JSNumber value);
  external JSNumber get align;
  external set meetOrSlice(JSNumber value);
  external JSNumber get meetOrSlice;
}

@JS('SVGAnimatedPreserveAspectRatio')
@staticInterop
class SVGAnimatedPreserveAspectRatio implements JSObject {}

extension SVGAnimatedPreserveAspectRatioExtension
    on SVGAnimatedPreserveAspectRatio {
  external SVGPreserveAspectRatio get baseVal;
  external SVGPreserveAspectRatio get animVal;
}

@JS('SVGPathElement')
@staticInterop
class SVGPathElement implements SVGGeometryElement {}

@JS('SVGRectElement')
@staticInterop
class SVGRectElement implements SVGGeometryElement {}

extension SVGRectElementExtension on SVGRectElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}

@JS('SVGCircleElement')
@staticInterop
class SVGCircleElement implements SVGGeometryElement {}

extension SVGCircleElementExtension on SVGCircleElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
}

@JS('SVGEllipseElement')
@staticInterop
class SVGEllipseElement implements SVGGeometryElement {}

extension SVGEllipseElementExtension on SVGEllipseElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}

@JS('SVGLineElement')
@staticInterop
class SVGLineElement implements SVGGeometryElement {}

extension SVGLineElementExtension on SVGLineElement {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}

@JS('SVGAnimatedPoints')
@staticInterop
class SVGAnimatedPoints implements JSObject {}

extension SVGAnimatedPointsExtension on SVGAnimatedPoints {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
}

@JS('SVGPointList')
@staticInterop
class SVGPointList implements JSObject {}

extension SVGPointListExtension on SVGPointList {
  external JSVoid clear();
  external DOMPoint initialize(DOMPoint newItem);
  external DOMPoint getItem(JSNumber index);
  external DOMPoint insertItemBefore(
    DOMPoint newItem,
    JSNumber index,
  );
  external DOMPoint replaceItem(
    DOMPoint newItem,
    JSNumber index,
  );
  external DOMPoint removeItem(JSNumber index);
  external DOMPoint appendItem(DOMPoint newItem);
  external JSNumber get length;
  external JSNumber get numberOfItems;
}

@JS('SVGPolylineElement')
@staticInterop
class SVGPolylineElement implements SVGGeometryElement, SVGAnimatedPoints {}

@JS('SVGPolygonElement')
@staticInterop
class SVGPolygonElement implements SVGGeometryElement, SVGAnimatedPoints {}

@JS('SVGTextContentElement')
@staticInterop
class SVGTextContentElement implements SVGGraphicsElement {
  external static JSNumber get LENGTHADJUST_UNKNOWN;
  external static JSNumber get LENGTHADJUST_SPACING;
  external static JSNumber get LENGTHADJUST_SPACINGANDGLYPHS;
}

extension SVGTextContentElementExtension on SVGTextContentElement {
  external JSNumber getNumberOfChars();
  external JSNumber getComputedTextLength();
  external JSNumber getSubStringLength(
    JSNumber charnum,
    JSNumber nchars,
  );
  external DOMPoint getStartPositionOfChar(JSNumber charnum);
  external DOMPoint getEndPositionOfChar(JSNumber charnum);
  external DOMRect getExtentOfChar(JSNumber charnum);
  external JSNumber getRotationOfChar(JSNumber charnum);
  external JSNumber getCharNumAtPosition([DOMPointInit point]);
  external JSVoid selectSubString(
    JSNumber charnum,
    JSNumber nchars,
  );
  external SVGAnimatedLength get textLength;
  external SVGAnimatedEnumeration get lengthAdjust;
}

@JS('SVGTextPositioningElement')
@staticInterop
class SVGTextPositioningElement implements SVGTextContentElement {}

extension SVGTextPositioningElementExtension on SVGTextPositioningElement {
  external SVGAnimatedLengthList get x;
  external SVGAnimatedLengthList get y;
  external SVGAnimatedLengthList get dx;
  external SVGAnimatedLengthList get dy;
  external SVGAnimatedNumberList get rotate;
}

@JS('SVGTextElement')
@staticInterop
class SVGTextElement implements SVGTextPositioningElement {}

@JS('SVGTSpanElement')
@staticInterop
class SVGTSpanElement implements SVGTextPositioningElement {}

@JS('SVGTextPathElement')
@staticInterop
class SVGTextPathElement implements SVGTextContentElement, SVGURIReference {
  external static JSNumber get TEXTPATH_METHODTYPE_UNKNOWN;
  external static JSNumber get TEXTPATH_METHODTYPE_ALIGN;
  external static JSNumber get TEXTPATH_METHODTYPE_STRETCH;
  external static JSNumber get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external static JSNumber get TEXTPATH_SPACINGTYPE_AUTO;
  external static JSNumber get TEXTPATH_SPACINGTYPE_EXACT;
}

extension SVGTextPathElementExtension on SVGTextPathElement {
  external SVGAnimatedLength get startOffset;
  external SVGAnimatedEnumeration get method;
  external SVGAnimatedEnumeration get spacing;
}

@JS('SVGImageElement')
@staticInterop
class SVGImageElement implements SVGGraphicsElement, SVGURIReference {}

extension SVGImageElementExtension on SVGImageElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
}

@JS('SVGForeignObjectElement')
@staticInterop
class SVGForeignObjectElement implements SVGGraphicsElement {}

extension SVGForeignObjectElementExtension on SVGForeignObjectElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGMarkerElement')
@staticInterop
class SVGMarkerElement implements SVGElement, SVGFitToViewBox {
  external static JSNumber get SVG_MARKERUNITS_UNKNOWN;
  external static JSNumber get SVG_MARKERUNITS_USERSPACEONUSE;
  external static JSNumber get SVG_MARKERUNITS_STROKEWIDTH;
  external static JSNumber get SVG_MARKER_ORIENT_UNKNOWN;
  external static JSNumber get SVG_MARKER_ORIENT_AUTO;
  external static JSNumber get SVG_MARKER_ORIENT_ANGLE;
}

extension SVGMarkerElementExtension on SVGMarkerElement {
  external JSVoid setOrientToAuto();
  external JSVoid setOrientToAngle(SVGAngle angle);
  external SVGAnimatedLength get refX;
  external SVGAnimatedLength get refY;
  external SVGAnimatedEnumeration get markerUnits;
  external SVGAnimatedLength get markerWidth;
  external SVGAnimatedLength get markerHeight;
  external SVGAnimatedEnumeration get orientType;
  external SVGAnimatedAngle get orientAngle;
  external set orient(JSString value);
  external JSString get orient;
}

@JS('SVGGradientElement')
@staticInterop
class SVGGradientElement implements SVGElement, SVGURIReference {
  external static JSNumber get SVG_SPREADMETHOD_UNKNOWN;
  external static JSNumber get SVG_SPREADMETHOD_PAD;
  external static JSNumber get SVG_SPREADMETHOD_REFLECT;
  external static JSNumber get SVG_SPREADMETHOD_REPEAT;
}

extension SVGGradientElementExtension on SVGGradientElement {
  external SVGAnimatedEnumeration get gradientUnits;
  external SVGAnimatedTransformList get gradientTransform;
  external SVGAnimatedEnumeration get spreadMethod;
}

@JS('SVGLinearGradientElement')
@staticInterop
class SVGLinearGradientElement implements SVGGradientElement {}

extension SVGLinearGradientElementExtension on SVGLinearGradientElement {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}

@JS('SVGRadialGradientElement')
@staticInterop
class SVGRadialGradientElement implements SVGGradientElement {}

extension SVGRadialGradientElementExtension on SVGRadialGradientElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
  external SVGAnimatedLength get fx;
  external SVGAnimatedLength get fy;
  external SVGAnimatedLength get fr;
}

@JS('SVGStopElement')
@staticInterop
class SVGStopElement implements SVGElement {}

extension SVGStopElementExtension on SVGStopElement {
  external SVGAnimatedNumber get offset;
}

@JS('SVGPatternElement')
@staticInterop
class SVGPatternElement
    implements SVGElement, SVGFitToViewBox, SVGURIReference {}

extension SVGPatternElementExtension on SVGPatternElement {
  external SVGAnimatedEnumeration get patternUnits;
  external SVGAnimatedEnumeration get patternContentUnits;
  external SVGAnimatedTransformList get patternTransform;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGScriptElement')
@staticInterop
class SVGScriptElement implements SVGElement, SVGURIReference {}

extension SVGScriptElementExtension on SVGScriptElement {
  external set type(JSString value);
  external JSString get type;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
}

@JS('SVGAElement')
@staticInterop
class SVGAElement implements SVGGraphicsElement, SVGURIReference {}

extension SVGAElementExtension on SVGAElement {
  external SVGAnimatedString get target;
  external set download(JSString value);
  external JSString get download;
  external set ping(JSString value);
  external JSString get ping;
  external set rel(JSString value);
  external JSString get rel;
  external DOMTokenList get relList;
  external set hreflang(JSString value);
  external JSString get hreflang;
  external set type(JSString value);
  external JSString get type;
  external set text(JSString value);
  external JSString get text;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external JSString get origin;
  external set protocol(JSString value);
  external JSString get protocol;
  external set username(JSString value);
  external JSString get username;
  external set password(JSString value);
  external JSString get password;
  external set host(JSString value);
  external JSString get host;
  external set hostname(JSString value);
  external JSString get hostname;
  external set port(JSString value);
  external JSString get port;
  external set pathname(JSString value);
  external JSString get pathname;
  external set search(JSString value);
  external JSString get search;
  external set hash(JSString value);
  external JSString get hash;
}

@JS('SVGViewElement')
@staticInterop
class SVGViewElement implements SVGElement, SVGFitToViewBox {}
