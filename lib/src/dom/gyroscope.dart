// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef GyroscopeLocalCoordinateSystem = String;
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
