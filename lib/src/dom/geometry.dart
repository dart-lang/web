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

/// The **`DOMPointReadOnly`** interface specifies the coordinate and
/// perspective fields used by [DOMPoint] to define a 2D or 3D point in a
/// coordinate system.
///
/// There are two ways to create a new `DOMPointReadOnly` instance. First, you
/// can use its constructor, passing in the values of the parameters for each
/// dimension and, optionally, the perspective:
///
/// ```js
/// /* 2D */
/// const point2D = new DOMPointReadOnly(50, 50);
///
/// /* 3D */
/// const point3D = new DOMPointReadOnly(50, 50, 25);
///
/// /* 3D with perspective */
/// const point3DPerspective = new DOMPointReadOnly(100, 100, 100, 1.0);
/// ```
///
/// The other option is to use the static [DOMPointReadOnly.fromPoint_static]
/// method:
///
/// ```js
/// const point = DOMPointReadOnly.fromPoint({ x: 100, y: 100, z: 50, w: 1.0 });
/// ```
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly).
extension type DOMPointReadOnly._(JSObject _) implements JSObject {
  external factory DOMPointReadOnly([
    num x,
    num y,
    num z,
    num w,
  ]);

  /// The static **[DOMPointReadOnly]**
  /// method `fromPoint()` creates and returns a new
  /// `DOMPointReadOnly` object given a source point.
  ///
  /// You can also create a new `DOMPointReadOnly` object using the
  /// [DOMPointReadOnly.DOMPointReadOnly] constructor.
  external static DOMPointReadOnly fromPoint([DOMPointInit other]);
  external DOMPoint matrixTransform([DOMMatrixInit matrix]);

  /// The [DOMPointReadOnly] method
  /// `toJSON()` returns an object giving the
  /// form of the point object.
  external JSObject toJSON();

  /// The **`DOMPointReadOnly`** interface's
  /// **`x`** property holds the horizontal coordinate, x, for a
  /// read-only point in space. This property cannot be changed by JavaScript
  /// code in this
  /// read-only version of the `DOMPoint` object.
  ///
  /// In general, positive values `x` mean to the right, and negative values of
  /// `x` means to the left, assuming no transforms have resulted in a reversal.
  external double get x;

  /// The **`DOMPointReadOnly`** interface's
  /// **`y`** property holds the vertical coordinate, y, for a
  /// read-only point in space.
  ///
  /// If your script needs to be able to change the value
  /// of this property, you should instead use the [DOMPoint] object.
  ///
  /// In general, positive values of `y` mean downward, and negative values of
  /// `y` mean upward, assuming no transforms have resulted in a reversal.
  external double get y;

  /// The **`DOMPointReadOnly`** interface's
  /// **`z`** property holds the depth coordinate, z, for a
  /// read-only point in space.
  ///
  /// If your script needs to be able to change the value
  /// of this property, you should instead use the [DOMPoint] object.
  ///
  /// In general, positive values of `z` mean toward the user (out from the
  /// screen), and negative values of `z` mean away from the user (into the
  /// screen), assuming no transforms have resulted in a reversal.
  external double get z;

  /// The **`DOMPointReadOnly`** interface's
  /// **`w`** property holds the point's perspective value,
  /// `w`, for a read-only point in space.
  ///
  /// If your script needs to be able
  /// to change the value of this property, you should instead use the
  /// [DOMPoint]
  /// object.
  external double get w;
}

/// A **`DOMPoint`** object represents a 2D or 3D point in a coordinate system;
/// it includes values for the coordinates in up to three dimensions, as well as
/// an optional perspective value. `DOMPoint` is based on [DOMPointReadOnly] but
/// allows its properties' values to be changed.
///
/// In general, a positive `x` component represents a position to the right of
/// the origin, a positive `y` component is downward from the origin, and a
/// positive `z` component extends outward from the screen (in other words,
/// toward the user).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint).
extension type DOMPoint._(JSObject _) implements DOMPointReadOnly, JSObject {
  external factory DOMPoint([
    num x,
    num y,
    num z,
    num w,
  ]);

  /// The **[DOMPoint]** static method
  /// `fromPoint()` creates and returns a new mutable `DOMPoint`
  /// object given a source point.
  ///
  /// You can also create a new `DOMPoint` object using the
  /// [DOMPoint.DOMPoint] constructor.
  ///
  /// Although this interface is based on `DOMPointReadOnly`, it is not
  /// read-only;
  /// the properties within may be changed at will.
  external static DOMPoint fromPoint([DOMPointInit other]);

