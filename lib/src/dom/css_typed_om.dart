// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'geometry.dart';

typedef CSSUnparsedSegment = JSAny;
typedef CSSKeywordish = JSAny;
typedef CSSNumberish = JSAny;
typedef CSSPerspectiveValue = JSAny;
typedef CSSColorRGBComp = JSAny;
typedef CSSColorPercent = JSAny;
typedef CSSColorNumber = JSAny;
typedef CSSColorAngle = JSAny;
typedef CSSNumericBaseType = String;
typedef CSSMathOperator = String;
extension type CSSStyleValue._(JSObject _) implements JSObject {
  external static CSSStyleValue parse(
    String property,
    String cssText,
  );
  external static JSArray<CSSStyleValue> parseAll(
    String property,
    String cssText,
  );
}
extension type StylePropertyMapReadOnly._(JSObject _) implements JSObject {
  external CSSStyleValue? get(String property);
  external JSArray<CSSStyleValue> getAll(String property);
  external bool has(String property);
  external int get size;
}
extension type StylePropertyMap._(JSObject _)
    implements StylePropertyMapReadOnly, JSObject {
  external void set(
    String property,
    JSAny values,
  );
  external void append(
    String property,
    JSAny values,
  );
  external void delete(String property);
  external void clear();
}
extension type CSSUnparsedValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external factory CSSUnparsedValue(JSArray<CSSUnparsedSegment> members);

  external int get length;
}
extension type CSSVariableReferenceValue._(JSObject _) implements JSObject {
  external factory CSSVariableReferenceValue(
    String variable, [
    CSSUnparsedValue? fallback,
  ]);

  external set variable(String value);
  external String get variable;
  external CSSUnparsedValue? get fallback;
}
extension type CSSKeywordValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external factory CSSKeywordValue(String value);

  external set value(String value);
  external String get value;
}
extension type CSSNumericType._(JSObject _) implements JSObject {
  external factory CSSNumericType({
    int length,
    int angle,
    int time,
    int frequency,
    int resolution,
    int flex,
    int percent,
    CSSNumericBaseType percentHint,
  });

  external set length(int value);
  external int get length;
  external set angle(int value);
  external int get angle;
  external set time(int value);
  external int get time;
  external set frequency(int value);
  external int get frequency;
  external set resolution(int value);
  external int get resolution;
  external set flex(int value);
  external int get flex;
  external set percent(int value);
  external int get percent;
  external set percentHint(CSSNumericBaseType value);
  external CSSNumericBaseType get percentHint;
}
extension type CSSNumericValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external static CSSNumericValue parse(String cssText);
  external CSSNumericValue add(CSSNumberish values);
  external CSSNumericValue sub(CSSNumberish values);
  external CSSNumericValue mul(CSSNumberish values);
  external CSSNumericValue div(CSSNumberish values);
  external CSSNumericValue min(CSSNumberish values);
  external CSSNumericValue max(CSSNumberish values);
  external bool equals(CSSNumberish value);
  external CSSUnitValue to(String unit);
  external CSSMathSum toSum(String units);
  external CSSNumericType type();
}
extension type CSSUnitValue._(JSObject _) implements CSSNumericValue, JSObject {
  external factory CSSUnitValue(
    num value,
    String unit,
  );

  external set value(num value);
  external num get value;
  external String get unit;
}
extension type CSSMathValue._(JSObject _) implements CSSNumericValue, JSObject {
  external CSSMathOperator get operator;
}
extension type CSSMathSum._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathSum(CSSNumberish args);

  external CSSNumericArray get values;
}
extension type CSSMathProduct._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathProduct(CSSNumberish args);

  external CSSNumericArray get values;
}
extension type CSSMathNegate._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathNegate(CSSNumberish arg);

  external CSSNumericValue get value;
}
extension type CSSMathInvert._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathInvert(CSSNumberish arg);

  external CSSNumericValue get value;
}
extension type CSSMathMin._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathMin(CSSNumberish args);

  external CSSNumericArray get values;
}
extension type CSSMathMax._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathMax(CSSNumberish args);

  external CSSNumericArray get values;
}
extension type CSSMathClamp._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathClamp(
    CSSNumberish lower,
    CSSNumberish value,
    CSSNumberish upper,
  );

  external CSSNumericValue get lower;
  external CSSNumericValue get value;
  external CSSNumericValue get upper;
}
extension type CSSNumericArray._(JSObject _) implements JSObject {
  external int get length;
}
extension type CSSTransformValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external factory CSSTransformValue(JSArray<CSSTransformComponent> transforms);

  external DOMMatrix toMatrix();
  external int get length;
  external bool get is2D;
}
extension type CSSTransformComponent._(JSObject _) implements JSObject {
  external DOMMatrix toMatrix();
  external set is2D(bool value);
  external bool get is2D;
}
extension type CSSTranslate._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSTranslate(
    CSSNumericValue x,
    CSSNumericValue y, [
    CSSNumericValue z,
  ]);

  external set x(CSSNumericValue value);
  external CSSNumericValue get x;
  external set y(CSSNumericValue value);
  external CSSNumericValue get y;
  external set z(CSSNumericValue value);
  external CSSNumericValue get z;
}
extension type CSSRotate._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSRotate(
    JSAny angleOrX, [
    CSSNumberish y,
    CSSNumberish z,
    CSSNumericValue angle,
  ]);

  external set x(CSSNumberish value);
  external CSSNumberish get x;
  external set y(CSSNumberish value);
  external CSSNumberish get y;
  external set z(CSSNumberish value);
  external CSSNumberish get z;
  external set angle(CSSNumericValue value);
  external CSSNumericValue get angle;
}
extension type CSSScale._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSScale(
    CSSNumberish x,
    CSSNumberish y, [
    CSSNumberish z,
  ]);

  external set x(CSSNumberish value);
  external CSSNumberish get x;
  external set y(CSSNumberish value);
  external CSSNumberish get y;
  external set z(CSSNumberish value);
  external CSSNumberish get z;
}
extension type CSSSkew._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSSkew(
    CSSNumericValue ax,
    CSSNumericValue ay,
  );

  external set ax(CSSNumericValue value);
  external CSSNumericValue get ax;
  external set ay(CSSNumericValue value);
  external CSSNumericValue get ay;
}
extension type CSSSkewX._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSSkewX(CSSNumericValue ax);

  external set ax(CSSNumericValue value);
  external CSSNumericValue get ax;
}
extension type CSSSkewY._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSSkewY(CSSNumericValue ay);

  external set ay(CSSNumericValue value);
  external CSSNumericValue get ay;
}
extension type CSSPerspective._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSPerspective(CSSPerspectiveValue length);

  external set length(CSSPerspectiveValue value);
  external CSSPerspectiveValue get length;
}
extension type CSSMatrixComponent._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSMatrixComponent(
    DOMMatrixReadOnly matrix, [
    CSSMatrixComponentOptions options,
  ]);

  external set matrix(DOMMatrix value);
  external DOMMatrix get matrix;
}
extension type CSSMatrixComponentOptions._(JSObject _) implements JSObject {
  external factory CSSMatrixComponentOptions({bool is2D});

