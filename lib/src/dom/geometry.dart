// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('DOMPointReadOnly')
@staticInterop
class DOMPointReadOnly {
  external factory DOMPointReadOnly([
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber w,
  ]);

  external static DOMPointReadOnly fromPoint([DOMPointInit other]);
}

extension DOMPointReadOnlyExtension on DOMPointReadOnly {
  external DOMPoint matrixTransform([DOMMatrixInit matrix]);
  external JSObject toJSON();
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get z;
  external JSNumber get w;
}

@JS('DOMPoint')
@staticInterop
class DOMPoint implements DOMPointReadOnly {
  external factory DOMPoint([
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber w,
  ]);

  external static DOMPoint fromPoint([DOMPointInit other]);
}

extension DOMPointExtension on DOMPoint {
  external set x(JSNumber value);
  external JSNumber get x;
  external set y(JSNumber value);
  external JSNumber get y;
  external set z(JSNumber value);
  external JSNumber get z;
  external set w(JSNumber value);
  external JSNumber get w;
}

@JS()
@staticInterop
@anonymous
class DOMPointInit {
  external factory DOMPointInit({
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber w,
  });
}

extension DOMPointInitExtension on DOMPointInit {
  external set x(JSNumber value);
  external JSNumber get x;
  external set y(JSNumber value);
  external JSNumber get y;
  external set z(JSNumber value);
  external JSNumber get z;
  external set w(JSNumber value);
  external JSNumber get w;
}

@JS('DOMRectReadOnly')
@staticInterop
class DOMRectReadOnly {
  external factory DOMRectReadOnly([
    JSNumber x,
    JSNumber y,
    JSNumber width,
    JSNumber height,
  ]);

  external static DOMRectReadOnly fromRect([DOMRectInit other]);
}

extension DOMRectReadOnlyExtension on DOMRectReadOnly {
  external JSObject toJSON();
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get top;
  external JSNumber get right;
  external JSNumber get bottom;
  external JSNumber get left;
}

@JS('DOMRect')
@staticInterop
class DOMRect implements DOMRectReadOnly {
  external factory DOMRect([
    JSNumber x,
    JSNumber y,
    JSNumber width,
    JSNumber height,
  ]);

  external static DOMRect fromRect([DOMRectInit other]);
}

extension DOMRectExtension on DOMRect {
  external set x(JSNumber value);
  external JSNumber get x;
  external set y(JSNumber value);
  external JSNumber get y;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
}

@JS()
@staticInterop
@anonymous
class DOMRectInit {
  external factory DOMRectInit({
    JSNumber x,
    JSNumber y,
    JSNumber width,
    JSNumber height,
  });
}

extension DOMRectInitExtension on DOMRectInit {
  external set x(JSNumber value);
  external JSNumber get x;
  external set y(JSNumber value);
  external JSNumber get y;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
}

@JS('DOMRectList')
@staticInterop
class DOMRectList {}

extension DOMRectListExtension on DOMRectList {
  external DOMRect? item(JSNumber index);
  external JSNumber get length;
}

@JS('DOMQuad')
@staticInterop
class DOMQuad {
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
class DOMQuadInit {
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
class DOMMatrixReadOnly {
  external factory DOMMatrixReadOnly([JSAny init]);

  external static DOMMatrixReadOnly fromMatrix([DOMMatrixInit other]);
  external static DOMMatrixReadOnly fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrixReadOnly fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixReadOnlyExtension on DOMMatrixReadOnly {
  external DOMMatrix translate([
    JSNumber tx,
    JSNumber ty,
    JSNumber tz,
  ]);
  external DOMMatrix scale([
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  ]);
  external DOMMatrix scaleNonUniform([
    JSNumber scaleX,
    JSNumber scaleY,
  ]);
  external DOMMatrix scale3d([
    JSNumber scale,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  ]);
  external DOMMatrix rotate([
    JSNumber rotX,
    JSNumber rotY,
    JSNumber rotZ,
  ]);
  external DOMMatrix rotateFromVector([
    JSNumber x,
    JSNumber y,
  ]);
  external DOMMatrix rotateAxisAngle([
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber angle,
  ]);
  external DOMMatrix skewX([JSNumber sx]);
  external DOMMatrix skewY([JSNumber sy]);
  external DOMMatrix multiply([DOMMatrixInit other]);
  external DOMMatrix flipX();
  external DOMMatrix flipY();
  external DOMMatrix inverse();
  external DOMPoint transformPoint([DOMPointInit point]);
  external JSFloat32Array toFloat32Array();
  external JSFloat64Array toFloat64Array();
  external JSObject toJSON();
  external JSNumber get a;
  external JSNumber get b;
  external JSNumber get c;
  external JSNumber get d;
  external JSNumber get e;
  external JSNumber get f;
  external JSNumber get m11;
  external JSNumber get m12;
  external JSNumber get m13;
  external JSNumber get m14;
  external JSNumber get m21;
  external JSNumber get m22;
  external JSNumber get m23;
  external JSNumber get m24;
  external JSNumber get m31;
  external JSNumber get m32;
  external JSNumber get m33;
  external JSNumber get m34;
  external JSNumber get m41;
  external JSNumber get m42;
  external JSNumber get m43;
  external JSNumber get m44;
  external JSBoolean get is2D;
  external JSBoolean get isIdentity;
}

@JS('DOMMatrix')
@staticInterop
class DOMMatrix implements DOMMatrixReadOnly {
  external factory DOMMatrix([JSAny init]);

