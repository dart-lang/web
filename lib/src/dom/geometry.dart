// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('DOMPointReadOnly')
@staticInterop
class DOMPointReadOnly implements JSObject {
  external factory DOMPointReadOnly([
    double x,
    double y,
    double z,
    double w,
  ]);

  external static DOMPointReadOnly fromPoint([DOMPointInit other]);
}

extension DOMPointReadOnlyExtension on DOMPointReadOnly {
  external DOMPoint matrixTransform([DOMMatrixInit matrix]);
  external JSObject toJSON();
  external double get x;
  external double get y;
  external double get z;
  external double get w;
}

@JS('DOMPoint')
@staticInterop
class DOMPoint implements DOMPointReadOnly {
  external factory DOMPoint([
    double x,
    double y,
    double z,
    double w,
  ]);

  external static DOMPoint fromPoint([DOMPointInit other]);
}

extension DOMPointExtension on DOMPoint {
  external set x(double value);
  external double get x;
  external set y(double value);
  external double get y;
  external set z(double value);
  external double get z;
  external set w(double value);
  external double get w;
}

@JS()
@staticInterop
@anonymous
class DOMPointInit implements JSObject {
  external factory DOMPointInit({
    double x,
    double y,
    double z,
    double w,
  });
}

extension DOMPointInitExtension on DOMPointInit {
  external set x(double value);
  external double get x;
  external set y(double value);
  external double get y;
  external set z(double value);
  external double get z;
  external set w(double value);
  external double get w;
}

@JS('DOMRectReadOnly')
@staticInterop
class DOMRectReadOnly implements JSObject {
  external factory DOMRectReadOnly([
    double x,
    double y,
    double width,
    double height,
  ]);

  external static DOMRectReadOnly fromRect([DOMRectInit other]);
}

extension DOMRectReadOnlyExtension on DOMRectReadOnly {
  external JSObject toJSON();
  external double get x;
  external double get y;
  external double get width;
  external double get height;
  external double get top;
  external double get right;
  external double get bottom;
  external double get left;
}

@JS('DOMRect')
@staticInterop
class DOMRect implements DOMRectReadOnly {
  external factory DOMRect([
    double x,
    double y,
    double width,
    double height,
  ]);

  external static DOMRect fromRect([DOMRectInit other]);
}

extension DOMRectExtension on DOMRect {
  external set x(double value);
  external double get x;
  external set y(double value);
  external double get y;
  external set width(double value);
  external double get width;
  external set height(double value);
  external double get height;
}

@JS()
@staticInterop
@anonymous
class DOMRectInit implements JSObject {
  external factory DOMRectInit({
    double x,
    double y,
    double width,
    double height,
  });
}

extension DOMRectInitExtension on DOMRectInit {
  external set x(double value);
  external double get x;
  external set y(double value);
  external double get y;
  external set width(double value);
  external double get width;
  external set height(double value);
  external double get height;
}

@JS('DOMRectList')
@staticInterop
class DOMRectList implements JSObject {}

extension DOMRectListExtension on DOMRectList {
  external DOMRect? item(int index);
  external int get length;
}

@JS('DOMQuad')
@staticInterop
class DOMQuad implements JSObject {
  external factory DOMQuad([
    DOMPointInit p1,
    DOMPointInit p2,
    DOMPointInit p3,
    DOMPointInit p4,
  ]);

  external static DOMQuad fromRect([DOMRectInit other]);
  external static DOMQuad fromQuad([DOMQuadInit other]);
}

extension DOMQuadExtension on DOMQuad {
  external DOMRect getBounds();
  external JSObject toJSON();
  external DOMPoint get p1;
  external DOMPoint get p2;
  external DOMPoint get p3;
  external DOMPoint get p4;
}

@JS()
@staticInterop
@anonymous
class DOMQuadInit implements JSObject {
  external factory DOMQuadInit({
    DOMPointInit p1,
    DOMPointInit p2,
    DOMPointInit p3,
    DOMPointInit p4,
  });
}

extension DOMQuadInitExtension on DOMQuadInit {
  external set p1(DOMPointInit value);
  external DOMPointInit get p1;
  external set p2(DOMPointInit value);
  external DOMPointInit get p2;
  external set p3(DOMPointInit value);
  external DOMPointInit get p3;
  external set p4(DOMPointInit value);
  external DOMPointInit get p4;
}

@JS('DOMMatrixReadOnly')
@staticInterop
class DOMMatrixReadOnly implements JSObject {
  external factory DOMMatrixReadOnly([JSAny? init]);

