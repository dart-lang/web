// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'fileapi.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

typedef ConstrainPoint2D = JSObject;
typedef RedEyeReduction = String;
typedef FillLightMode = String;
typedef MeteringMode = String;
extension type ImageCapture._(JSObject _) implements JSObject {
  external factory ImageCapture(MediaStreamTrack videoTrack);

  external JSPromise<Blob> takePhoto([PhotoSettings photoSettings]);
  external JSPromise<PhotoCapabilities> getPhotoCapabilities();
  external JSPromise<PhotoSettings> getPhotoSettings();
  external JSPromise<ImageBitmap> grabFrame();
  external MediaStreamTrack get track;
}
extension type PhotoCapabilities._(JSObject _) implements JSObject {
  external factory PhotoCapabilities({
    RedEyeReduction redEyeReduction,
    MediaSettingsRange imageHeight,
    MediaSettingsRange imageWidth,
    JSArray<JSString> fillLightMode,
  });

  external set redEyeReduction(RedEyeReduction value);
  external RedEyeReduction get redEyeReduction;
  external set imageHeight(MediaSettingsRange value);
  external MediaSettingsRange get imageHeight;
  external set imageWidth(MediaSettingsRange value);
  external MediaSettingsRange get imageWidth;
  external set fillLightMode(JSArray<JSString> value);
  external JSArray<JSString> get fillLightMode;
}
extension type PhotoSettings._(JSObject _) implements JSObject {
  external factory PhotoSettings({
    FillLightMode fillLightMode,
    num imageHeight,
    num imageWidth,
    bool redEyeReduction,
  });

  external set fillLightMode(FillLightMode value);
  external FillLightMode get fillLightMode;
  external set imageHeight(num value);
  external num get imageHeight;
  external set imageWidth(num value);
  external num get imageWidth;
  external set redEyeReduction(bool value);
  external bool get redEyeReduction;
}
extension type MediaSettingsRange._(JSObject _) implements JSObject {
  external factory MediaSettingsRange({
    num max,
    num min,
    num step,
  });

  external set max(num value);
  external num get max;
  external set min(num value);
  external num get min;
  external set step(num value);
  external num get step;
}
extension type ConstrainPoint2DParameters._(JSObject _) implements JSObject {
  external factory ConstrainPoint2DParameters({
    JSArray<Point2D> exact,
    JSArray<Point2D> ideal,
  });

  external set exact(JSArray<Point2D> value);
  external JSArray<Point2D> get exact;
  external set ideal(JSArray<Point2D> value);
  external JSArray<Point2D> get ideal;
}
extension type Point2D._(JSObject _) implements JSObject {
  external factory Point2D({
    num x,
    num y,
  });

  external set x(num value);
  external num get x;
  external set y(num value);
  external num get y;
}
