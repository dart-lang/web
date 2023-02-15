// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/hr_time.dart';

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;

@JS('Geolocation')
@staticInterop
class Geolocation {
  external factory Geolocation();
}

extension GeolocationExtension on Geolocation {
  external JSVoid getCurrentPosition(PositionCallback successCallback);
  external JSVoid getCurrentPosition1(
    PositionCallback successCallback,
    PositionErrorCallback? errorCallback,
  );
  external JSVoid getCurrentPosition2(
    PositionCallback successCallback,
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  );
  external JSNumber watchPosition(PositionCallback successCallback);
  external JSNumber watchPosition1(
    PositionCallback successCallback,
    PositionErrorCallback? errorCallback,
  );
  external JSNumber watchPosition2(
    PositionCallback successCallback,
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  );
  external JSVoid clearWatch(JSNumber watchId);
}

@JS('PositionOptions')
@staticInterop
class PositionOptions {
  external factory PositionOptions();
}

extension PositionOptionsExtension on PositionOptions {}

@JS('GeolocationPosition')
@staticInterop
class GeolocationPosition {
  external factory GeolocationPosition();
}

extension GeolocationPositionExtension on GeolocationPosition {
  external GeolocationCoordinates get coords;
  external EpochTimeStamp get timestamp;
}

@JS('GeolocationCoordinates')
@staticInterop
class GeolocationCoordinates {
  external factory GeolocationCoordinates();
}

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
  external factory GeolocationPositionError();

  external static JSNumber get PERMISSION_DENIED;
  external static JSNumber get POSITION_UNAVAILABLE;
  external static JSNumber get TIMEOUT;
}

extension GeolocationPositionErrorExtension on GeolocationPositionError {
  external JSNumber get code;
  external JSString get message;
}
