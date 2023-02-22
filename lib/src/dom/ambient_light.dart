// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'generic_sensor.dart';

@JS('AmbientLightSensor')
@staticInterop
class AmbientLightSensor extends Sensor {
  external factory AmbientLightSensor();

  external factory AmbientLightSensor.a1();

  external factory AmbientLightSensor.a2(SensorOptions sensorOptions);
}

extension AmbientLightSensorExtension on AmbientLightSensor {
  external JSNumber? get illuminance;
}

@JS()
@staticInterop
@anonymous
class AmbientLightReadingValues {
  external factory AmbientLightReadingValues({required JSNumber? illuminance});
}

extension AmbientLightReadingValuesExtension on AmbientLightReadingValues {
  external set illuminance(JSNumber? value);
  external JSNumber? get illuminance;
}
