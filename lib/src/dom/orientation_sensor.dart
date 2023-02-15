// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/generic_sensor.dart';

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

@JS('OrientationSensorOptions')
@staticInterop
class OrientationSensorOptions extends SensorOptions {
  external factory OrientationSensorOptions();
}

extension OrientationSensorOptionsExtension on OrientationSensorOptions {}

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

@JS('AbsoluteOrientationReadingValues')
@staticInterop
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues();
}

extension AbsoluteOrientationReadingValuesExtension
    on AbsoluteOrientationReadingValues {}

@JS('RelativeOrientationReadingValues')
@staticInterop
class RelativeOrientationReadingValues
    extends AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}
