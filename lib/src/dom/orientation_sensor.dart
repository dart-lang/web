// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef RotationMatrixType = JSAny;
typedef OrientationSensorLocalCoordinateSystem = JSString;

@JS('OrientationSensor')
@staticInterop
class OrientationSensor extends Sensor {
  external factory OrientationSensor();
}

extension OrientationSensorExtension on OrientationSensor {
  external JSArray? get quaternion;
  external JSUndefined populateMatrix(RotationMatrixType targetMatrix);
}

@JS('OrientationSensorOptions')
@staticInterop
class OrientationSensorOptions extends SensorOptions {
  external factory OrientationSensorOptions();
}

extension OrientationSensorOptionsExtension on OrientationSensorOptions {
  // TODO
}

@JS('AbsoluteOrientationSensor')
@staticInterop
class AbsoluteOrientationSensor extends OrientationSensor {
  external factory AbsoluteOrientationSensor();
  external factory AbsoluteOrientationSensor.a1();
  external factory AbsoluteOrientationSensor.a1_1(
      OrientationSensorOptions sensorOptions);
}

@JS('RelativeOrientationSensor')
@staticInterop
class RelativeOrientationSensor extends OrientationSensor {
  external factory RelativeOrientationSensor();
  external factory RelativeOrientationSensor.a1();
  external factory RelativeOrientationSensor.a1_1(
      OrientationSensorOptions sensorOptions);
}

@JS('AbsoluteOrientationReadingValues')
@staticInterop
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues();
}

extension AbsoluteOrientationReadingValuesExtension
    on AbsoluteOrientationReadingValues {
  // TODO
}

@JS('RelativeOrientationReadingValues')
@staticInterop
class RelativeOrientationReadingValues
    extends AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}
