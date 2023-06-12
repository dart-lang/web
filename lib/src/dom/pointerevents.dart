// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'uievents.dart';

@JS()
@staticInterop
@anonymous
class PointerEventInit implements MouseEventInit {
  external factory PointerEventInit({
    int pointerId,
    double width,
    double height,
    double pressure,
    double tangentialPressure,
    int tiltX,
    int tiltY,
    int twist,
    double altitudeAngle,
    double azimuthAngle,
    String pointerType,
    bool isPrimary,
    JSArray coalescedEvents,
    JSArray predictedEvents,
  });
}

extension PointerEventInitExtension on PointerEventInit {
  external set pointerId(int value);
  external int get pointerId;
  external set width(double value);
  external double get width;
  external set height(double value);
  external double get height;
  external set pressure(double value);
  external double get pressure;
  external set tangentialPressure(double value);
  external double get tangentialPressure;
  external set tiltX(int value);
  external int get tiltX;
  external set tiltY(int value);
  external int get tiltY;
  external set twist(int value);
  external int get twist;
  external set altitudeAngle(double value);
  external double get altitudeAngle;
  external set azimuthAngle(double value);
  external double get azimuthAngle;
  external set pointerType(String value);
  external String get pointerType;
  external set isPrimary(bool value);
  external bool get isPrimary;
  external set coalescedEvents(JSArray value);
  external JSArray get coalescedEvents;
  external set predictedEvents(JSArray value);
  external JSArray get predictedEvents;
}

@JS('PointerEvent')
@staticInterop
class PointerEvent implements MouseEvent {
  external factory PointerEvent(
    String type, [
    PointerEventInit eventInitDict,
  ]);
}

extension PointerEventExtension on PointerEvent {
  external JSArray getCoalescedEvents();
  external JSArray getPredictedEvents();
  external int get pointerId;
  external double get width;
  external double get height;
  external double get pressure;
  external double get tangentialPressure;
  external int get tiltX;
  external int get tiltY;
  external int get twist;
  external double get altitudeAngle;
  external double get azimuthAngle;
  external String get pointerType;
  external bool get isPrimary;
}
