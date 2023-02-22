// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'generic_sensor.dart';

@JS('ProximitySensor')
@staticInterop
class ProximitySensor extends Sensor {
  external factory ProximitySensor();

  external factory ProximitySensor.a1();

  external factory ProximitySensor.a2(SensorOptions sensorOptions);
}

extension ProximitySensorExtension on ProximitySensor {
  external JSNumber? get distance;
  external JSNumber? get max;
  external JSBoolean? get near;
}

@JS()
@staticInterop
@anonymous
class ProximityReadingValues {
  external factory ProximityReadingValues({
    required JSNumber? distance,
    required JSNumber? max,
    required JSBoolean? near,
  });
}

extension ProximityReadingValuesExtension on ProximityReadingValues {
  external set distance(JSNumber? value);
  external JSNumber? get distance;
  external set max(JSNumber? value);
  external JSNumber? get max;
  external set near(JSBoolean? value);
  external JSBoolean? get near;
}
