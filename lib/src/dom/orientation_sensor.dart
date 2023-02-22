// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'generic_sensor.dart';

typedef RotationMatrixType = JSAny;
typedef OrientationSensorLocalCoordinateSystem = JSString;

@JS('OrientationSensor')
@staticInterop
class OrientationSensor extends Sensor {
  external factory OrientationSensor();
}

extension OrientationSensorExtension on OrientationSensor {
  external JSArray? get quaternion;
  external JSVoid populateMatrix(RotationMatrixType targetMatrix);
}

@JS()
@staticInterop
@anonymous
class OrientationSensorOptions extends SensorOptions {
  external factory OrientationSensorOptions(
      {OrientationSensorLocalCoordinateSystem referenceFrame = 'device'});
}

extension OrientationSensorOptionsExtension on OrientationSensorOptions {
  external set referenceFrame(OrientationSensorLocalCoordinateSystem value);
  external OrientationSensorLocalCoordinateSystem get referenceFrame;
}

@JS('AbsoluteOrientationSensor')
@staticInterop
class AbsoluteOrientationSensor extends OrientationSensor {
  external factory AbsoluteOrientationSensor();

  external factory AbsoluteOrientationSensor.a1();

  external factory AbsoluteOrientationSensor.a2(
      OrientationSensorOptions sensorOptions);
}

@JS('RelativeOrientationSensor')
@staticInterop
class RelativeOrientationSensor extends OrientationSensor {
  external factory RelativeOrientationSensor();

  external factory RelativeOrientationSensor.a1();

  external factory RelativeOrientationSensor.a2(
      OrientationSensorOptions sensorOptions);
}

@JS()
@staticInterop
@anonymous
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues(
      {required JSArray? quaternion});
}

extension AbsoluteOrientationReadingValuesExtension
    on AbsoluteOrientationReadingValues {
  external set quaternion(JSArray? value);
  external JSArray? get quaternion;
}

@JS()
@staticInterop
@anonymous
class RelativeOrientationReadingValues
    extends AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}
