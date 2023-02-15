// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'generic_sensor.dart';

@JS('GeolocationSensor')
@staticInterop
class GeolocationSensor extends Sensor {
  external factory GeolocationSensor();

  external factory GeolocationSensor.a1();

  external factory GeolocationSensor.a2(GeolocationSensorOptions options);

  external static JSPromise read();
  external static JSPromise read1(ReadOptions readOptions);
}

extension GeolocationSensorExtension on GeolocationSensor {
  external JSNumber? get latitude;
  external JSNumber? get longitude;
  external JSNumber? get altitude;
  external JSNumber? get accuracy;
  external JSNumber? get altitudeAccuracy;
  external JSNumber? get heading;
  external JSNumber? get speed;
}

@JS('GeolocationSensorOptions')
@staticInterop
class GeolocationSensorOptions extends SensorOptions {
  external factory GeolocationSensorOptions();
}

@JS('ReadOptions')
@staticInterop
class ReadOptions extends GeolocationSensorOptions {
  external factory ReadOptions();
}

extension ReadOptionsExtension on ReadOptions {}

@JS('GeolocationSensorReading')
@staticInterop
class GeolocationSensorReading {
  external factory GeolocationSensorReading();
}

extension GeolocationSensorReadingExtension on GeolocationSensorReading {}

@JS('GeolocationReadingValues')
@staticInterop
class GeolocationReadingValues {
  external factory GeolocationReadingValues();
}

extension GeolocationReadingValuesExtension on GeolocationReadingValues {}
