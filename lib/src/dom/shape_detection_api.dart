// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'geometry.dart';
import 'html.dart';

typedef LandmarkType = String;
typedef BarcodeFormat = String;
extension type FaceDetector._(JSObject _) implements JSObject {
  external factory FaceDetector([FaceDetectorOptions faceDetectorOptions]);

  external JSPromise detect(ImageBitmapSource image);
}
extension type FaceDetectorOptions._(JSObject _) implements JSObject {
  external factory FaceDetectorOptions({
    int maxDetectedFaces,
    bool fastMode,
  });

  external set maxDetectedFaces(int value);
  external int get maxDetectedFaces;
  external set fastMode(bool value);
  external bool get fastMode;
}
extension type DetectedFace._(JSObject _) implements JSObject {
  external factory DetectedFace({
    required DOMRectReadOnly boundingBox,
    required JSArray? landmarks,
  });

  external set boundingBox(DOMRectReadOnly value);
  external DOMRectReadOnly get boundingBox;
  external set landmarks(JSArray? value);
  external JSArray? get landmarks;
}
extension type Landmark._(JSObject _) implements JSObject {
  external factory Landmark({
    required JSArray locations,
    LandmarkType type,
  });

  external set locations(JSArray value);
  external JSArray get locations;
  external set type(LandmarkType value);
  external LandmarkType get type;
}
extension type BarcodeDetector._(JSObject _) implements JSObject {
  external factory BarcodeDetector(
      [BarcodeDetectorOptions barcodeDetectorOptions]);

  external static JSPromise getSupportedFormats();
  external JSPromise detect(ImageBitmapSource image);
}
extension type BarcodeDetectorOptions._(JSObject _) implements JSObject {
  external factory BarcodeDetectorOptions({JSArray formats});

  external set formats(JSArray value);
  external JSArray get formats;
}
extension type DetectedBarcode._(JSObject _) implements JSObject {
  external factory DetectedBarcode({
    required DOMRectReadOnly boundingBox,
    required String rawValue,
    required BarcodeFormat format,
    required JSArray cornerPoints,
  });

  external set boundingBox(DOMRectReadOnly value);
  external DOMRectReadOnly get boundingBox;
  external set rawValue(String value);
  external String get rawValue;
  external set format(BarcodeFormat value);
  external BarcodeFormat get format;
  external set cornerPoints(JSArray value);
  external JSArray get cornerPoints;
}
