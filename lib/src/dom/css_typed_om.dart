// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

/// The **`CSSStyleValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// is the base class of all CSS values accessible through the Typed OM API. An
/// instance of this class may be used anywhere a string is expected.
@JS('CSSStyleValue')
@staticInterop
class CSSStyleValue {
  external static CSSStyleValue parse(
    String property,
    String cssText,
  );
  external static JSArray parseAll(
    String property,
    String cssText,
  );
}

/// The **`StylePropertyMapReadOnly`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// provides a read-only representation of a CSS declaration block that is an
/// alternative to [CSSStyleDeclaration]. Retrieve an instance of this interface
/// using [Element.computedStyleMap].
@JS('StylePropertyMapReadOnly')
@staticInterop
class StylePropertyMapReadOnly {}

extension StylePropertyMapReadOnlyExtension on StylePropertyMapReadOnly {
  /// The **`get()`** method of the
  /// [StylePropertyMapReadOnly] interface returns a [CSSStyleValue]
  /// object for the first value of the specified property.
  external CSSStyleValue? get(String property);

  /// The **`getAll()`** method of the
  /// [StylePropertyMapReadOnly] interface returns an array of
  /// [CSSStyleValue] objects containing the values for the provided property.
  external JSArray getAll(String property);

  /// The **`has()`** method of the
  /// [StylePropertyMapReadOnly] interface indicates whether the specified
  /// property is in the `StylePropertyMapReadOnly` object.
  external bool has(String property);
  external int get size;
}

/// The **`StylePropertyMap`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model_experimental)
/// provides a representation of a CSS declaration block that is an alternative
/// to [CSSStyleDeclaration].
@JS('StylePropertyMap')
@staticInterop
class StylePropertyMap implements StylePropertyMapReadOnly {}

extension StylePropertyMapExtension on StylePropertyMap {
  /// The **`set()`** method of the [StylePropertyMap]
  /// interface changes the CSS declaration with the given property.
  external void set(
    String property,
    JSAny values,
  );

  /// The **`append()`** method of the
  /// [StylePropertyMap] interface adds the passed CSS value to the
  /// `StylePropertyMap` with the given property.
  external void append(
    String property,
    JSAny values,
  );

  /// The **`delete()`** method of the
  /// [StylePropertyMap] interface removes the CSS declaration with the given
  /// property.
  external void delete(String property);

  /// The **`clear()`** method of the [StylePropertyMap]
  /// interface removes all declarations in the `StylePropertyMap`.
  external void clear();
}

/// The **`CSSUnparsedValue`** interface of the  represents property values that
/// reference
/// [custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_cascading_variables).
/// It consists of a list of string fragments and variable references.
///
/// Custom properties are represented by `CSSUnparsedValue` and `var()`
/// references are represented using [CSSVariableReferenceValue].
@JS('CSSUnparsedValue')
@staticInterop
class CSSUnparsedValue implements CSSStyleValue {
  external factory CSSUnparsedValue(JSArray members);
}

extension CSSUnparsedValueExtension on CSSUnparsedValue {
  external int get length;
}

/// The **`CSSVariableReferenceValue`** interface of the  allows you to create a
/// custom name for a built-in CSS value. This object functionality is sometimes
/// called a "CSS variable" and serves the same purpose as the `var()` function.
/// The custom name must begin with two dashes.
@JS('CSSVariableReferenceValue')
@staticInterop
class CSSVariableReferenceValue {
  external factory CSSVariableReferenceValue(
    String variable, [
    CSSUnparsedValue? fallback,
  ]);
}

extension CSSVariableReferenceValueExtension on CSSVariableReferenceValue {
  external set variable(String value);
  external String get variable;
  external CSSUnparsedValue? get fallback;
}

/// The **`CSSKeywordValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// creates an object to represent CSS keywords and other identifiers.
///
/// The interface instance name is a  meaning that when used anywhere a string
/// is expected it will return the value of `CSSKeyword.value`.
@JS('CSSKeywordValue')
@staticInterop
class CSSKeywordValue implements CSSStyleValue {
  external factory CSSKeywordValue(String value);
}

