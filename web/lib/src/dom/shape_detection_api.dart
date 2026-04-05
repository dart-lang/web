// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'geometry.dart';
import 'html.dart';
import 'image_capture.dart';

typedef LandmarkType = String;
typedef BarcodeFormat = String;
extension type FaceDetector._(JSObject _) implements JSObject {
  external factory FaceDetector([FaceDetectorOptions faceDetectorOptions]);

  external JSPromise<JSArray<DetectedFace>> detect(ImageBitmapSource image);
}
extension type FaceDetectorOptions._(JSObject _) implements JSObject {
  external factory FaceDetectorOptions({
    int maxDetectedFaces,
    bool fastMode,
  });

  external int get maxDetectedFaces;
  external set maxDetectedFaces(int value);
  external bool get fastMode;
  external set fastMode(bool value);
}
extension type DetectedFace._(JSObject _) implements JSObject {
  external factory DetectedFace({
    required DOMRectReadOnly boundingBox,
    required JSArray<Landmark>? landmarks,
  });

  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly value);
  external JSArray<Landmark>? get landmarks;
  external set landmarks(JSArray<Landmark>? value);
}
extension type Landmark._(JSObject _) implements JSObject {
  external factory Landmark({
    required JSArray<Point2D> locations,
    LandmarkType type,
  });

  external JSArray<Point2D> get locations;
  external set locations(JSArray<Point2D> value);
  external LandmarkType get type;
  external set type(LandmarkType value);
}

/// The **`BarcodeDetector`** interface of the [Barcode Detection API] allows
/// detection of linear and two dimensional barcodes in images.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BarcodeDetector).
extension type BarcodeDetector._(JSObject _) implements JSObject {
  external factory BarcodeDetector(
      [BarcodeDetectorOptions barcodeDetectorOptions]);

  /// The **`getSupportedFormats()`** static method
  /// of the [BarcodeDetector] interface returns a `Promise` which
  /// fulfills with an `Array` of supported barcode format types.
  external static JSPromise<JSArray<JSString>> getSupportedFormats();

  /// The **`detect()`** method of the
  /// [BarcodeDetector] interface returns a `Promise` which fulfills
  /// with an `Array` of detected barcodes within an image.
  external JSPromise<JSArray<DetectedBarcode>> detect(ImageBitmapSource image);
}
extension type BarcodeDetectorOptions._(JSObject _) implements JSObject {
  external factory BarcodeDetectorOptions({JSArray<JSString> formats});

  external JSArray<JSString> get formats;
  external set formats(JSArray<JSString> value);
}
extension type DetectedBarcode._(JSObject _) implements JSObject {
  external factory DetectedBarcode({
    required DOMRectReadOnly boundingBox,
    required String rawValue,
    required BarcodeFormat format,
    required JSArray<Point2D> cornerPoints,
  });

  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly value);
  external String get rawValue;
  external set rawValue(String value);
  external BarcodeFormat get format;
  external set format(BarcodeFormat value);
  external JSArray<Point2D> get cornerPoints;
  external set cornerPoints(JSArray<Point2D> value);
}
