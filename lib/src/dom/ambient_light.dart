// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'generic_sensor.dart';

@JS('AmbientLightSensor')
@staticInterop
class AmbientLightSensor implements Sensor {
  external factory AmbientLightSensor([SensorOptions sensorOptions]);
}

extension AmbientLightSensorExtension on AmbientLightSensor {
  external JSNumber? get illuminance;
}

@JS()
@staticInterop
@anonymous
class AmbientLightReadingValues implements JSObject {
  external factory AmbientLightReadingValues({required JSNumber? illuminance});
}

extension AmbientLightReadingValuesExtension on AmbientLightReadingValues {
  external set illuminance(JSNumber? value);
  external JSNumber? get illuminance;
}
