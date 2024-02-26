// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef AccelerometerLocalCoordinateSystem = String;
extension type Accelerometer._(JSObject _) implements Sensor, JSObject {
  external factory Accelerometer([AccelerometerSensorOptions options]);

  external num? get x;
  external num? get y;
  external num? get z;
}
extension type AccelerometerSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory AccelerometerSensorOptions(
      {AccelerometerLocalCoordinateSystem referenceFrame});

  external set referenceFrame(AccelerometerLocalCoordinateSystem value);
  external AccelerometerLocalCoordinateSystem get referenceFrame;
}
extension type LinearAccelerationSensor._(JSObject _)
    implements Accelerometer, JSObject {
  external factory LinearAccelerationSensor(
      [AccelerometerSensorOptions options]);
}
extension type GravitySensor._(JSObject _) implements Accelerometer, JSObject {
  external factory GravitySensor([AccelerometerSensorOptions options]);
}
