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
  external factory ImageCapture();

  external factory ImageCapture.a1(MediaStreamTrack videoTrack);
}

extension ImageCaptureExtension on ImageCapture {
  external JSPromise takePhoto();
  external JSPromise takePhoto1(PhotoSettings photoSettings);
  external JSPromise getPhotoCapabilities();
  external JSPromise getPhotoSettings();
  external JSPromise grabFrame();
  external MediaStreamTrack get track;
}

@JS('PhotoCapabilities')
@staticInterop
class PhotoCapabilities {
  external factory PhotoCapabilities();
}

extension PhotoCapabilitiesExtension on PhotoCapabilities {}

@JS('PhotoSettings')
@staticInterop
class PhotoSettings {
  external factory PhotoSettings();
}

extension PhotoSettingsExtension on PhotoSettings {}

@JS('MediaSettingsRange')
@staticInterop
class MediaSettingsRange {
  external factory MediaSettingsRange();
}

extension MediaSettingsRangeExtension on MediaSettingsRange {}

@JS('ConstrainPoint2DParameters')
@staticInterop
class ConstrainPoint2DParameters {
  external factory ConstrainPoint2DParameters();
}

extension ConstrainPoint2DParametersExtension on ConstrainPoint2DParameters {}

@JS('Point2D')
@staticInterop
class Point2D {
  external factory Point2D();
}

extension Point2DExtension on Point2D {}
