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

import 'dom.dart';

/// The **`DeviceOrientationEvent`** interface of the
/// [Device Orientation Events] provides web developers with information from
/// the physical orientation of the device running the web page.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent).
extension type DeviceOrientationEvent._(JSObject _) implements Event, JSObject {
  external factory DeviceOrientationEvent(
    String type, [
    DeviceOrientationEventInit eventInitDict,
  ]);

  /// The **`alpha`** read-only property of the [DeviceOrientationEvent]
  /// interface returns the rotation of the device around the Z axis; that is,
  /// the number of degrees by
  /// which the device is being twisted around the center of the screen.
  /// See
  /// [Orientation and motion data explained](https://developer.mozilla.org/en-US/docs/Web/API/Device_orientation_events/Orientation_and_motion_data_explained)
  /// for details.
  external double? get alpha;

  /// The **`beta`** read-only property of the [DeviceOrientationEvent]
  /// interface returns the rotation of the device around the X axis; that is,
  /// the number of degrees,
  /// ranged between -180 and 180, by which the device is tipped forward or
  /// backward.
  /// See
  /// [Orientation and motion data explained](https://developer.mozilla.org/en-US/docs/Web/API/Device_orientation_events/Orientation_and_motion_data_explained)
  /// for details.
  external double? get beta;

  /// The **`gamma`** read-only property of the [DeviceOrientationEvent]
  /// interface returns the rotation of the device around the Y axis; that is,
  /// the number of degrees,
  /// ranged between `-90` and `90`, by which the device is tilted left
  /// or right.
  /// See
  /// [Orientation and motion data explained](https://developer.mozilla.org/en-US/docs/Web/API/Device_orientation_events/Orientation_and_motion_data_explained)
  /// for details.
  external double? get gamma;

  /// The **`absolute`** read-only property of the [DeviceOrientationEvent]
  /// interface indicates whether or not the device is providing orientation
  /// data absolutely (that is,
  /// in reference to the Earth's coordinate frame) or using some arbitrary
  /// frame determined
  /// by the device.
  /// See
  /// [Orientation and motion data explained](https://developer.mozilla.org/en-US/docs/Web/API/Device_orientation_events/Orientation_and_motion_data_explained)
  /// for details.
  external bool get absolute;
}
extension type DeviceOrientationEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory DeviceOrientationEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    num? alpha,
    num? beta,
    num? gamma,
    bool absolute,
  });

  external double? get alpha;
  external set alpha(num? value);
  external double? get beta;
  external set beta(num? value);
  external double? get gamma;
  external set gamma(num? value);
  external bool get absolute;
  external set absolute(bool value);
}

/// The **`DeviceMotionEventAcceleration`** interface of the
/// [Device Orientation Events] provides information about the amount of
/// acceleration the device is experiencing along all three axes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEventAcceleration).
extension type DeviceMotionEventAcceleration._(JSObject _) implements JSObject {
  /// The **`x`** read-only property of the [DeviceMotionEventAcceleration]
  /// interface indicates the amount of acceleration that occurred along the X
  /// axis in a
  /// [`DeviceMotionEventAcceleration`](https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEventAcceleration)
  /// object.
  external double? get x;

  /// The **`y`** read-only property of the [DeviceMotionEventAcceleration]
  /// interface indicates the amount of acceleration that occurred along the Y
  /// axis in a
  /// [`DeviceMotionEventAcceleration`](https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEventAcceleration)
  /// object.
  external double? get y;

  /// The **`z`** read-only property of the [DeviceMotionEventAcceleration]
  /// interface indicates the amount of acceleration that occurred along the Z
  /// axis in a
  /// [`DeviceMotionEventAcceleration`](https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEventAcceleration)
  /// object.
  external double? get z;
}

/// A **`DeviceMotionEventRotationRate`** interface of the
/// [Device Orientation Events] provides information about the rate at which the
/// device is rotating around all three axes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEventRotationRate).
extension type DeviceMotionEventRotationRate._(JSObject _) implements JSObject {
  /// The **`alpha`** read-only property of the [DeviceMotionEventRotationRate]
  /// interface indicates the rate of rotation around the Z axis, in degrees per
  /// second.
  external double? get alpha;

  /// The **`beta`** read-only property of the [DeviceMotionEventRotationRate]
  /// interface indicates the rate of rotation around the X axis, in degrees per
  /// second.
  external double? get beta;

  /// The **`gamma`** read-only property of the [DeviceMotionEventRotationRate]
  /// interface indicates the rate of rotation around the Y axis, in degrees per
  /// second.
  external double? get gamma;
}

