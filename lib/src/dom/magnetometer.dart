// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'generic_sensor.dart';

typedef MagnetometerLocalCoordinateSystem = JSString;

@JS('Magnetometer')
@staticInterop
class Magnetometer extends Sensor {
  external factory Magnetometer();

  external factory Magnetometer.a1();

  external factory Magnetometer.a2(MagnetometerSensorOptions sensorOptions);
}

extension MagnetometerExtension on Magnetometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS()
@staticInterop
@anonymous
class MagnetometerSensorOptions extends SensorOptions {
  external factory MagnetometerSensorOptions(
      {MagnetometerLocalCoordinateSystem referenceFrame = 'device'});
}

extension MagnetometerSensorOptionsExtension on MagnetometerSensorOptions {
  external set referenceFrame(MagnetometerLocalCoordinateSystem value);
  external MagnetometerLocalCoordinateSystem get referenceFrame;
}

@JS('UncalibratedMagnetometer')
@staticInterop
class UncalibratedMagnetometer extends Sensor {
  external factory UncalibratedMagnetometer();

  external factory UncalibratedMagnetometer.a1();

  external factory UncalibratedMagnetometer.a2(
      MagnetometerSensorOptions sensorOptions);
}

extension UncalibratedMagnetometerExtension on UncalibratedMagnetometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
  external JSNumber? get xBias;
  external JSNumber? get yBias;
  external JSNumber? get zBias;
}

@JS()
@staticInterop
@anonymous
class MagnetometerReadingValues {
  external factory MagnetometerReadingValues({
    required JSNumber? x,
    required JSNumber? y,
    required JSNumber? z,
  });
}

extension MagnetometerReadingValuesExtension on MagnetometerReadingValues {
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
class UncalibratedMagnetometerReadingValues {
  external factory UncalibratedMagnetometerReadingValues({
    required JSNumber? x,
    required JSNumber? y,
    required JSNumber? z,
    required JSNumber? xBias,
    required JSNumber? yBias,
    required JSNumber? zBias,
  });
}

extension UncalibratedMagnetometerReadingValuesExtension
    on UncalibratedMagnetometerReadingValues {
  external set x(JSNumber? value);
  external JSNumber? get x;
  external set y(JSNumber? value);
  external JSNumber? get y;
  external set z(JSNumber? value);
  external JSNumber? get z;
  external set xBias(JSNumber? value);
  external JSNumber? get xBias;
  external set yBias(JSNumber? value);
  external JSNumber? get yBias;
  external set zBias(JSNumber? value);
  external JSNumber? get zBias;
}
