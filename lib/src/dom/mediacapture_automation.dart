// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef MockCapturePromptResult = JSString;

@JS('MockCapturePromptResultConfiguration')
@staticInterop
class MockCapturePromptResultConfiguration {
  external factory MockCapturePromptResultConfiguration();
}

extension MockCapturePromptResultConfigurationExtension
    on MockCapturePromptResultConfiguration {}

@JS('MockCaptureDeviceConfiguration')
@staticInterop
class MockCaptureDeviceConfiguration {
  external factory MockCaptureDeviceConfiguration();
}

extension MockCaptureDeviceConfigurationExtension
    on MockCaptureDeviceConfiguration {}

@JS('MockCameraConfiguration')
@staticInterop
class MockCameraConfiguration extends MockCaptureDeviceConfiguration {
  external factory MockCameraConfiguration();
}

extension MockCameraConfigurationExtension on MockCameraConfiguration {}

@JS('MockMicrophoneConfiguration')
@staticInterop
class MockMicrophoneConfiguration extends MockCaptureDeviceConfiguration {
  external factory MockMicrophoneConfiguration();
}

extension MockMicrophoneConfigurationExtension on MockMicrophoneConfiguration {}
