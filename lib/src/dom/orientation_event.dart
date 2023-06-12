// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

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
  external double? get alpha;
  external double? get beta;
  external double? get gamma;
  external bool get absolute;
}

@JS()
@staticInterop
@anonymous
class DeviceOrientationEventInit implements EventInit {
  external factory DeviceOrientationEventInit({
    double? alpha,
    double? beta,
    double? gamma,
    bool absolute,
  });
}

extension DeviceOrientationEventInitExtension on DeviceOrientationEventInit {
  external set alpha(double? value);
  external double? get alpha;
  external set beta(double? value);
  external double? get beta;
  external set gamma(double? value);
  external double? get gamma;
  external set absolute(bool value);
  external bool get absolute;
}

@JS('DeviceMotionEventAcceleration')
@staticInterop
class DeviceMotionEventAcceleration implements JSObject {}

extension DeviceMotionEventAccelerationExtension
    on DeviceMotionEventAcceleration {
  external double? get x;
  external double? get y;
  external double? get z;
}

@JS('DeviceMotionEventRotationRate')
@staticInterop
class DeviceMotionEventRotationRate implements JSObject {}

extension DeviceMotionEventRotationRateExtension
    on DeviceMotionEventRotationRate {
  external double? get alpha;
  external double? get beta;
  external double? get gamma;
}

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
  external double get interval;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventAccelerationInit implements JSObject {
  external factory DeviceMotionEventAccelerationInit({
    double? x,
    double? y,
    double? z,
  });
}

extension DeviceMotionEventAccelerationInitExtension
    on DeviceMotionEventAccelerationInit {
  external set x(double? value);
  external double? get x;
  external set y(double? value);
  external double? get y;
  external set z(double? value);
  external double? get z;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventRotationRateInit implements JSObject {
  external factory DeviceMotionEventRotationRateInit({
    double? alpha,
    double? beta,
    double? gamma,
  });
}

extension DeviceMotionEventRotationRateInitExtension
    on DeviceMotionEventRotationRateInit {
  external set alpha(double? value);
  external double? get alpha;
  external set beta(double? value);
  external double? get beta;
  external set gamma(double? value);
  external double? get gamma;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventInit implements EventInit {
  external factory DeviceMotionEventInit({
    DeviceMotionEventAccelerationInit acceleration,
    DeviceMotionEventAccelerationInit accelerationIncludingGravity,
    DeviceMotionEventRotationRateInit rotationRate,
    double interval,
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
  external set interval(double value);
  external double get interval;
}
