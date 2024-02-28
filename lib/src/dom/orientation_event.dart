// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

/// The **`DeviceOrientationEvent`** interface of the
/// [Device Orientation Events] provides web developers with information from
/// the physical orientation of the device running the web page.
extension type DeviceOrientationEvent._(JSObject _) implements Event, JSObject {
  external factory DeviceOrientationEvent(
    String type, [
    DeviceOrientationEventInit eventInitDict,
  ]);

  external static JSPromise<JSString> requestPermission([bool absolute]);
  external num? get alpha;
  external num? get beta;
  external num? get gamma;
  external bool get absolute;
}
extension type DeviceOrientationEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory DeviceOrientationEventInit({
    num? alpha,
    num? beta,
    num? gamma,
    bool absolute,
  });

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
extension type DeviceMotionEventAcceleration._(JSObject _) implements JSObject {
  external num? get x;
  external num? get y;
  external num? get z;
}

/// A **`DeviceMotionEventRotationRate`** interface of the
/// [Device Orientation Events] provides information about the rate at which the
/// device is rotating around all three axes.
extension type DeviceMotionEventRotationRate._(JSObject _) implements JSObject {
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
extension type DeviceMotionEvent._(JSObject _) implements Event, JSObject {
  external factory DeviceMotionEvent(
    String type, [
    DeviceMotionEventInit eventInitDict,
  ]);

  external static JSPromise<JSString> requestPermission();
  external DeviceMotionEventAcceleration? get acceleration;
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;
  external DeviceMotionEventRotationRate? get rotationRate;
  external num get interval;
}
extension type DeviceMotionEventAccelerationInit._(JSObject _)
    implements JSObject {
  external factory DeviceMotionEventAccelerationInit({
    num? x,
    num? y,
    num? z,
  });

  external set x(num? value);
  external num? get x;
  external set y(num? value);
  external num? get y;
  external set z(num? value);
  external num? get z;
}
extension type DeviceMotionEventRotationRateInit._(JSObject _)
    implements JSObject {
  external factory DeviceMotionEventRotationRateInit({
    num? alpha,
    num? beta,
    num? gamma,
  });

  external set alpha(num? value);
  external num? get alpha;
  external set beta(num? value);
  external num? get beta;
  external set gamma(num? value);
  external num? get gamma;
}
extension type DeviceMotionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory DeviceMotionEventInit({
    DeviceMotionEventAccelerationInit acceleration,
    DeviceMotionEventAccelerationInit accelerationIncludingGravity,
    DeviceMotionEventRotationRateInit rotationRate,
    num interval,
  });

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
