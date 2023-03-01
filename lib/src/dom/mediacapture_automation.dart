// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef MockCapturePromptResult = JSString;

@JS()
@staticInterop
@anonymous
class MockCapturePromptResultConfiguration {
  external factory MockCapturePromptResultConfiguration({
    MockCapturePromptResult getUserMedia,
    MockCapturePromptResult getDisplayMedia,
  });
}

extension MockCapturePromptResultConfigurationExtension
    on MockCapturePromptResultConfiguration {
  external set getUserMedia(MockCapturePromptResult value);
  external MockCapturePromptResult get getUserMedia;
  external set getDisplayMedia(MockCapturePromptResult value);
  external MockCapturePromptResult get getDisplayMedia;
}

@JS()
@staticInterop
@anonymous
class MockCaptureDeviceConfiguration {
  external factory MockCaptureDeviceConfiguration({
    JSString label,
    JSString deviceId,
    JSString groupId,
  });
}

extension MockCaptureDeviceConfigurationExtension
    on MockCaptureDeviceConfiguration {
  external set label(JSString value);
  external JSString get label;
  external set deviceId(JSString value);
  external JSString get deviceId;
  external set groupId(JSString value);
  external JSString get groupId;
}

@JS()
@staticInterop
@anonymous
class MockCameraConfiguration implements MockCaptureDeviceConfiguration {
  external factory MockCameraConfiguration({
    JSNumber defaultFrameRate = 30,
    JSString facingMode = 'user',
  });
}

extension MockCameraConfigurationExtension on MockCameraConfiguration {
  external set defaultFrameRate(JSNumber value);
  external JSNumber get defaultFrameRate;
  external set facingMode(JSString value);
  external JSString get facingMode;
}

@JS()
@staticInterop
@anonymous
class MockMicrophoneConfiguration implements MockCaptureDeviceConfiguration {
  external factory MockMicrophoneConfiguration(
      {JSNumber defaultSampleRate = 44100});
}

extension MockMicrophoneConfigurationExtension on MockMicrophoneConfiguration {
  external set defaultSampleRate(JSNumber value);
  external JSNumber get defaultSampleRate;
}
