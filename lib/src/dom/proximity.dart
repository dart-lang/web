// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

@JS('ProximitySensor')
@staticInterop
class ProximitySensor implements Sensor {
  external factory ProximitySensor([SensorOptions sensorOptions]);
}

extension ProximitySensorExtension on ProximitySensor {
  external num? get distance;
  external num? get max;
  external bool? get near;
}