extension CSSKeywordValueExtension on CSSKeywordValue {
  external set value(String value);
  external String get value;
}

@JS()
@staticInterop
@anonymous
class CSSNumericType {
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
}

extension CSSNumericTypeExtension on CSSNumericType {
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

/// The **`CSSNumericValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// represents operations that all numeric values can perform.
@JS('CSSNumericValue')
@staticInterop
class CSSNumericValue implements CSSStyleValue {
  external static CSSNumericValue parse(String cssText);
}

extension CSSNumericValueExtension on CSSNumericValue {
  /// The **`add()`** method of the
  /// [CSSNumericValue] interface adds a supplied number to the
  /// `CSSNumericValue`.
  external CSSNumericValue add(CSSNumberish values);

  /// The **`sub()`** method of the
  /// [CSSNumericValue] interface subtracts a supplied number from the
  /// `CSSNumericValue`.
  external CSSNumericValue sub(CSSNumberish values);

  /// The **`mul()`** method of the
  /// [CSSNumericValue] interface multiplies the `CSSNumericValue` by
  /// the supplied value.
  external CSSNumericValue mul(CSSNumberish values);

  /// The **`div()`** method of the
  /// [CSSNumericValue] interface divides the `CSSNumericValue` by the
  /// supplied value.
  external CSSNumericValue div(CSSNumberish values);

  /// The **`min()`** method of the
  /// [CSSNumericValue] interface returns the lowest value from among those
  /// values passed. The passed values must be of the same type.
  external CSSNumericValue min(CSSNumberish values);

  /// The **`max()`** method of the
  /// [CSSNumericValue] interface returns the highest value from among the
  /// values
  /// passed. The passed values must be of the same type.
  external CSSNumericValue max(CSSNumberish values);

  /// The **`equals()`** method of the
  /// [CSSNumericValue] interface returns a boolean indicating whether the
  /// passed
  /// value are strictly equal. To return a value of `true`, all passed values
  /// must
  /// be of the same type and value and must be in the same order. This allows
  /// structural
  /// equality to be tested quickly.
  external bool equals(CSSNumberish value);

  /// The **`to()`** method of the
  /// [CSSNumericValue] interface converts a numeric value from one unit to
  /// another.
  external CSSUnitValue to(String unit);

  /// The **`toSum()`** method of the
  /// [CSSNumericValue] interface converts the object's value to a
  /// [CSSMathSum] object to values of the specified unit.
  external CSSMathSum toSum(String units);

