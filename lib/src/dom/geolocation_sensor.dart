// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'generic_sensor.dart';
import 'hr_time.dart';

@JS('GeolocationSensor')
@staticInterop
class GeolocationSensor implements Sensor {
  external factory GeolocationSensor([GeolocationSensorOptions options]);

  external static JSPromise read([ReadOptions readOptions]);
}

extension GeolocationSensorExtension on GeolocationSensor {
  external double? get latitude;
  external double? get longitude;
  external double? get altitude;
  external double? get accuracy;
  external double? get altitudeAccuracy;
  external double? get heading;
  external double? get speed;
}

@JS()
@staticInterop
@anonymous
class GeolocationSensorOptions implements SensorOptions {
  external factory GeolocationSensorOptions();
}

@JS()
@staticInterop
@anonymous
class ReadOptions implements GeolocationSensorOptions {
  external factory ReadOptions({AbortSignal? signal});
}

extension ReadOptionsExtension on ReadOptions {
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}

@JS()
@staticInterop
@anonymous
class GeolocationSensorReading implements JSObject {
  external factory GeolocationSensorReading({
    DOMHighResTimeStamp? timestamp,
    double? latitude,
    double? longitude,
    double? altitude,
    double? accuracy,
    double? altitudeAccuracy,
    double? heading,
    double? speed,
  });
}

extension GeolocationSensorReadingExtension on GeolocationSensorReading {
  external set timestamp(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get timestamp;
  external set latitude(double? value);
  external double? get latitude;
  external set longitude(double? value);
  external double? get longitude;
  external set altitude(double? value);
  external double? get altitude;
  external set accuracy(double? value);
  external double? get accuracy;
  external set altitudeAccuracy(double? value);
  external double? get altitudeAccuracy;
  external set heading(double? value);
  external double? get heading;
  external set speed(double? value);
  external double? get speed;
}

@JS()
@staticInterop
@anonymous
class GeolocationReadingValues implements JSObject {
  external factory GeolocationReadingValues({
    required double? latitude,
    required double? longitude,
    required double? altitude,
    required double? accuracy,
    required double? altitudeAccuracy,
    required double? heading,
    required double? speed,
  });
}

extension GeolocationReadingValuesExtension on GeolocationReadingValues {
  external set latitude(double? value);
  external double? get latitude;
  external set longitude(double? value);
  external double? get longitude;
  external set altitude(double? value);
  external double? get altitude;
  external set accuracy(double? value);
  external double? get accuracy;
  external set altitudeAccuracy(double? value);
  external double? get altitudeAccuracy;
  external set heading(double? value);
  external double? get heading;
  external set speed(double? value);
  external double? get speed;
}