  /// The **`DOMPoint`** interface's
  /// **`x`** property holds the horizontal coordinate, x, for a
  /// point in space.
  ///
  /// In general, positive values `x` mean to the right,
  /// and negative values of `x` means to the left, barring any transforms that
  /// may
  /// have altered the orientation of the axes.
  external double get x;
  external set x(num value);

  /// The **`DOMPoint`** interface's
  /// **`y`** property holds the vertical coordinate, _y_,
  /// for a point in space.
  ///
  /// Unless transforms have been applied to alter the
  /// orientation, the value of `y` increases downward and decreases upward.
  external double get y;
  external set y(num value);

  /// The **`DOMPoint`** interface's
  /// **`z`** property specifies the depth coordinate of a point in
  /// space.
  ///
  /// Unless transforms have changed the orientation, a `z` of 0 is
  /// the plane of the screen, with positive values extending outward toward the
  /// user from the
  /// screen, and negative values receding into the distance behind the screen.
  external double get z;
  external set z(num value);

  /// The **`DOMPoint`** interface's
  /// **`w`** property holds the point's perspective value, w, for a
  /// point in space.
  external double get w;
  external set w(num value);
}
extension type DOMPointInit._(JSObject _) implements JSObject {
  external factory DOMPointInit({
    num x,
    num y,
    num z,
    num w,
  });

  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
  external double get z;
  external set z(num value);
  external double get w;
  external set w(num value);
}

/// The **`DOMRectReadOnly`** interface specifies the standard properties (also
/// used by [DOMRect]) to define a rectangle whose properties are immutable.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly).
extension type DOMRectReadOnly._(JSObject _) implements JSObject {
  external factory DOMRectReadOnly([
    num x,
    num y,
    num width,
    num height,
  ]);

  /// The **`fromRect()`** static method of the
  /// [DOMRectReadOnly] object creates a new `DOMRectReadOnly`
  /// object with a given location and dimensions.
  external static DOMRectReadOnly fromRect([DOMRectInit other]);
  external JSObject toJSON();

  /// The **`x`** read-only property of the **`DOMRectReadOnly`** interface
  /// represents the x coordinate of the `DOMRect`'s origin.
  external double get x;

  /// The **`y`** read-only property of the **`DOMRectReadOnly`** interface
  /// represents the y coordinate of the `DOMRect`'s origin.
  external double get y;

  /// The **`width`** read-only property of the **`DOMRectReadOnly`** interface
  /// represents the width of the `DOMRect`.
  external double get width;

  /// The **`height`** read-only property of the **`DOMRectReadOnly`** interface
  /// represents the height of the `DOMRect`.
  external double get height;

  /// The **`top`** read-only property of the **`DOMRectReadOnly`** interface
  /// returns the top coordinate value of the `DOMRect`. (Has the same value as
  /// `y`, or `y + height` if `height` is negative.)
  external double get top;

  /// The **`right`** read-only property of the **`DOMRectReadOnly`** interface
  /// returns the right coordinate value of the `DOMRect`. (Has the same value
  /// as `x + width`, or `x` if `width` is negative.)
  external double get right;

  /// The **`bottom`** read-only property of the **`DOMRectReadOnly`** interface
  /// returns the bottom coordinate value of the `DOMRect`. (Has the same value
  /// as `y + height`, or `y` if `height` is negative.)
  external double get bottom;

  /// The **`left`** read-only property of the **`DOMRectReadOnly`** interface
  /// returns the left coordinate value of the `DOMRect`. (Has the same value as
  /// `x`, or `x + width` if `width` is negative.)
  external double get left;
}

/// A **`DOMRect`** describes the size and position of a rectangle.
///
/// The type of box represented by the `DOMRect` is specified by the method or
/// property that returned it. For example, [Range.getBoundingClientRect]
/// specifies the rectangle that bounds the content of the range using such
/// objects.
///
/// It inherits from its parent, [DOMRectReadOnly].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect).
extension type DOMRect._(JSObject _) implements DOMRectReadOnly, JSObject {
  external factory DOMRect([
    num x,
    num y,
    num width,
    num height,
  ]);

  /// The **`fromRect()`** static method of the
  /// [DOMRect] object creates a new `DOMRect`
  /// object with a given location and dimensions.
  external static DOMRect fromRect([DOMRectInit other]);
  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
  external double get width;
  external set width(num value);
  external double get height;
  external set height(num value);
}
extension type DOMRectInit._(JSObject _) implements JSObject {
  external factory DOMRectInit({
    num x,
    num y,
    num width,
    num height,
  });

  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
  external double get width;
  external set width(num value);
  external double get height;
  external set height(num value);
}
extension type DOMRectList._(JSObject _) implements JSObject {
  external DOMRect? item(int index);
  external int get length;
}

