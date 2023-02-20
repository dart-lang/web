// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'uievents.dart';

@JS()
@staticInterop
@anonymous
class PointerEventInit extends MouseEventInit {
  external factory PointerEventInit({
    JSNumber pointerId = 0,
    JSNumber width = 1,
    JSNumber height = 1,
    JSNumber pressure = 0,
    JSNumber tangentialPressure = 0,
    JSNumber tiltX,
    JSNumber tiltY,
    JSNumber twist = 0,
    JSNumber altitudeAngle,
    JSNumber azimuthAngle,
    JSString pointerType = '',
    JSBoolean isPrimary = false,
    JSArray coalescedEvents = const [],
    JSArray predictedEvents = const [],
  });
}

extension PointerEventInitExtension on PointerEventInit {
  external set pointerId(JSNumber value);
  external JSNumber get pointerId;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set pressure(JSNumber value);
  external JSNumber get pressure;
  external set tangentialPressure(JSNumber value);
  external JSNumber get tangentialPressure;
  external set tiltX(JSNumber value);
  external JSNumber get tiltX;
  external set tiltY(JSNumber value);
  external JSNumber get tiltY;
  external set twist(JSNumber value);
  external JSNumber get twist;
  external set altitudeAngle(JSNumber value);
  external JSNumber get altitudeAngle;
  external set azimuthAngle(JSNumber value);
  external JSNumber get azimuthAngle;
  external set pointerType(JSString value);
  external JSString get pointerType;
  external set isPrimary(JSBoolean value);
  external JSBoolean get isPrimary;
  external set coalescedEvents(JSArray value);
  external JSArray get coalescedEvents;
  external set predictedEvents(JSArray value);
  external JSArray get predictedEvents;
}

@JS('PointerEvent')
@staticInterop
class PointerEvent extends MouseEvent {
  external factory PointerEvent();

  external factory PointerEvent.a1(JSString type);

  external factory PointerEvent.a2(
    JSString type,
    PointerEventInit eventInitDict,
  );
}

extension PointerEventExtension on PointerEvent {
  external JSNumber get pointerId;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get pressure;
  external JSNumber get tangentialPressure;
  external JSNumber get tiltX;
  external JSNumber get tiltY;
  external JSNumber get twist;
  external JSNumber get altitudeAngle;
  external JSNumber get azimuthAngle;
  external JSString get pointerType;
  external JSBoolean get isPrimary;
  external JSArray getCoalescedEvents();
  external JSArray getPredictedEvents();
}
