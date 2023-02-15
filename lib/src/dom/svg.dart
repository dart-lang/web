// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'cssom.dart';
import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'web_animations.dart';

@JS('SVGElement')
@staticInterop
class SVGElement extends Element
    implements
        GlobalEventHandlers,
        SVGElementInstance,
        HTMLOrSVGElement,
        ElementCSSInlineStyle {
  external factory SVGElement();
}

extension SVGElementExtension on SVGElement {
  external SVGAnimatedString get className;
  external SVGSVGElement? get ownerSVGElement;
  external SVGElement? get viewportElement;
}

@JS('SVGBoundingBoxOptions')
@staticInterop
class SVGBoundingBoxOptions {
  external factory SVGBoundingBoxOptions();
}

extension SVGBoundingBoxOptionsExtension on SVGBoundingBoxOptions {}

@JS('SVGGraphicsElement')
@staticInterop
class SVGGraphicsElement extends SVGElement implements SVGTests {
  external factory SVGGraphicsElement();
}

extension SVGGraphicsElementExtension on SVGGraphicsElement {
  external SVGAnimatedTransformList get transform;
  external DOMRect getBBox();
  external DOMRect getBBox1(SVGBoundingBoxOptions options);
  external DOMMatrix? getCTM();
  external DOMMatrix? getScreenCTM();
}

@JS('SVGGeometryElement')
@staticInterop
class SVGGeometryElement extends SVGGraphicsElement {
  external factory SVGGeometryElement();
}

extension SVGGeometryElementExtension on SVGGeometryElement {
  external SVGAnimatedNumber get pathLength;
  external JSBoolean isPointInFill();
  external JSBoolean isPointInFill1(DOMPointInit point);
  external JSBoolean isPointInStroke();
  external JSBoolean isPointInStroke1(DOMPointInit point);
  external JSNumber getTotalLength();
  external DOMPoint getPointAtLength(JSNumber distance);
}

@JS('SVGNumber')
@staticInterop
class SVGNumber {
  external factory SVGNumber();
}

extension SVGNumberExtension on SVGNumber {
  external set value(JSNumber value);
  external JSNumber get value;
}

@JS('SVGLength')
@staticInterop
class SVGLength {
  external factory SVGLength();

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
  external JSNumber get unitType;
  external set value(JSNumber value);
  external JSNumber get value;
  external set valueInSpecifiedUnits(JSNumber value);
  external JSNumber get valueInSpecifiedUnits;
  external set valueAsString(JSString value);
  external JSString get valueAsString;
  external JSVoid newValueSpecifiedUnits(
    JSNumber unitType,
    JSNumber valueInSpecifiedUnits,
  );
  external JSVoid convertToSpecifiedUnits(JSNumber unitType);
}

@JS('SVGAngle')
@staticInterop
class SVGAngle {
  external factory SVGAngle();

  external static JSNumber get SVG_ANGLETYPE_UNKNOWN;
  external static JSNumber get SVG_ANGLETYPE_UNSPECIFIED;
  external static JSNumber get SVG_ANGLETYPE_DEG;
  external static JSNumber get SVG_ANGLETYPE_RAD;
  external static JSNumber get SVG_ANGLETYPE_GRAD;
}

extension SVGAngleExtension on SVGAngle {
  external JSNumber get unitType;
  external set value(JSNumber value);
  external JSNumber get value;
  external set valueInSpecifiedUnits(JSNumber value);
  external JSNumber get valueInSpecifiedUnits;
  external set valueAsString(JSString value);
  external JSString get valueAsString;
  external JSVoid newValueSpecifiedUnits(
    JSNumber unitType,
    JSNumber valueInSpecifiedUnits,
  );
  external JSVoid convertToSpecifiedUnits(JSNumber unitType);
}

@JS('SVGNumberList')
@staticInterop
class SVGNumberList {
  external factory SVGNumberList();
}

extension SVGNumberListExtension on SVGNumberList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
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
}

@JS('SVGLengthList')
@staticInterop
class SVGLengthList {
  external factory SVGLengthList();
}

extension SVGLengthListExtension on SVGLengthList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
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
}

@JS('SVGStringList')
@staticInterop
class SVGStringList {
  external factory SVGStringList();
}

extension SVGStringListExtension on SVGStringList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
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
}

@JS('SVGAnimatedBoolean')
@staticInterop
class SVGAnimatedBoolean {
  external factory SVGAnimatedBoolean();
}

extension SVGAnimatedBooleanExtension on SVGAnimatedBoolean {
  external set baseVal(JSBoolean value);
  external JSBoolean get baseVal;
  external JSBoolean get animVal;
}

@JS('SVGAnimatedEnumeration')
@staticInterop
class SVGAnimatedEnumeration {
  external factory SVGAnimatedEnumeration();
}