  external static DOMMatrix fromMatrix([DOMMatrixInit other]);
  external static DOMMatrix fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrix fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixExtension on DOMMatrix {
  external DOMMatrix multiplySelf([DOMMatrixInit other]);
  external DOMMatrix preMultiplySelf([DOMMatrixInit other]);
  external DOMMatrix translateSelf([
    JSNumber tx,
    JSNumber ty,
    JSNumber tz,
  ]);
  external DOMMatrix scaleSelf([
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  ]);
  external DOMMatrix scale3dSelf([
    JSNumber scale,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  ]);
  external DOMMatrix rotateSelf([
    JSNumber rotX,
    JSNumber rotY,
    JSNumber rotZ,
  ]);
  external DOMMatrix rotateFromVectorSelf([
    JSNumber x,
    JSNumber y,
  ]);
  external DOMMatrix rotateAxisAngleSelf([
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber angle,
  ]);
  external DOMMatrix skewXSelf([JSNumber sx]);
  external DOMMatrix skewYSelf([JSNumber sy]);
  external DOMMatrix invertSelf();
  external DOMMatrix setMatrixValue(JSString transformList);
  external set a(JSNumber value);
  external JSNumber get a;
  external set b(JSNumber value);
  external JSNumber get b;
  external set c(JSNumber value);
  external JSNumber get c;
  external set d(JSNumber value);
  external JSNumber get d;
  external set e(JSNumber value);
  external JSNumber get e;
  external set f(JSNumber value);
  external JSNumber get f;
  external set m11(JSNumber value);
  external JSNumber get m11;
  external set m12(JSNumber value);
  external JSNumber get m12;
  external set m13(JSNumber value);
  external JSNumber get m13;
  external set m14(JSNumber value);
  external JSNumber get m14;
  external set m21(JSNumber value);
  external JSNumber get m21;
  external set m22(JSNumber value);
  external JSNumber get m22;
  external set m23(JSNumber value);
  external JSNumber get m23;
  external set m24(JSNumber value);
  external JSNumber get m24;
  external set m31(JSNumber value);
  external JSNumber get m31;
  external set m32(JSNumber value);
  external JSNumber get m32;
  external set m33(JSNumber value);
  external JSNumber get m33;
  external set m34(JSNumber value);
  external JSNumber get m34;
  external set m41(JSNumber value);
  external JSNumber get m41;
  external set m42(JSNumber value);
  external JSNumber get m42;
  external set m43(JSNumber value);
  external JSNumber get m43;
  external set m44(JSNumber value);
  external JSNumber get m44;
}

@JS()
@staticInterop
@anonymous
class DOMMatrix2DInit {
  external factory DOMMatrix2DInit({
    JSNumber a,
    JSNumber b,
    JSNumber c,
    JSNumber d,
    JSNumber e,
    JSNumber f,
    JSNumber m11,
    JSNumber m12,
    JSNumber m21,
    JSNumber m22,
    JSNumber m41,
    JSNumber m42,
  });
}

extension DOMMatrix2DInitExtension on DOMMatrix2DInit {
  external set a(JSNumber value);
  external JSNumber get a;
  external set b(JSNumber value);
  external JSNumber get b;
  external set c(JSNumber value);
  external JSNumber get c;
  external set d(JSNumber value);
  external JSNumber get d;
  external set e(JSNumber value);
  external JSNumber get e;
  external set f(JSNumber value);
  external JSNumber get f;
  external set m11(JSNumber value);
  external JSNumber get m11;
  external set m12(JSNumber value);
  external JSNumber get m12;
  external set m21(JSNumber value);
  external JSNumber get m21;
  external set m22(JSNumber value);
  external JSNumber get m22;
  external set m41(JSNumber value);
  external JSNumber get m41;
  external set m42(JSNumber value);
  external JSNumber get m42;
}

@JS()
@staticInterop
@anonymous
class DOMMatrixInit implements DOMMatrix2DInit {
  external factory DOMMatrixInit({
    JSNumber m13,
    JSNumber m14,
    JSNumber m23,
    JSNumber m24,
    JSNumber m31,
    JSNumber m32,
    JSNumber m33,
    JSNumber m34,
    JSNumber m43,
    JSNumber m44,
    JSBoolean is2D,
  });
}

extension DOMMatrixInitExtension on DOMMatrixInit {
  external set m13(JSNumber value);
  external JSNumber get m13;
  external set m14(JSNumber value);
  external JSNumber get m14;
  external set m23(JSNumber value);
  external JSNumber get m23;
  external set m24(JSNumber value);
  external JSNumber get m24;
  external set m31(JSNumber value);
  external JSNumber get m31;
  external set m32(JSNumber value);
  external JSNumber get m32;
  external set m33(JSNumber value);
  external JSNumber get m33;
  external set m34(JSNumber value);
  external JSNumber get m34;
  external set m43(JSNumber value);
  external JSNumber get m43;
  external set m44(JSNumber value);
  external JSNumber get m44;
  external set is2D(JSBoolean value);
  external JSBoolean get is2D;
}
