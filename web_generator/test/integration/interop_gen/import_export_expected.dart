// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

@_i1.JS()
external V dotProduct<V extends Vector>(
  V v1,
  V v2,
);
@_i1.JS()
external Vector3D crossProduct(
  Vector3D v1,
  Vector3D v2,
);
@_i1.JS()
external Vector3D mapTo3D(Vector2D v);
extension type TransformerMatrix<V extends Vector2D>._(_i1.JSObject _)
    implements Matrix {
  external V call(V v);
}
extension type ComparatorMatrix<V extends Vector2D>._(_i1.JSObject _)
    implements Matrix, Comparator<V> {}
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
external PolarCoordinate toPolarCoordinate(Point2D point);
@_i1.JS()
external SphericalCoordinate toSphericalCoordinate(Point3D point);
@_i1.JS('toSphericalCoordinate')
external SphericalCoordinate toSphericalCoordinate$1(
    CylindricalCoordinate point);
@_i1.JS()
external CylindricalCoordinate toCylindricalCoordinate(Point3D point);
extension type Vector._(_i1.JSObject _) implements _i1.JSObject {
  external double get magnitude;
  external double get directionAngle;
}
extension type Point2D._(_i1.JSObject _) implements _i1.JSObject {
  external double x;

  external double y;
}
extension type Vector2D._(_i1.JSObject _) implements Vector {
  external Vector2D(
    num x,
    num y,
  );

  external double x;

  external double y;

  external Vector2D unit();
  @_i2.redeclare
  external double get magnitude;
  @_i2.redeclare
  external double get directionAngle;
  external Point2D moveFrom(Point2D point);
  external static Vector2D from(
    num magnitude,
    num at,
  );
  external static Vector2D fromPoints(
    Point2D start,
    Point2D end,
  );
}
extension type DirectionAngles._(_i1.JSObject _) implements _i1.JSObject {
  external double alpha;

  external double beta;

  external double gamma;
}
extension type Point3D._(_i1.JSObject _) implements _i1.JSObject {
  external double x;

  external double y;

  external double z;
}
extension type Vector3D._(_i1.JSObject _) implements Vector {
  external Vector3D(
    num x,
    num y,
    num z,
  );

  external double x;

  external double y;

  external double z;

  external Vector3D unit();
  @_i2.redeclare
  external double get magnitude;
  external DirectionAngles get directionAngles;
  @_i2.redeclare
  external double get directionAngle;
  external Point3D moveFrom(Point3D point);
  external static Vector3D from(
    num magnitude,
    DirectionAngles at,
  );
  external static Vector3D fromPoints(
    Point3D start,
    Point3D end,
  );
}
@_i1.JS()
external Vector2D get unitI2D;
@_i1.JS()
external Vector2D get unitJ2D;
@_i1.JS()
external Vector3D get unitI3D;
@_i1.JS()
external Vector3D get unitJ3D;
@_i1.JS()
external Vector3D get unitK3D;
extension type Matrix._(_i1.JSObject _) implements _i1.JSObject {
  external double rows;

  external double columns;

  external _i1.JSArray<_i1.JSNumber> operator [](num index);
}
extension type Comparator<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external double call(
    T a,
    T b,
  );
}
