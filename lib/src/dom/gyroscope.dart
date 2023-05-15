// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef GyroscopeLocalCoordinateSystem = JSString;

@JS('Gyroscope')
@staticInterop
class Gyroscope implements Sensor {
  external factory Gyroscope([GyroscopeSensorOptions sensorOptions]);
}

extension GyroscopeExtension on Gyroscope {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS()
@staticInterop
@anonymous
class GyroscopeSensorOptions implements SensorOptions {
  external factory GyroscopeSensorOptions(
      {GyroscopeLocalCoordinateSystem referenceFrame});
}

extension GyroscopeSensorOptionsExtension on GyroscopeSensorOptions {
  external set referenceFrame(GyroscopeLocalCoordinateSystem value);
  external GyroscopeLocalCoordinateSystem get referenceFrame;
}

@JS()
@staticInterop
@anonymous
class GyroscopeReadingValues implements JSObject {
  external factory GyroscopeReadingValues({
    required JSNumber? x,
    required JSNumber? y,
    required JSNumber? z,
  });
}

extension GyroscopeReadingValuesExtension on GyroscopeReadingValues {
  external set x(JSNumber? value);
  external JSNumber? get x;
  external set y(JSNumber? value);
  external JSNumber? get y;
  external set z(JSNumber? value);
  external JSNumber? get z;
}
