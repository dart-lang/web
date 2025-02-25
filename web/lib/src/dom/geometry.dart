// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

  /// The **`matrixTransform()`** method of the [DOMPointReadOnly] interface
  /// applies a matrix transform specified as an object to the DOMPointReadOnly
  /// object, creating and returning a new `DOMPointReadOnly` object. Neither
  /// the matrix nor the point are altered.
  ///
  /// If the matrix passed as a parameter is 2D (the [DOMMatrixReadonly.is2D] is
  /// `true`) then this is a 2D transformation and the point's `z` coordinate
  /// will be `0` and point's `w` perspective will be `1`. Otherwise this is a
  /// 3D transformation.
  ///
  /// You can also create a new `DOMPoint` with a point and matrix with the
  /// [DOMMatrixReadOnly.transformPoint] method.
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

  /// The **`fromPoint()`** static method of the [DOMPoint] interface creates
  /// and returns a new mutable `DOMPoint` object given a source point.
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

  /// The [DOMRectReadOnly] method `toJSON()` returns a  representation of the
  /// `DOMRectReadOnly` object.
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

  /// The **`x`** property of the [DOMRect] interface represents the
  /// x-coordinate of the rectangle, which is the horizontal distance between
  /// the viewport's left edge and the rectangle's origin.
  ///
  /// When the rectangle's width is non-negative, the rectangle's horizontal
  /// origin is the viewport's left edge. If the width is negative, the
  /// rectangle's horizontal origin is the viewport's right edge.
  external double get x;
  external set x(num value);

  /// The **`y`** property of the [DOMRect] interface represents the
  /// y-coordinate of the rectangle, which is the vertical distance between the
  /// viewport's top edge and the rectangle's origin.
  ///
  /// When the rectangle's height is non-negative, the rectangle's vertical
  /// origin is the viewport's top edge. If the height has a negative height,
  /// the rectangle's vertical origin is the viewport's bottom edge.
  external double get y;
  external set y(num value);

  /// The **`width`** property of the [DOMRect] interface represents the width
  /// of the rectangle. The value can be negative.
  external double get width;
  external set width(num value);

  /// The **`height`** property of the [DOMRect] interface represents the height
  /// of the rectangle. The value can be negative.
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

/// The **`DOMRectList`** interface represents a collection of [DOMRect]
/// objects, typically used to hold the rectangles associated with a particular
/// element, like bounding boxes returned by methods such as
/// [Element.getClientRects]. It provides access to each rectangle in the list
/// via its index, along with a `length` property that indicates the total
/// number of rectangles in the list.
///
/// > **Note**: `DOMRectList` exists for compatibility with legacy Web content
/// > and is not recommended to be used when creating new APIs.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList).
extension type DOMRectList._(JSObject _) implements JSObject {
  /// The [DOMRectList] method
  /// `item()` returns the [DOMRect] at the specified index within the list, or
  /// `null` if the index is out of range.
  external DOMRect? item(int index);

  /// The read-only **`length`** property of the [DOMRectList] interface returns
  /// the number of [DOMRect] objects in the list.
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

  /// The [DOMQuad] method
  /// `getBounds()` returns a [DOMRect] object representing the smallest
  /// rectangle that fully contains the `DOMQuad` object.
  external DOMRect getBounds();

  /// The [DOMQuad] method
  /// `toJSON()` returns a
  /// representation of the `DOMQuad` object.
  external JSObject toJSON();

  /// The **`DOMQuad`** interface's **`p1`** property holds the [DOMPoint]
  /// object that represents one of the four corners of the `DOMQuad`. When
  /// created from [DOMQuad.fromRect], it is the point (x, y).
  external DOMPoint get p1;

  /// The **`DOMQuad`** interface's **`p2`** property holds the [DOMPoint]
  /// object that represents one of the four corners of the `DOMQuad`. When
  /// created from [DOMQuad.fromRect], it is the point (x + width, y).
  external DOMPoint get p2;

  /// The **`DOMQuad`** interface's **`p3`** property holds the [DOMPoint]
  /// object that represents one of the four corners of the `DOMQuad`. When
  /// created from [DOMQuad.fromRect], it is the point (x + width, y + height).
  external DOMPoint get p3;

  /// The **`DOMQuad`** interface's **`p4`** property holds the [DOMPoint]
  /// object that represents one of the four corners of the `DOMQuad`. When
  /// created from [DOMQuad.fromRect], it is the point (x, y + height).
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

