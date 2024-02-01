// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library proximity;

import 'dart:js_interop';

import 'generic_sensor.dart';

extension type ProximitySensor._(JSObject _) implements Sensor, JSObject {
  external factory ProximitySensor([SensorOptions sensorOptions]);

  external num? get distance;
  external num? get max;
  external bool? get near;
}
extension type ProximityReadingValues._(JSObject _) implements JSObject {
  external factory ProximityReadingValues({
    required num? distance,
    required num? max,
    required bool? near,
  });

  external set distance(num? value);
  external num? get distance;
  external set max(num? value);
  external num? get max;
  external set near(bool? value);
  external bool? get near;
}
