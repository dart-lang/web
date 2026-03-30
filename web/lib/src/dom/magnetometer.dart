// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Magnetometer).
extension type Magnetometer._(JSObject _) implements Sensor, JSObject {
  external factory Magnetometer([MagnetometerSensorOptions sensorOptions]);

  /// The **`x`** read-only property of the
  /// [Magnetometer] interface returns a number specifying
  /// the magnetic field around the device's x-axis.
  external double? get x;

  /// The **`y`** read-only property of the
  /// [Magnetometer] interface returns a number specifying
  /// the magnetic field around the device's y-axis.
  external double? get y;

  /// The **`z`** read-only property of the
  /// [Magnetometer] interface returns a number specifying
  /// the magnetic field around the device's z-axis.
  external double? get z;
}
extension type MagnetometerSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory MagnetometerSensorOptions({
    num frequency,
    MagnetometerLocalCoordinateSystem referenceFrame,
  });

  external MagnetometerLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(MagnetometerLocalCoordinateSystem value);
}
extension type UncalibratedMagnetometer._(JSObject _)
    implements Sensor, JSObject {
  external factory UncalibratedMagnetometer(
      [MagnetometerSensorOptions sensorOptions]);

  external double? get x;
  external double? get y;
  external double? get z;
  external double? get xBias;
  external double? get yBias;
  external double? get zBias;
}