extension SVGAnimatedEnumerationExtension on SVGAnimatedEnumeration {
  external set baseVal(JSNumber value);
  external JSNumber get baseVal;
  external JSNumber get animVal;
}

@JS('SVGAnimatedInteger')
@staticInterop
class SVGAnimatedInteger {
  external factory SVGAnimatedInteger();
}

extension SVGAnimatedIntegerExtension on SVGAnimatedInteger {
  external set baseVal(JSNumber value);
  external JSNumber get baseVal;
  external JSNumber get animVal;
}

@JS('SVGAnimatedNumber')
@staticInterop
class SVGAnimatedNumber {
  external factory SVGAnimatedNumber();
}

extension SVGAnimatedNumberExtension on SVGAnimatedNumber {
  external set baseVal(JSNumber value);
  external JSNumber get baseVal;
  external JSNumber get animVal;
}

@JS('SVGAnimatedLength')
@staticInterop
class SVGAnimatedLength {
  external factory SVGAnimatedLength();
}

extension SVGAnimatedLengthExtension on SVGAnimatedLength {
  external SVGLength get baseVal;
  external SVGLength get animVal;
}

@JS('SVGAnimatedAngle')
@staticInterop
class SVGAnimatedAngle {
  external factory SVGAnimatedAngle();
}

extension SVGAnimatedAngleExtension on SVGAnimatedAngle {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;
}

@JS('SVGAnimatedString')
@staticInterop
class SVGAnimatedString {
  external factory SVGAnimatedString();
}

extension SVGAnimatedStringExtension on SVGAnimatedString {
  external set baseVal(JSString value);
  external JSString get baseVal;
  external JSString get animVal;
}

@JS('SVGAnimatedRect')
@staticInterop
class SVGAnimatedRect {
  external factory SVGAnimatedRect();
}

extension SVGAnimatedRectExtension on SVGAnimatedRect {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}

@JS('SVGAnimatedNumberList')
@staticInterop
class SVGAnimatedNumberList {
  external factory SVGAnimatedNumberList();
}

extension SVGAnimatedNumberListExtension on SVGAnimatedNumberList {
  external SVGNumberList get baseVal;
  external SVGNumberList get animVal;
}

@JS('SVGAnimatedLengthList')
@staticInterop
class SVGAnimatedLengthList {
  external factory SVGAnimatedLengthList();
}

extension SVGAnimatedLengthListExtension on SVGAnimatedLengthList {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;
}

@JS('SVGUnitTypes')
@staticInterop
class SVGUnitTypes {
  external factory SVGUnitTypes();

  external static JSNumber get SVG_UNIT_TYPE_UNKNOWN;
  external static JSNumber get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static JSNumber get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
}

@JS('SVGTests')
@staticInterop
class SVGTests {
  external factory SVGTests();
}

extension SVGTestsExtension on SVGTests {
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}

@JS('SVGFitToViewBox')
@staticInterop
class SVGFitToViewBox {
  external factory SVGFitToViewBox();
}

extension SVGFitToViewBoxExtension on SVGFitToViewBox {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

@JS('SVGURIReference')
@staticInterop
class SVGURIReference {
  external factory SVGURIReference();
}

extension SVGURIReferenceExtension on SVGURIReference {
  external SVGAnimatedString get href;
}

@JS('SVGSVGElement')
@staticInterop
class SVGSVGElement extends SVGGraphicsElement
    implements SVGFitToViewBox, WindowEventHandlers {
  external factory SVGSVGElement();
}

extension SVGSVGElementExtension on SVGSVGElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external set currentScale(JSNumber value);
  external JSNumber get currentScale;
  external DOMPointReadOnly get currentTranslate;
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
  external SVGTransform createSVGTransformFromMatrix();
  external SVGTransform createSVGTransformFromMatrix1(DOMMatrix2DInit matrix);
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
}

@JS('SVGGElement')
@staticInterop
class SVGGElement extends SVGGraphicsElement {
  external factory SVGGElement();
}

@JS('SVGDefsElement')
@staticInterop
class SVGDefsElement extends SVGGraphicsElement {
  external factory SVGDefsElement();
}

@JS('SVGDescElement')
@staticInterop
class SVGDescElement extends SVGElement {
  external factory SVGDescElement();
}

@JS('SVGMetadataElement')
@staticInterop
class SVGMetadataElement extends SVGElement {
  external factory SVGMetadataElement();
}

@JS('SVGTitleElement')
@staticInterop
class SVGTitleElement extends SVGElement {
  external factory SVGTitleElement();
}

@JS('SVGSymbolElement')
@staticInterop
class SVGSymbolElement extends SVGGraphicsElement implements SVGFitToViewBox {
  external factory SVGSymbolElement();
}