  /// The **`scale3d()`** method of the [DOMMatrixReadOnly] interface creates a
  /// new matrix which is the result of a 3D scale transform being applied
  /// to the matrix. It returns a new [DOMMatrix] created by scaling the source
  /// 3d matrix by the given scale factor centered on the origin point specified
  /// by the origin parameters, with a default origin of `(0, 0, 0)`. The
  /// original matrix is not modified.
  ///
  /// To mutate the matrix as you 3D-scale it, see [DOMMatrix.scale3dSelf]
  external DOMMatrix scale3d([
    num scale,
    num originX,
    num originY,
    num originZ,
  ]);

  /// The `rotate()` method of the [DOMMatrixReadOnly] interface returns a new
  /// [DOMMatrix] created by rotating the source matrix around each of its axes
  /// by the specified number of degrees. The original matrix is not altered.
  ///
  /// To mutate the matrix as you rotate it, see [DOMMatrix.rotateSelf].
  external DOMMatrix rotate([
    num rotX,
    num rotY,
    num rotZ,
  ]);

  /// The `rotateFromVector()` method of the [DOMMatrixReadOnly] interface is
  /// returns a new [DOMMatrix] created by rotating the source matrix by the
  /// angle between the specified vector and `(1, 0)`. The rotation angle is
  /// determined by the angle between the vector `(1,0)T` and `(x,y)T` in the
  /// clockwise direction, or `(+/-)arctan(y/x)`. If `x` and `y` are both `0`,
  /// the angle is specified as `0`. The original matrix is not altered.
  ///
  /// To mutate the matrix as you rotate it by the angle between the specified
  /// vector and `(1, 0)`, see [DOMMatrix.rotateFromVectorSelf].
  external DOMMatrix rotateFromVector([
    num x,
    num y,
  ]);

  /// The `rotateAxisAngle()` method of the [DOMMatrixReadOnly] interface
  /// returns a new [DOMMatrix] created by rotating the source matrix by the
  /// given vector and angle. The original matrix is not altered.
  ///
  /// To mutate the matrix as you rotate it, see
  /// [DOMMatrix.rotateAxisAngleSelf].
  external DOMMatrix rotateAxisAngle([
    num x,
    num y,
    num z,
    num angle,
  ]);

  /// The `skewX()` method of the [DOMMatrixReadOnly] interface returns a new
  /// [DOMMatrix] created by applying the specified skew transformation to the
  /// source matrix along its x-axis. The original matrix is not modified.
  ///
  /// To mutate the matrix as you skew it along the x-axis, see
  /// [DOMMatrix.skewXSelf].
  external DOMMatrix skewX([num sx]);

  /// The `skewY()` method of the [DOMMatrixReadOnly] interface returns a new
  /// [DOMMatrix] created by applying the specified skew transformation to the
  /// source matrix along its y-axis. The original matrix is not modified.
  ///
  /// To mutate the matrix as you skew it along the y-axis, see
  /// [DOMMatrix.skewYSelf].
  external DOMMatrix skewY([num sy]);

  /// The **`multiply()`** method of the [DOMMatrixReadOnly] interface creates
  /// and returns a new matrix which is the dot product of the matrix and the
  /// `otherMatrix` parameter. If `otherMatrix` is omitted, the matrix is
  /// multiplied by a matrix in which every element is `0` _except_ the
  /// bottom-right corner and the element immediately above and to its left:
  /// `m33` and `m34`. These have the default value of `1`. The original matrix
  /// is not modified.
  ///
  /// To mutate the matrix as you multiply it, see [DOMMatrix.multiplySelf].
  external DOMMatrix multiply([DOMMatrixInit other]);

  /// The **`flipX()`** method of the [DOMMatrixReadOnly] interface creates a
  /// new matrix being the result of the original matrix flipped about the
  /// x-axis. This is equivalent to multiplying the matrix by `DOMMatrix(-1, 0,
  /// 0, 1, 0, 0)`. The original matrix is not modified.
  external DOMMatrix flipX();

  /// The **`flipY()`** method of the [DOMMatrixReadOnly] interface creates a
  /// new matrix being the result of the original matrix flipped about the
  /// y-axis. This is equivalent to multiplying the matrix by `DOMMatrix(1, 0,
  /// 0, -1, 0, 0)`. The original matrix is not modified.
  external DOMMatrix flipY();

  /// The **`inverse()`** method of the [DOMMatrixReadOnly] interface creates a
  /// new matrix which is the inverse of the original matrix. If the matrix
  /// cannot be inverted, the new matrix's components are all set to `NaN` and
  /// its [DOMMatrixReadOnly.is2D] property is set to `false`. The original
  /// matrix is not changed.
  ///
  /// To mutate the matrix as you invert it, see [DOMMatrix.invertSelf].
  external DOMMatrix inverse();

