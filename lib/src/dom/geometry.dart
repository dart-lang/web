// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('DOMPointReadOnly')
@staticInterop
class DOMPointReadOnly {
  external factory DOMPointReadOnly();
  external factory DOMPointReadOnly.a1();
  external factory DOMPointReadOnly.a1_1(JSNumber x);
  external factory DOMPointReadOnly.a1_2(JSNumber x, JSNumber y);
  external factory DOMPointReadOnly.a1_3(JSNumber x, JSNumber y, JSNumber z);
  external factory DOMPointReadOnly.a1_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber w);
  external static DOMPointReadOnly fromPoint();
  external static DOMPointReadOnly fromPoint_1(DOMPointInit other);
}

extension DOMPointReadOnlyExtension on DOMPointReadOnly {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get z;
  external JSNumber get w;
  external DOMPoint matrixTransform();
  external DOMPoint matrixTransform_1(DOMMatrixInit matrix);
  external JSObject toJSON();
}

@JS('DOMPoint')
@staticInterop
class DOMPoint extends DOMPointReadOnly {
  external factory DOMPoint();
  external factory DOMPoint.a1();
  external factory DOMPoint.a1_1(JSNumber x);
  external factory DOMPoint.a1_2(JSNumber x, JSNumber y);
  external factory DOMPoint.a1_3(JSNumber x, JSNumber y, JSNumber z);
  external factory DOMPoint.a1_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber w);
  external static DOMPoint fromPoint();
  external static DOMPoint fromPoint_1(DOMPointInit other);
}

extension DOMPointExtension on DOMPoint {
  external JSNumber get x;
  external set x(JSNumber value);
  external JSNumber get y;
  external set y(JSNumber value);
  external JSNumber get z;
  external set z(JSNumber value);
  external JSNumber get w;
  external set w(JSNumber value);
}

@JS('DOMPointInit')
@staticInterop
class DOMPointInit {
  external factory DOMPointInit();
}

extension DOMPointInitExtension on DOMPointInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMRectReadOnly')
@staticInterop
class DOMRectReadOnly {
  external factory DOMRectReadOnly();
  external factory DOMRectReadOnly.a1();
  external factory DOMRectReadOnly.a1_1(JSNumber x);
  external factory DOMRectReadOnly.a1_2(JSNumber x, JSNumber y);
  external factory DOMRectReadOnly.a1_3(JSNumber x, JSNumber y, JSNumber width);
  external factory DOMRectReadOnly.a1_4(
      JSNumber x, JSNumber y, JSNumber width, JSNumber height);
  external static DOMRectReadOnly fromRect();
  external static DOMRectReadOnly fromRect_1(DOMRectInit other);
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
  external factory DOMRect.a1_1(JSNumber x);
  external factory DOMRect.a1_2(JSNumber x, JSNumber y);
  external factory DOMRect.a1_3(JSNumber x, JSNumber y, JSNumber width);
  external factory DOMRect.a1_4(
      JSNumber x, JSNumber y, JSNumber width, JSNumber height);
  external static DOMRect fromRect();
  external static DOMRect fromRect_1(DOMRectInit other);
}

