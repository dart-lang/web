// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

typedef RotationMatrixType = JSObject;
typedef OrientationSensorLocalCoordinateSystem = String;

/// The **`OrientationSensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// is the base class for orientation sensors. This interface cannot be used
/// directly. Instead it provides properties and methods accessed by interfaces
/// that inherit from it.
///
/// This feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
@JS('OrientationSensor')
@staticInterop
class OrientationSensor implements Sensor {}

extension OrientationSensorExtension on OrientationSensor {
  /// The **`populateMatrix`** method of the
  /// [OrientationSensor] interface populates the given target matrix with the
  /// rotation matrix based on the latest sensor reading. The rotation matrix is
  /// shown
  /// below.
  ///
  /// ![The formulas used to convert the sensor's quaternion to the provided
  /// matrix.](quaternion_to_rotation_matrix.png)
  ///
  /// where:
  ///
  /// - W = cos(θ/2)
  /// - X = Vx \* sin(θ/2)
  /// - Y = Vy \* sin(θ/2)
  /// - Z = Vz \* sin(θ/2)
  external void populateMatrix(RotationMatrixType targetMatrix);
  external JSArray? get quaternion;
}

@JS()
@staticInterop
@anonymous
class OrientationSensorOptions implements SensorOptions {
  external factory OrientationSensorOptions(
      {OrientationSensorLocalCoordinateSystem referenceFrame});
}

extension OrientationSensorOptionsExtension on OrientationSensorOptions {
  external set referenceFrame(OrientationSensorLocalCoordinateSystem value);
  external OrientationSensorLocalCoordinateSystem get referenceFrame;
}

/// The **`AbsoluteOrientationSensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// describes the device's physical orientation in relation to the Earth's
/// reference coordinate system.
///
/// To use this sensor, the user must grant permission to the `'accelerometer'`,
/// `'gyroscope'`, and `'magnetometer'` device sensors through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
///
/// This feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
@JS('AbsoluteOrientationSensor')
@staticInterop
class AbsoluteOrientationSensor implements OrientationSensor {
  external factory AbsoluteOrientationSensor(
      [OrientationSensorOptions sensorOptions]);
}

/// The **`RelativeOrientationSensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// describes the device's physical orientation without regard to the Earth's
/// reference coordinate system.
///
/// To use this sensor, the user must grant permission to the `'accelerometer'`,
/// and `'gyroscope'` device sensors through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
/// In addition, this feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
@JS('RelativeOrientationSensor')
@staticInterop
class RelativeOrientationSensor implements OrientationSensor {
  external factory RelativeOrientationSensor(
      [OrientationSensorOptions sensorOptions]);
}

@JS()
@staticInterop
@anonymous
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues(
      {required JSArray? quaternion});
}

extension AbsoluteOrientationReadingValuesExtension
    on AbsoluteOrientationReadingValues {
  external set quaternion(JSArray? value);
  external JSArray? get quaternion;
}

@JS()
@staticInterop
@anonymous
class RelativeOrientationReadingValues
    implements AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}
