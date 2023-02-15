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

@JS('MagnetometerSensorOptions')
@staticInterop
class MagnetometerSensorOptions extends SensorOptions {
  external factory MagnetometerSensorOptions();
}

extension MagnetometerSensorOptionsExtension on MagnetometerSensorOptions {}

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

@JS('MagnetometerReadingValues')
@staticInterop
class MagnetometerReadingValues {
  external factory MagnetometerReadingValues();
}

extension MagnetometerReadingValuesExtension on MagnetometerReadingValues {}

@JS('UncalibratedMagnetometerReadingValues')
@staticInterop
class UncalibratedMagnetometerReadingValues {
  external factory UncalibratedMagnetometerReadingValues();
}

extension UncalibratedMagnetometerReadingValuesExtension
    on UncalibratedMagnetometerReadingValues {}