/// The **`DeviceMotionEvent`** interface of the [Device Orientation Events]
/// provides web developers with information about the speed of changes for the
/// device's position and orientation.
///
/// > **Warning:** Currently, Firefox and Chrome do not handle the coordinates
/// > the same way. Take care about this while using them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent).
extension type DeviceMotionEvent._(JSObject _) implements Event, JSObject {
  external factory DeviceMotionEvent(
    String type, [
    DeviceMotionEventInit eventInitDict,
  ]);

  /// The **`acceleration`** read-only property of the [DeviceMotionEvent]
  /// interface returns the amount of acceleration recorded by
  /// the device, in [meters per second squared
  /// (m/s²)](https://en.wikipedia.org/wiki/Meter_per_second_squared).
  /// The acceleration value does not include the effect of
  /// the gravity force, in contrast to
  /// [DeviceMotionEvent.accelerationIncludingGravity].
  ///
  /// > **Note:** If the hardware doesn't know how to remove gravity from the
  /// > acceleration data, this value may not be present in the
  /// > [DeviceMotionEvent]. In this situation, you'll need to use
  /// > [DeviceMotionEvent.accelerationIncludingGravity] instead.
  external DeviceMotionEventAcceleration? get acceleration;

  /// The **`accelerationIncludingGravity`** read-only property of the
  /// [DeviceMotionEvent] interface returns the
  /// amount of acceleration recorded by the device, in [meters per second
  /// squared (m/s²)](https://en.wikipedia.org/wiki/Meter_per_second_squared).
  /// Unlike [DeviceMotionEvent.acceleration]
  /// which compensates for the influence of gravity, its value is the sum of
  /// the acceleration
  /// of the device as induced by the user and an acceleration equal and
  /// opposite to that
  /// caused by gravity. In other words, it measures the
  /// [g-force](https://en.wikipedia.org/wiki/G-Force). In practice, this value
  /// represents
  /// the raw data measured by an
  /// [accelerometer](https://en.wikipedia.org/wiki/Accelerometer).
  ///
  /// This value is not typically as useful as [DeviceMotionEvent.acceleration],
  /// but may be the only value available on devices that aren't able to remove
  /// gravity from
  /// the acceleration data, such as on devices that don't have a gyroscope.
  ///
  /// > **Note:** `accelerationIncludingGravity`'s name can be misleading. This
  /// > property represents acceleration including _the effects of_ gravity. For
  /// > example, if a device is lying flat on a horizontal surface with the
  /// > screen pointing up, gravity would be -9.8 along the Z axis, while
  /// > `acceleration.z` would be 0 and `accelerationIncludingGravity.z` would
  /// > be 9.8. Similarly, if a device is in free fall with its screen
  /// > horizontal and pointing up, gravity would be -9.8 along the Z axis,
  /// > while `acceleration.z` would be -9.8 and
  /// > `accelerationIncludingGravity.z` would be 0.
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;

  /// The **`rotationRate`** read-only property of the [DeviceMotionEvent]
  /// interface returns the rate at which the device is rotating around each of
  /// its axes in degrees per
  /// second.
  ///
  /// > **Note:** If the hardware isn't capable of providing this
  /// > information, this property returns `null`.
  external DeviceMotionEventRotationRate? get rotationRate;

  /// The **`interval`** read-only property of the [DeviceMotionEvent] interface
  /// returns the interval, in milliseconds, at which data is obtained from the
  /// underlying
  /// hardware. You can use this to determine the granularity of motion events.
  external double get interval;
}
extension type DeviceMotionEventAccelerationInit._(JSObject _)
    implements JSObject {
  external factory DeviceMotionEventAccelerationInit({
    num? x,
    num? y,
    num? z,
  });

  external double? get x;
  external set x(num? value);
  external double? get y;
  external set y(num? value);
  external double? get z;
  external set z(num? value);
}
extension type DeviceMotionEventRotationRateInit._(JSObject _)
    implements JSObject {
  external factory DeviceMotionEventRotationRateInit({
    num? alpha,
    num? beta,
    num? gamma,
  });

  external double? get alpha;
  external set alpha(num? value);
  external double? get beta;
  external set beta(num? value);
  external double? get gamma;
  external set gamma(num? value);
}
extension type DeviceMotionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory DeviceMotionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    DeviceMotionEventAccelerationInit acceleration,
    DeviceMotionEventAccelerationInit accelerationIncludingGravity,
    DeviceMotionEventRotationRateInit rotationRate,
    num interval,
  });

  external DeviceMotionEventAccelerationInit get acceleration;
  external set acceleration(DeviceMotionEventAccelerationInit value);
  external DeviceMotionEventAccelerationInit get accelerationIncludingGravity;
  external set accelerationIncludingGravity(
      DeviceMotionEventAccelerationInit value);
  external DeviceMotionEventRotationRateInit get rotationRate;
  external set rotationRate(DeviceMotionEventRotationRateInit value);
  external double get interval;
  external set interval(num value);
}
