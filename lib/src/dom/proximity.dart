// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/generic_sensor.dart';

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

@JS('ProximityReadingValues')
@staticInterop
class ProximityReadingValues {
  external factory ProximityReadingValues();
}

extension ProximityReadingValuesExtension on ProximityReadingValues {}