@JS('SVGUseElement')
@staticInterop
class SVGUseElement extends SVGGraphicsElement implements SVGURIReference {
  external factory SVGUseElement();
}

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
class SVGUseElementShadowRoot extends ShadowRoot {
  external factory SVGUseElementShadowRoot();
}

@JS('SVGElementInstance')
@staticInterop
class SVGElementInstance {
  external factory SVGElementInstance();
}

extension SVGElementInstanceExtension on SVGElementInstance {
  external SVGElement? get correspondingElement;
  external SVGUseElement? get correspondingUseElement;
}

@JS('ShadowAnimation')
@staticInterop
class ShadowAnimation extends Animation {
  external factory ShadowAnimation();

  external factory ShadowAnimation.a1(
    Animation source,
    JSAny newTarget,
  );
}

extension ShadowAnimationExtension on ShadowAnimation {
  external Animation get sourceAnimation;
}

@JS('SVGSwitchElement')
@staticInterop
class SVGSwitchElement extends SVGGraphicsElement {
  external factory SVGSwitchElement();
}

@JS('GetSVGDocument')
@staticInterop
class GetSVGDocument {
  external factory GetSVGDocument();
}

extension GetSVGDocumentExtension on GetSVGDocument {
  external Document getSVGDocument();
}

@JS('SVGStyleElement')
@staticInterop
class SVGStyleElement extends SVGElement implements LinkStyle {
  external factory SVGStyleElement();
}

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
class SVGTransform {
  external factory SVGTransform();

  external static JSNumber get SVG_TRANSFORM_UNKNOWN;
  external static JSNumber get SVG_TRANSFORM_MATRIX;
  external static JSNumber get SVG_TRANSFORM_TRANSLATE;
  external static JSNumber get SVG_TRANSFORM_SCALE;
  external static JSNumber get SVG_TRANSFORM_ROTATE;
  external static JSNumber get SVG_TRANSFORM_SKEWX;
  external static JSNumber get SVG_TRANSFORM_SKEWY;
}

extension SVGTransformExtension on SVGTransform {
  external JSNumber get type;
  external DOMMatrix get matrix;
  external JSNumber get angle;
  external JSVoid setMatrix();
  external JSVoid setMatrix1(DOMMatrix2DInit matrix);
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
}

@JS('SVGTransformList')
@staticInterop
class SVGTransformList {
  external factory SVGTransformList();
}

extension SVGTransformListExtension on SVGTransformList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
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
  external SVGTransform createSVGTransformFromMatrix();
  external SVGTransform createSVGTransformFromMatrix1(DOMMatrix2DInit matrix);
  external SVGTransform? consolidate();
}

@JS('SVGAnimatedTransformList')
@staticInterop
class SVGAnimatedTransformList {
  external factory SVGAnimatedTransformList();
}

extension SVGAnimatedTransformListExtension on SVGAnimatedTransformList {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;
}

@JS('SVGPreserveAspectRatio')
@staticInterop
class SVGPreserveAspectRatio {
  external factory SVGPreserveAspectRatio();

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
class SVGAnimatedPreserveAspectRatio {
  external factory SVGAnimatedPreserveAspectRatio();
}

extension SVGAnimatedPreserveAspectRatioExtension
    on SVGAnimatedPreserveAspectRatio {
  external SVGPreserveAspectRatio get baseVal;
  external SVGPreserveAspectRatio get animVal;
}

@JS('SVGPathElement')
@staticInterop
class SVGPathElement extends SVGGeometryElement {
  external factory SVGPathElement();
}

@JS('SVGRectElement')
@staticInterop
class SVGRectElement extends SVGGeometryElement {
  external factory SVGRectElement();
}

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
class SVGCircleElement extends SVGGeometryElement {
  external factory SVGCircleElement();
}

extension SVGCircleElementExtension on SVGCircleElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
}

@JS('SVGEllipseElement')
@staticInterop
class SVGEllipseElement extends SVGGeometryElement {
  external factory SVGEllipseElement();
}

extension SVGEllipseElementExtension on SVGEllipseElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}

@JS('SVGLineElement')
@staticInterop
class SVGLineElement extends SVGGeometryElement {
  external factory SVGLineElement();
}

extension SVGLineElementExtension on SVGLineElement {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}

@JS('SVGAnimatedPoints')
@staticInterop
class SVGAnimatedPoints {
  external factory SVGAnimatedPoints();
}

extension SVGAnimatedPointsExtension on SVGAnimatedPoints {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
}

@JS('SVGPointList')
@staticInterop
class SVGPointList {
  external factory SVGPointList();
}

extension SVGPointListExtension on SVGPointList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
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
}

@JS('SVGPolylineElement')
@staticInterop
class SVGPolylineElement extends SVGGeometryElement
    implements SVGAnimatedPoints {
  external factory SVGPolylineElement();
}

