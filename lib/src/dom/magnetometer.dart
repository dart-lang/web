// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef MagnetometerLocalCoordinateSystem = String;
extension type Magnetometer._(JSObject _) implements Sensor, JSObject {
  external factory Magnetometer([MagnetometerSensorOptions sensorOptions]);

  external num? get x;
  external num? get y;
  external num? get z;
}
extension type MagnetometerSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory MagnetometerSensorOptions(
      {MagnetometerLocalCoordinateSystem referenceFrame});

  external set referenceFrame(MagnetometerLocalCoordinateSystem value);
  external MagnetometerLocalCoordinateSystem get referenceFrame;
}
extension type UncalibratedMagnetometer._(JSObject _)
    implements Sensor, JSObject {
  external factory UncalibratedMagnetometer(
      [MagnetometerSensorOptions sensorOptions]);

  external num? get x;
  external num? get y;
  external num? get z;
  external num? get xBias;
  external num? get yBias;
  external num? get zBias;
}
