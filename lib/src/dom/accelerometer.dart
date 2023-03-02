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
class Accelerometer implements Sensor {
  external factory Accelerometer([AccelerometerSensorOptions options]);
}

extension AccelerometerExtension on Accelerometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS()
@staticInterop
@anonymous
class AccelerometerSensorOptions implements SensorOptions {
  external factory AccelerometerSensorOptions(
      {AccelerometerLocalCoordinateSystem referenceFrame});
}

extension AccelerometerSensorOptionsExtension on AccelerometerSensorOptions {
  external set referenceFrame(AccelerometerLocalCoordinateSystem value);
  external AccelerometerLocalCoordinateSystem get referenceFrame;
}

@JS('LinearAccelerationSensor')
@staticInterop
class LinearAccelerationSensor implements Accelerometer {
  external factory LinearAccelerationSensor(
      [AccelerometerSensorOptions options]);
}

@JS('GravitySensor')
@staticInterop
class GravitySensor implements Accelerometer {
  external factory GravitySensor([AccelerometerSensorOptions options]);
}

@JS()
@staticInterop
@anonymous
class AccelerometerReadingValues {
  external factory AccelerometerReadingValues({
    required JSNumber? x,
    required JSNumber? y,
    required JSNumber? z,
  });
}

extension AccelerometerReadingValuesExtension on AccelerometerReadingValues {
  external set x(JSNumber? value);
  external JSNumber? get x;
  external set y(JSNumber? value);
  external JSNumber? get y;
  external set z(JSNumber? value);
  external JSNumber? get z;
}

@JS()
@staticInterop
@anonymous
class LinearAccelerationReadingValues implements AccelerometerReadingValues {
  external factory LinearAccelerationReadingValues();
}

@JS()
@staticInterop
@anonymous
class GravityReadingValues implements AccelerometerReadingValues {
  external factory GravityReadingValues();
}
