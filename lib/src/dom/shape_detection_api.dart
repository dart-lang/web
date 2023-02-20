// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'geometry.dart';
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

@JS()
@staticInterop
@anonymous
class FaceDetectorOptions {
  external factory FaceDetectorOptions({
    JSNumber maxDetectedFaces,
    JSBoolean fastMode,
  });
}

extension FaceDetectorOptionsExtension on FaceDetectorOptions {
  external set maxDetectedFaces(JSNumber value);
  external JSNumber get maxDetectedFaces;
  external set fastMode(JSBoolean value);
  external JSBoolean get fastMode;
}

@JS()
@staticInterop
@anonymous
class DetectedFace {
  external factory DetectedFace({
    required DOMRectReadOnly boundingBox,
    required JSArray? landmarks,
  });
}

extension DetectedFaceExtension on DetectedFace {
  external set boundingBox(DOMRectReadOnly value);
  external DOMRectReadOnly get boundingBox;
  external set landmarks(JSArray? value);
  external JSArray? get landmarks;
}

@JS()
@staticInterop
@anonymous
class Landmark {
  external factory Landmark({
    required JSArray locations,
    LandmarkType type,
  });
}

extension LandmarkExtension on Landmark {
  external set locations(JSArray value);
  external JSArray get locations;
  external set type(LandmarkType value);
  external LandmarkType get type;
}

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

@JS()
@staticInterop
@anonymous
class BarcodeDetectorOptions {
  external factory BarcodeDetectorOptions({JSArray formats});
}

extension BarcodeDetectorOptionsExtension on BarcodeDetectorOptions {
  external set formats(JSArray value);
  external JSArray get formats;
}

@JS()
@staticInterop
@anonymous
class DetectedBarcode {
  external factory DetectedBarcode({
    required DOMRectReadOnly boundingBox,
    required JSString rawValue,
    required BarcodeFormat format,
    required JSArray cornerPoints,
  });
}

extension DetectedBarcodeExtension on DetectedBarcode {
  external set boundingBox(DOMRectReadOnly value);
  external DOMRectReadOnly get boundingBox;
  external set rawValue(JSString value);
  external JSString get rawValue;
  external set format(BarcodeFormat value);
  external BarcodeFormat get format;
  external set cornerPoints(JSArray value);
  external JSArray get cornerPoints;
}
