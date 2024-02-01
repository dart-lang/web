// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library orientation_event;

import 'dart:js_interop';

import 'dom.dart';

extension type DeviceOrientationEvent._(JSObject _) implements Event, JSObject {
  external factory DeviceOrientationEvent(
    String type, [
    DeviceOrientationEventInit eventInitDict,
  ]);

  external static JSPromise requestPermission();
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
extension type DeviceMotionEventAcceleration._(JSObject _) implements JSObject {
  external num? get x;
  external num? get y;
  external num? get z;
}
extension type DeviceMotionEventRotationRate._(JSObject _) implements JSObject {
  external num? get alpha;
  external num? get beta;
  external num? get gamma;
}
extension type DeviceMotionEvent._(JSObject _) implements Event, JSObject {
  external factory DeviceMotionEvent(
    String type, [
    DeviceMotionEventInit eventInitDict,
  ]);

  external static JSPromise requestPermission();
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
