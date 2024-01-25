// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

extension type AmbientLightSensor._(JSObject _) implements Sensor, JSObject {
  external factory AmbientLightSensor([SensorOptions sensorOptions]);

  external num? get illuminance;
}
extension type AmbientLightReadingValues._(JSObject _) implements JSObject {
  external factory AmbientLightReadingValues({required num? illuminance});

  external set illuminance(num? value);
  external num? get illuminance;
}
