// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'mediacapture_streams.dart';

typedef ConstrainPoint2D = JSAny;
typedef RedEyeReduction = JSString;
typedef FillLightMode = JSString;
typedef MeteringMode = JSString;

@JS('ImageCapture')
@staticInterop
class ImageCapture {
  external factory ImageCapture(MediaStreamTrack videoTrack);
}

extension ImageCaptureExtension on ImageCapture {
  external JSPromise takePhoto([PhotoSettings photoSettings]);
  external JSPromise getPhotoCapabilities();
  external JSPromise getPhotoSettings();
  external JSPromise grabFrame();
  external MediaStreamTrack get track;
}

@JS()
@staticInterop
@anonymous
class PhotoCapabilities {
  external factory PhotoCapabilities({
    RedEyeReduction redEyeReduction,
    MediaSettingsRange imageHeight,
    MediaSettingsRange imageWidth,
    JSArray fillLightMode,
  });
}

extension PhotoCapabilitiesExtension on PhotoCapabilities {
  external set redEyeReduction(RedEyeReduction value);
  external RedEyeReduction get redEyeReduction;
  external set imageHeight(MediaSettingsRange value);
  external MediaSettingsRange get imageHeight;
  external set imageWidth(MediaSettingsRange value);
  external MediaSettingsRange get imageWidth;
  external set fillLightMode(JSArray value);
  external JSArray get fillLightMode;
}

@JS()
@staticInterop
@anonymous
class PhotoSettings {
  external factory PhotoSettings({
    FillLightMode fillLightMode,
    JSNumber imageHeight,
    JSNumber imageWidth,
    JSBoolean redEyeReduction,
  });
}

extension PhotoSettingsExtension on PhotoSettings {
  external set fillLightMode(FillLightMode value);
  external FillLightMode get fillLightMode;
  external set imageHeight(JSNumber value);
  external JSNumber get imageHeight;
  external set imageWidth(JSNumber value);
  external JSNumber get imageWidth;
  external set redEyeReduction(JSBoolean value);
  external JSBoolean get redEyeReduction;
}

@JS()
@staticInterop
@anonymous
class MediaSettingsRange {
  external factory MediaSettingsRange({
    JSNumber max,
    JSNumber min,
    JSNumber step,
  });
}

extension MediaSettingsRangeExtension on MediaSettingsRange {
  external set max(JSNumber value);
  external JSNumber get max;
  external set min(JSNumber value);
  external JSNumber get min;
  external set step(JSNumber value);
  external JSNumber get step;
}

@JS()
@staticInterop
@anonymous
class ConstrainPoint2DParameters {
  external factory ConstrainPoint2DParameters({
    JSArray exact,
    JSArray ideal,
  });
}

extension ConstrainPoint2DParametersExtension on ConstrainPoint2DParameters {
  external set exact(JSArray value);
  external JSArray get exact;
  external set ideal(JSArray value);
  external JSArray get ideal;
}

@JS()
@staticInterop
@anonymous
class Point2D {
  external factory Point2D({
    JSNumber x = 0.0,
    JSNumber y = 0.0,
  });
}

extension Point2DExtension on Point2D {
  external set x(JSNumber value);
  external JSNumber get x;
  external set y(JSNumber value);
  external JSNumber get y;
}