extension DOMRectExtension on DOMRect {
  external JSNumber get x;
  external set x(JSNumber value);
  external JSNumber get y;
  external set y(JSNumber value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
}

@JS('DOMRectInit')
@staticInterop
class DOMRectInit {
  external factory DOMRectInit();
}

extension DOMRectInitExtension on DOMRectInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

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
  external factory DOMQuad.a1_1(DOMPointInit p1);
  external factory DOMQuad.a1_2(DOMPointInit p1, DOMPointInit p2);
  external factory DOMQuad.a1_3(
      DOMPointInit p1, DOMPointInit p2, DOMPointInit p3);
  external factory DOMQuad.a1_4(
      DOMPointInit p1, DOMPointInit p2, DOMPointInit p3, DOMPointInit p4);
  external static DOMQuad fromRect();
  external static DOMQuad fromRect_1(DOMRectInit other);
  external static DOMQuad fromQuad();
  external static DOMQuad fromQuad_1(DOMQuadInit other);
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

extension DOMQuadInitExtension on DOMQuadInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMMatrixReadOnly')
@staticInterop
class DOMMatrixReadOnly {
  external factory DOMMatrixReadOnly();
  external factory DOMMatrixReadOnly.a1();
  external factory DOMMatrixReadOnly.a1_1(JSAny init);
  external static DOMMatrixReadOnly fromMatrix();
  external static DOMMatrixReadOnly fromMatrix_1(DOMMatrixInit other);
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
  external DOMMatrix translate_1(JSNumber tx);
  external DOMMatrix translate_2(JSNumber tx, JSNumber ty);
  external DOMMatrix translate_3(JSNumber tx, JSNumber ty, JSNumber tz);
  external DOMMatrix scale();
  external DOMMatrix scale_1(JSNumber scaleX);
  external DOMMatrix scale_2(JSNumber scaleX, JSNumber scaleY);
  external DOMMatrix scale_3(JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ);
  external DOMMatrix scale_4(
      JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ, JSNumber originX);
  external DOMMatrix scale_5(JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ,
      JSNumber originX, JSNumber originY);
  external DOMMatrix scale_6(JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ,
      JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix scaleNonUniform();
  external DOMMatrix scaleNonUniform_1(JSNumber scaleX);
  external DOMMatrix scaleNonUniform_2(JSNumber scaleX, JSNumber scaleY);
  external DOMMatrix scale3d();
  external DOMMatrix scale3d_1(JSNumber scale);
  external DOMMatrix scale3d_2(JSNumber scale, JSNumber originX);
  external DOMMatrix scale3d_3(
      JSNumber scale, JSNumber originX, JSNumber originY);
  external DOMMatrix scale3d_4(
      JSNumber scale, JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix rotate();
  external DOMMatrix rotate_1(JSNumber rotX);
  external DOMMatrix rotate_2(JSNumber rotX, JSNumber rotY);
  external DOMMatrix rotate_3(JSNumber rotX, JSNumber rotY, JSNumber rotZ);
  external DOMMatrix rotateFromVector();
  external DOMMatrix rotateFromVector_1(JSNumber x);
  external DOMMatrix rotateFromVector_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngle();
  external DOMMatrix rotateAxisAngle_1(JSNumber x);
  external DOMMatrix rotateAxisAngle_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngle_3(JSNumber x, JSNumber y, JSNumber z);
  external DOMMatrix rotateAxisAngle_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber angle);
  external DOMMatrix skewX();
  external DOMMatrix skewX_1(JSNumber sx);
  external DOMMatrix skewY();
  external DOMMatrix skewY_1(JSNumber sy);
  external DOMMatrix multiply();
  external DOMMatrix multiply_1(DOMMatrixInit other);
  external DOMMatrix flipX();
  external DOMMatrix flipY();
  external DOMMatrix inverse();
  external DOMPoint transformPoint();
  external DOMPoint transformPoint_1(DOMPointInit point);
  external JSFloat32Array toFloat32Array();
  external JSFloat64Array toFloat64Array();
  external JSObject toJSON();
}

@JS('DOMMatrix')
@staticInterop
class DOMMatrix extends DOMMatrixReadOnly {
  external factory DOMMatrix();
  external factory DOMMatrix.a1();
  external factory DOMMatrix.a1_1(JSAny init);
  external static DOMMatrix fromMatrix();
  external static DOMMatrix fromMatrix_1(DOMMatrixInit other);
  external static DOMMatrix fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrix fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixExtension on DOMMatrix {
  external JSNumber get a;
  external set a(JSNumber value);
  external JSNumber get b;
  external set b(JSNumber value);
  external JSNumber get c;
  external set c(JSNumber value);
  external JSNumber get d;
  external set d(JSNumber value);
  external JSNumber get e;
  external set e(JSNumber value);
  external JSNumber get f;
  external set f(JSNumber value);
  external JSNumber get m11;
  external set m11(JSNumber value);
  external JSNumber get m12;
  external set m12(JSNumber value);
  external JSNumber get m13;
  external set m13(JSNumber value);
  external JSNumber get m14;
  external set m14(JSNumber value);
  external JSNumber get m21;
  external set m21(JSNumber value);
  external JSNumber get m22;
  external set m22(JSNumber value);
  external JSNumber get m23;
  external set m23(JSNumber value);
  external JSNumber get m24;
  external set m24(JSNumber value);
  external JSNumber get m31;
  external set m31(JSNumber value);
  external JSNumber get m32;
  external set m32(JSNumber value);
  external JSNumber get m33;
  external set m33(JSNumber value);
  external JSNumber get m34;
  external set m34(JSNumber value);
  external JSNumber get m41;
  external set m41(JSNumber value);
  external JSNumber get m42;
  external set m42(JSNumber value);
  external JSNumber get m43;
  external set m43(JSNumber value);
  external JSNumber get m44;
  external set m44(JSNumber value);
  external DOMMatrix multiplySelf();
  external DOMMatrix multiplySelf_1(DOMMatrixInit other);
  external DOMMatrix preMultiplySelf();
  external DOMMatrix preMultiplySelf_1(DOMMatrixInit other);
  external DOMMatrix translateSelf();
  external DOMMatrix translateSelf_1(JSNumber tx);
  external DOMMatrix translateSelf_2(JSNumber tx, JSNumber ty);
  external DOMMatrix translateSelf_3(JSNumber tx, JSNumber ty, JSNumber tz);
  external DOMMatrix scaleSelf();
  external DOMMatrix scaleSelf_1(JSNumber scaleX);
  external DOMMatrix scaleSelf_2(JSNumber scaleX, JSNumber scaleY);
  external DOMMatrix scaleSelf_3(
      JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ);
  external DOMMatrix scaleSelf_4(
      JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ, JSNumber originX);
  external DOMMatrix scaleSelf_5(JSNumber scaleX, JSNumber scaleY,
      JSNumber scaleZ, JSNumber originX, JSNumber originY);
  external DOMMatrix scaleSelf_6(JSNumber scaleX, JSNumber scaleY,
      JSNumber scaleZ, JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix scale3dSelf();
  external DOMMatrix scale3dSelf_1(JSNumber scale);
  external DOMMatrix scale3dSelf_2(JSNumber scale, JSNumber originX);
  external DOMMatrix scale3dSelf_3(
      JSNumber scale, JSNumber originX, JSNumber originY);
  external DOMMatrix scale3dSelf_4(
      JSNumber scale, JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix rotateSelf();
  external DOMMatrix rotateSelf_1(JSNumber rotX);
  external DOMMatrix rotateSelf_2(JSNumber rotX, JSNumber rotY);
  external DOMMatrix rotateSelf_3(JSNumber rotX, JSNumber rotY, JSNumber rotZ);
  external DOMMatrix rotateFromVectorSelf();
  external DOMMatrix rotateFromVectorSelf_1(JSNumber x);
  external DOMMatrix rotateFromVectorSelf_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngleSelf();
  external DOMMatrix rotateAxisAngleSelf_1(JSNumber x);
  external DOMMatrix rotateAxisAngleSelf_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngleSelf_3(JSNumber x, JSNumber y, JSNumber z);
  external DOMMatrix rotateAxisAngleSelf_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber angle);
  external DOMMatrix skewXSelf();
  external DOMMatrix skewXSelf_1(JSNumber sx);
  external DOMMatrix skewYSelf();
  external DOMMatrix skewYSelf_1(JSNumber sy);
  external DOMMatrix invertSelf();
  external DOMMatrix setMatrixValue(JSString transformList);
}

@JS('DOMMatrix2DInit')
@staticInterop
class DOMMatrix2DInit {
  external factory DOMMatrix2DInit();
}

extension DOMMatrix2DInitExtension on DOMMatrix2DInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMMatrixInit')
@staticInterop
class DOMMatrixInit extends DOMMatrix2DInit {
  external factory DOMMatrixInit();
}

extension DOMMatrixInitExtension on DOMMatrixInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}
