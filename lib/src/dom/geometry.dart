// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('DOMPointReadOnly')
@staticInterop
class DOMPointReadOnly {
  external factory DOMPointReadOnly();

  external factory DOMPointReadOnly.a1();

  external factory DOMPointReadOnly.a2(JSNumber x);

  external factory DOMPointReadOnly.a3(
    JSNumber x,
    JSNumber y,
  );

  external factory DOMPointReadOnly.a4(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );

  external factory DOMPointReadOnly.a5(
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber w,
  );

  external static DOMPointReadOnly fromPoint();
  external static DOMPointReadOnly fromPoint1(DOMPointInit other);
}

extension DOMPointReadOnlyExtension on DOMPointReadOnly {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get z;
  external JSNumber get w;
  external DOMPoint matrixTransform();
  external DOMPoint matrixTransform1(DOMMatrixInit matrix);
  external JSObject toJSON();
}

@JS('DOMPoint')
@staticInterop
class DOMPoint extends DOMPointReadOnly {
  external factory DOMPoint();

  external factory DOMPoint.a1();

  external factory DOMPoint.a2(JSNumber x);

  external factory DOMPoint.a3(
    JSNumber x,
    JSNumber y,
  );

  external factory DOMPoint.a4(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );

  external factory DOMPoint.a5(
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber w,
  );

  external static DOMPoint fromPoint();
  external static DOMPoint fromPoint1(DOMPointInit other);
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

@JS('DOMPointInit')
@staticInterop
class DOMPointInit {
  external factory DOMPointInit();
}

extension DOMPointInitExtension on DOMPointInit {}

@JS('DOMRectReadOnly')
@staticInterop
class DOMRectReadOnly {
  external factory DOMRectReadOnly();

  external factory DOMRectReadOnly.a1();

  external factory DOMRectReadOnly.a2(JSNumber x);

  external factory DOMRectReadOnly.a3(
    JSNumber x,
    JSNumber y,
  );

  external factory DOMRectReadOnly.a4(
    JSNumber x,
    JSNumber y,
    JSNumber width,
  );

  external factory DOMRectReadOnly.a5(
    JSNumber x,
    JSNumber y,
    JSNumber width,
    JSNumber height,
  );

  external static DOMRectReadOnly fromRect();
  external static DOMRectReadOnly fromRect1(DOMRectInit other);
}

extension DOMRectReadOnlyExtension on DOMRectReadOnly {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get top;
  external JSNumber get right;
  external JSNumber get bottom;
  external JSNumber get left;
  external JSObject toJSON();
}

@JS('DOMRect')
@staticInterop
class DOMRect extends DOMRectReadOnly {
  external factory DOMRect();

  external factory DOMRect.a1();

  external factory DOMRect.a2(JSNumber x);

  external factory DOMRect.a3(
    JSNumber x,
    JSNumber y,
  );

  external factory DOMRect.a4(
    JSNumber x,
    JSNumber y,
    JSNumber width,
  );

  external factory DOMRect.a5(
    JSNumber x,
    JSNumber y,
    JSNumber width,
    JSNumber height,
  );

  external static DOMRect fromRect();
  external static DOMRect fromRect1(DOMRectInit other);
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

@JS('DOMRectInit')
@staticInterop
class DOMRectInit {
  external factory DOMRectInit();
}

extension DOMRectInitExtension on DOMRectInit {}

@JS('DOMRectList')
@staticInterop
class DOMRectList {
  external factory DOMRectList();
}

extension DOMRectListExtension on DOMRectList {
  external JSNumber get length;
  external DOMRect? item(JSNumber index);
}

@JS('DOMQuad')
@staticInterop
class DOMQuad {
  external factory DOMQuad();

  external factory DOMQuad.a1();

  external factory DOMQuad.a2(DOMPointInit p1);

  external factory DOMQuad.a3(
    DOMPointInit p1,
    DOMPointInit p2,
  );

  external factory DOMQuad.a4(
    DOMPointInit p1,
    DOMPointInit p2,
    DOMPointInit p3,
  );

