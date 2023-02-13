// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef MockCapturePromptResult = JSString;

@JS('MockCapturePromptResultConfiguration')
@staticInterop
class MockCapturePromptResultConfiguration {
  external factory MockCapturePromptResultConfiguration();
}

extension MockCapturePromptResultConfigurationExtension
    on MockCapturePromptResultConfiguration {
  // TODO
  // TODO
}

@JS('MockCaptureDeviceConfiguration')
@staticInterop
class MockCaptureDeviceConfiguration {
  external factory MockCaptureDeviceConfiguration();
}

extension MockCaptureDeviceConfigurationExtension
    on MockCaptureDeviceConfiguration {
  // TODO
  // TODO
  // TODO
}

@JS('MockCameraConfiguration')
@staticInterop
class MockCameraConfiguration extends MockCaptureDeviceConfiguration {
  external factory MockCameraConfiguration();
}

extension MockCameraConfigurationExtension on MockCameraConfiguration {
  // TODO
  // TODO
}

@JS('MockMicrophoneConfiguration')
@staticInterop
class MockMicrophoneConfiguration extends MockCaptureDeviceConfiguration {
  external factory MockMicrophoneConfiguration();
}

extension MockMicrophoneConfigurationExtension on MockMicrophoneConfiguration {
  // TODO
}
