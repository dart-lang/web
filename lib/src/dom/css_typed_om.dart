// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'geometry.dart';

typedef CSSUnparsedSegment = JSAny;
typedef CSSKeywordish = JSAny;
typedef CSSNumberish = JSAny;
typedef CSSPerspectiveValue = JSAny;
typedef CSSColorRGBComp = JSAny;
typedef CSSColorPercent = JSAny;
typedef CSSColorNumber = JSAny;
typedef CSSColorAngle = JSAny;
typedef CSSNumericBaseType = JSString;
typedef CSSMathOperator = JSString;

@JS('CSSStyleValue')
@staticInterop
class CSSStyleValue {
  external factory CSSStyleValue();

  external static CSSStyleValue parse(
    JSString property,
    JSString cssText,
  );
  external static JSArray parseAll(
    JSString property,
    JSString cssText,
  );
}

@JS('StylePropertyMapReadOnly')
@staticInterop
class StylePropertyMapReadOnly {
  external factory StylePropertyMapReadOnly();
}

extension StylePropertyMapReadOnlyExtension on StylePropertyMapReadOnly {
  external JSAny get(JSString property);
  external JSArray getAll(JSString property);
  external JSBoolean has(JSString property);
  external JSNumber get size;
}

@JS('StylePropertyMap')
@staticInterop
class StylePropertyMap extends StylePropertyMapReadOnly {
  external factory StylePropertyMap();
}

extension StylePropertyMapExtension on StylePropertyMap {
  external JSVoid set(
    JSString property,
    JSAny values,
  );
  external JSVoid append(
    JSString property,
    JSAny values,
  );
  external JSVoid delete(JSString property);
  external JSVoid clear();
}

@JS('CSSUnparsedValue')
@staticInterop
class CSSUnparsedValue extends CSSStyleValue {
  external factory CSSUnparsedValue();

  external factory CSSUnparsedValue.a1(JSArray members);
}

extension CSSUnparsedValueExtension on CSSUnparsedValue {
  external JSNumber get length;
}

@JS('CSSVariableReferenceValue')
@staticInterop
class CSSVariableReferenceValue {
  external factory CSSVariableReferenceValue();

  external factory CSSVariableReferenceValue.a1(JSString variable);

  external factory CSSVariableReferenceValue.a2(
    JSString variable,
    CSSUnparsedValue? fallback,
  );
}

extension CSSVariableReferenceValueExtension on CSSVariableReferenceValue {
  external set variable(JSString value);
  external JSString get variable;
  external CSSUnparsedValue? get fallback;
}

@JS('CSSKeywordValue')
@staticInterop
class CSSKeywordValue extends CSSStyleValue {
  external factory CSSKeywordValue();

  external factory CSSKeywordValue.a1(JSString value);
}

extension CSSKeywordValueExtension on CSSKeywordValue {
  external set value(JSString value);
  external JSString get value;
}

@JS()
@staticInterop
@anonymous
class CSSNumericType {
  external factory CSSNumericType({
    JSNumber length,
    JSNumber angle,
    JSNumber time,
    JSNumber frequency,
    JSNumber resolution,
    JSNumber flex,
    JSNumber percent,
    CSSNumericBaseType percentHint,
  });
}

extension CSSNumericTypeExtension on CSSNumericType {
  external set length(JSNumber value);
  external JSNumber get length;
  external set angle(JSNumber value);
  external JSNumber get angle;
  external set time(JSNumber value);
  external JSNumber get time;
  external set frequency(JSNumber value);
  external JSNumber get frequency;
  external set resolution(JSNumber value);
  external JSNumber get resolution;
  external set flex(JSNumber value);
  external JSNumber get flex;
  external set percent(JSNumber value);
  external JSNumber get percent;
  external set percentHint(CSSNumericBaseType value);
  external CSSNumericBaseType get percentHint;
}

@JS('CSSNumericValue')
@staticInterop
class CSSNumericValue extends CSSStyleValue {
  external factory CSSNumericValue();

  external static CSSNumericValue parse(JSString cssText);
}

extension CSSNumericValueExtension on CSSNumericValue {
  external CSSNumericValue add(CSSNumberish values);
  external CSSNumericValue sub(CSSNumberish values);
  external CSSNumericValue mul(CSSNumberish values);
  external CSSNumericValue div(CSSNumberish values);
  external CSSNumericValue min(CSSNumberish values);
  external CSSNumericValue max(CSSNumberish values);
  external JSBoolean equals(CSSNumberish value);
  external CSSUnitValue to(JSString unit);
  external CSSMathSum toSum(JSString units);
  external CSSNumericType type();
}