@JS('SVGPolygonElement')
@staticInterop
class SVGPolygonElement extends SVGGeometryElement
    implements SVGAnimatedPoints {
  external factory SVGPolygonElement();
}

@JS('SVGTextContentElement')
@staticInterop
class SVGTextContentElement extends SVGGraphicsElement {
  external factory SVGTextContentElement();

  external static JSNumber get LENGTHADJUST_UNKNOWN;
  external static JSNumber get LENGTHADJUST_SPACING;
  external static JSNumber get LENGTHADJUST_SPACINGANDGLYPHS;
}

extension SVGTextContentElementExtension on SVGTextContentElement {
  external SVGAnimatedLength get textLength;
  external SVGAnimatedEnumeration get lengthAdjust;
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
  external JSNumber getCharNumAtPosition();
  external JSNumber getCharNumAtPosition1(DOMPointInit point);
  external JSVoid selectSubString(
    JSNumber charnum,
    JSNumber nchars,
  );
}

@JS('SVGTextPositioningElement')
@staticInterop
class SVGTextPositioningElement extends SVGTextContentElement {
  external factory SVGTextPositioningElement();
}

extension SVGTextPositioningElementExtension on SVGTextPositioningElement {
  external SVGAnimatedLengthList get x;
  external SVGAnimatedLengthList get y;
  external SVGAnimatedLengthList get dx;
  external SVGAnimatedLengthList get dy;
  external SVGAnimatedNumberList get rotate;
}

@JS('SVGTextElement')
@staticInterop
class SVGTextElement extends SVGTextPositioningElement {
  external factory SVGTextElement();
}

@JS('SVGTSpanElement')
@staticInterop
class SVGTSpanElement extends SVGTextPositioningElement {
  external factory SVGTSpanElement();
}

@JS('SVGTextPathElement')
@staticInterop
class SVGTextPathElement extends SVGTextContentElement
    implements SVGURIReference {
  external factory SVGTextPathElement();

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
class SVGImageElement extends SVGGraphicsElement implements SVGURIReference {
  external factory SVGImageElement();
}

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
class SVGForeignObjectElement extends SVGGraphicsElement {
  external factory SVGForeignObjectElement();
}

extension SVGForeignObjectElementExtension on SVGForeignObjectElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGMarkerElement')
@staticInterop
class SVGMarkerElement extends SVGElement implements SVGFitToViewBox {
  external factory SVGMarkerElement();

  external static JSNumber get SVG_MARKERUNITS_UNKNOWN;
  external static JSNumber get SVG_MARKERUNITS_USERSPACEONUSE;
  external static JSNumber get SVG_MARKERUNITS_STROKEWIDTH;
  external static JSNumber get SVG_MARKER_ORIENT_UNKNOWN;
  external static JSNumber get SVG_MARKER_ORIENT_AUTO;
  external static JSNumber get SVG_MARKER_ORIENT_ANGLE;
}

extension SVGMarkerElementExtension on SVGMarkerElement {
  external SVGAnimatedLength get refX;
  external SVGAnimatedLength get refY;
  external SVGAnimatedEnumeration get markerUnits;
  external SVGAnimatedLength get markerWidth;
  external SVGAnimatedLength get markerHeight;
  external SVGAnimatedEnumeration get orientType;
  external SVGAnimatedAngle get orientAngle;
  external set orient(JSString value);
  external JSString get orient;
  external JSVoid setOrientToAuto();
  external JSVoid setOrientToAngle(SVGAngle angle);
}

@JS('SVGGradientElement')
@staticInterop
class SVGGradientElement extends SVGElement implements SVGURIReference {
  external factory SVGGradientElement();

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
class SVGLinearGradientElement extends SVGGradientElement {
  external factory SVGLinearGradientElement();
}

extension SVGLinearGradientElementExtension on SVGLinearGradientElement {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}

@JS('SVGRadialGradientElement')
@staticInterop
class SVGRadialGradientElement extends SVGGradientElement {
  external factory SVGRadialGradientElement();
}

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
class SVGStopElement extends SVGElement {
  external factory SVGStopElement();
}

extension SVGStopElementExtension on SVGStopElement {
  external SVGAnimatedNumber get offset;
}

@JS('SVGPatternElement')
@staticInterop
class SVGPatternElement extends SVGElement
    implements SVGFitToViewBox, SVGURIReference {
  external factory SVGPatternElement();
}

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
class SVGScriptElement extends SVGElement implements SVGURIReference {
  external factory SVGScriptElement();
}

extension SVGScriptElementExtension on SVGScriptElement {
  external set type(JSString value);
  external JSString get type;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
}

@JS('SVGAElement')
@staticInterop
class SVGAElement extends SVGGraphicsElement implements SVGURIReference {
  external factory SVGAElement();
}

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
class SVGViewElement extends SVGElement implements SVGFitToViewBox {
  external factory SVGViewElement();
}
