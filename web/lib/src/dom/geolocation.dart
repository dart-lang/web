// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;

/// The **`Geolocation`** interface represents an object able to obtain the
/// position of the device programmatically. It gives Web content access to the
/// location of the device. This allows a website or app to offer customized
/// results based on the user's location.
///
/// An object with this interface is obtained using the [navigator.geolocation]
/// property implemented by the [Navigator] object.
///
/// > **Note:** For security reasons, when a web page tries to access location
/// > information, the user is notified and asked to grant permission. Be aware
/// > that each browser has its own policies and methods for requesting this
/// > permission.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation).
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

  external bool get enableHighAccuracy;
  external set enableHighAccuracy(bool value);
  external int get timeout;
  external set timeout(int value);
  external int get maximumAge;
  external set maximumAge(int value);
}

/// The **`GeolocationPosition`** interface represents the position of the
/// concerned device at a given time. The position, represented by a
/// [GeolocationCoordinates] object, comprehends the 2D position of the device,
/// on a spheroid representing the Earth, but also its altitude and its speed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GeolocationPosition).
extension type GeolocationPosition._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [GeolocationPosition] interface is a ; it
  /// returns a JSON representation of the [GeolocationPosition] object.
  external JSObject toJSON();

  /// The **`coords`** read-only property of the [GeolocationPosition] interface
  /// returns a [GeolocationCoordinates] object representing a geographic
  /// position. It contains the location, that is longitude and latitude on the
  /// Earth, the altitude, and the speed of the object concerned, regrouped
  /// inside the returned value. It also contains accuracy information about
  /// these values.
  external GeolocationCoordinates get coords;

  /// The **`timestamp`** read-only property of the [GeolocationPosition]
  /// interface represents the date and time that the position was acquired by
  /// the device.
  external EpochTimeStamp get timestamp;
}

/// The **`GeolocationCoordinates`** interface represents the position and
/// altitude of the device on Earth, as well as the accuracy with which these
/// properties are calculated.
/// The geographic position information is provided in terms of World Geodetic
/// System coordinates (WGS84).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GeolocationCoordinates).
extension type GeolocationCoordinates._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [GeolocationCoordinates] interface is a ;
  /// it returns a JSON representation of the [GeolocationCoordinates] object.
  external JSObject toJSON();

  /// The **`accuracy`** read-only property of the [GeolocationCoordinates]
  /// interface is a strictly positive `double` representing the accuracy, with
  /// a 95% confidence level, of the [GeolocationCoordinates.latitude] and
  /// [GeolocationCoordinates.longitude] properties expressed in meters.
  external double get accuracy;

  /// The **`latitude`** read-only property of the [GeolocationCoordinates]
  /// interface is a `double` representing the latitude of the position in
  /// decimal degrees.
  external double get latitude;

  /// The **`longitude`** read-only property of the [GeolocationCoordinates]
  /// interface is a number which represents the longitude of a geographical
  /// position, specified in decimal degrees.
  /// Together with a timestamp, given as  in milliseconds, indicating a time of
  /// measurement, the `GeolocationCoordinates` object is part of the
  /// [GeolocationPosition] interface, which is the object type returned by
  /// Geolocation API functions that obtain and return a geographical position.
  external double get longitude;

  /// The **`altitude`** read-only property of the [GeolocationCoordinates]
  /// interface is a `double` representing the altitude of the position in
  /// meters above the
  /// [WGS84](https://gis-lab.info/docs/nima-tr8350.2-wgs84fin.pdf) ellipsoid
  /// (which defines the nominal sea level surface). This value is `null` if the
  /// implementation cannot provide this data.
  external double? get altitude;

  /// The **`altitudeAccuracy`** read-only property of the
  /// [GeolocationCoordinates] interface is a strictly positive `double`
  /// representing the accuracy, with a 95% confidence level, of the `altitude`
  /// expressed in meters. This value is `null` if the implementation doesn't
  /// support measuring altitude.
  external double? get altitudeAccuracy;

  /// The **`heading`** read-only property of the [GeolocationCoordinates]
  /// interface is a `double` representing the direction in which the device is
  /// traveling. This value, specified in degrees, indicates how far off from
  /// heading due north the device is. `0` degrees represents true north, and
  /// the direction is determined clockwise (which means that east is `90`
  /// degrees and west is `270` degrees). If [GeolocationCoordinates.speed] is
  /// `0`, `heading` is `NaN`. If the device is not able to provide heading
  /// information, this value is `null`.
  external double? get heading;

  /// The **`speed`** read-only property of the [GeolocationCoordinates]
  /// interface is a `double` representing the velocity of the device in meters
  /// per second. This value is `null` if the implementation is not able to
  /// measure it.
  external double? get speed;
}

/// The **`GeolocationPositionError`** interface represents the reason of an
/// error occurring when using the geolocating device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/GeolocationPositionError).
extension type GeolocationPositionError._(JSObject _) implements JSObject {
  static const int PERMISSION_DENIED = 1;

  static const int POSITION_UNAVAILABLE = 2;

  static const int TIMEOUT = 3;

  /// The **`code`** read-only property of the [GeolocationPositionError]
  /// interface is an `unsigned short` representing the error code.
  ///
  /// The following values are possible:
  ///
  /// <table class="no-markdown">
  ///   <thead>
  ///     <tr>
  ///       <th scope="col">Value</th>
  ///       <th scope="col">Associated constant</th>
  ///       <th scope="col">Description</th>
  ///     </tr>
  ///   </thead>
  ///   <tbody>
  ///     <tr>
  ///       <td><code>1</code></td>
  ///       <td><code>PERMISSION_DENIED</code></td>
  ///       <td>
  /// The acquisition of the geolocation information failed because the page
  /// didn't have the permission to do it.
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td><code>2</code></td>
  ///       <td><code>POSITION_UNAVAILABLE</code></td>
  ///       <td>
  /// The acquisition of the geolocation failed because one or several internal
  /// sources of position returned an internal error.
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td><code>3</code></td>
  ///       <td><code>TIMEOUT</code></td>
  ///       <td>Geolocation information was not obtained in the allowed time.</td>
  ///     </tr>
  ///   </tbody>
  /// </table>
  external int get code;

  /// The **`message`** read-only property of the [GeolocationPositionError]
  /// interface returns a human-readable string describing the details of the
  /// error.
  external String get message;
}
