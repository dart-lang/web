// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'webidl.dart';

typedef MockSensorType = JSString;

@JS('Sensor')
@staticInterop
class Sensor extends EventTarget {
  external factory Sensor();
}

extension SensorExtension on Sensor {
  external JSBoolean get activated;
  external JSBoolean get hasReading;
  external DOMHighResTimeStamp? get timestamp;
  external JSVoid start();
  external JSVoid stop();
  external set onreading(EventHandler value);
  external EventHandler get onreading;
  external set onactivate(EventHandler value);
  external EventHandler get onactivate;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS()
@staticInterop
@anonymous
class SensorOptions {
  external factory SensorOptions({JSNumber frequency});
}

extension SensorOptionsExtension on SensorOptions {
  external set frequency(JSNumber value);
  external JSNumber get frequency;
}

@JS('SensorErrorEvent')
@staticInterop
class SensorErrorEvent extends Event {
  external factory SensorErrorEvent();

  external factory SensorErrorEvent.a1(
    JSString type,
    SensorErrorEventInit errorEventInitDict,
  );
}

extension SensorErrorEventExtension on SensorErrorEvent {
  external DOMException get error;
}

@JS()
@staticInterop
@anonymous
class SensorErrorEventInit extends EventInit {
  external factory SensorErrorEventInit({required DOMException error});
}

extension SensorErrorEventInitExtension on SensorErrorEventInit {
  external set error(DOMException value);
  external DOMException get error;
}

@JS()
@staticInterop
@anonymous
class MockSensorConfiguration {
  external factory MockSensorConfiguration({
    required MockSensorType mockSensorType,
    JSBoolean connected = true,
    JSNumber? maxSamplingFrequency,
    JSNumber? minSamplingFrequency,
  });
}

extension MockSensorConfigurationExtension on MockSensorConfiguration {
  external set mockSensorType(MockSensorType value);
  external MockSensorType get mockSensorType;
  external set connected(JSBoolean value);
  external JSBoolean get connected;
  external set maxSamplingFrequency(JSNumber? value);
  external JSNumber? get maxSamplingFrequency;
  external set minSamplingFrequency(JSNumber? value);
  external JSNumber? get minSamplingFrequency;
}

@JS()
@staticInterop
@anonymous
class MockSensor {
  external factory MockSensor({
    JSNumber maxSamplingFrequency,
    JSNumber minSamplingFrequency,
    JSNumber requestedSamplingFrequency,
  });
}

extension MockSensorExtension on MockSensor {
  external set maxSamplingFrequency(JSNumber value);
  external JSNumber get maxSamplingFrequency;
  external set minSamplingFrequency(JSNumber value);
  external JSNumber get minSamplingFrequency;
  external set requestedSamplingFrequency(JSNumber value);
  external JSNumber get requestedSamplingFrequency;
}

@JS()
@staticInterop
@anonymous
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}