  external factory DOMQuad.a5(
    DOMPointInit p1,
    DOMPointInit p2,
    DOMPointInit p3,
    DOMPointInit p4,
  );

  external static DOMQuad fromRect();
  external static DOMQuad fromRect1(DOMRectInit other);
  external static DOMQuad fromQuad();
  external static DOMQuad fromQuad1(DOMQuadInit other);
}

extension DOMQuadExtension on DOMQuad {
  external DOMPoint get p1;
  external DOMPoint get p2;
  external DOMPoint get p3;
  external DOMPoint get p4;
  external DOMRect getBounds();
  external JSObject toJSON();
}

@JS('DOMQuadInit')
@staticInterop
class DOMQuadInit {
  external factory DOMQuadInit();
}

extension DOMQuadInitExtension on DOMQuadInit {}

@JS('DOMMatrixReadOnly')
@staticInterop
class DOMMatrixReadOnly {
  external factory DOMMatrixReadOnly();

  external factory DOMMatrixReadOnly.a1();

  external factory DOMMatrixReadOnly.a2(JSAny init);

  external static DOMMatrixReadOnly fromMatrix();
  external static DOMMatrixReadOnly fromMatrix1(DOMMatrixInit other);
  external static DOMMatrixReadOnly fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrixReadOnly fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixReadOnlyExtension on DOMMatrixReadOnly {
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
  external DOMMatrix translate();
  external DOMMatrix translate1(JSNumber tx);
  external DOMMatrix translate2(
    JSNumber tx,
    JSNumber ty,
  );
  external DOMMatrix translate3(
    JSNumber tx,
    JSNumber ty,
    JSNumber tz,
  );
  external DOMMatrix scale();
  external DOMMatrix scale1(JSNumber scaleX);
  external DOMMatrix scale2(
    JSNumber scaleX,
    JSNumber scaleY,
  );
  external DOMMatrix scale3(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
  );
  external DOMMatrix scale4(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
  );
  external DOMMatrix scale5(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
    JSNumber originY,
  );
  external DOMMatrix scale6(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  );
  external DOMMatrix scaleNonUniform();
  external DOMMatrix scaleNonUniform1(JSNumber scaleX);
  external DOMMatrix scaleNonUniform2(
    JSNumber scaleX,
    JSNumber scaleY,
  );
  external DOMMatrix scale3d();
  external DOMMatrix scale3d1(JSNumber scale);
  external DOMMatrix scale3d2(
    JSNumber scale,
    JSNumber originX,
  );
  external DOMMatrix scale3d3(
    JSNumber scale,
    JSNumber originX,
    JSNumber originY,
  );
  external DOMMatrix scale3d4(
    JSNumber scale,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  );
  external DOMMatrix rotate();
  external DOMMatrix rotate1(JSNumber rotX);
  external DOMMatrix rotate2(
    JSNumber rotX,
    JSNumber rotY,
  );
  external DOMMatrix rotate3(
    JSNumber rotX,
    JSNumber rotY,
    JSNumber rotZ,
  );
  external DOMMatrix rotateFromVector();
  external DOMMatrix rotateFromVector1(JSNumber x);
  external DOMMatrix rotateFromVector2(
    JSNumber x,
    JSNumber y,
  );
  external DOMMatrix rotateAxisAngle();
  external DOMMatrix rotateAxisAngle1(JSNumber x);
  external DOMMatrix rotateAxisAngle2(
    JSNumber x,
    JSNumber y,
  );
  external DOMMatrix rotateAxisAngle3(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );
  external DOMMatrix rotateAxisAngle4(
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber angle,
  );
  external DOMMatrix skewX();
  external DOMMatrix skewX1(JSNumber sx);
  external DOMMatrix skewY();
  external DOMMatrix skewY1(JSNumber sy);
  external DOMMatrix multiply();
  external DOMMatrix multiply1(DOMMatrixInit other);
  external DOMMatrix flipX();
  external DOMMatrix flipY();
  external DOMMatrix inverse();
  external DOMPoint transformPoint();
  external DOMPoint transformPoint1(DOMPointInit point);
  external JSFloat32Array toFloat32Array();
  external JSFloat64Array toFloat64Array();
  external JSObject toJSON();
}

@JS('DOMMatrix')
@staticInterop
class DOMMatrix extends DOMMatrixReadOnly {
  external factory DOMMatrix();

