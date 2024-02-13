// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

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

/// The **`Touch`** interface represents a single contact point on a
/// touch-sensitive device. The contact point is commonly a finger or stylus and
/// the device may be a touchscreen or trackpad.
///
/// The [Touch.radiusX], [Touch.radiusY], and [Touch.rotationAngle] describe the
/// area of contact between the user and the screen, the _touch area_. This can
/// be helpful when dealing with imprecise pointing devices such as fingers.
/// These values are set to describe an ellipse that as closely as possible
/// matches the entire area of contact (such as the user's fingertip).
///
/// > **Note:** Many of the properties' values are hardware-dependent; for
/// > example, if the device doesn't have a way to detect the amount of pressure
/// > placed on the surface, the `force` value will always be 0. This may also
/// > be the case for `radiusX` and `radiusY`; if the hardware reports only a
/// > single point, these values will be 1.
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

/// The **`TouchList`** interface represents a list of contact points on a touch
/// surface. For example, if the user has three fingers on the touch surface
/// (such as a screen or trackpad), the corresponding `TouchList` object would
/// have one [Touch] object for each finger, for a total of three entries.
///
/// > **Note:** This interface was an
/// > [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// > and only continues to be supported to not break code that's already using
/// > it. Modern APIs use types that wrap around ECMAScript array types instead,
/// > so you can treat them like ECMAScript arrays, and at the same time impose
/// > additional semantics on their usage (such as making their items
/// > read-only).
extension type TouchList._(JSObject _) implements JSObject {
  /// The **`item()`** method returns the [Touch]
  /// object at the specified index in the [TouchList].
  external Touch? item(int index);
  external int get length;
}
extension type TouchEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory TouchEventInit({
    JSArray<Touch> touches,
    JSArray<Touch> targetTouches,
    JSArray<Touch> changedTouches,
  });

  external set touches(JSArray<Touch> value);
  external JSArray<Touch> get touches;
  external set targetTouches(JSArray<Touch> value);
  external JSArray<Touch> get targetTouches;
  external set changedTouches(JSArray<Touch> value);
  external JSArray<Touch> get changedTouches;
}

/// The **`TouchEvent`** interface represents an [UIEvent] which is sent when
/// the state of contacts with a touch-sensitive surface changes. This surface
/// can be a touch screen or trackpad, for example. The event can describe one
/// or more points of contact with the screen and includes support for detecting
/// movement, addition and removal of contact points, and so forth.
///
/// Touches are represented by the [Touch] object; each touch is described by a
/// position, size and shape, amount of pressure, and target element. Lists of
/// touches are represented by [TouchList] objects.
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
