// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

extension type Shape._(JSObject _) implements JSObject {
  external factory Shape();
}
extension type Done._(JSObject _) implements JSObject {}
extension type Coordinate._(JSObject _) implements JSObject {
  external int get x;
  external set x(int value);
  external int get y;
  external set y(int value);
}
extension type DoneList._(JSObject _) implements JSObject {
  external factory DoneList(int length);

  external Done item(int index);
  external int get length;
}
extension type Circle._(JSObject _) implements Shape, JSObject {
  external factory Circle(num radius);

  external static Coordinate triangulate(Circle c1, Circle c2, Circle c3);
  external static int get triangulationCount;
  external double get r;
  external set r(num value);
  external double get cx;
  external set cx(num value);
  external double get cy;
  external set cy(num value);
  external double get circumference;
}
