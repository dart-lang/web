// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'generic_sensor.dart';

@JS('ProximitySensor')
@staticInterop
class ProximitySensor implements Sensor {
  external factory ProximitySensor([SensorOptions sensorOptions]);
}

extension ProximitySensorExtension on ProximitySensor {
  external double? get distance;
  external double? get max;
  external bool? get near;
}

@JS()
@staticInterop
@anonymous
class ProximityReadingValues implements JSObject {
  external factory ProximityReadingValues({
    required double? distance,
    required double? max,
    required bool? near,
  });
}

extension ProximityReadingValuesExtension on ProximityReadingValues {
  external set distance(double? value);
  external double? get distance;
  external set max(double? value);
  external double? get max;
  external set near(bool? value);
  external bool? get near;
}
