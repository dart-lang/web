// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

@_i1.JS()
external Vector2D get v2d;
@_i1.JS()
external Vector3D get v3d;
extension type Vector2D._(_i1.JSObject _) implements Vector {
  external Vector2D(num x, num y);

  external double x;

  external double y;

  external Vector2D unit();
  @_i2.redeclare
  external double get magnitude;
  @_i2.redeclare
  external double get directionAngle;
  external Point2D moveFrom(Point2D point);
  external static Vector2D from(num magnitude, num at);
  external static Vector2D fromPoints(Point2D start, Point2D end);
}
extension type Point2D._(_i1.JSObject _) implements _i1.JSObject {
  external double x;

  external double y;
}
extension type Vector._(_i1.JSObject _) implements _i1.JSObject {
  external double get magnitude;
  external double get directionAngle;
}
extension type Vector3D._(_i1.JSObject _) implements Vector {
  external Vector3D(num x, num y, num z);

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
  external static Vector3D from(num magnitude, DirectionAngles at);
  external static Vector3D fromPoints(Point3D start, Point3D end);
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
