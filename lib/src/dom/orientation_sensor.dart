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

typedef RotationMatrixType = JSObject;
typedef OrientationSensorLocalCoordinateSystem = String;
extension type OrientationSensor._(JSObject _) implements Sensor, JSObject {
  /// The **`populateMatrix`** method of the
  /// [OrientationSensor] interface populates the given target matrix with the
  /// rotation matrix based on the latest sensor reading. The rotation matrix is
  /// shown
  /// below.
  ///
  /// ![The formulas used to convert the sensor's quaternion to the provided
  /// matrix.](quaternion_to_rotation_matrix.png)
  ///
  /// where:
  ///
  /// - W = cos(θ/2)
  /// - X = Vx \* sin(θ/2)
  /// - Y = Vy \* sin(θ/2)
  /// - Z = Vz \* sin(θ/2)
  external void populateMatrix(RotationMatrixType targetMatrix);
  external JSArray? get quaternion;
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
      {required JSArray? quaternion});

  external set quaternion(JSArray? value);
  external JSArray? get quaternion;
}
extension type RelativeOrientationReadingValues._(JSObject _)
    implements AbsoluteOrientationReadingValues, JSObject {
  external factory RelativeOrientationReadingValues();
}
