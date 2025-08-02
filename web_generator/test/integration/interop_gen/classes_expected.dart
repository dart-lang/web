// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

extension type Point2D._(_i1.JSObject _) implements _i1.JSObject {
  external double x;

  external double y;
}
extension type Shape._(_i1.JSObject _) implements _i1.JSObject {}
extension type Shape2D._(_i1.JSObject _) implements Shape {
  external double? get sides;
  external double get perimeter;
  external double get area;
}
extension type Circle._(_i1.JSObject _) implements Shape2D {
  external Circle(num radius);

  external double radius;

  @_i2.redeclare
  external double get area;
  @_i2.redeclare
  external double get perimeter;
}
@_i1.JS()
external Circle drawCircle(
  Point2D center,
  num radius,
);
extension type Rectangle._(_i1.JSObject _) implements Shape2D {
  external Rectangle(
    num length,
    num width,
  );

  external double length;

  external double width;

  external double sides;

  @_i2.redeclare
  external double get area;
  @_i2.redeclare
  external double get perimeter;
}
extension type Square._(_i1.JSObject _) implements Rectangle {
  external Square(num length);

  external double length;
}
@_i1.JS()
external Square drawSquare(
  Point2D start,
  num length, [
  num? angle,
]);
extension type Point3D._(_i1.JSObject _) implements _i1.JSObject {
  external double x;

  external double y;

  external double z;
}
extension type Shape3D._(_i1.JSObject _) implements Shape {
  external double get volume;
  external double surfaceArea();
}
extension type Sphere._(_i1.JSObject _) implements Shape3D {
  external Sphere(num radius);

  external double radius;

  @_i2.redeclare
  external double get volume;
  @_i2.redeclare
  external double surfaceArea();
}
@_i1.JS()
external Sphere drawSphere(Point3D center);
extension type Configuration._(_i1.JSObject _) implements _i1.JSObject {
  external Configuration(
    String version,
    String apiUrl,
  );

  external String get version;
  external String get apiUrl;
}
extension type Product._(_i1.JSObject _) implements _i1.JSObject {
  external Product(
    String name,
    num price,
    num quantity,
  );

  external String get name;
  external set price(num newPrice);
  external double get price;
  external set quantity(num newQuantity);
  external double get quantity;
  external double get totalPrice;
}
extension type User._(_i1.JSObject _) implements _i1.JSObject {
  external User(
    num id,
    String username,
    String email,
  );

  external double id;

  external String greet();
  external String getEmail();
}
extension type Prism<S extends Shape2D>._(_i1.JSObject _) implements Shape3D {
  external Prism(
    S surface,
    num height,
  );

  external double height;

  external S get surface;
  @_i2.redeclare
  external double get volume;
  @_i2.redeclare
  external double surfaceArea();
}
extension type Pyramid<S extends Shape2D>._(_i1.JSObject _) implements Shape3D {
  external Pyramid(
    S surface,
    num height,
  );

  external double height;

  external S get surface;
  @_i2.redeclare
  external double get volume;
  @_i2.redeclare
  external double surfaceArea();
}
extension type Cylinder._(_i1.JSObject _) implements Prism<Circle> {
  external Cylinder(
    num radius,
    num height,
  );

  external double radius;

  @_i2.redeclare
  external double surfaceArea();
}
extension type Cuboid._(_i1.JSObject _) implements Prism<Rectangle> {
  external Cuboid(
    num length,
    num width,
    num height,
  );

  external double length;

  external double width;

  external double height;
}
extension type Cube._(_i1.JSObject _) implements Prism<Square> {
  external Cube(num length);

  external double length;

  @_i2.redeclare
  external double get volume;
  @_i2.redeclare
  external double surfaceArea();
}
extension type Cone._(_i1.JSObject _) implements Pyramid<Circle> {
  external Cone(
    num radius,
    num height,
  );

  external double radius;

  external double height;

  @_i2.redeclare
  external double surfaceArea();
}
extension type Hemi<S extends Shape3D>._(_i1.JSObject _) implements Shape3D {
  external Hemi(S shape);

  external S get shape;
  external static Prism<A> prism<A extends Shape2D>(Prism<A> p);
  @_i2.redeclare
  external double get volume;
  @_i2.redeclare
  external double surfaceArea();
}
typedef HemiSphere = Hemi<Sphere>;
@_i1.JS()
external Point2D get origin2D;
@_i1.JS()
external Point3D get origin3D;
extension type Vector._(_i1.JSObject _) implements _i1.JSObject {
  external double get magnitude;
  external double get directionAngle;
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
extension type EpahsImpl<TMeta extends _i1.JSAny?>._(_i1.JSObject _)
    implements Epahs<TMeta> {
  external EpahsImpl(
    String name, [
    AnonymousUnion_1113974? type,
  ]);

  external factory EpahsImpl.$1(Epahs<TMeta> config);

  external String name;

  external TMeta? metadata;

  @_i2.redeclare
  external String get id;
  @_i2.redeclare
  external void onUpdate(Epahs<TMeta> prev);
  external String get location;
  external set location(String value);
  @_i2.redeclare
  external double area();
  @_i1.JS('area')
  external String area$1(AnonymousUnion_1594664 unit);
  external static EpahsImpl getById(String id);
  @_i1.JS('toString')
  external String toString$();
}
extension type const AnonymousUnion_1113974._(String _) {
  static const AnonymousUnion_1113974 circle =
      AnonymousUnion_1113974._('circle');

  static const AnonymousUnion_1113974 rectangle =
      AnonymousUnion_1113974._('rectangle');

  static const AnonymousUnion_1113974 polygon =
      AnonymousUnion_1113974._('polygon');
}
extension type Epahs<TMetadata extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external String name;

  external String get id;
  external double area();
  @_i1.JS('area')
  external String area$1(AnonymousUnion_1594664 unit);
  external _i1.JSFunction? get onUpdate;
}
extension type const AnonymousUnion_1594664._(String _) {
  static const AnonymousUnion_1594664 cm2 = AnonymousUnion_1594664._('cm2');

  static const AnonymousUnion_1594664 in2 = AnonymousUnion_1594664._('in2');
}
