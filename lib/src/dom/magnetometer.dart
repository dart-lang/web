// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef MagnetometerLocalCoordinateSystem = String;

@JS('Magnetometer')
@staticInterop
class Magnetometer implements Sensor {
  external factory Magnetometer([MagnetometerSensorOptions sensorOptions]);
}

extension MagnetometerExtension on Magnetometer {
  external num? get x;
  external num? get y;
  external num? get z;
}

@JS()
@staticInterop
@anonymous
class MagnetometerSensorOptions implements SensorOptions {
  external factory MagnetometerSensorOptions(
      {MagnetometerLocalCoordinateSystem referenceFrame});
}

extension MagnetometerSensorOptionsExtension on MagnetometerSensorOptions {
  external set referenceFrame(MagnetometerLocalCoordinateSystem value);
  external MagnetometerLocalCoordinateSystem get referenceFrame;
}

@JS('UncalibratedMagnetometer')
@staticInterop
class UncalibratedMagnetometer implements Sensor {
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
