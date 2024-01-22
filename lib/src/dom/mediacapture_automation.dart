// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef MockCapturePromptResult = String;
extension type MockCapturePromptResultConfiguration._(JSObject _)
    implements JSObject {
  external factory MockCapturePromptResultConfiguration({
    MockCapturePromptResult getUserMedia,
    MockCapturePromptResult getDisplayMedia,
  });

  external set getUserMedia(MockCapturePromptResult value);
  external MockCapturePromptResult get getUserMedia;
  external set getDisplayMedia(MockCapturePromptResult value);
  external MockCapturePromptResult get getDisplayMedia;
}
extension type MockCaptureDeviceConfiguration._(JSObject _)
    implements JSObject {
  external factory MockCaptureDeviceConfiguration({
    String label,
    String deviceId,
    String groupId,
  });

  external set label(String value);
  external String get label;
  external set deviceId(String value);
  external String get deviceId;
  external set groupId(String value);
  external String get groupId;
}
extension type MockCameraConfiguration._(JSObject _)
    implements MockCaptureDeviceConfiguration, JSObject {
  external factory MockCameraConfiguration({
    num defaultFrameRate,
    String facingMode,
  });

  external set defaultFrameRate(num value);
  external num get defaultFrameRate;
  external set facingMode(String value);
  external String get facingMode;
}
extension type MockMicrophoneConfiguration._(JSObject _)
    implements MockCaptureDeviceConfiguration, JSObject {
  external factory MockMicrophoneConfiguration({int defaultSampleRate});

  external set defaultSampleRate(int value);
  external int get defaultSampleRate;
}
