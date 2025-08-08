// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i4;

import 'b.dart' as _i2;
import 'c.dart' as _i3;

@_i1.JS()
external _i2.Point2D get origin;
@_i1.JS()
external _i2.Point3D get origin3D;

/// Computes the dot product between two vectors.
/// - [v1]:  First vector.
/// - [v2]:  Second vector.
///
/// Returns A scalar projection as a vector.
@_i1.JS()
external V dotProduct<V extends _i2.Vector>(
  V v1,
  V v2,
);

/// Computes the cross product of two 3D vectors.
/// - [v1]:  First vector.
/// - [v2]:  Second vector.
///
/// Returns A new 3D vector perpendicular to both.
@_i1.JS()
external _i2.Vector3D crossProduct(
  _i2.Vector3D v1,
  _i2.Vector3D v2,
);

/// Maps a 2D vector to a 3D vector (z = 0).
/// - [v]:  Input 2D vector.
///
/// Returns A 3D vector.
@_i1.JS()
external _i2.Vector3D mapTo3D(_i2.Vector2D v);

/// A transformation matrix that acts as a function on 2D vectors.
/// Type Name [V]:  Vector2D subtype
extension type TransformerMatrix<V extends _i2.Vector2D>._(_i1.JSObject _)
    implements Matrix {
  external V call(V v);
}

/// A matrix that includes vector comparison capabilities.
/// Type Name [V]:  Vector2D subtype
extension type ComparatorMatrix<V extends _i2.Vector2D>._(_i1.JSObject _)
    implements Matrix, _i3.Comparator<V> {}

/// Represents a point in 2D space using polar coordinates.
/// - `magnitude`: radial distance from the origin.
/// - `angle`: angle in radians from the positive x-axis.
@_i1.JS('PolarPoint')
extension type PolarCoordinate._(_i1.JSObject _) implements _i1.JSObject {
  external double magnitude;

  external double angle;
}

/// Represents a point in 3D space using cylindrical coordinates.
/// - `radius`: radial distance from the z-axis.
/// - `angle`: angle in radians from the x-axis.
/// - `z`: height along the z-axis.
@_i1.JS('CylindricalPoint')
extension type CylindricalCoordinate._(_i1.JSObject _) implements _i1.JSObject {
  external double radius;

  external double angle;

  external double z;
}

/// Represents a point in 3D space using spherical coordinates.
/// - `magnitude`: radial distance from the origin.
/// - `theta`: inclination angle from the z-axis.
/// - `tau`: azimuthal angle from the x-axis in the xy-plane.
@_i1.JS('SphericalPoint')
extension type SphericalCoordinate._(_i1.JSObject _) implements _i1.JSObject {
  external double magnitude;

  external double theta;

  external double tau;
}

/// Converts a 2D point to polar coordinates.
/// - [point]:  A 2D point.
///
/// Returns Polar representation of the point.
@_i1.JS()
external PolarCoordinate toPolarCoordinate(_i2.Point2D point);

/// Converts a 3D point to spherical coordinates.
/// Converts cylindrical coordinates to spherical coordinates.
/// - [point]:  A 3D point.
///
/// Returns Spherical representation.
/// - [point]:  Cylindrical coordinate.
///
/// Returns Spherical representation.
@_i1.JS()
external SphericalCoordinate toSphericalCoordinate(_i2.Point3D point);

/// Converts a 3D point to spherical coordinates.
/// Converts cylindrical coordinates to spherical coordinates.
/// - [point]:  A 3D point.
///
/// Returns Spherical representation.
/// - [point]:  Cylindrical coordinate.
///
/// Returns Spherical representation.
@_i1.JS('toSphericalCoordinate')
external SphericalCoordinate toSphericalCoordinate$1(
    CylindricalCoordinate point);

/// Converts a 3D point to cylindrical coordinates.
/// - [point]:  A 3D point.
///
/// Returns Cylindrical representation.
@_i1.JS()
external CylindricalCoordinate toCylindricalCoordinate(_i2.Point3D point);

/// Unit vector in 2D x-direction.
@_i1.JS()
external _i2.Vector2D get unitI2D;

/// Unit vector in 2D y-direction.
@_i1.JS()
external _i2.Vector2D get unitJ2D;

/// A 2D coordinate system with vector and point operations.
extension type CoordinateSystem2D._(_i1.JSObject _)
    implements _i2.CoordinateSystem<_i2.Point2D> {
  external CoordinateSystem2D(_i2.Point2D origin);

  /// Points registered in this coordinate system.
  external _i1.JSArray<_i2.Point2D> points;

  /// Origin of the coordinate system.
  @_i4.redeclare
  external _i2.Point2D get origin;

  /// Adds a point to the coordinate system.
  /// - [point]:  The point to add.
  @_i4.redeclare
  external void addPoint(_i2.Point2D point);

  /// Adds a vector to the coordinate system from a starting point.
  /// - [vector]:  The vector to add.
  /// - [start]:  The start point (defaults to origin).
  external void addVector(
    _i2.Vector2D vector, [
    _i2.Point2D? start,
  ]);

  /// The unit vector along the x-axis.
  external _i2.Vector2D get xAxis;

  /// The unit vector along the y-axis.
  external _i2.Vector2D get yAxis;
}

/// Unit vector in 3D x-direction.
@_i1.JS()
external _i2.Vector3D get unitI3D;

/// Unit vector in 3D y-direction.
@_i1.JS()
external _i2.Vector3D get unitJ3D;

/// Unit vector in 3D z-direction.
@_i1.JS()
external _i2.Vector3D get unitK3D;

/// A 3D coordinate system with vector and point operations.
extension type CoordinateSystem3D._(_i1.JSObject _)
    implements _i2.CoordinateSystem<_i2.Point3D> {
  external CoordinateSystem3D(_i2.Point3D origin);

  /// Points registered in this coordinate system.
  external _i1.JSArray<_i2.Point3D> points;

  /// Origin of the coordinate system.
  @_i4.redeclare
  external _i2.Point3D get origin;

  /// Adds a point to the coordinate system.
  /// - [point]:  The point to add.
  @_i4.redeclare
  external void addPoint(_i2.Point3D point);

  /// Adds a vector to the coordinate system from a starting point.
  /// - [vector]:  The vector to add.
  /// - [start]:  The start point (defaults to origin).
  external void addVector(
    _i2.Vector3D vector, [
    _i2.Point3D? start,
  ]);

  /// The unit vector along the x-axis.
  external _i2.Vector3D get xAxis;

  /// The unit vector along the y-axis.
  external _i2.Vector3D get yAxis;

  /// The unit vector along the z-axis.
  external _i2.Vector3D get zAxis;
}

/// Represents a mathematical matrix.
/// - `rows`: number of rows.
/// - `columns`: number of columns.
/// - Numeric index maps to an array of numbers (row data).
extension type Matrix._(_i1.JSObject _) implements _i1.JSObject {
  external double rows;

  external double columns;

  external _i1.JSArray<_i1.JSNumber> operator [](num index);
}