  /// The **`type()`** method of the
  /// [CSSNumericValue] interface returns the type of
  /// `CSSNumericValue`, one of `angle`, `flex`,
  /// `frequency`, `length`, `resolution`,
  /// `percent`, `percentHint`, or `time`.
  external CSSNumericType type();
}

/// The **`CSSUnitValue`** interface of the  represents values that contain a
/// single unit type. For example, "42px" would be represented by a
/// `CSSNumericValue`.
@JS('CSSUnitValue')
@staticInterop
class CSSUnitValue implements CSSNumericValue {
  external factory CSSUnitValue(
    num value,
    String unit,
  );
}

extension CSSUnitValueExtension on CSSUnitValue {
  external set value(num value);
  external num get value;
  external String get unit;
}

/// The **`CSSMathValue`** interface of the  a base class for classes
/// representing complex numeric values.
@JS('CSSMathValue')
@staticInterop
class CSSMathValue implements CSSNumericValue {}

extension CSSMathValueExtension on CSSMathValue {
  external CSSMathOperator get operator;
}

/// The **`CSSMathSum`** interface of the  represents the result obtained by
/// calling [CSSNumericValue.add], [CSSNumericValue.sub], or
/// [CSSNumericValue.toSum] on [CSSNumericValue].
///
/// A CSSMathSum is the object type returned when the
/// [`StylePropertyMapReadOnly.get()`](/en-US/docs/Web/API/StylePropertyMapReadOnly/get)
/// method is used on a CSS property whose value is created with a
/// [`calc()`](/en-US/docs/Web/CSS/calc) function.
@JS('CSSMathSum')
@staticInterop
class CSSMathSum implements CSSMathValue {
  external factory CSSMathSum(CSSNumberish args);
}

extension CSSMathSumExtension on CSSMathSum {
  external CSSNumericArray get values;
}

/// The **`CSSMathProduct`** interface of the  represents the result obtained by
/// calling [CSSNumericValue.add], [CSSNumericValue.sub], or
/// [CSSNumericValue.toSum] on [CSSNumericValue]. It inherits properties and
/// methods from its parent [CSSNumericValue].
@JS('CSSMathProduct')
@staticInterop
class CSSMathProduct implements CSSMathValue {
  external factory CSSMathProduct(CSSNumberish args);
}

extension CSSMathProductExtension on CSSMathProduct {
  external CSSNumericArray get values;
}

/// The **`CSSMathNegate`** interface of the  negates the value passed into it.
/// It inherits properties and methods from its parent [CSSNumericValue].
@JS('CSSMathNegate')
@staticInterop
class CSSMathNegate implements CSSMathValue {
  external factory CSSMathNegate(CSSNumberish arg);
}

extension CSSMathNegateExtension on CSSMathNegate {
  external CSSNumericValue get value;
}

/// The **`CSSMathInvert`** interface of the  represents a CSS `calc()` used as
/// `calc(1 / <value>).` It inherits properties and methods from its parent
/// [CSSNumericValue].
@JS('CSSMathInvert')
@staticInterop
class CSSMathInvert implements CSSMathValue {
  external factory CSSMathInvert(CSSNumberish arg);
}

extension CSSMathInvertExtension on CSSMathInvert {
  external CSSNumericValue get value;
}

/// The **`CSSMathMin`** interface of the  represents the CSS `min()` function.
/// It inherits properties and methods from its parent [CSSNumericValue].
@JS('CSSMathMin')
@staticInterop
class CSSMathMin implements CSSMathValue {
  external factory CSSMathMin(CSSNumberish args);
}

extension CSSMathMinExtension on CSSMathMin {
  external CSSNumericArray get values;
}

/// The **`CSSMathMax`** interface of the  represents the CSS `max()` function.
/// It inherits properties and methods from its parent [CSSNumericValue].
@JS('CSSMathMax')
@staticInterop
class CSSMathMax implements CSSMathValue {
  external factory CSSMathMax(CSSNumberish args);
}

extension CSSMathMaxExtension on CSSMathMax {
  external CSSNumericArray get values;
}

@JS('CSSMathClamp')
@staticInterop
class CSSMathClamp implements CSSMathValue {
  external factory CSSMathClamp(
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

/// The **`CSSNumericArray`** interface of the  contains a list of
/// [CSSNumericValue] objects.
@JS('CSSNumericArray')
@staticInterop
class CSSNumericArray {}

extension CSSNumericArrayExtension on CSSNumericArray {
  external int get length;
}

/// The **`CSSTransformValue`** interface of the  represents `transform-list`
/// values as used by the CSS `transform` property.
@JS('CSSTransformValue')
@staticInterop
class CSSTransformValue implements CSSStyleValue {
  external factory CSSTransformValue(JSArray transforms);
}

extension CSSTransformValueExtension on CSSTransformValue {
  /// The **`toMatrix()`** method of the
  /// [CSSTransformValue] interface returns a [DOMMatrix] object.
  external DOMMatrix toMatrix();
  external int get length;
  external bool get is2D;
}

/// The **`CSSTransformComponent`** interface of the  is part of the
/// [CSSTransformValue] interface.
@JS('CSSTransformComponent')
@staticInterop
class CSSTransformComponent {}

extension CSSTransformComponentExtension on CSSTransformComponent {
  /// The **`toMatrix()`** method of the
  /// [CSSTransformComponent] interface returns a [DOMMatrix]
  /// object.
  ///
  /// All transform functions can be represented mathematically as a 4x4
  /// transformation matrix. This is explained in detail in
  /// [Understanding the CSS Transforms matrix](https://dev.opera.com/articles/understanding-the-css-transforms-matrix/).
  ///
  /// > **Note:** The `is2D` property affects what transform, and therefore type
  /// > of matrix that will be returned. CSS 2D and 3D transforms are different
  /// > for legacy reasons. A brief explanation of 2D vs. 3D transforms can be
  /// > found in
  /// > [Using CSS transforms](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transforms/Using_CSS_transforms).
  external DOMMatrix toMatrix();
  external set is2D(bool value);
  external bool get is2D;
}

/// The **`CSSTranslate`** interface of the  represents the
/// [translate()](/en-US/docs/Web/CSS/transform-function/translate) value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@JS('CSSTranslate')
@staticInterop
class CSSTranslate implements CSSTransformComponent {
  external factory CSSTranslate(
    CSSNumericValue x,
    CSSNumericValue y, [
    CSSNumericValue z,
  ]);
}

extension CSSTranslateExtension on CSSTranslate {
  external set x(CSSNumericValue value);
  external CSSNumericValue get x;
  external set y(CSSNumericValue value);
  external CSSNumericValue get y;
  external set z(CSSNumericValue value);
  external CSSNumericValue get z;
}

/// The **`CSSRotate`** interface of the  represents the rotate value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@JS('CSSRotate')
@staticInterop
class CSSRotate implements CSSTransformComponent {
  external factory CSSRotate(
    JSAny angleOrX, [
    CSSNumberish y,
    CSSNumberish z,
    CSSNumericValue angle,
  ]);
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

/// The **`CSSScale`** interface of the  represents the
/// [scale()](/en-US/docs/Web/CSS/transform-function/scale) and
/// [scale3d()](/en-US/docs/Web/CSS/transform-function/scale3d) values of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@JS('CSSScale')
@staticInterop
class CSSScale implements CSSTransformComponent {
  external factory CSSScale(
    CSSNumberish x,
    CSSNumberish y, [
    CSSNumberish z,
  ]);
}

extension CSSScaleExtension on CSSScale {
  external set x(CSSNumberish value);
  external CSSNumberish get x;
  external set y(CSSNumberish value);
  external CSSNumberish get y;
  external set z(CSSNumberish value);
  external CSSNumberish get z;
}

/// The **`CSSSkew`** interface of the  is part of the [CSSTransformValue]
/// interface. It represents the
/// [`skew()`](/en-US/docs/Web/CSS/transform-function/skew) value of the
/// individual `transform` property in CSS.
@JS('CSSSkew')
@staticInterop
class CSSSkew implements CSSTransformComponent {
  external factory CSSSkew(
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

/// The **`CSSSkewX`** interface of the  represents the
/// [`skewX()`](/en-US/docs/Web/CSS/transform-function/skewX) value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@JS('CSSSkewX')
@staticInterop
class CSSSkewX implements CSSTransformComponent {
  external factory CSSSkewX(CSSNumericValue ax);
}

extension CSSSkewXExtension on CSSSkewX {
  external set ax(CSSNumericValue value);
  external CSSNumericValue get ax;
}

/// The **`CSSSkewY`** interface of the  represents the
/// [`skewY()`](/en-US/docs/Web/CSS/transform-function/skewY) value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@JS('CSSSkewY')
@staticInterop
class CSSSkewY implements CSSTransformComponent {
  external factory CSSSkewY(CSSNumericValue ay);
}

extension CSSSkewYExtension on CSSSkewY {
  external set ay(CSSNumericValue value);
  external CSSNumericValue get ay;
}

/// The **`CSSPerspective`** interface of the  represents the
/// [perspective()](/en-US/docs/Web/CSS/transform-function/perspective) value of
/// the individual `transform` property in CSS. It inherits properties and
/// methods from its parent [CSSTransformValue].
@JS('CSSPerspective')
@staticInterop
class CSSPerspective implements CSSTransformComponent {
  external factory CSSPerspective(CSSPerspectiveValue length);
}

extension CSSPerspectiveExtension on CSSPerspective {
  external set length(CSSPerspectiveValue value);
  external CSSPerspectiveValue get length;
}

/// The **`CSSMatrixComponent`** interface of the  represents the
/// [matrix()](/en-US/docs/Web/CSS/transform-function/matrix) and
/// [matrix3d()](/en-US/docs/Web/CSS/transform-function/matrix3d) values of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@JS('CSSMatrixComponent')
@staticInterop
class CSSMatrixComponent implements CSSTransformComponent {
  external factory CSSMatrixComponent(
    DOMMatrixReadOnly matrix, [
    CSSMatrixComponentOptions options,
  ]);
}

extension CSSMatrixComponentExtension on CSSMatrixComponent {
  external set matrix(DOMMatrix value);
  external DOMMatrix get matrix;
}

@JS()
@staticInterop
@anonymous
class CSSMatrixComponentOptions {
  external factory CSSMatrixComponentOptions({bool is2D});
}

extension CSSMatrixComponentOptionsExtension on CSSMatrixComponentOptions {
  external set is2D(bool value);
  external bool get is2D;
}

/// The **`CSSImageValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// represents values for properties that take an image, for example , , or .
///
/// The CSSImageValue object represents an
/// [`<image>`](/en-US/docs/Web/CSS/image) that involves a URL, such as
/// [`url()`](/en-US/docs/Web/CSS/url) or
/// [`image()`](/en-US/docs/Web/CSS/image), but not
/// [`linear-gradient()`](/en-US/docs/Web/CSS/gradient/linear-gradient) or
/// [`element()`](/en-US/docs/Web/CSS/element).
@JS('CSSImageValue')
@staticInterop
class CSSImageValue implements CSSStyleValue {}

@JS('CSSColorValue')
@staticInterop
class CSSColorValue implements CSSStyleValue {
  external static JSObject parse(String cssText);
}

@JS('CSSRGB')
@staticInterop
class CSSRGB implements CSSColorValue {
  external factory CSSRGB(
    CSSColorRGBComp r,
    CSSColorRGBComp g,
    CSSColorRGBComp b, [
    CSSColorPercent alpha,
  ]);
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
class CSSHSL implements CSSColorValue {
  external factory CSSHSL(
    CSSColorAngle h,
    CSSColorPercent s,
    CSSColorPercent l, [
    CSSColorPercent alpha,
  ]);
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
class CSSHWB implements CSSColorValue {
  external factory CSSHWB(
    CSSNumericValue h,
    CSSNumberish w,
    CSSNumberish b, [
    CSSNumberish alpha,
  ]);
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
class CSSLab implements CSSColorValue {
  external factory CSSLab(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b, [
    CSSColorPercent alpha,
  ]);
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
class CSSLCH implements CSSColorValue {
  external factory CSSLCH(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h, [
    CSSColorPercent alpha,
  ]);
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
class CSSOKLab implements CSSColorValue {
  external factory CSSOKLab(
    CSSColorPercent l,
    CSSColorNumber a,
    CSSColorNumber b, [
    CSSColorPercent alpha,
  ]);
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
class CSSOKLCH implements CSSColorValue {
  external factory CSSOKLCH(
    CSSColorPercent l,
    CSSColorPercent c,
    CSSColorAngle h, [
    CSSColorPercent alpha,
  ]);
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
class CSSColor implements CSSColorValue {
  external factory CSSColor(
    CSSKeywordish colorSpace,
    JSArray channels, [
    CSSNumberish alpha,
  ]);
}

extension CSSColorExtension on CSSColor {
  external set colorSpace(CSSKeywordish value);
  external CSSKeywordish get colorSpace;
  external set channels(JSArray value);
  external JSArray get channels;
  external set alpha(CSSNumberish value);
  external CSSNumberish get alpha;
}
