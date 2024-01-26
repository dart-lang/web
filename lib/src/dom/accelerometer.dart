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
extension type LinearAccelerationSensor._(JSObject _)
    implements Accelerometer, JSObject {
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
extension type GravitySensor._(JSObject _) implements Accelerometer, JSObject {
  external factory GravitySensor([AccelerometerSensorOptions options]);
}
extension type AccelerometerReadingValues._(JSObject _) implements JSObject {
  external factory AccelerometerReadingValues({
    required num? x,
    required num? y,
    required num? z,
  });

  external set x(num? value);
  external num? get x;
  external set y(num? value);
  external num? get y;
  external set z(num? value);
  external num? get z;
}
extension type LinearAccelerationReadingValues._(JSObject _)
    implements AccelerometerReadingValues, JSObject {
  external factory LinearAccelerationReadingValues();
}
extension type GravityReadingValues._(JSObject _)
    implements AccelerometerReadingValues, JSObject {
  external factory GravityReadingValues();
}
