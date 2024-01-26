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

typedef GyroscopeLocalCoordinateSystem = String;

/// The **`Gyroscope`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides on each reading the angular velocity of the device along all three
/// axes.
///
/// To use this sensor, the user must grant permission to the `'gyroscope'`
/// device sensor through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
/// In addition, this feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
extension type Gyroscope._(JSObject _) implements Sensor, JSObject {
  external factory Gyroscope([GyroscopeSensorOptions sensorOptions]);

  external num? get x;
  external num? get y;
  external num? get z;
}
extension type GyroscopeSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory GyroscopeSensorOptions(
      {GyroscopeLocalCoordinateSystem referenceFrame});

  external set referenceFrame(GyroscopeLocalCoordinateSystem value);
  external GyroscopeLocalCoordinateSystem get referenceFrame;
}
extension type GyroscopeReadingValues._(JSObject _) implements JSObject {
  external factory GyroscopeReadingValues({
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
