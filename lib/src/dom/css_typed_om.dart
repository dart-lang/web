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

/// The **`StylePropertyMapReadOnly`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// provides a read-only representation of a CSS declaration block that is an
/// alternative to [CSSStyleDeclaration]. Retrieve an instance of this interface
/// using [Element.computedStyleMap].
extension type StylePropertyMapReadOnly._(JSObject _) implements JSObject {
  /// The **`get()`** method of the
  /// [StylePropertyMapReadOnly] interface returns a [CSSStyleValue]
  /// object for the first value of the specified property.
  external CSSStyleValue? get(String property);

  /// The **`getAll()`** method of the
  /// [StylePropertyMapReadOnly] interface returns an array of
  /// [CSSStyleValue] objects containing the values for the provided property.
  external JSArray<CSSStyleValue> getAll(String property);

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
extension type StylePropertyMap._(JSObject _)
    implements StylePropertyMapReadOnly, JSObject {
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
extension type CSSUnparsedValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external factory CSSUnparsedValue(JSArray<CSSUnparsedSegment> members);

  external int get length;
}

/// The **`CSSVariableReferenceValue`** interface of the  allows you to create a
/// custom name for a built-in CSS value. This object functionality is sometimes
/// called a "CSS variable" and serves the same purpose as the `var()` function.
/// The custom name must begin with two dashes.
extension type CSSVariableReferenceValue._(JSObject _) implements JSObject {
  external factory CSSVariableReferenceValue(
    String variable, [
    CSSUnparsedValue? fallback,
  ]);

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

/// The **`CSSNumericValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// represents operations that all numeric values can perform.
extension type CSSNumericValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external static CSSNumericValue parse(String cssText);

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
extension type CSSUnitValue._(JSObject _) implements CSSNumericValue, JSObject {
  external factory CSSUnitValue(
    num value,
    String unit,
  );

  external set value(num value);
  external num get value;
  external String get unit;
}

/// The **`CSSMathValue`** interface of the  a base class for classes
/// representing complex numeric values.
extension type CSSMathValue._(JSObject _) implements CSSNumericValue, JSObject {
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
extension type CSSMathSum._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathSum(CSSNumberish args);

  external CSSNumericArray get values;
}

/// The **`CSSMathProduct`** interface of the  represents the result obtained by
/// calling [CSSNumericValue.add], [CSSNumericValue.sub], or
/// [CSSNumericValue.toSum] on [CSSNumericValue]. It inherits properties and
/// methods from its parent [CSSNumericValue].
extension type CSSMathProduct._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathProduct(CSSNumberish args);

  external CSSNumericArray get values;
}

/// The **`CSSMathNegate`** interface of the  negates the value passed into it.
/// It inherits properties and methods from its parent [CSSNumericValue].
extension type CSSMathNegate._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathNegate(CSSNumberish arg);

  external CSSNumericValue get value;
}

/// The **`CSSMathInvert`** interface of the  represents a CSS `calc()` used as
/// `calc(1 / <value>).` It inherits properties and methods from its parent
/// [CSSNumericValue].
extension type CSSMathInvert._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathInvert(CSSNumberish arg);

  external CSSNumericValue get value;
}

/// The **`CSSMathMin`** interface of the  represents the CSS `min()` function.
/// It inherits properties and methods from its parent [CSSNumericValue].
extension type CSSMathMin._(JSObject _) implements CSSMathValue, JSObject {
  external factory CSSMathMin(CSSNumberish args);

  external CSSNumericArray get values;
}

/// The **`CSSMathMax`** interface of the  represents the CSS `max()` function.
/// It inherits properties and methods from its parent [CSSNumericValue].
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

/// The **`CSSNumericArray`** interface of the  contains a list of
/// [CSSNumericValue] objects.
extension type CSSNumericArray._(JSObject _) implements JSObject {
  external int get length;
}

/// The **`CSSTransformValue`** interface of the  represents `transform-list`
/// values as used by the CSS `transform` property.
extension type CSSTransformValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external factory CSSTransformValue(JSArray<CSSTransformComponent> transforms);

  /// The **`toMatrix()`** method of the
  /// [CSSTransformValue] interface returns a [DOMMatrix] object.
  external DOMMatrix toMatrix();
  external int get length;
  external bool get is2D;
}

/// The **`CSSTransformComponent`** interface of the  is part of the
/// [CSSTransformValue] interface.
extension type CSSTransformComponent._(JSObject _) implements JSObject {
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

/// The **`CSSRotate`** interface of the  represents the rotate value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
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

/// The **`CSSScale`** interface of the  represents the
/// [scale()](/en-US/docs/Web/CSS/transform-function/scale) and
/// [scale3d()](/en-US/docs/Web/CSS/transform-function/scale3d) values of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
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

/// The **`CSSSkew`** interface of the  is part of the [CSSTransformValue]
/// interface. It represents the
/// [`skew()`](/en-US/docs/Web/CSS/transform-function/skew) value of the
/// individual `transform` property in CSS.
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

/// The **`CSSSkewX`** interface of the  represents the
/// [`skewX()`](/en-US/docs/Web/CSS/transform-function/skewX) value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
extension type CSSSkewX._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSSkewX(CSSNumericValue ax);

  external set ax(CSSNumericValue value);
  external CSSNumericValue get ax;
}

/// The **`CSSSkewY`** interface of the  represents the
/// [`skewY()`](/en-US/docs/Web/CSS/transform-function/skewY) value of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
extension type CSSSkewY._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSSkewY(CSSNumericValue ay);

  external set ay(CSSNumericValue value);
  external CSSNumericValue get ay;
}

/// The **`CSSPerspective`** interface of the  represents the
/// [perspective()](/en-US/docs/Web/CSS/transform-function/perspective) value of
/// the individual `transform` property in CSS. It inherits properties and
/// methods from its parent [CSSTransformValue].
extension type CSSPerspective._(JSObject _)
    implements CSSTransformComponent, JSObject {
  external factory CSSPerspective(CSSPerspectiveValue length);

  external set length(CSSPerspectiveValue value);
  external CSSPerspectiveValue get length;
}

/// The **`CSSMatrixComponent`** interface of the  represents the
/// [matrix()](/en-US/docs/Web/CSS/transform-function/matrix) and
/// [matrix3d()](/en-US/docs/Web/CSS/transform-function/matrix3d) values of the
/// individual `transform` property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
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
