// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/generic_sensor.dart';

typedef GyroscopeLocalCoordinateSystem = JSString;

@JS('Gyroscope')
@staticInterop
class Gyroscope extends Sensor {
  external factory Gyroscope();

  external factory Gyroscope.a1();

  external factory Gyroscope.a2(GyroscopeSensorOptions sensorOptions);
}

extension GyroscopeExtension on Gyroscope {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('GyroscopeSensorOptions')
@staticInterop
class GyroscopeSensorOptions extends SensorOptions {
  external factory GyroscopeSensorOptions();
}

extension GyroscopeSensorOptionsExtension on GyroscopeSensorOptions {}

@JS('GyroscopeReadingValues')
@staticInterop
class GyroscopeReadingValues {
  external factory GyroscopeReadingValues();
}

extension GyroscopeReadingValuesExtension on GyroscopeReadingValues {}
