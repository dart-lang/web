// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;
extension type Geolocation._(JSObject _) implements JSObject {
  /// The **`getCurrentPosition()`** method of the [Geolocation] interface is
  /// used to get the current position of the device.
  external void getCurrentPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);

  /// The **`watchPosition()`** method of the [Geolocation] interface is used to
  /// register a handler function that will be called automatically each time
  /// the position of the device changes.
  /// You can also, optionally, specify an error handling callback function.
  external int watchPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);

  /// The **`clearWatch()`** method of the [Geolocation] interface is used to
  /// unregister location/error monitoring handlers previously installed using
  /// [Geolocation.watchPosition].
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
