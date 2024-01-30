// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'generic_sensor.dart';
import 'hr_time.dart';

extension type GeolocationSensor._(JSObject _) implements Sensor, JSObject {
  external factory GeolocationSensor([GeolocationSensorOptions options]);

  external static JSPromise<GeolocationSensorReading> read(
      [ReadOptions readOptions]);
  external num? get latitude;
  external num? get longitude;
  external num? get altitude;
  external num? get accuracy;
  external num? get altitudeAccuracy;
  external num? get heading;
  external num? get speed;
}
extension type GeolocationSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory GeolocationSensorOptions();
}
extension type ReadOptions._(JSObject _)
    implements GeolocationSensorOptions, JSObject {
  external factory ReadOptions({AbortSignal? signal});

  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}
extension type GeolocationSensorReading._(JSObject _) implements JSObject {
  external factory GeolocationSensorReading({
    DOMHighResTimeStamp? timestamp,
    num? latitude,
    num? longitude,
    num? altitude,
    num? accuracy,
    num? altitudeAccuracy,
    num? heading,
    num? speed,
  });

  external set timestamp(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get timestamp;
  external set latitude(num? value);
  external num? get latitude;
  external set longitude(num? value);
  external num? get longitude;
  external set altitude(num? value);
  external num? get altitude;
  external set accuracy(num? value);
  external num? get accuracy;
  external set altitudeAccuracy(num? value);
  external num? get altitudeAccuracy;
  external set heading(num? value);
  external num? get heading;
  external set speed(num? value);
  external num? get speed;
}
extension type GeolocationReadingValues._(JSObject _) implements JSObject {
  external factory GeolocationReadingValues({
    required num? latitude,
    required num? longitude,
    required num? altitude,
    required num? accuracy,
    required num? altitudeAccuracy,
    required num? heading,
    required num? speed,
  });

  external set latitude(num? value);
  external num? get latitude;
  external set longitude(num? value);
  external num? get longitude;
  external set altitude(num? value);
  external num? get altitude;
  external set accuracy(num? value);
  external num? get accuracy;
  external set altitudeAccuracy(num? value);
  external num? get altitudeAccuracy;
  external set heading(num? value);
  external num? get heading;
  external set speed(num? value);
  external num? get speed;
}
