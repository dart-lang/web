// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'generic_sensor.dart';

typedef AccelerometerLocalCoordinateSystem = JSString;

@JS('Accelerometer')
@staticInterop
class Accelerometer extends Sensor {
  external factory Accelerometer();

  external factory Accelerometer.a1();

  external factory Accelerometer.a2(AccelerometerSensorOptions options);
}

extension AccelerometerExtension on Accelerometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('AccelerometerSensorOptions')
@staticInterop
class AccelerometerSensorOptions extends SensorOptions {
  external factory AccelerometerSensorOptions();
}

extension AccelerometerSensorOptionsExtension on AccelerometerSensorOptions {}

@JS('LinearAccelerationSensor')
@staticInterop
class LinearAccelerationSensor extends Accelerometer {
  external factory LinearAccelerationSensor();

  external factory LinearAccelerationSensor.a1();

  external factory LinearAccelerationSensor.a2(
      AccelerometerSensorOptions options);
}

@JS('GravitySensor')
@staticInterop
class GravitySensor extends Accelerometer {
  external factory GravitySensor();

  external factory GravitySensor.a1();

  external factory GravitySensor.a2(AccelerometerSensorOptions options);
}

@JS('AccelerometerReadingValues')
@staticInterop
class AccelerometerReadingValues {
  external factory AccelerometerReadingValues();
}

extension AccelerometerReadingValuesExtension on AccelerometerReadingValues {}

@JS('LinearAccelerationReadingValues')
@staticInterop
class LinearAccelerationReadingValues extends AccelerometerReadingValues {
  external factory LinearAccelerationReadingValues();
}

@JS('GravityReadingValues')
@staticInterop
class GravityReadingValues extends AccelerometerReadingValues {
  external factory GravityReadingValues();
}