  external static DOMMatrixReadOnly fromMatrix([DOMMatrixInit other]);
  external static DOMMatrixReadOnly fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrixReadOnly fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixReadOnlyExtension on DOMMatrixReadOnly {
  external DOMMatrix translate([
    double tx,
    double ty,
    double tz,
  ]);
  external DOMMatrix scale([
    double scaleX,
    double scaleY,
    double scaleZ,
    double originX,
    double originY,
    double originZ,
  ]);
  external DOMMatrix scaleNonUniform([
    double scaleX,
    double scaleY,
  ]);
  external DOMMatrix scale3d([
    double scale,
    double originX,
    double originY,
    double originZ,
  ]);
  external DOMMatrix rotate([
    double rotX,
    double rotY,
    double rotZ,
  ]);
  external DOMMatrix rotateFromVector([
    double x,
    double y,
  ]);
  external DOMMatrix rotateAxisAngle([
    double x,
    double y,
    double z,
    double angle,
  ]);
  external DOMMatrix skewX([double sx]);
  external DOMMatrix skewY([double sy]);
  external DOMMatrix multiply([DOMMatrixInit other]);
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

@JS('DOMMatrix')
@staticInterop
class DOMMatrix implements DOMMatrixReadOnly {
  external factory DOMMatrix([JSAny? init]);

  external static DOMMatrix fromMatrix([DOMMatrixInit other]);
  external static DOMMatrix fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrix fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixExtension on DOMMatrix {
  external DOMMatrix multiplySelf([DOMMatrixInit other]);
  external DOMMatrix preMultiplySelf([DOMMatrixInit other]);
  external DOMMatrix translateSelf([
    double tx,
    double ty,
    double tz,
  ]);
  external DOMMatrix scaleSelf([
    double scaleX,
    double scaleY,
    double scaleZ,
    double originX,
    double originY,
    double originZ,
  ]);
  external DOMMatrix scale3dSelf([
    double scale,
    double originX,
    double originY,
    double originZ,
  ]);
  external DOMMatrix rotateSelf([
    double rotX,
    double rotY,
    double rotZ,
  ]);
  external DOMMatrix rotateFromVectorSelf([
    double x,
    double y,
  ]);
  external DOMMatrix rotateAxisAngleSelf([
    double x,
    double y,
    double z,
    double angle,
  ]);
  external DOMMatrix skewXSelf([double sx]);
  external DOMMatrix skewYSelf([double sy]);
  external DOMMatrix invertSelf();
  external DOMMatrix setMatrixValue(String transformList);
  external set a(double value);
  external double get a;
  external set b(double value);
  external double get b;
  external set c(double value);
  external double get c;
  external set d(double value);
  external double get d;
  external set e(double value);
  external double get e;
  external set f(double value);
  external double get f;
  external set m11(double value);
  external double get m11;
  external set m12(double value);
  external double get m12;
  external set m13(double value);
  external double get m13;
  external set m14(double value);
  external double get m14;
  external set m21(double value);
  external double get m21;
  external set m22(double value);
  external double get m22;
  external set m23(double value);
  external double get m23;
  external set m24(double value);
  external double get m24;
  external set m31(double value);
  external double get m31;
  external set m32(double value);
  external double get m32;
  external set m33(double value);
  external double get m33;
  external set m34(double value);
  external double get m34;
  external set m41(double value);
  external double get m41;
  external set m42(double value);
  external double get m42;
  external set m43(double value);
  external double get m43;
  external set m44(double value);
  external double get m44;
}

@JS()
@staticInterop
@anonymous
class DOMMatrix2DInit implements JSObject {
  external factory DOMMatrix2DInit({
    double a,
    double b,
    double c,
    double d,
    double e,
    double f,
    double m11,
    double m12,
    double m21,
    double m22,
    double m41,
    double m42,
  });
}

extension DOMMatrix2DInitExtension on DOMMatrix2DInit {
  external set a(double value);
  external double get a;
  external set b(double value);
  external double get b;
  external set c(double value);
  external double get c;
  external set d(double value);
  external double get d;
  external set e(double value);
  external double get e;
  external set f(double value);
  external double get f;
  external set m11(double value);
  external double get m11;
  external set m12(double value);
  external double get m12;
  external set m21(double value);
  external double get m21;
  external set m22(double value);
  external double get m22;
  external set m41(double value);
  external double get m41;
  external set m42(double value);
  external double get m42;
}

@JS()
@staticInterop
@anonymous
class DOMMatrixInit implements DOMMatrix2DInit {
  external factory DOMMatrixInit({
    double m13,
    double m14,
    double m23,
    double m24,
    double m31,
    double m32,
    double m33,
    double m34,
    double m43,
    double m44,
    bool is2D,
  });
}

extension DOMMatrixInitExtension on DOMMatrixInit {
  external set m13(double value);
  external double get m13;
  external set m14(double value);
  external double get m14;
  external set m23(double value);
  external double get m23;
  external set m24(double value);
  external double get m24;
  external set m31(double value);
  external double get m31;
  external set m32(double value);
  external double get m32;
  external set m33(double value);
  external double get m33;
  external set m34(double value);
  external double get m34;
  external set m43(double value);
  external double get m43;
  external set m44(double value);
  external double get m44;
  external set is2D(bool value);
  external bool get is2D;
}
