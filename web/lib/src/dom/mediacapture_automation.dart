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

typedef MockCapturePromptResult = String;
extension type MockCapturePromptResultConfiguration._(JSObject _)
    implements JSObject {
  external factory MockCapturePromptResultConfiguration({
    MockCapturePromptResult getUserMedia,
    MockCapturePromptResult getDisplayMedia,
  });

  external MockCapturePromptResult get getUserMedia;
  external set getUserMedia(MockCapturePromptResult value);
  external MockCapturePromptResult get getDisplayMedia;
  external set getDisplayMedia(MockCapturePromptResult value);
}
extension type MockCaptureDeviceConfiguration._(JSObject _)
    implements JSObject {
  external factory MockCaptureDeviceConfiguration({
    String label,
    String deviceId,
    String groupId,
  });

  external String get label;
  external set label(String value);
  external String get deviceId;
  external set deviceId(String value);
  external String get groupId;
  external set groupId(String value);
}
extension type MockCameraConfiguration._(JSObject _)
    implements MockCaptureDeviceConfiguration, JSObject {
  external factory MockCameraConfiguration({
    String label,
    String deviceId,
    String groupId,
    num defaultFrameRate,
    String facingMode,
  });

  external double get defaultFrameRate;
  external set defaultFrameRate(num value);
  external String get facingMode;
  external set facingMode(String value);
}
extension type MockMicrophoneConfiguration._(JSObject _)
    implements MockCaptureDeviceConfiguration, JSObject {
  external factory MockMicrophoneConfiguration({
    String label,
    String deviceId,
    String groupId,
    int defaultSampleRate,
  });

  external int get defaultSampleRate;
  external set defaultSampleRate(int value);
}
