// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

import 'fileapi.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

typedef ConstrainPoint2D = JSObject;
typedef RedEyeReduction = String;
typedef FillLightMode = String;

/// The **`ImageCapture`** interface of the
/// [MediaStream Image Capture API](https://developer.mozilla.org/en-US/docs/Web/API/MediaStream_Image_Capture_API)
/// provides methods to enable the capture of images or photos from a camera or
/// other photographic device. It provides an interface for capturing images
/// from a photographic device referenced through a valid [MediaStreamTrack].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageCapture).
extension type ImageCapture._(JSObject _) implements JSObject {
  external factory ImageCapture(MediaStreamTrack videoTrack);

  /// The **`takePhoto()`** method of the
  /// [ImageCapture] interface takes a single exposure using the video capture
  /// device sourcing a [MediaStreamTrack] and returns a `Promise`
  /// that resolves with a [Blob] containing the data.
  external JSPromise<Blob> takePhoto([PhotoSettings photoSettings]);

  /// The **`getPhotoCapabilities()`**
  /// method of the [ImageCapture] interface returns a `Promise`
  /// that resolves with an object containing the ranges of
  /// available configuration options.
  external JSPromise<PhotoCapabilities> getPhotoCapabilities();

  /// The **`getPhotoSettings()`** method of
  /// the [ImageCapture] interface returns a `Promise` that
  /// resolves with an object containing the current photo
  /// configuration settings.
  external JSPromise<PhotoSettings> getPhotoSettings();

  /// The **`grabFrame()`** method of the
  /// [ImageCapture] interface takes a snapshot of the live video in a
  /// [MediaStreamTrack] and returns a `Promise` that resolves with
  /// a [ImageBitmap] containing the snapshot.
  external JSPromise<ImageBitmap> grabFrame();

  /// The **`track`** read-only property of the
  /// [ImageCapture] interface returns a reference to the
  /// [MediaStreamTrack] passed to the
  /// [ImageCapture.ImageCapture] constructor.
  external MediaStreamTrack get track;
}
extension type PhotoCapabilities._(JSObject _) implements JSObject {
  external factory PhotoCapabilities({
    RedEyeReduction redEyeReduction,
    MediaSettingsRange imageHeight,
    MediaSettingsRange imageWidth,
    JSArray<JSString> fillLightMode,
  });

  external RedEyeReduction get redEyeReduction;
  external set redEyeReduction(RedEyeReduction value);
  external MediaSettingsRange get imageHeight;
  external set imageHeight(MediaSettingsRange value);
  external MediaSettingsRange get imageWidth;
  external set imageWidth(MediaSettingsRange value);
  external JSArray<JSString> get fillLightMode;
  external set fillLightMode(JSArray<JSString> value);
}
extension type PhotoSettings._(JSObject _) implements JSObject {
  external factory PhotoSettings({
    FillLightMode fillLightMode,
    num imageHeight,
    num imageWidth,
    bool redEyeReduction,
  });

  external FillLightMode get fillLightMode;
  external set fillLightMode(FillLightMode value);
  external double get imageHeight;
  external set imageHeight(num value);
  external double get imageWidth;
  external set imageWidth(num value);
  external bool get redEyeReduction;
  external set redEyeReduction(bool value);
}
extension type MediaSettingsRange._(JSObject _) implements JSObject {
  external factory MediaSettingsRange({
    num max,
    num min,
    num step,
  });

  external double get max;
  external set max(num value);
  external double get min;
  external set min(num value);
  external double get step;
  external set step(num value);
}
extension type ConstrainPoint2DParameters._(JSObject _) implements JSObject {
  external factory ConstrainPoint2DParameters({
    JSArray<Point2D> exact,
    JSArray<Point2D> ideal,
  });

  external JSArray<Point2D> get exact;
  external set exact(JSArray<Point2D> value);
  external JSArray<Point2D> get ideal;
  external set ideal(JSArray<Point2D> value);
}
extension type Point2D._(JSObject _) implements JSObject {
  external factory Point2D({
    num x,
    num y,
  });

  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
}
