// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;
extension type Geolocation._(JSObject _) implements JSObject {
  external void getCurrentPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);
  external int watchPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);
  external void clearWatch(int watchId);
}
extension type PositionOptions._(JSObject _) implements JSObject {
  external factory PositionOptions({
    bool enableHighAccuracy,
    int timeout,
    int maximumAge,
  });

  external set enableHighAccuracy(bool value);
  external bool get enableHighAccuracy;
  external set timeout(int value);
  external int get timeout;
  external set maximumAge(int value);
  external int get maximumAge;
}
extension type GeolocationPosition._(JSObject _) implements JSObject {
  external GeolocationCoordinates get coords;
  external EpochTimeStamp get timestamp;
}
extension type GeolocationCoordinates._(JSObject _) implements JSObject {
  external num get accuracy;
  external num get latitude;
  external num get longitude;
  external num? get altitude;
  external num? get altitudeAccuracy;
  external num? get heading;
  external num? get speed;
}
extension type GeolocationPositionError._(JSObject _) implements JSObject {
  external static int get PERMISSION_DENIED;
  external static int get POSITION_UNAVAILABLE;
  external static int get TIMEOUT;
  external int get code;
  external String get message;
}
