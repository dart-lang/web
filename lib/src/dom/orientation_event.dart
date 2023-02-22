// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS('DeviceOrientationEvent')
@staticInterop
class DeviceOrientationEvent extends Event {
  external factory DeviceOrientationEvent();

  external factory DeviceOrientationEvent.a1(JSString type);

  external factory DeviceOrientationEvent.a2(
    JSString type,
    DeviceOrientationEventInit eventInitDict,
  );

  external static JSPromise requestPermission();
}

extension DeviceOrientationEventExtension on DeviceOrientationEvent {
  external JSNumber? get alpha;
  external JSNumber? get beta;
  external JSNumber? get gamma;
  external JSBoolean get absolute;
}

@JS()
@staticInterop
@anonymous
class DeviceOrientationEventInit extends EventInit {
  external factory DeviceOrientationEventInit({
    JSNumber? alpha,
    JSNumber? beta,
    JSNumber? gamma,
    JSBoolean absolute = false,
  });
}

extension DeviceOrientationEventInitExtension on DeviceOrientationEventInit {
  external set alpha(JSNumber? value);
  external JSNumber? get alpha;
  external set beta(JSNumber? value);
  external JSNumber? get beta;
  external set gamma(JSNumber? value);
  external JSNumber? get gamma;
  external set absolute(JSBoolean value);
  external JSBoolean get absolute;
}

@JS('DeviceMotionEventAcceleration')
@staticInterop
class DeviceMotionEventAcceleration {
  external factory DeviceMotionEventAcceleration();
}

extension DeviceMotionEventAccelerationExtension
    on DeviceMotionEventAcceleration {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('DeviceMotionEventRotationRate')
@staticInterop
class DeviceMotionEventRotationRate {
  external factory DeviceMotionEventRotationRate();
}

extension DeviceMotionEventRotationRateExtension
    on DeviceMotionEventRotationRate {
  external JSNumber? get alpha;
  external JSNumber? get beta;
  external JSNumber? get gamma;
}

@JS('DeviceMotionEvent')
@staticInterop
class DeviceMotionEvent extends Event {
  external factory DeviceMotionEvent();

  external factory DeviceMotionEvent.a1(JSString type);

  external factory DeviceMotionEvent.a2(
    JSString type,
    DeviceMotionEventInit eventInitDict,
  );

  external static JSPromise requestPermission();
}

extension DeviceMotionEventExtension on DeviceMotionEvent {
  external DeviceMotionEventAcceleration? get acceleration;
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;
  external DeviceMotionEventRotationRate? get rotationRate;
  external JSNumber get interval;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventAccelerationInit {
  external factory DeviceMotionEventAccelerationInit({
    JSNumber? x,
    JSNumber? y,
    JSNumber? z,
  });
}

extension DeviceMotionEventAccelerationInitExtension
    on DeviceMotionEventAccelerationInit {
  external set x(JSNumber? value);
  external JSNumber? get x;
  external set y(JSNumber? value);
  external JSNumber? get y;
  external set z(JSNumber? value);
  external JSNumber? get z;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventRotationRateInit {
  external factory DeviceMotionEventRotationRateInit({
    JSNumber? alpha,
    JSNumber? beta,
    JSNumber? gamma,
  });
}

extension DeviceMotionEventRotationRateInitExtension
    on DeviceMotionEventRotationRateInit {
  external set alpha(JSNumber? value);
  external JSNumber? get alpha;
  external set beta(JSNumber? value);
  external JSNumber? get beta;
  external set gamma(JSNumber? value);
  external JSNumber? get gamma;
}

@JS()
@staticInterop
@anonymous
class DeviceMotionEventInit extends EventInit {
  external factory DeviceMotionEventInit({
    DeviceMotionEventAccelerationInit acceleration,
    DeviceMotionEventAccelerationInit accelerationIncludingGravity,
    DeviceMotionEventRotationRateInit rotationRate,
    JSNumber interval = 0,
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
  external set interval(JSNumber value);
  external JSNumber get interval;
}