/// A `DOMQuad` is a collection of four `DOMPoint`s defining the corners of an
/// arbitrary quadrilateral. Returning `DOMQuad`s lets `getBoxQuads()` return
/// accurate information even when arbitrary 2D or 3D transforms are present. It
/// has a handy `bounds` attribute returning a `DOMRectReadOnly` for those cases
/// where you just want an axis-aligned bounding rectangle.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad).
extension type DOMQuad._(JSObject _) implements JSObject {
  external factory DOMQuad([
    DOMPointInit p1,
    DOMPointInit p2,
    DOMPointInit p3,
    DOMPointInit p4,
  ]);

  external static DOMQuad fromRect([DOMRectInit other]);
  external static DOMQuad fromQuad([DOMQuadInit other]);
  external DOMRect getBounds();
  external JSObject toJSON();
  external DOMPoint get p1;
  external DOMPoint get p2;
  external DOMPoint get p3;
  external DOMPoint get p4;
}
extension type DOMQuadInit._(JSObject _) implements JSObject {
  external factory DOMQuadInit({
    DOMPointInit p1,
    DOMPointInit p2,
    DOMPointInit p3,
    DOMPointInit p4,
  });

  external DOMPointInit get p1;
  external set p1(DOMPointInit value);
  external DOMPointInit get p2;
  external set p2(DOMPointInit value);
  external DOMPointInit get p3;
  external set p3(DOMPointInit value);
  external DOMPointInit get p4;
  external set p4(DOMPointInit value);
}

/// The **`DOMMatrixReadOnly`** interface represents a read-only 4×4 matrix,
/// suitable for 2D and 3D operations. The [DOMMatrix] interface — which is
/// based upon `DOMMatrixReadOnly`—adds
/// [mutability](https://en.wikipedia.org/wiki/Immutable_object), allowing you
/// to alter the matrix after creating it.
///
/// This interface should be available inside
/// [web workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API),
/// though some implementations doesn't allow it yet.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly).
extension type DOMMatrixReadOnly._(JSObject _) implements JSObject {
  external factory DOMMatrixReadOnly([JSAny init]);

  external static DOMMatrixReadOnly fromMatrix([DOMMatrixInit other]);
  external static DOMMatrixReadOnly fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrixReadOnly fromFloat64Array(JSFloat64Array array64);

  /// The `translate()` method of the [DOMMatrixReadOnly] interface
  /// creates a new matrix being the result of the original matrix with a
  /// translation applied.
  external DOMMatrix translate([
    num tx,
    num ty,
    num tz,
  ]);

  /// The **`scale()`** method of the
  /// [DOMMatrixReadOnly] interface creates a new matrix being the result of the
  /// original matrix with a scale transform applied.
  external DOMMatrix scale([
    num scaleX,
    num scaleY,
    num scaleZ,
    num originX,
    num originY,
    num originZ,
  ]);
  external DOMMatrix scaleNonUniform([
    num scaleX,
    num scaleY,
  ]);
  external DOMMatrix scale3d([
    num scale,
    num originX,
    num originY,
    num originZ,
  ]);
  external DOMMatrix rotate([
    num rotX,
    num rotY,
    num rotZ,
  ]);
  external DOMMatrix rotateFromVector([
    num x,
    num y,
  ]);
  external DOMMatrix rotateAxisAngle([
    num x,
    num y,
    num z,
    num angle,
  ]);
  external DOMMatrix skewX([num sx]);
  external DOMMatrix skewY([num sy]);
  external DOMMatrix multiply([DOMMatrixInit other]);

  /// The `flipX()` method of the [DOMMatrixReadOnly] interface creates a new
  /// matrix being the result of the original matrix flipped about the x-axis.
  external DOMMatrix flipX();
  external DOMMatrix flipY();
  external DOMMatrix inverse();
  external DOMPoint transformPoint([DOMPointInit point]);
  external JSFloat32Array toFloat32Array();
  external JSFloat64Array toFloat64Array();
  external JSObject toJSON();
  external double get a;
  external double get b;
  external double get c;
  external double get d;
  external double get e;
  external double get f;
  external double get m11;
  external double get m12;
  external double get m13;
  external double get m14;
  external double get m21;
  external double get m22;
  external double get m23;
  external double get m24;
  external double get m31;
  external double get m32;
  external double get m33;
  external double get m34;
  external double get m41;
  external double get m42;
  external double get m43;
  external double get m44;
  external bool get is2D;
  external bool get isIdentity;
}