  /// The **`transformPoint`** method of the
  /// [DOMMatrixReadOnly] interface creates a new [DOMPoint] object,
  /// transforming a specified point by the matrix. Neither the matrix nor the
  /// original point are altered.
  ///
  /// You can also create a new `DOMPoint` by applying a matrix to a point with
  /// the [DOMPointReadOnly.matrixTransform] method.
  external DOMPoint transformPoint([DOMPointInit point]);

  /// The **`toFloat32Array()`** method of the [DOMMatrixReadOnly] interface
  /// returns a new `Float32Array` containing all 16 elements (`m11`, `m12`,
  /// `m13`, `m14`, `m21`, `m22`, `m23`, `m24`, `m31`, `m32`, `m33`, `m34`,
  /// `m41`, `m42`, `m43`, `m44`) which comprise the matrix. The elements are
  /// stored into the array as single-precision floating-point numbers in
  /// column-major (colexographical access, or "colex") order. (In other words,
  /// down the first column from top to bottom, then the second column, and so
  /// forth.)
  ///
  /// For double-precision floating-point numbers, see
  /// [DOMMatrixReadOnly.toFloat64Array].
  external JSFloat32Array toFloat32Array();

  /// The **`toFloat64Array()`** method of the [DOMMatrixReadOnly] interface
  /// returns a new `Float64Array` containing all 16 elements (`m11`, `m12`,
  /// `m13`, `m14`, `m21`, `m22`, `m23`, `m24`, `m31`, `m32`, `m33`, `m34`,
  /// `m41`, `m42`, `m43`, `m44`) which comprise the matrix. The elements are
  /// stored into the array as double-precision floating-point numbers in
  /// column-major (colexographical access, or "colex") order. (In other words,
  /// down the first column from top to bottom, then the second column, and so
  /// forth.)
  external JSFloat64Array toFloat64Array();

  /// The **`toJSON()`** method of the [DOMMatrixReadOnly] interface creates and
  /// returns a `JSON` object. The JSON object includes the 2D matrix elements
  /// `a` through `f`, the 16 elements of the 4X4 3D matrix, `m[1-4][1-4]`, the
  /// boolean [DOMMatrixReadOnly.is2D] property, and the boolean
  /// [DOMMatrixReadOnly.isIdentity] property.
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

  /// The readonly **`is2D`** property of the [DOMMatrixReadOnly] interface is a
  /// Boolean flag that is `true` when the matrix is 2D. The value is `true` if
  /// the matrix was initialized as a 2D matrix and only 2D transformation
  /// operations were applied. Otherwise, the matrix is defined in 3D, and
  /// `is2D` is `false`.
  external bool get is2D;

  /// The readonly **`isIdentity`** property of the [DOMMatrixReadOnly]
  /// interface is a Boolean whose value is `true` if the matrix is the
  /// [identity matrix](https://en.wikipedia.org/wiki/Identity_matrix).
  ///
  /// The identity matrix is one in which every value is `0` _except_ those on
  /// the main diagonal from top-left to bottom-right corner (in other words,
  /// where the offsets in each direction are equal).
  external bool get isIdentity;
}