  external factory DOMMatrix.a1();

  external factory DOMMatrix.a2(JSAny init);

  external static DOMMatrix fromMatrix();
  external static DOMMatrix fromMatrix1(DOMMatrixInit other);
  external static DOMMatrix fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrix fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixExtension on DOMMatrix {
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
  external DOMMatrix multiplySelf();
  external DOMMatrix multiplySelf1(DOMMatrixInit other);
  external DOMMatrix preMultiplySelf();
  external DOMMatrix preMultiplySelf1(DOMMatrixInit other);
  external DOMMatrix translateSelf();
  external DOMMatrix translateSelf1(JSNumber tx);
  external DOMMatrix translateSelf2(
    JSNumber tx,
    JSNumber ty,
  );
  external DOMMatrix translateSelf3(
    JSNumber tx,
    JSNumber ty,
    JSNumber tz,
  );
  external DOMMatrix scaleSelf();
  external DOMMatrix scaleSelf1(JSNumber scaleX);
  external DOMMatrix scaleSelf2(
    JSNumber scaleX,
    JSNumber scaleY,
  );
  external DOMMatrix scaleSelf3(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
  );
  external DOMMatrix scaleSelf4(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
  );
  external DOMMatrix scaleSelf5(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
    JSNumber originY,
  );
  external DOMMatrix scaleSelf6(
    JSNumber scaleX,
    JSNumber scaleY,
    JSNumber scaleZ,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  );
  external DOMMatrix scale3dSelf();
  external DOMMatrix scale3dSelf1(JSNumber scale);
  external DOMMatrix scale3dSelf2(
    JSNumber scale,
    JSNumber originX,
  );
  external DOMMatrix scale3dSelf3(
    JSNumber scale,
    JSNumber originX,
    JSNumber originY,
  );
  external DOMMatrix scale3dSelf4(
    JSNumber scale,
    JSNumber originX,
    JSNumber originY,
    JSNumber originZ,
  );
  external DOMMatrix rotateSelf();
  external DOMMatrix rotateSelf1(JSNumber rotX);
  external DOMMatrix rotateSelf2(
    JSNumber rotX,
    JSNumber rotY,
  );
  external DOMMatrix rotateSelf3(
    JSNumber rotX,
    JSNumber rotY,
    JSNumber rotZ,
  );
  external DOMMatrix rotateFromVectorSelf();
  external DOMMatrix rotateFromVectorSelf1(JSNumber x);
  external DOMMatrix rotateFromVectorSelf2(
    JSNumber x,
    JSNumber y,
  );
  external DOMMatrix rotateAxisAngleSelf();
  external DOMMatrix rotateAxisAngleSelf1(JSNumber x);
  external DOMMatrix rotateAxisAngleSelf2(
    JSNumber x,
    JSNumber y,
  );
  external DOMMatrix rotateAxisAngleSelf3(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );
  external DOMMatrix rotateAxisAngleSelf4(
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber angle,
  );
  external DOMMatrix skewXSelf();
  external DOMMatrix skewXSelf1(JSNumber sx);
  external DOMMatrix skewYSelf();
  external DOMMatrix skewYSelf1(JSNumber sy);
  external DOMMatrix invertSelf();
  external DOMMatrix setMatrixValue(JSString transformList);
}

@JS('DOMMatrix2DInit')
@staticInterop
class DOMMatrix2DInit {
  external factory DOMMatrix2DInit();
}

extension DOMMatrix2DInitExtension on DOMMatrix2DInit {}

@JS('DOMMatrixInit')
@staticInterop
class DOMMatrixInit extends DOMMatrix2DInit {
  external factory DOMMatrixInit();
}

extension DOMMatrixInitExtension on DOMMatrixInit {}
