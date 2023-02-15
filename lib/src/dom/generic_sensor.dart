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

@JS('SensorOptions')
@staticInterop
class SensorOptions {
  external factory SensorOptions();
}

extension SensorOptionsExtension on SensorOptions {}

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

@JS('SensorErrorEventInit')
@staticInterop
class SensorErrorEventInit extends EventInit {
  external factory SensorErrorEventInit();
}

extension SensorErrorEventInitExtension on SensorErrorEventInit {}

@JS('MockSensorConfiguration')
@staticInterop
class MockSensorConfiguration {
  external factory MockSensorConfiguration();
}

extension MockSensorConfigurationExtension on MockSensorConfiguration {}

@JS('MockSensor')
@staticInterop
class MockSensor {
  external factory MockSensor();
}

extension MockSensorExtension on MockSensor {}

@JS('MockSensorReadingValues')
@staticInterop
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}
