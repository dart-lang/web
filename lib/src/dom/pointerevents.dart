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

import 'uievents.dart';

extension type PointerEventInit._(JSObject _)
    implements MouseEventInit, JSObject {
  external factory PointerEventInit({
    int pointerId,
    num width,
    num height,
    num pressure,
    num tangentialPressure,
    int tiltX,
    int tiltY,
    int twist,
    num altitudeAngle,
    num azimuthAngle,
    String pointerType,
    bool isPrimary,
    JSArray<PointerEvent> coalescedEvents,
    JSArray<PointerEvent> predictedEvents,
  });

  external set pointerId(int value);
  external int get pointerId;
  external set width(num value);
  external num get width;
  external set height(num value);
  external num get height;
  external set pressure(num value);
  external num get pressure;
  external set tangentialPressure(num value);
  external num get tangentialPressure;
  external set tiltX(int value);
  external int get tiltX;
  external set tiltY(int value);
  external int get tiltY;
  external set twist(int value);
  external int get twist;
  external set altitudeAngle(num value);
  external num get altitudeAngle;
  external set azimuthAngle(num value);
  external num get azimuthAngle;
  external set pointerType(String value);
  external String get pointerType;
  external set isPrimary(bool value);
  external bool get isPrimary;
  external set coalescedEvents(JSArray<PointerEvent> value);
  external JSArray<PointerEvent> get coalescedEvents;
  external set predictedEvents(JSArray<PointerEvent> value);
  external JSArray<PointerEvent> get predictedEvents;
}

/// The **`PointerEvent`** interface represents the state of a DOM event
/// produced by a pointer such as the geometry of the contact point, the device
/// type that generated the event, the amount of pressure that was applied on
/// the contact surface, etc.
///
/// A _pointer_ is a hardware agnostic representation of input devices (such as
/// a mouse, pen or contact point on a touch-enable surface). The pointer can
/// target a specific coordinate (or set of coordinates) on the contact surface
/// such as a screen.
///
/// A pointer's _hit test_ is the process a browser uses to determine the target
/// element for a pointer event. Typically, this is determined by considering
/// the pointer's location and also the visual layout of elements in a document
/// on screen media.
extension type PointerEvent._(JSObject _) implements MouseEvent, JSObject {
  external factory PointerEvent(
    String type, [
    PointerEventInit eventInitDict,
  ]);

  /// The **`getCoalescedEvents()`** method of the [PointerEvent] interface
  /// returns a sequence of `PointerEvent` instances that were coalesced
  /// (merged) into a single [Element/pointermove_event] or
  /// [Element/pointerrawupdate_event] event.
  /// Instead of a stream of many [Element/pointermove_event] events, user
  /// agents coalesce multiple updates into a single event.
  /// This helps with performance as the user agent has less event handling to
  /// perform, but there is a reduction in the granularity and accuracy when
  /// tracking, especially with fast and large movements.
  ///
  /// The **`getCoalescedEvents()`** method lets applications access all
  /// un-coalesced position changes for precise handling of pointer movement
  /// data where necessary.
  /// Un-coalesced position changes are desirable in drawing applications, for
  /// instance, where having access to all events helps to build smoother curves
  /// that better match the movement of a pointer.
  ///
  /// For an illustration of coalesced events, see
  /// [Figure 7 in the specification](https://w3c.github.io/pointerevents/#figure_coalesced).
  external JSArray<PointerEvent> getCoalescedEvents();

  /// The **`getPredictedEvents()`** method of the [PointerEvent] interface
  /// returns a sequence of `PointerEvent` instances that are estimated future
  /// pointer positions.
  /// How the predicted positions are calculated depends on the user agent, but
  /// they are based on past points, current velocity, and trajectory.
  ///
  /// Applications can use the predicted events to "draw ahead" to a predicted
  /// position which may reduce perceived latency depending on the application's
  /// interpretation of the predicted events and the use case.
  ///
  /// For an illustration of predicted events, see
  /// [Figure 8 in the specification](https://w3c.github.io/pointerevents/#figure_predicted).
  external JSArray<PointerEvent> getPredictedEvents();
  external int get pointerId;
  external num get width;
  external num get height;
  external num get pressure;
  external num get tangentialPressure;
  external int get tiltX;
  external int get tiltY;
  external int get twist;
  external num get altitudeAngle;
  external num get azimuthAngle;
  external String get pointerType;
  external bool get isPrimary;
}
