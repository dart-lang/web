// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'generic_sensor.dart';
import 'hr_time.dart';

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

@JS()
@staticInterop
@anonymous
class GeolocationSensorOptions extends SensorOptions {
  external factory GeolocationSensorOptions();
}

@JS()
@staticInterop
@anonymous
class ReadOptions extends GeolocationSensorOptions {
  external factory ReadOptions({AbortSignal? signal});
}

extension ReadOptionsExtension on ReadOptions {
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}

@JS()
@staticInterop
@anonymous
class GeolocationSensorReading {
  external factory GeolocationSensorReading({
    DOMHighResTimeStamp? timestamp,
    JSNumber? latitude,
    JSNumber? longitude,
    JSNumber? altitude,
    JSNumber? accuracy,
    JSNumber? altitudeAccuracy,
    JSNumber? heading,
    JSNumber? speed,
  });
}

extension GeolocationSensorReadingExtension on GeolocationSensorReading {
  external set timestamp(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get timestamp;
  external set latitude(JSNumber? value);
  external JSNumber? get latitude;
  external set longitude(JSNumber? value);
  external JSNumber? get longitude;
  external set altitude(JSNumber? value);
  external JSNumber? get altitude;
  external set accuracy(JSNumber? value);
  external JSNumber? get accuracy;
  external set altitudeAccuracy(JSNumber? value);
  external JSNumber? get altitudeAccuracy;
  external set heading(JSNumber? value);
  external JSNumber? get heading;
  external set speed(JSNumber? value);
  external JSNumber? get speed;
}

@JS()
@staticInterop
@anonymous
class GeolocationReadingValues {
  external factory GeolocationReadingValues({
    required JSNumber? latitude,
    required JSNumber? longitude,
    required JSNumber? altitude,
    required JSNumber? accuracy,
    required JSNumber? altitudeAccuracy,
    required JSNumber? heading,
    required JSNumber? speed,
  });
}

extension GeolocationReadingValuesExtension on GeolocationReadingValues {
  external set latitude(JSNumber? value);
  external JSNumber? get latitude;
  external set longitude(JSNumber? value);
  external JSNumber? get longitude;
  external set altitude(JSNumber? value);
  external JSNumber? get altitude;
  external set accuracy(JSNumber? value);
  external JSNumber? get accuracy;
  external set altitudeAccuracy(JSNumber? value);
  external JSNumber? get altitudeAccuracy;
  external set heading(JSNumber? value);
  external JSNumber? get heading;
  external set speed(JSNumber? value);
  external JSNumber? get speed;
}
