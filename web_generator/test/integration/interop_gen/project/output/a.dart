// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'b.dart' as _i2;
import 'c.dart' as _i3;

@_i1.JS()
external V dotProduct<V extends _i2.Vector>(
  V v1,
  V v2,
);
@_i1.JS()
external _i2.Vector3D crossProduct(
  _i2.Vector3D v1,
  _i2.Vector3D v2,
);
@_i1.JS()
external _i2.Vector3D mapTo3D(_i2.Vector2D v);
extension type TransformerMatrix<V extends _i2.Vector2D>._(_i1.JSObject _)
    implements Matrix {
  external V call(V v);
}
extension type ComparatorMatrix<V extends _i2.Vector2D>._(_i1.JSObject _)
    implements Matrix, _i3.Comparator<V> {}
@_i1.JS('PolarPoint')
extension type PolarCoordinate._(_i1.JSObject _) implements _i1.JSObject {
  external double magnitude;

  external double angle;
}
@_i1.JS('CylindricalPoint')
extension type CylindricalCoordinate._(_i1.JSObject _) implements _i1.JSObject {
  external double radius;

  external double angle;

  external double z;
}
@_i1.JS('SphericalPoint')
extension type SphericalCoordinate._(_i1.JSObject _) implements _i1.JSObject {
  external double magnitude;

  external double theta;

  external double tau;
}
@_i1.JS()
external PolarCoordinate toPolarCoordinate(_i2.Point2D point);
@_i1.JS()
external SphericalCoordinate toSphericalCoordinate(_i2.Point3D point);
@_i1.JS('toSphericalCoordinate')
external SphericalCoordinate toSphericalCoordinate$1(
    CylindricalCoordinate point);
@_i1.JS()
external CylindricalCoordinate toCylindricalCoordinate(_i2.Point3D point);
@_i1.JS()
external _i2.Vector2D get unitI2D;
@_i1.JS()
external _i2.Vector2D get unitJ2D;
@_i1.JS()
external _i2.Vector3D get unitI3D;
@_i1.JS()
external _i2.Vector3D get unitJ3D;
@_i1.JS()
external _i2.Vector3D get unitK3D;
extension type Matrix._(_i1.JSObject _) implements _i1.JSObject {
  external double rows;

  external double columns;

  external _i1.JSArray<_i1.JSNumber> operator [](num index);
}
