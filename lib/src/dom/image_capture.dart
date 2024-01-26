// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'mediacapture_streams.dart';

typedef ConstrainPoint2D = JSObject;
typedef RedEyeReduction = String;
typedef FillLightMode = String;
typedef MeteringMode = String;
extension type ImageCapture._(JSObject _) implements JSObject {
  external factory ImageCapture(MediaStreamTrack videoTrack);

  /// The **`takePhoto()`** method of the
  /// [ImageCapture] interface takes a single exposure using the video capture
  /// device sourcing a [MediaStreamTrack] and returns a `Promise`
  /// that resolves with a [Blob] containing the data.
  external JSPromise takePhoto([PhotoSettings photoSettings]);

  /// The **`getPhotoCapabilities()`**
  /// method of the [ImageCapture] interface returns a `Promise`
  /// that resolves with an object containing the ranges of
  /// available configuration options.
  external JSPromise getPhotoCapabilities();

  /// The **`getPhotoSettings()`** method of
  /// the [ImageCapture] interface returns a `Promise` that
  /// resolves with an object containing the current photo
  /// configuration settings.
  external JSPromise getPhotoSettings();

  /// The **`grabFrame()`** method of the
  /// [ImageCapture] interface takes a snapshot of the live video in a
  /// [MediaStreamTrack] and returns a `Promise` that resolves with
  /// a [ImageBitmap] containing the snapshot.
  external JSPromise grabFrame();
  external MediaStreamTrack get track;
}
extension type PhotoCapabilities._(JSObject _) implements JSObject {
  external factory PhotoCapabilities({
    RedEyeReduction redEyeReduction,
    MediaSettingsRange imageHeight,
    MediaSettingsRange imageWidth,
    JSArray fillLightMode,
  });

  external set redEyeReduction(RedEyeReduction value);
  external RedEyeReduction get redEyeReduction;
  external set imageHeight(MediaSettingsRange value);
  external MediaSettingsRange get imageHeight;
  external set imageWidth(MediaSettingsRange value);
  external MediaSettingsRange get imageWidth;
  external set fillLightMode(JSArray value);
  external JSArray get fillLightMode;
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
    JSArray exact,
    JSArray ideal,
  });

  external set exact(JSArray value);
  external JSArray get exact;
  external set ideal(JSArray value);
  external JSArray get ideal;
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
