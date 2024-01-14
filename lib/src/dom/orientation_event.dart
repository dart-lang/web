// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

/// The **`DeviceOrientationEvent`** interface of the
/// [Device Orientation Events] provides web developers with information from
/// the physical orientation of the device running the web page.
@JS('DeviceOrientationEvent')
@staticInterop
class DeviceOrientationEvent implements Event {
  external factory DeviceOrientationEvent(
    String type, [
    DeviceOrientationEventInit eventInitDict,
  ]);

  external static JSPromise requestPermission();
}

extension DeviceOrientationEventExtension on DeviceOrientationEvent {
  external num? get alpha;
  external num? get beta;
  external num? get gamma;
  external bool get absolute;
}

@JS()
@staticInterop
@anonymous
class DeviceOrientationEventInit implements EventInit {
  external factory DeviceOrientationEventInit({
    num? alpha,
    num? beta,
    num? gamma,
    bool absolute,
  });
}

extension DeviceOrientationEventInitExtension on DeviceOrientationEventInit {
  external set alpha(num? value);
  external num? get alpha;
  external set beta(num? value);
  external num? get beta;
  external set gamma(num? value);
  external num? get gamma;
  external set absolute(bool value);
  external bool get absolute;
}

/// The **`DeviceMotionEventAcceleration`** interface of the
/// [Device Orientation Events] provides information about the amount of
/// acceleration the device is experiencing along all three axes.
@JS('DeviceMotionEventAcceleration')
@staticInterop
class DeviceMotionEventAcceleration {}

extension DeviceMotionEventAccelerationExtension
    on DeviceMotionEventAcceleration {
  external num? get x;
  external num? get y;
  external num? get z;
}

/// A **`DeviceMotionEventRotationRate`** interface of the
/// [Device Orientation Events] provides information about the rate at which the
/// device is rotating around all three axes.
@JS('DeviceMotionEventRotationRate')
@staticInterop
class DeviceMotionEventRotationRate {}

extension DeviceMotionEventRotationRateExtension
    on DeviceMotionEventRotationRate {
  external num? get alpha;
  external num? get beta;
  external num? get gamma;
}

/// The **`DeviceMotionEvent`** interface of the [Device Orientation Events]
/// provides web developers with information about the speed of changes for the
/// device's position and orientation.
///
/// > **Warning:** Currently, Firefox and Chrome do not handle the coordinates
/// > the same way. Take care about this while using them.
@JS('DeviceMotionEvent')
@staticInterop
class DeviceMotionEvent implements Event {
  external factory DeviceMotionEvent(
    String type, [
    DeviceMotionEventInit eventInitDict,
  ]);

  external static JSPromise requestPermission();
}

extension DeviceMotionEventExtension on DeviceMotionEvent {
  external DeviceMotionEventAcceleration? get acceleration;
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;
  external DeviceMotionEventRotationRate? get rotationRate;
  external num get interval;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventAccelerationInit {
  external factory DeviceMotionEventAccelerationInit({
    num? x,
    num? y,
    num? z,
  });
}

extension DeviceMotionEventAccelerationInitExtension
    on DeviceMotionEventAccelerationInit {
  external set x(num? value);
  external num? get x;
  external set y(num? value);
  external num? get y;
  external set z(num? value);
  external num? get z;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventRotationRateInit {
  external factory DeviceMotionEventRotationRateInit({
    num? alpha,
    num? beta,
    num? gamma,
  });
}

extension DeviceMotionEventRotationRateInitExtension
    on DeviceMotionEventRotationRateInit {
  external set alpha(num? value);
  external num? get alpha;
  external set beta(num? value);
  external num? get beta;
  external set gamma(num? value);
  external num? get gamma;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventInit implements EventInit {
  external factory DeviceMotionEventInit({
    DeviceMotionEventAccelerationInit acceleration,
    DeviceMotionEventAccelerationInit accelerationIncludingGravity,
    DeviceMotionEventRotationRateInit rotationRate,
    num interval,
  });
}

extension DeviceMotionEventInitExtension on DeviceMotionEventInit {
  external set acceleration(DeviceMotionEventAccelerationInit value);
  external DeviceMotionEventAccelerationInit get acceleration;
  external set accelerationIncludingGravity(
      DeviceMotionEventAccelerationInit value);
  external DeviceMotionEventAccelerationInit get accelerationIncludingGravity;
  external set rotationRate(DeviceMotionEventRotationRateInit value);
  external DeviceMotionEventRotationRateInit get rotationRate;
  external set interval(num value);
  external num get interval;
}