@JS('CSSUnitValue')
@staticInterop
class CSSUnitValue extends CSSNumericValue {
  external factory CSSUnitValue();

  external factory CSSUnitValue.a1(
    JSNumber value,
    JSString unit,
  );
}

extension CSSUnitValueExtension on CSSUnitValue {
  external set value(JSNumber value);
  external JSNumber get value;
  external JSString get unit;
}

@JS('CSSMathValue')
@staticInterop
class CSSMathValue extends CSSNumericValue {
  external factory CSSMathValue();
}

extension CSSMathValueExtension on CSSMathValue {
  external CSSMathOperator get operator;
}

@JS('CSSMathSum')
@staticInterop
class CSSMathSum extends CSSMathValue {
  external factory CSSMathSum();

  external factory CSSMathSum.a1(CSSNumberish args);
}

extension CSSMathSumExtension on CSSMathSum {
  external CSSNumericArray get values;
}

@JS('CSSMathProduct')
@staticInterop
class CSSMathProduct extends CSSMathValue {
  external factory CSSMathProduct();

  external factory CSSMathProduct.a1(CSSNumberish args);
}

extension CSSMathProductExtension on CSSMathProduct {
  external CSSNumericArray get values;
}

@JS('CSSMathNegate')
@staticInterop
class CSSMathNegate extends CSSMathValue {
  external factory CSSMathNegate();

  external factory CSSMathNegate.a1(CSSNumberish arg);
}

extension CSSMathNegateExtension on CSSMathNegate {
  external CSSNumericValue get value;
}

@JS('CSSMathInvert')
@staticInterop
class CSSMathInvert extends CSSMathValue {
  external factory CSSMathInvert();

  external factory CSSMathInvert.a1(CSSNumberish arg);
}

extension CSSMathInvertExtension on CSSMathInvert {
  external CSSNumericValue get value;
}

@JS('CSSMathMin')
@staticInterop
class CSSMathMin extends CSSMathValue {
  external factory CSSMathMin();

  external factory CSSMathMin.a1(CSSNumberish args);
}

extension CSSMathMinExtension on CSSMathMin {
  external CSSNumericArray get values;
}

@JS('CSSMathMax')
@staticInterop
class CSSMathMax extends CSSMathValue {
  external factory CSSMathMax();

  external factory CSSMathMax.a1(CSSNumberish args);
}

extension CSSMathMaxExtension on CSSMathMax {
  external CSSNumericArray get values;
}

@JS('CSSMathClamp')
@staticInterop
class CSSMathClamp extends CSSMathValue {
  external factory CSSMathClamp();

  external factory CSSMathClamp.a1(
    CSSNumberish lower,
    CSSNumberish value,
    CSSNumberish upper,
  );
}

extension CSSMathClampExtension on CSSMathClamp {
  external CSSNumericValue get lower;
  external CSSNumericValue get value;
  external CSSNumericValue get upper;
}

@JS('CSSNumericArray')
@staticInterop
class CSSNumericArray {
  external factory CSSNumericArray();
}

extension CSSNumericArrayExtension on CSSNumericArray {
  external JSNumber get length;
}

@JS('CSSTransformValue')
@staticInterop
class CSSTransformValue extends CSSStyleValue {
  external factory CSSTransformValue();

  external factory CSSTransformValue.a1(JSArray transforms);
}

extension CSSTransformValueExtension on CSSTransformValue {
  external JSNumber get length;
  external JSBoolean get is2D;
  external DOMMatrix toMatrix();
}

@JS('CSSTransformComponent')
@staticInterop
class CSSTransformComponent {
  external factory CSSTransformComponent();
}

extension CSSTransformComponentExtension on CSSTransformComponent {
  external set is2D(JSBoolean value);
  external JSBoolean get is2D;
  external DOMMatrix toMatrix();
}

@JS('CSSTranslate')
@staticInterop
class CSSTranslate extends CSSTransformComponent {
  external factory CSSTranslate();

  external factory CSSTranslate.a1(
    CSSNumericValue x,
    CSSNumericValue y,
  );

  external factory CSSTranslate.a2(
    CSSNumericValue x,
    CSSNumericValue y,
    CSSNumericValue z,
  );
}

extension CSSTranslateExtension on CSSTranslate {
  external set x(CSSNumericValue value);
  external CSSNumericValue get x;
  external set y(CSSNumericValue value);
  external CSSNumericValue get y;
  external set z(CSSNumericValue value);
  external CSSNumericValue get z;
}

