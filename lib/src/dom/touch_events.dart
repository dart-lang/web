// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library touch_events;

import 'dart:js_interop';

import 'dom.dart';
import 'uievents.dart';

typedef TouchType = String;
extension type TouchInit._(JSObject _) implements JSObject {
  external factory TouchInit({
    required int identifier,
    required EventTarget target,
    num clientX,
    num clientY,
    num screenX,
    num screenY,
    num pageX,
    num pageY,
    num radiusX,
    num radiusY,
    num rotationAngle,
    num force,
    num altitudeAngle,
    num azimuthAngle,
    TouchType touchType,
  });

  external set identifier(int value);
  external int get identifier;
  external set target(EventTarget value);
  external EventTarget get target;
  external set clientX(num value);
  external num get clientX;
  external set clientY(num value);
  external num get clientY;
  external set screenX(num value);
  external num get screenX;
  external set screenY(num value);
  external num get screenY;
  external set pageX(num value);
  external num get pageX;
  external set pageY(num value);
  external num get pageY;
  external set radiusX(num value);
  external num get radiusX;
  external set radiusY(num value);
  external num get radiusY;
  external set rotationAngle(num value);
  external num get rotationAngle;
  external set force(num value);
  external num get force;
  external set altitudeAngle(num value);
  external num get altitudeAngle;
  external set azimuthAngle(num value);
  external num get azimuthAngle;
  external set touchType(TouchType value);
  external TouchType get touchType;
}
extension type Touch._(JSObject _) implements JSObject {
  external factory Touch(TouchInit touchInitDict);

  external int get identifier;
  external EventTarget get target;
  external num get screenX;
  external num get screenY;
  external num get clientX;
  external num get clientY;
  external num get pageX;
  external num get pageY;
  external num get radiusX;
  external num get radiusY;
  external num get rotationAngle;
  external num get force;
  external num get altitudeAngle;
  external num get azimuthAngle;
  external TouchType get touchType;
}
extension type TouchList._(JSObject _) implements JSObject {
  external Touch? item(int index);
  external int get length;
}
extension type TouchEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory TouchEventInit({
    JSArray touches,
    JSArray targetTouches,
    JSArray changedTouches,
  });

  external set touches(JSArray value);
  external JSArray get touches;
  external set targetTouches(JSArray value);
  external JSArray get targetTouches;
  external set changedTouches(JSArray value);
  external JSArray get changedTouches;
}
extension type TouchEvent._(JSObject _) implements UIEvent, JSObject {
  external factory TouchEvent(
    String type, [
    TouchEventInit eventInitDict,
  ]);

  external bool getModifierState(String keyArg);
  external TouchList get touches;
  external TouchList get targetTouches;
  external TouchList get changedTouches;
  external bool get altKey;
  external bool get metaKey;
  external bool get ctrlKey;
  external bool get shiftKey;
}