  external set is2D(bool value);
  external bool get is2D;
}
extension type CSSImageValue._(JSObject _) implements CSSStyleValue, JSObject {}
extension type CSSColorValue._(JSObject _) implements CSSStyleValue, JSObject {
  external static JSObject parse(String cssText);
}
extension type CSSRGB._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSRGB(
    CSSColorRGBComp r,
    CSSColorRGBComp g,
    CSSColorRGBComp b, [
    CSSColorPercent alpha,
  ]);

  external set r(CSSColorRGBComp value);
  external CSSColorRGBComp get r;
  external set g(CSSColorRGBComp value);
  external CSSColorRGBComp get g;
  external set b(CSSColorRGBComp value);
  external CSSColorRGBComp get b;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}
extension type CSSHSL._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSHSL(
    CSSColorAngle h,
    CSSColorPercent s,
    CSSColorPercent l, [
    CSSColorPercent alpha,
  ]);

  external set h(CSSColorAngle value);
  external CSSColorAngle get h;
  external set s(CSSColorPercent value);
  external CSSColorPercent get s;
  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}
extension type CSSHWB._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSHWB(
    CSSNumericValue h,
    CSSNumberish w,
    CSSNumberish b, [
    CSSNumberish alpha,
  ]);

  external set h(CSSNumericValue value);
  external CSSNumericValue get h;
  external set w(CSSNumberish value);
  external CSSNumberish get w;
  external set b(CSSNumberish value);
  external CSSNumberish get b;
  external set alpha(CSSNumberish value);
  external CSSNumberish get alpha;
}
extension type CSSLab._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSLab(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b, [
    CSSColorPercent alpha,
  ]);

  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set a(CSSColorNumber value);
  external CSSColorNumber get a;
  external set b(CSSColorNumber value);
  external CSSColorNumber get b;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}
extension type CSSLCH._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSLCH(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h, [
    CSSColorPercent alpha,
  ]);

  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set c(CSSColorPercent value);
  external CSSColorPercent get c;
  external set h(CSSColorAngle value);
  external CSSColorAngle get h;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}
extension type CSSOKLab._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSOKLab(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b, [
    CSSColorPercent alpha,
  ]);

  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set a(CSSColorNumber value);
  external CSSColorNumber get a;
  external set b(CSSColorNumber value);
  external CSSColorNumber get b;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}
extension type CSSOKLCH._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSOKLCH(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h, [
    CSSColorPercent alpha,
  ]);

  external set l(CSSColorPercent value);
  external CSSColorPercent get l;
  external set c(CSSColorPercent value);
  external CSSColorPercent get c;
  external set h(CSSColorAngle value);
  external CSSColorAngle get h;
  external set alpha(CSSColorPercent value);
  external CSSColorPercent get alpha;
}
extension type CSSColor._(JSObject _) implements CSSColorValue, JSObject {
  external factory CSSColor(
    CSSKeywordish colorSpace,
    JSArray<CSSColorPercent> channels, [
    CSSNumberish alpha,
  ]);

  external set colorSpace(CSSKeywordish value);
  external CSSKeywordish get colorSpace;
  external set channels(JSArray<CSSColorPercent> value);
  external JSArray<CSSColorPercent> get channels;
  external set alpha(CSSNumberish value);
  external CSSNumberish get alpha;
}
