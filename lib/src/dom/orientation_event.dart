// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';

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

@JS('DeviceOrientationEventInit')
@staticInterop
class DeviceOrientationEventInit extends EventInit {
  external factory DeviceOrientationEventInit();
}

extension DeviceOrientationEventInitExtension on DeviceOrientationEventInit {}

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

@JS('DeviceMotionEventAccelerationInit')
@staticInterop
class DeviceMotionEventAccelerationInit {
  external factory DeviceMotionEventAccelerationInit();
}

extension DeviceMotionEventAccelerationInitExtension
    on DeviceMotionEventAccelerationInit {}

@JS('DeviceMotionEventRotationRateInit')
@staticInterop
class DeviceMotionEventRotationRateInit {
  external factory DeviceMotionEventRotationRateInit();
}

extension DeviceMotionEventRotationRateInitExtension
    on DeviceMotionEventRotationRateInit {}

@JS('DeviceMotionEventInit')
@staticInterop
class DeviceMotionEventInit extends EventInit {
  external factory DeviceMotionEventInit();
}

extension DeviceMotionEventInitExtension on DeviceMotionEventInit {}
