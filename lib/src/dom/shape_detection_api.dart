// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'html.dart';

typedef LandmarkType = JSString;
typedef BarcodeFormat = JSString;

@JS('FaceDetector')
@staticInterop
class FaceDetector {
  external factory FaceDetector();

  external factory FaceDetector.a1();

  external factory FaceDetector.a2(FaceDetectorOptions faceDetectorOptions);
}

extension FaceDetectorExtension on FaceDetector {
  external JSPromise detect(ImageBitmapSource image);
}

@JS('FaceDetectorOptions')
@staticInterop
class FaceDetectorOptions {
  external factory FaceDetectorOptions();
}

extension FaceDetectorOptionsExtension on FaceDetectorOptions {}

@JS('DetectedFace')
@staticInterop
class DetectedFace {
  external factory DetectedFace();
}

extension DetectedFaceExtension on DetectedFace {}

@JS('Landmark')
@staticInterop
class Landmark {
  external factory Landmark();
}

extension LandmarkExtension on Landmark {}

@JS('BarcodeDetector')
@staticInterop
class BarcodeDetector {
  external factory BarcodeDetector();

  external factory BarcodeDetector.a1();

  external factory BarcodeDetector.a2(
      BarcodeDetectorOptions barcodeDetectorOptions);

  external static JSPromise getSupportedFormats();
}

extension BarcodeDetectorExtension on BarcodeDetector {
  external JSPromise detect(ImageBitmapSource image);
}

@JS('BarcodeDetectorOptions')
@staticInterop
class BarcodeDetectorOptions {
  external factory BarcodeDetectorOptions();
}

extension BarcodeDetectorOptionsExtension on BarcodeDetectorOptions {}

@JS('DetectedBarcode')
@staticInterop
class DetectedBarcode {
  external factory DetectedBarcode();
}

extension DetectedBarcodeExtension on DetectedBarcode {}
