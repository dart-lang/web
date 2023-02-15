// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/uievents.dart';

@JS('PointerEventInit')
@staticInterop
class PointerEventInit extends MouseEventInit {
  external factory PointerEventInit();
}

extension PointerEventInitExtension on PointerEventInit {}

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