@JS('CSSRotate')
@staticInterop
class CSSRotate extends CSSTransformComponent {
  external factory CSSRotate();

  external factory CSSRotate.a1(CSSNumericValue angle);

  external factory CSSRotate.a2(
    CSSNumberish x,
    CSSNumberish y,
    CSSNumberish z,
    CSSNumericValue angle,
  );
}

extension CSSRotateExtension on CSSRotate {
  external set x(CSSNumberish value);
  external CSSNumberish get x;
  external set y(CSSNumberish value);
  external CSSNumberish get y;
  external set z(CSSNumberish value);
  external CSSNumberish get z;
  external set angle(CSSNumericValue value);
  external CSSNumericValue get angle;
}

@JS('CSSScale')
@staticInterop
class CSSScale extends CSSTransformComponent {
  external factory CSSScale();

  external factory CSSScale.a1(
    CSSNumberish x,
    CSSNumberish y,
  );

  external factory CSSScale.a2(
    CSSNumberish x,
    CSSNumberish y,
    CSSNumberish z,
  );
}

extension CSSScaleExtension on CSSScale {
  external set x(CSSNumberish value);
  external CSSNumberish get x;
  external set y(CSSNumberish value);
  external CSSNumberish get y;
  external set z(CSSNumberish value);
  external CSSNumberish get z;
}

@JS('CSSSkew')
@staticInterop
class CSSSkew extends CSSTransformComponent {
  external factory CSSSkew();

  external factory CSSSkew.a1(
    CSSNumericValue ax,
    CSSNumericValue ay,
  );
}

extension CSSSkewExtension on CSSSkew {
  external set ax(CSSNumericValue value);
  external CSSNumericValue get ax;
  external set ay(CSSNumericValue value);
  external CSSNumericValue get ay;
}

@JS('CSSSkewX')
@staticInterop
class CSSSkewX extends CSSTransformComponent {
  external factory CSSSkewX();

  external factory CSSSkewX.a1(CSSNumericValue ax);
}

extension CSSSkewXExtension on CSSSkewX {
  external set ax(CSSNumericValue value);
  external CSSNumericValue get ax;
}

@JS('CSSSkewY')
@staticInterop
class CSSSkewY extends CSSTransformComponent {
  external factory CSSSkewY();

  external factory CSSSkewY.a1(CSSNumericValue ay);
}

extension CSSSkewYExtension on CSSSkewY {
  external set ay(CSSNumericValue value);
  external CSSNumericValue get ay;
}

@JS('CSSPerspective')
@staticInterop
class CSSPerspective extends CSSTransformComponent {
  external factory CSSPerspective();

  external factory CSSPerspective.a1(CSSPerspectiveValue length);
}

extension CSSPerspectiveExtension on CSSPerspective {
  external set length(CSSPerspectiveValue value);
  external CSSPerspectiveValue get length;
}

@JS('CSSMatrixComponent')
@staticInterop
class CSSMatrixComponent extends CSSTransformComponent {
  external factory CSSMatrixComponent();

  external factory CSSMatrixComponent.a1(DOMMatrixReadOnly matrix);

  external factory CSSMatrixComponent.a2(
    DOMMatrixReadOnly matrix,
    CSSMatrixComponentOptions options,
  );
}

extension CSSMatrixComponentExtension on CSSMatrixComponent {
  external set matrix(DOMMatrix value);
  external DOMMatrix get matrix;
}

@JS()
@staticInterop
@anonymous
class CSSMatrixComponentOptions {
  external factory CSSMatrixComponentOptions({JSBoolean is2D});
}

extension CSSMatrixComponentOptionsExtension on CSSMatrixComponentOptions {
  external set is2D(JSBoolean value);
  external JSBoolean get is2D;
}

@JS('CSSImageValue')
@staticInterop
class CSSImageValue extends CSSStyleValue {
  external factory CSSImageValue();
}

@JS('CSSColorValue')
@staticInterop
class CSSColorValue extends CSSStyleValue {
  external factory CSSColorValue();

  external static JSAny parse(JSString cssText);
}

@JS('CSSRGB')
@staticInterop
class CSSRGB extends CSSColorValue {
  external factory CSSRGB();

  external factory CSSRGB.a1(
    CSSColorRGBComp r,
    CSSColorRGBComp g,
    CSSColorRGBComp b,
  );

