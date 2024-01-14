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

typedef AccelerometerLocalCoordinateSystem = String;

/// The **`Accelerometer`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides on each reading the acceleration applied to the device along all
/// three axes.
///
/// To use this sensor, the user must grant permission to the `'accelerometer'`,
/// device sensor through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
///
/// This feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
@JS('Accelerometer')
@staticInterop
class Accelerometer implements Sensor {
  external factory Accelerometer([AccelerometerSensorOptions options]);
}

extension AccelerometerExtension on Accelerometer {
  external num? get x;
  external num? get y;
  external num? get z;
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

/// The **`LinearAccelerationSensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides on each reading the acceleration applied to the device along all
/// three axes, but without the contribution of gravity.
///
/// To use this sensor, the user must grant permission to the `'accelerometer'`
/// device sensor through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
/// In addition, this feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
@JS('LinearAccelerationSensor')
@staticInterop
class LinearAccelerationSensor implements Accelerometer {
  external factory LinearAccelerationSensor(
      [AccelerometerSensorOptions options]);
}

/// The **`GravitySensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides on each reading the gravity applied to the device along all three
/// axes.
///
/// To use this sensor, the user must grant permission to the `'accelerometer'`
/// device sensor through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
/// In addition, this feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
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
    required num? x,
    required num? y,
    required num? z,
  });
}

extension AccelerometerReadingValuesExtension on AccelerometerReadingValues {
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
class LinearAccelerationReadingValues implements AccelerometerReadingValues {
  external factory LinearAccelerationReadingValues();
}

@JS()
@staticInterop
@anonymous
class GravityReadingValues implements AccelerometerReadingValues {
  external factory GravityReadingValues();
}
