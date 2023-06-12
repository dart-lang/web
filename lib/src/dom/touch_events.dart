// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'uievents.dart';

typedef TouchType = String;

@JS()
@staticInterop
@anonymous
class TouchInit implements JSObject {
  external factory TouchInit({
    required int identifier,
    required EventTarget target,
    double clientX,
    double clientY,
    double screenX,
    double screenY,
    double pageX,
    double pageY,
    double radiusX,
    double radiusY,
    double rotationAngle,
    double force,
    double altitudeAngle,
    double azimuthAngle,
    TouchType touchType,
  });
}

extension TouchInitExtension on TouchInit {
  external set identifier(int value);
  external int get identifier;
  external set target(EventTarget value);
  external EventTarget get target;
  external set clientX(double value);
  external double get clientX;
  external set clientY(double value);
  external double get clientY;
  external set screenX(double value);
  external double get screenX;
  external set screenY(double value);
  external double get screenY;
  external set pageX(double value);
  external double get pageX;
  external set pageY(double value);
  external double get pageY;
  external set radiusX(double value);
  external double get radiusX;
  external set radiusY(double value);
  external double get radiusY;
  external set rotationAngle(double value);
  external double get rotationAngle;
  external set force(double value);
  external double get force;
  external set altitudeAngle(double value);
  external double get altitudeAngle;
  external set azimuthAngle(double value);
  external double get azimuthAngle;
  external set touchType(TouchType value);
  external TouchType get touchType;
}

@JS('Touch')
@staticInterop
class Touch implements JSObject {
  external factory Touch(TouchInit touchInitDict);
}

extension TouchExtension on Touch {
  external int get identifier;
  external EventTarget get target;
  external double get screenX;
  external double get screenY;
  external double get clientX;
  external double get clientY;
  external double get pageX;
  external double get pageY;
  external double get radiusX;
  external double get radiusY;
  external double get rotationAngle;
  external double get force;
  external double get altitudeAngle;
  external double get azimuthAngle;
  external TouchType get touchType;
}

@JS('TouchList')
@staticInterop
class TouchList implements JSObject {}

extension TouchListExtension on TouchList {
  external Touch? item(int index);
  external int get length;
}

@JS()
@staticInterop
@anonymous
class TouchEventInit implements EventModifierInit {
  external factory TouchEventInit({
    JSArray touches,
    JSArray targetTouches,
    JSArray changedTouches,
  });
}

extension TouchEventInitExtension on TouchEventInit {
  external set touches(JSArray value);
  external JSArray get touches;
  external set targetTouches(JSArray value);
  external JSArray get targetTouches;
  external set changedTouches(JSArray value);
  external JSArray get changedTouches;
}

@JS('TouchEvent')
@staticInterop
class TouchEvent implements UIEvent {
  external factory TouchEvent(
    String type, [
    TouchEventInit eventInitDict,
  ]);
}

extension TouchEventExtension on TouchEvent {
  external bool getModifierState(String keyArg);
  external TouchList get touches;
  external TouchList get targetTouches;
  external TouchList get changedTouches;
  external bool get altKey;
  external bool get metaKey;
  external bool get ctrlKey;
  external bool get shiftKey;
}
