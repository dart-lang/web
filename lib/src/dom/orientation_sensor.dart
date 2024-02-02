// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef RotationMatrixType = JSObject;
typedef OrientationSensorLocalCoordinateSystem = String;
extension type OrientationSensor._(JSObject _) implements Sensor, JSObject {
  external void populateMatrix(RotationMatrixType targetMatrix);
  external JSArray<JSNumber>? get quaternion;
}
extension type OrientationSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory OrientationSensorOptions(
      {OrientationSensorLocalCoordinateSystem referenceFrame});

  external set referenceFrame(OrientationSensorLocalCoordinateSystem value);
  external OrientationSensorLocalCoordinateSystem get referenceFrame;
}
extension type AbsoluteOrientationSensor._(JSObject _)
    implements OrientationSensor, JSObject {
  external factory AbsoluteOrientationSensor(
      [OrientationSensorOptions sensorOptions]);
}
extension type RelativeOrientationSensor._(JSObject _)
    implements OrientationSensor, JSObject {
  external factory RelativeOrientationSensor(
      [OrientationSensorOptions sensorOptions]);
}
extension type AbsoluteOrientationReadingValues._(JSObject _)
    implements JSObject {
  external factory AbsoluteOrientationReadingValues(
      {required JSArray<JSNumber>? quaternion});

  external set quaternion(JSArray<JSNumber>? value);
  external JSArray<JSNumber>? get quaternion;
}
extension type RelativeOrientationReadingValues._(JSObject _)
    implements AbsoluteOrientationReadingValues, JSObject {
  external factory RelativeOrientationReadingValues();
}
