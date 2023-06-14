// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef MagnetometerLocalCoordinateSystem = String;

@JS('Magnetometer')
@staticInterop
class Magnetometer implements Sensor {
  external factory Magnetometer([MagnetometerSensorOptions sensorOptions]);
}

extension MagnetometerExtension on Magnetometer {
  external double? get x;
  external double? get y;
  external double? get z;
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
  external double? get x;
  external double? get y;
  external double? get z;
  external double? get xBias;
  external double? get yBias;
  external double? get zBias;
}

@JS()
@staticInterop
@anonymous
class MagnetometerReadingValues implements JSObject {
  external factory MagnetometerReadingValues({
    required double? x,
    required double? y,
    required double? z,
  });
}

extension MagnetometerReadingValuesExtension on MagnetometerReadingValues {
  external set x(double? value);
  external double? get x;
  external set y(double? value);
  external double? get y;
  external set z(double? value);
  external double? get z;
}

@JS()
@staticInterop
@anonymous
class UncalibratedMagnetometerReadingValues implements JSObject {
  external factory UncalibratedMagnetometerReadingValues({
    required double? x,
    required double? y,
    required double? z,
    required double? xBias,
    required double? yBias,
    required double? zBias,
  });
}

extension UncalibratedMagnetometerReadingValuesExtension
    on UncalibratedMagnetometerReadingValues {
  external set x(double? value);
  external double? get x;
  external set y(double? value);
  external double? get y;
  external set z(double? value);
  external double? get z;
  external set xBias(double? value);
  external double? get xBias;
  external set yBias(double? value);
  external double? get yBias;
  external set zBias(double? value);
  external double? get zBias;
}