  external factory CSSRGB.a2(
    CSSColorRGBComp r,
    CSSColorRGBComp g,
    CSSColorRGBComp b,
    CSSColorPercent alpha,
  );
}

extension CSSRGBExtension on CSSRGB {
  external set r(CSSColorRGBComp value);
  external CSSColorRGBComp get r;
  external set g(CSSColorRGBComp value);
  external CSSColorRGBComp get g;
  external set b(CSSColorRGBComp value);
  external CSSColorRGBComp get b;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}

@JS('CSSHSL')
@staticInterop
class CSSHSL extends CSSColorValue {
  external factory CSSHSL();

  external factory CSSHSL.a1(
    CSSColorAngle h,
    CSSColorPercent s,
    CSSColorPercent l,
  );

  external factory CSSHSL.a2(
    CSSColorAngle h,
    CSSColorPercent s,
    CSSColorPercent l,
    CSSColorPercent alpha,
  );
}

extension CSSHSLExtension on CSSHSL {
  external set h(CSSColorAngle value);
  external CSSColorAngle get h;
  external set s(CSSColorPercent value);
  external CSSColorPercent get s;
  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}

@JS('CSSHWB')
@staticInterop
class CSSHWB extends CSSColorValue {
  external factory CSSHWB();

  external factory CSSHWB.a1(
    CSSNumericValue h,
    CSSNumberish w,
    CSSNumberish b,
  );

  external factory CSSHWB.a2(
    CSSNumericValue h,
    CSSNumberish w,
    CSSNumberish b,
    CSSNumberish alpha,
  );
}

extension CSSHWBExtension on CSSHWB {
  external set h(CSSNumericValue value);
  external CSSNumericValue get h;
  external set w(CSSNumberish value);
  external CSSNumberish get w;
  external set b(CSSNumberish value);
  external CSSNumberish get b;
  external set alpha(CSSNumberish value);
  external CSSNumberish get alpha;
}

@JS('CSSLab')
@staticInterop
class CSSLab extends CSSColorValue {
  external factory CSSLab();

  external factory CSSLab.a1(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b,
  );

  external factory CSSLab.a2(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b,
    CSSColorPercent alpha,
  );
}

extension CSSLabExtension on CSSLab {
  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set a(CSSColorNumber value);
  external CSSColorNumber get a;
  external set b(CSSColorNumber value);
  external CSSColorNumber get b;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}

@JS('CSSLCH')
@staticInterop
class CSSLCH extends CSSColorValue {
  external factory CSSLCH();

  external factory CSSLCH.a1(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h,
  );

  external factory CSSLCH.a2(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h,
    CSSColorPercent alpha,
  );
}

extension CSSLCHExtension on CSSLCH {
  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set c(CSSColorPercent value);
  external CSSColorPercent get c;
  external set h(CSSColorAngle value);
  external CSSColorAngle get h;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}

@JS('CSSOKLab')
@staticInterop
class CSSOKLab extends CSSColorValue {
  external factory CSSOKLab();

  external factory CSSOKLab.a1(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b,
  );

  external factory CSSOKLab.a2(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b,
    CSSColorPercent alpha,
  );
}

extension CSSOKLabExtension on CSSOKLab {
  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set a(CSSColorNumber value);
  external CSSColorNumber get a;
  external set b(CSSColorNumber value);
  external CSSColorNumber get b;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}

@JS('CSSOKLCH')
@staticInterop
class CSSOKLCH extends CSSColorValue {
  external factory CSSOKLCH();

  external factory CSSOKLCH.a1(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h,
  );

  external factory CSSOKLCH.a2(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h,
    CSSColorPercent alpha,
  );
}

extension CSSOKLCHExtension on CSSOKLCH {
  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set c(CSSColorPercent value);
  external CSSColorPercent get c;
  external set h(CSSColorAngle value);
  external CSSColorAngle get h;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}

@JS('CSSColor')
@staticInterop
class CSSColor extends CSSColorValue {
  external factory CSSColor();

  external factory CSSColor.a1(
    CSSKeywordish colorSpace,
    JSArray channels,
  );

  external factory CSSColor.a2(
    CSSKeywordish colorSpace,
    JSArray channels,
    CSSNumberish alpha,
  );
}

extension CSSColorExtension on CSSColor {
  external set colorSpace(CSSKeywordish value);
  external CSSKeywordish get colorSpace;
  external set channels(JSArray value);
  external JSArray get channels;
  external set alpha(CSSNumberish value);
  external CSSNumberish get alpha;
}
