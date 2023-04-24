// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;

@JS('Geolocation')
@staticInterop
class Geolocation {}

extension GeolocationExtension on Geolocation {
  external JSVoid getCurrentPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);
  external JSNumber watchPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);
  external JSVoid clearWatch(JSNumber watchId);
}

@JS()
@staticInterop
@anonymous
class PositionOptions {
  external factory PositionOptions({
    JSBoolean enableHighAccuracy,
    JSNumber timeout,
    JSNumber maximumAge,
  });
}

extension PositionOptionsExtension on PositionOptions {
  external set enableHighAccuracy(JSBoolean value);
  external JSBoolean get enableHighAccuracy;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set maximumAge(JSNumber value);
  external JSNumber get maximumAge;
}

@JS('GeolocationPosition')
@staticInterop
class GeolocationPosition {}

extension GeolocationPositionExtension on GeolocationPosition {
  external GeolocationCoordinates get coords;
  external EpochTimeStamp get timestamp;
}

@JS('GeolocationCoordinates')
@staticInterop
class GeolocationCoordinates {}

extension GeolocationCoordinatesExtension on GeolocationCoordinates {
  external JSNumber get accuracy;
  external JSNumber get latitude;
  external JSNumber get longitude;
  external JSNumber? get altitude;
  external JSNumber? get altitudeAccuracy;
  external JSNumber? get heading;
  external JSNumber? get speed;
}

@JS('GeolocationPositionError')
@staticInterop
class GeolocationPositionError {
  external static JSNumber get PERMISSION_DENIED;
  external static JSNumber get POSITION_UNAVAILABLE;
  external static JSNumber get TIMEOUT;
}

extension GeolocationPositionErrorExtension on GeolocationPositionError {
  external JSNumber get code;
  external JSString get message;
}
