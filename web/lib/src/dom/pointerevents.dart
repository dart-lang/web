// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'uievents.dart';

extension type PointerEventInit._(JSObject _)
    implements MouseEventInit, JSObject {
  external factory PointerEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    JSObject? sourceCapabilities,
    int which,
    bool ctrlKey,
    bool shiftKey,
    bool altKey,
    bool metaKey,
    bool modifierAltGraph,
    bool modifierCapsLock,
    bool modifierFn,
    bool modifierFnLock,
    bool modifierHyper,
    bool modifierNumLock,
    bool modifierScrollLock,
    bool modifierSuper,
    bool modifierSymbol,
    bool modifierSymbolLock,
    int screenX,
    int screenY,
    int clientX,
    int clientY,
    int button,
    int buttons,
    EventTarget? relatedTarget,
    num movementX,
    num movementY,
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

  external int get pointerId;
  external set pointerId(int value);
  external double get width;
  external set width(num value);
  external double get height;
  external set height(num value);
  external double get pressure;
  external set pressure(num value);
  external double get tangentialPressure;
  external set tangentialPressure(num value);
  external int get tiltX;
  external set tiltX(int value);
  external int get tiltY;
  external set tiltY(int value);
  external int get twist;
  external set twist(int value);
  external double get altitudeAngle;
  external set altitudeAngle(num value);
  external double get azimuthAngle;
  external set azimuthAngle(num value);
  external String get pointerType;
  external set pointerType(String value);
  external bool get isPrimary;
  external set isPrimary(bool value);
  external JSArray<PointerEvent> get coalescedEvents;
  external set coalescedEvents(JSArray<PointerEvent> value);
  external JSArray<PointerEvent> get predictedEvents;
  external set predictedEvents(JSArray<PointerEvent> value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent).
extension type PointerEvent._(JSObject _) implements MouseEvent, JSObject {
  external factory PointerEvent(
    String type, [
    PointerEventInit eventInitDict,
  ]);

  /// The **`getCoalescedEvents()`** method of the [PointerEvent] interface
  /// returns a sequence of `PointerEvent` instances that were coalesced
  /// (merged) into a single [Element.pointermove_event] or
  /// [Element.pointerrawupdate_event] event.
  /// Instead of a stream of many [Element.pointermove_event] events, user
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

  /// The **`pointerId`** read-only property of the
  /// [PointerEvent] interface is an identifier assigned to a given pointer
  /// event. The identifier is unique, being different from the identifiers of
  /// all other
  /// active pointer events. Since the value may be randomly generated, it is
  /// not guaranteed
  /// to convey any particular meaning.
  external int get pointerId;

  /// The **`width`** read-only property of the
  /// [PointerEvent] interface represents the width of the pointer's contact
  /// geometry along the x-axis, measured in CSS pixels. Depending on the source
  /// of the
  /// pointer device (such as a finger), for a given pointer, each event may
  /// produce a
  /// different value.
  ///
  /// If the input hardware cannot report the contact geometry to the browser,
  /// the width
  /// defaults to `1`.
  external double get width;

  /// The **`height`** read-only property of the
  /// [PointerEvent] interface represents the height of the pointer's contact
  /// geometry, along the y-axis (in CSS pixels). Depending on the source of the
  /// pointer
  /// device (for example a finger), for a given pointer, each event may produce
  /// a different
  /// value.
  ///
  /// If the input hardware cannot report the contact geometry to the browser,
  /// the height
  /// defaults to `1`.
  external double get height;

  /// The **`pressure`** read-only property of the
  /// [PointerEvent] interface indicates the normalized pressure of the pointer
  /// input.
  external double get pressure;

  /// The **`tangentialPressure`** read-only property of the
  /// [PointerEvent] interface represents the normalized tangential pressure of
  /// the pointer input (also known as barrel pressure or
  /// [cylinder stress](https://en.wikipedia.org/wiki/Cylinder_stress)).
  external double get tangentialPressure;

  /// The **`tiltX`** read-only property of the
  /// [PointerEvent] interface is the angle (in degrees) between the _Y-Z
  /// plane_ of the pointer and the screen. This property is typically only
  /// useful for a
  /// pen/stylus pointer type.
  ///
  /// For an illustration of this property see
  /// [Figure 2 in the specification](https://w3c.github.io/pointerevents/#dom-pointerevent-tiltx).
  external int get tiltX;

  /// The **`tiltY`** read-only property of the
  /// [PointerEvent] interface is the angle (in degrees) between the _X-Z
  /// plane_ of the pointer and the screen. This property is typically only
  /// useful for a
  /// pen/stylus pointer type.
  ///
  /// For an illustration of this property, see
  /// [Figure 3 in the specification](https://w3c.github.io/pointerevents/#dom-pointerevent-tilty).
  external int get tiltY;

  /// The **`twist`** read-only property of the
  /// [PointerEvent] interface represents the clockwise rotation of the pointer
  /// (e.g., pen stylus) around its major axis, in degrees.
  external int get twist;

  /// The **`pointerType`** read-only property of the
  /// [PointerEvent] interface indicates the device type (mouse, pen, or touch)
  /// that caused a given pointer event.
  external String get pointerType;

  /// The **`isPrimary`** read-only property of the
  /// [PointerEvent] interface indicates whether or not the pointer device that
  /// created the event is the _primary_ pointer. It returns `true` if the
  /// pointer that caused the event to be fired is the primary one and returns
  /// `false` otherwise.
  ///
  /// In a multi-pointer scenario (such as a touch screen that supports more
  /// than one touch
  /// point), this property is used to identify a _master pointer_ among the set
  /// of
  /// active pointers for each pointer type. Only a primary pointer will produce
  /// _compatibility mouse events_. Authors who desire only single-pointer
  /// interaction
  /// can achieve that by ignoring non-primary pointers.
  ///
  /// A pointer is considered primary if the pointer represents a mouse device.
  /// A pointer
  /// representing pen input is considered the primary pen input if its
  /// [Element.pointerdown_event] event was dispatched when no other active
  /// pointers representing
  /// pen input existed. A pointer representing touch input is considered the
  /// primary touch
  /// input if its [Element.pointerdown_event] event was dispatched when no
  /// other active pointers
  /// representing touch input existed.
  ///
  /// When two or more pointer device types are being used concurrently,
  /// multiple pointers
  /// (one for each [PointerEvent.pointerType]) are considered
  /// primary. For example, a touch contact and a mouse cursor moved
  /// simultaneously will
  /// produce pointers that are both considered primary. If there are multiple
  /// primary
  /// pointers, these pointers will all produce _compatibility mouse events_
  /// (see
  /// [Pointer_events] for more information about pointer, mouse and touch
  /// interaction).
  external bool get isPrimary;
}
