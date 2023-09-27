// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;

@JS('Geolocation')
@staticInterop
class Geolocation implements JSObject {}

extension GeolocationExtension on Geolocation {
  external JSVoid getCurrentPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);
  external int watchPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);
  external JSVoid clearWatch(int watchId);
}

@JS()
@staticInterop
@anonymous
class PositionOptions implements JSObject {
  external factory PositionOptions({
    bool enableHighAccuracy,
    int timeout,
    int maximumAge,
  });
}

extension PositionOptionsExtension on PositionOptions {
  external set enableHighAccuracy(bool value);
  external bool get enableHighAccuracy;
  external set timeout(int value);
  external int get timeout;
  external set maximumAge(int value);
  external int get maximumAge;
}

@JS('GeolocationPosition')
@staticInterop
class GeolocationPosition implements JSObject {}

extension GeolocationPositionExtension on GeolocationPosition {
  external GeolocationCoordinates get coords;
  external EpochTimeStamp get timestamp;
}

@JS('GeolocationCoordinates')
@staticInterop
class GeolocationCoordinates implements JSObject {}

extension GeolocationCoordinatesExtension on GeolocationCoordinates {
  external num get accuracy;
  external num get latitude;
  external num get longitude;
  external num? get altitude;
  external num? get altitudeAccuracy;
  external num? get heading;
  external num? get speed;
}

@JS('GeolocationPositionError')
@staticInterop
class GeolocationPositionError implements JSObject {
  external static int get PERMISSION_DENIED;
  external static int get POSITION_UNAVAILABLE;
  external static int get TIMEOUT;
}

extension GeolocationPositionErrorExtension on GeolocationPositionError {
  external int get code;
  external String get message;
}
