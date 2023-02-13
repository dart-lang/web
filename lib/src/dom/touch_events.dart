// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef TouchType = JSString;

@JS('TouchInit')
@staticInterop
class TouchInit {
  external factory TouchInit();
}

extension TouchInitExtension on TouchInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Touch')
@staticInterop
class Touch {
  external factory Touch();
  external factory Touch.a1(TouchInit touchInitDict);
}

extension TouchExtension on Touch {
  external JSNumber get identifier;
  external EventTarget get target;
  external JSNumber get screenX;
  external JSNumber get screenY;
  external JSNumber get clientX;
  external JSNumber get clientY;
  external JSNumber get pageX;
  external JSNumber get pageY;
  external JSNumber get radiusX;
  external JSNumber get radiusY;
  external JSNumber get rotationAngle;
  external JSNumber get force;
  external JSNumber get altitudeAngle;
  external JSNumber get azimuthAngle;
  external TouchType get touchType;
}

@JS('TouchList')
@staticInterop
class TouchList {
  external factory TouchList();
}

extension TouchListExtension on TouchList {
  external JSNumber get length;
  external Touch? item(JSNumber index);
}

@JS('TouchEventInit')
@staticInterop
class TouchEventInit extends EventModifierInit {
  external factory TouchEventInit();
}

extension TouchEventInitExtension on TouchEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('TouchEvent')
@staticInterop
class TouchEvent extends UIEvent {
  external factory TouchEvent();
  external factory TouchEvent.a1(JSString type);
  external factory TouchEvent.a1_1(JSString type, TouchEventInit eventInitDict);
}

extension TouchEventExtension on TouchEvent {
  external TouchList get touches;
  external TouchList get targetTouches;
  external TouchList get changedTouches;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean getModifierState(JSString keyArg);
}
