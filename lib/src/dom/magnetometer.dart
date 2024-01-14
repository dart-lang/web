// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef MagnetometerLocalCoordinateSystem = String;

/// The **`Magnetometer`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides information about the magnetic field as detected by the device's
/// primary magnetometer sensor.
///
/// To use this sensor, the user must grant permission to the `'magnetometer'`
/// device sensor through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
/// In addition, this feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
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

@JS()
@staticInterop
@anonymous
class MagnetometerReadingValues {
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

@JS()
@staticInterop
@anonymous
class UncalibratedMagnetometerReadingValues {
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
