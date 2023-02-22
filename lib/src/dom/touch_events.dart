// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'uievents.dart';

typedef TouchType = JSString;

@JS()
@staticInterop
@anonymous
class TouchInit {
  external factory TouchInit({
    required JSNumber identifier,
    required EventTarget target,
    JSNumber clientX = 0,
    JSNumber clientY = 0,
    JSNumber screenX = 0,
    JSNumber screenY = 0,
    JSNumber pageX = 0,
    JSNumber pageY = 0,
    JSNumber radiusX = 0,
    JSNumber radiusY = 0,
    JSNumber rotationAngle = 0,
    JSNumber force = 0,
    JSNumber altitudeAngle = 0,
    JSNumber azimuthAngle = 0,
    TouchType touchType = 'direct',
  });
}

extension TouchInitExtension on TouchInit {
  external set identifier(JSNumber value);
  external JSNumber get identifier;
  external set target(EventTarget value);
  external EventTarget get target;
  external set clientX(JSNumber value);
  external JSNumber get clientX;
  external set clientY(JSNumber value);
  external JSNumber get clientY;
  external set screenX(JSNumber value);
  external JSNumber get screenX;
  external set screenY(JSNumber value);
  external JSNumber get screenY;
  external set pageX(JSNumber value);
  external JSNumber get pageX;
  external set pageY(JSNumber value);
  external JSNumber get pageY;
  external set radiusX(JSNumber value);
  external JSNumber get radiusX;
  external set radiusY(JSNumber value);
  external JSNumber get radiusY;
  external set rotationAngle(JSNumber value);
  external JSNumber get rotationAngle;
  external set force(JSNumber value);
  external JSNumber get force;
  external set altitudeAngle(JSNumber value);
  external JSNumber get altitudeAngle;
  external set azimuthAngle(JSNumber value);
  external JSNumber get azimuthAngle;
  external set touchType(TouchType value);
  external TouchType get touchType;
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

@JS()
@staticInterop
@anonymous
class TouchEventInit extends EventModifierInit {
  external factory TouchEventInit({
    JSArray touches = const [],
    JSArray targetTouches = const [],
    JSArray changedTouches = const [],
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
class TouchEvent extends UIEvent {
  external factory TouchEvent();

  external factory TouchEvent.a1(JSString type);

  external factory TouchEvent.a2(
    JSString type,
    TouchEventInit eventInitDict,
  );
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
