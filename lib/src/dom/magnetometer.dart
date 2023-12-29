// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef MagnetometerLocalCoordinateSystem = String;
extension type Magnetometer._(JSObject _) implements Sensor, JSObject {
  external factory Magnetometer([MagnetometerSensorOptions sensorOptions]);
}

extension MagnetometerExtension on Magnetometer {
  external num? get x;
  external num? get y;
  external num? get z;
}

extension type MagnetometerSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory MagnetometerSensorOptions(
      {MagnetometerLocalCoordinateSystem referenceFrame});
}

extension MagnetometerSensorOptionsExtension on MagnetometerSensorOptions {
  external set referenceFrame(MagnetometerLocalCoordinateSystem value);
  external MagnetometerLocalCoordinateSystem get referenceFrame;
}

extension type UncalibratedMagnetometer._(JSObject _)
    implements Sensor, JSObject {
  external factory UncalibratedMagnetometer(
      [MagnetometerSensorOptions sensorOptions]);
}

extension UncalibratedMagnetometerExtension on UncalibratedMagnetometer {
  external num? get x;
  external num? get y;
  external num? get z;
  external num? get xBias;
  external num? get yBias;
  external num? get zBias;
}

extension type MagnetometerReadingValues._(JSObject _) implements JSObject {
  external factory MagnetometerReadingValues({
    required num? x,
    required num? y,
    required num? z,
  });
}

extension MagnetometerReadingValuesExtension on MagnetometerReadingValues {
  external set x(num? value);
  external num? get x;
  external set y(num? value);
  external num? get y;
  external set z(num? value);
  external num? get z;
}

extension type UncalibratedMagnetometerReadingValues._(JSObject _)
    implements JSObject {
  external factory UncalibratedMagnetometerReadingValues({
    required num? x,
    required num? y,
    required num? z,
    required num? xBias,
    required num? yBias,
    required num? zBias,
  });
}

extension UncalibratedMagnetometerReadingValuesExtension
    on UncalibratedMagnetometerReadingValues {
  external set x(num? value);
  external num? get x;
  external set y(num? value);
  external num? get y;
  external set z(num? value);
  external num? get z;
  external set xBias(num? value);
  external num? get xBias;
  external set yBias(num? value);
  external num? get yBias;
  external set zBias(num? value);
  external num? get zBias;
}