/// The **`DOMMatrix`** interface represents 4×4 matrices, suitable for 2D and
/// 3D operations including rotation and translation. It is a mutable version of
/// the [DOMMatrixReadOnly] interface.
/// The interface is available inside
/// [web workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
///
/// **`WebKitCSSMatrix`** and **`SVGMatrix`** are aliases to **`DOMMatrix`**.
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

  /// The **`multiplySelf()`** method of the [DOMMatrix] interface multiplies a
  /// matrix by the `otherMatrix` parameter, computing the dot product of the
  /// original matrix and the specified matrix: `A⋅B`. If no matrix is specified
  /// as the multiplier, the matrix is multiplied by a matrix in which every
  /// element is `0` _except_ the bottom-right corner and the element
  /// immediately above and to its left: `m33` and `m34`. These have the default
  /// value of `1`.
  ///
  /// To multiply a matrix without mutating it, see
  /// [DOMMatrixReadOnly.multiply].
  external DOMMatrix multiplySelf([DOMMatrixInit other]);

  /// The **`preMultiplySelf()`** method of the [DOMMatrix] interface modifies
  /// the matrix by pre-multiplying it with the specified `DOMMatrix`. This is
  /// equivalent to the dot product `B⋅A`, where matrix `A` is the source matrix
  /// and `B` is the matrix given as an input to the method. If no matrix is
  /// specified as the multiplier, the matrix is multiplied by a matrix in which
  /// every element is `0` _except_ the bottom-right corner and the element
  /// immediately above and to its left: `m33` and `m34`. These have the default
  /// value of `1`.
  external DOMMatrix preMultiplySelf([DOMMatrixInit other]);

  /// The `translateSelf()` method of the [DOMMatrix] interface is a mutable
  /// transformation method that modifies a matrix. It applies the specified
  /// vectors and returns the updated matrix. The default vector is `[0, 0, 0]`.
  ///
  /// To translate a matrix without mutating it, see
  /// [DOMMatrixReadOnly.translate]
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

  /// The **`scale3dSelf()`** method of the [DOMMatrix] interface is a mutable
  /// transformation method that modifies a matrix by applying a specified
  /// scaling factor to all three axes, centered on the given origin, with a
  /// default origin of `(0, 0, 0)`, returning the 3D-scaled matrix.
  ///
  /// To 3D-scale a matrix without mutating it, see [DOMMatrixReadOnly.scale3d],
  /// which creates a new scaled matrix while leaving the original unchanged.
  external DOMMatrix scale3dSelf([
    num scale,
    num originX,
    num originY,
    num originZ,
  ]);

  /// The `rotateSelf()` method of the [DOMMatrix] interface is a mutable
  /// transformation method that modifies a matrix. It rotates the source matrix
  /// around each of its axes by the specified number of degrees and returns the
  /// rotated matrix.
  ///
  /// To rotate a matrix without mutating it, see [DOMMatrixReadOnly.rotate]
  external DOMMatrix rotateSelf([
    num rotX,
    num rotY,
    num rotZ,
  ]);

  /// The `rotateFromVectorSelf()` method of the [DOMMatrix] interface is a
  /// mutable transformation method that modifies a matrix by rotating the
  /// matrix by the angle between the specified vector and `(1, 0)`. The
  /// rotation angle is determined by the angle between the vector `(1,0)T` and
  /// `(x,y)T` in the clockwise direction, or `(+/-)arctan(y/x)`. If `x` and `y`
  /// are both `0`, the angle is specified as `0`, and the matrix is not
  /// altered.
  ///
  /// To rotate a matrix from a vector without mutating it, see
  /// [DOMMatrixReadOnly.rotateFromVector], which creates a new rotated matrix
  /// while leaving the original unchanged.
  external DOMMatrix rotateFromVectorSelf([
    num x,
    num y,
  ]);

  /// The `rotateAxisAngleSelf()` method of the [DOMMatrix] interface is a
  /// transformation method that rotates the source matrix by the given vector
  /// and angle, returning the altered matrix.
  ///
  /// To rotate a matrix without mutating it, see
  /// [DOMMatrixReadOnly.rotateAxisAngle], which creates a new rotated matrix
  /// while leaving the original unchanged.
  external DOMMatrix rotateAxisAngleSelf([
    num x,
    num y,
    num z,
    num angle,
  ]);

  /// The `skewXSelf()` method of the [DOMMatrix] interface is a mutable
  /// transformation method that modifies a matrix. It skews the source matrix
  /// by applying the specified skew transformation along the X-axis and returns
  /// the skewed matrix.
  ///
  /// To skew a matrix along the X-axis without mutating it, see
  /// [DOMMatrixReadOnly.skewX]
  external DOMMatrix skewXSelf([num sx]);

  /// The `skewYSelf()` method of the [DOMMatrix] interface is a mutable
  /// transformation method that modifies a matrix. It skews the source matrix
  /// by applying the specified skew transformation along the Y-axis and returns
  /// the skewed matrix.
  ///
  /// To skew a matrix along the Y-axis without mutating it, see
  /// [DOMMatrixReadOnly.skewY]
  external DOMMatrix skewYSelf([num sy]);

  /// The **`invertSelf()`** method of the [DOMMatrix] interface inverts the
  /// original matrix. If the matrix cannot be inverted, the new matrix's
  /// components are all set to `NaN` and its [DOMMatrixReadonly.is2D] property
  /// is set to `false`.
  ///
  /// To invert a matrix without mutating it, see [DOMMatrixReadOnly.inverse]
  external DOMMatrix invertSelf();

  /// The **`setMatrixValue()`** method of the [DOMMatrix] interface replaces
  /// the contents of the matrix with the matrix described by the specified
  /// transform or transforms, returning itself.
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