/// The **`DOMMatrix`** interface represents 4×4 matrices, suitable for 2D and
/// 3D operations including rotation and translation. It is a mutable version of
/// the [DOMMatrixReadOnly] interface.
///
/// **`WebKitCSSMatrix`** and **`SVGMatrix`** are aliases to **`DOMMatrix`**.
///
/// This interface should be available inside
/// [web workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API),
/// though some implementations don't allow it yet.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix).
extension type DOMMatrix._(JSObject _) implements DOMMatrixReadOnly, JSObject {
  external factory DOMMatrix([JSAny init]);

  external static DOMMatrix fromMatrix([DOMMatrixInit other]);
  external static DOMMatrix fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrix fromFloat64Array(JSFloat64Array array64);
  external DOMMatrix multiplySelf([DOMMatrixInit other]);
  external DOMMatrix preMultiplySelf([DOMMatrixInit other]);
  external DOMMatrix translateSelf([
    num tx,
    num ty,
    num tz,
  ]);
  external DOMMatrix scaleSelf([
    num scaleX,
    num scaleY,
    num scaleZ,
    num originX,
    num originY,
    num originZ,
  ]);
  external DOMMatrix scale3dSelf([
    num scale,
    num originX,
    num originY,
    num originZ,
  ]);
  external DOMMatrix rotateSelf([
    num rotX,
    num rotY,
    num rotZ,
  ]);
  external DOMMatrix rotateFromVectorSelf([
    num x,
    num y,
  ]);
  external DOMMatrix rotateAxisAngleSelf([
    num x,
    num y,
    num z,
    num angle,
  ]);
  external DOMMatrix skewXSelf([num sx]);
  external DOMMatrix skewYSelf([num sy]);
  external DOMMatrix invertSelf();
  external DOMMatrix setMatrixValue(String transformList);
  external double get a;
  external set a(num value);
  external double get b;
  external set b(num value);
  external double get c;
  external set c(num value);
  external double get d;
  external set d(num value);
  external double get e;
  external set e(num value);
  external double get f;
  external set f(num value);
  external double get m11;
  external set m11(num value);
  external double get m12;
  external set m12(num value);
  external double get m13;
  external set m13(num value);
  external double get m14;
  external set m14(num value);
  external double get m21;
  external set m21(num value);
  external double get m22;
  external set m22(num value);
  external double get m23;
  external set m23(num value);
  external double get m24;
  external set m24(num value);
  external double get m31;
  external set m31(num value);
  external double get m32;
  external set m32(num value);
  external double get m33;
  external set m33(num value);
  external double get m34;
  external set m34(num value);
  external double get m41;
  external set m41(num value);
  external double get m42;
  external set m42(num value);
  external double get m43;
  external set m43(num value);
  external double get m44;
  external set m44(num value);
}
extension type DOMMatrix2DInit._(JSObject _) implements JSObject {
  external factory DOMMatrix2DInit({
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
    num m11,
    num m12,
    num m21,
    num m22,
    num m41,
    num m42,
  });

  external double get a;
  external set a(num value);
  external double get b;
  external set b(num value);
  external double get c;
  external set c(num value);
  external double get d;
  external set d(num value);
  external double get e;
  external set e(num value);
  external double get f;
  external set f(num value);
  external double get m11;
  external set m11(num value);
  external double get m12;
  external set m12(num value);
  external double get m21;
  external set m21(num value);
  external double get m22;
  external set m22(num value);
  external double get m41;
  external set m41(num value);
  external double get m42;
  external set m42(num value);
}
extension type DOMMatrixInit._(JSObject _)
    implements DOMMatrix2DInit, JSObject {
  external factory DOMMatrixInit({
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
    num m11,
    num m12,
    num m21,
    num m22,
    num m41,
    num m42,
    num m13,
    num m14,
    num m23,
    num m24,
    num m31,
    num m32,
    num m33,
    num m34,
    num m43,
    num m44,
    bool is2D,
  });

  external double get m13;
  external set m13(num value);
  external double get m14;
  external set m14(num value);
  external double get m23;
  external set m23(num value);
  external double get m24;
  external set m24(num value);
  external double get m31;
  external set m31(num value);
  external double get m32;
  external set m32(num value);
  external double get m33;
  external set m33(num value);
  external double get m34;
  external set m34(num value);
  external double get m43;
  external set m43(num value);
  external double get m44;
  external set m44(num value);
  external bool get is2D;
  external set is2D(bool value);
}
