// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'input_device_capabilities.dart';
import 'uievents.dart';

/// The **`MouseEvent`** interface represents events that occur due to the user
/// interacting with a pointing device (such as a mouse).
/// Common events using this interface include [Element.click_event],
/// [Element.dblclick_event], [Element.mouseup_event],
/// [Element.mousedown_event].
///
/// `MouseEvent` derives from [UIEvent], which in turn derives from [Event].
/// Though the [MouseEvent.initMouseEvent] method is kept for backward
/// compatibility, creating of a `MouseEvent` object should be done using the
/// [MouseEvent.MouseEvent] constructor.
///
/// Several more specific events are based on `MouseEvent`, including
/// [WheelEvent], [DragEvent], and [PointerEvent].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent).
extension type MouseEvent._(JSObject _) implements UIEvent, JSObject {
  external factory MouseEvent(
    String type, [
    MouseEventInit eventInitDict,
  ]);

  /// The **`MouseEvent.getModifierState()`** method returns the current state
  /// of the specified modifier key: `true` if the modifier is active (i.e., the
  /// modifier key is pressed or locked), otherwise, `false`.
  ///
  /// See [KeyboardEvent.getModifierState] for details.
  external bool getModifierState(String keyArg);

  /// The **`MouseEvent.initMouseEvent()`** method initializes the
  /// value of a mouse event once it's been created (normally using the
  /// [Document.createEvent] method).
  ///
  /// > [!WARNING]
  /// > Do not use this method anymore as it is deprecated.
  /// >
  /// > Instead use specific event constructors, like [MouseEvent.MouseEvent].
  /// > The page on
  /// > [Creating and triggering events](https://developer.mozilla.org/en-US/docs/Web/Events/Creating_and_triggering_events)
  /// > gives more information about the way to use these.
  ///
  /// Events initialized in this way must have been created with the
  /// [Document.createEvent] method.
  /// This method must be called to set the event
  /// before it is dispatched, using [EventTarget.dispatchEvent].
  external void initMouseEvent(
    String typeArg, [
    bool bubblesArg,
    bool cancelableArg,
    Window? viewArg,
    int detailArg,
    int screenXArg,
    int screenYArg,
    int clientXArg,
    int clientYArg,
    bool ctrlKeyArg,
    bool altKeyArg,
    bool shiftKeyArg,
    bool metaKeyArg,
    int buttonArg,
    EventTarget? relatedTargetArg,
  ]);

  /// The **`screenX`** read-only property of the [MouseEvent] interface
  /// provides the horizontal coordinate (offset) of the mouse pointer in
  /// [screen coordinates](https://developer.mozilla.org/en-US/docs/Web/CSS/CSSOM_view/Coordinate_systems#screen).
  ///
  /// > [!NOTE]
  /// > In a multiscreen environment, screens aligned horizontally will be
  /// > treated as a single device, and so the range of the `screenX` value will
  /// > increase to the combined width of the screens.
  external int get screenX;

  /// The **`screenY`** read-only property of the [MouseEvent] interface
  /// provides the vertical coordinate (offset) of the mouse pointer in
  /// [screen coordinates](https://developer.mozilla.org/en-US/docs/Web/CSS/CSSOM_view/Coordinate_systems#screen).
  external int get screenY;

  /// The **`clientX`** read-only property of the [MouseEvent] interface
  /// provides the horizontal coordinate within the application's  at which the
  /// event occurred (as opposed to the coordinate within the page).
  ///
  /// For example, clicking on the left edge of the viewport will always result
  /// in a mouse event with a `clientX` value of `0`, regardless of whether the
  /// page is scrolled horizontally.
  external int get clientX;

  /// The **`clientY`** read-only property of the [MouseEvent] interface
  /// provides the vertical coordinate within the application's  at which the
  /// event occurred (as opposed to the coordinate within the page).
  ///
  /// For example, clicking on the top edge of the viewport will always result
  /// in a mouse event with a `clientY` value of `0`, regardless of whether the
  /// page is scrolled vertically.
  external int get clientY;

  /// The **`MouseEvent.layerX`** read-only property returns the
  /// horizontal coordinate of the event relative to the current layer.
  ///
  /// This property takes scrolling of the page into account and returns a value
  /// relative to
  /// the whole of the document unless the event occurs inside a positioned
  /// element, where the
  /// returned value is relative to the top left of the positioned element.
  external int get layerX;

  /// The **`MouseEvent.layerY`** read-only property returns the
  /// vertical coordinate of the event relative to the current layer.
  ///
  /// This property takes scrolling of the page into account, and returns a
  /// value relative to
  /// the whole of the document, unless the event occurs inside a positioned
  /// element, where
  /// the returned value is relative to the top left of the positioned element.
  external int get layerY;

  /// The **`MouseEvent.ctrlKey`** read-only property is a boolean value that
  /// indicates whether the <kbd>ctrl</kbd> key was pressed or not when a given
  /// mouse event occurs.
  ///
  /// On Macintosh keyboards, this key is labeled the <kbd>control</kbd> key.
  /// Also, note that on a Mac, a click combined with the <kbd>control</kbd> key
  /// is intercepted by the operating system and used to open a context menu, so
  /// `ctrlKey` is not detectable on click events.
  external bool get ctrlKey;

  /// The **`MouseEvent.shiftKey`** read-only property is a boolean value that
  /// indicates whether the <kbd>shift</kbd> key was pressed or not when a given
  /// mouse event occurs.
  external bool get shiftKey;

  /// The **`MouseEvent.altKey`** read-only property is a boolean value that
  /// indicates whether the <kbd>alt</kbd> key was pressed or not when a given
  /// mouse event occurs.
  ///
  /// Be aware that the browser can't always detect the <kbd>alt</kbd> key on
  /// some operating systems.
  /// On some Linux variants, for example, a left mouse click combined with the
  /// <kbd>alt</kbd> key is used to move or resize windows.
  ///
  /// > [!NOTE]
  /// > On Macintosh keyboards, this key is also known as the <kbd>option</kbd>
  /// > key.
  external bool get altKey;

  /// The **`MouseEvent.metaKey`** read-only property is a boolean value that
  /// indicates whether the <kbd>meta</kbd> key was pressed or not when a given
  /// mouse event occurs.
  ///
  /// Be aware that many operating systems bind special functionality to the
  /// <kbd>meta</kbd> key, so this property may be `false` even when the key is
  /// actually pressed.
  /// On Windows, for example, this key may open the Start menu.
  ///
  /// > [!NOTE]
  /// > On Macintosh keyboards, this key is the <kbd>command</kbd> key
  /// > (<kbd>⌘</kbd>).
  /// > On Windows keyboards, this key is the Windows key (<kbd>⊞</kbd>).
  external bool get metaKey;

  /// The **`MouseEvent.button`** read-only property indicates which button was
  /// pressed on the mouse to trigger the event.
  ///
  /// This property only guarantees to indicate which buttons are pressed during
  /// events caused by pressing or releasing one or multiple buttons.
  /// As such, it is not reliable for events such as [Element.mouseenter_event],
  /// [Element.mouseleave_event], [Element.mouseover_event],
  /// [Element.mouseout_event], or [Element.mousemove_event].
  ///
  /// Users may change the configuration of buttons on their pointing device so
  /// that if an event's button property is zero, it may not have been caused by
  /// the button that is physically left–most on the pointing device; however,
  /// it should behave as if the left button was clicked in the standard button
  /// layout.
  ///
  /// > [!NOTE]
  /// > Do not confuse this property with the [MouseEvent.buttons] property,
  /// > which indicates which buttons are pressed for all mouse events types.
  external int get button;

  /// The **`MouseEvent.buttons`** read-only property indicates which buttons
  /// are pressed on the mouse (or other input device) when a mouse event is
  /// triggered.
  ///
  /// Each button that can be pressed is represented by a given number (see
  /// below).
  /// If more than one button is pressed, the button values are added together
  /// to produce a new number.
  /// For example, if the secondary (`2`) and auxiliary (`4`) buttons are
  /// pressed simultaneously, the value is `6` (i.e., `2 + 4`).
  ///
  /// > [!NOTE]
  /// > Do not confuse this property with the [MouseEvent.button] property.
  /// > The `MouseEvent.buttons` property indicates the state of buttons pressed
  /// > during any kind of mouse event,
  /// > while the [MouseEvent.button] property only guarantees the correct value
  /// > for mouse events caused by pressing or releasing one or multiple
  /// > buttons.
  external int get buttons;

  /// The **`MouseEvent.relatedTarget`** read-only property is the secondary
  /// target for the mouse event, if there is one.
  ///
  /// That is:
  ///
  /// <table class="no-markdown">
  ///   <thead>
  ///     <tr>
  ///       <th>Event name</th>
  ///       <th><code>target</code></th>
  ///       <th><code>relatedTarget</code></th>
  ///     </tr>
  ///   </thead>
  ///   <tbody>
  ///     <tr>
  ///       <td>[Element.mouseenter_event]</td>
  ///       <td>
  /// The [EventTarget] the pointing device entered to
  ///       </td>
  ///       <td>
  /// The [EventTarget] the pointing device exited from
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[Element.mouseleave_event]</td>
  ///       <td>
  /// The [EventTarget] the pointing device exited from
  ///       </td>
  ///       <td>
  /// The [EventTarget] the pointing device entered to
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[Element.mouseout_event]</td>
  ///       <td>
  /// The [EventTarget] the pointing device exited from
  ///       </td>
  ///       <td>
  /// The [EventTarget] the pointing device entered to
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[Element.mouseover_event]</td>
  ///       <td>
  /// The [EventTarget] the pointing device entered to
  ///       </td>
  ///       <td>
  /// The [EventTarget] the pointing device exited from
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[HTMLElement.dragenter_event]</td>
  ///       <td>
  /// The [EventTarget] the pointing device entered to
  ///       </td>
  ///       <td>
  /// The [EventTarget] the pointing device exited from
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[HTMLElement.dragleave_event]</td>
  ///       <td>
  /// The [EventTarget] the pointing device exited from
  ///       </td>
  ///       <td>
  /// The [EventTarget] the pointing device entered to
  ///       </td>
  ///     </tr>
  ///   </tbody>
  /// </table>
  ///
  /// For events with no secondary target, `relatedTarget` returns
  /// `null`.
  ///
  /// [FocusEvent.relatedTarget] is a similar property for focus events.
  external EventTarget? get relatedTarget;

  /// The **`pageX`** read-only property of the [MouseEvent] interface returns
  /// the X (horizontal) coordinate (in pixels) at which the mouse was clicked,
  /// relative to the left edge of the entire document.
  /// This includes any portion of the document not currently visible.
  ///
  /// Being based on the edge of the document as it is, this property takes into
  /// account any horizontal scrolling of the page.
  /// For example, if the page is scrolled such that 200 pixels of the left side
  /// of the document are scrolled out of view, and the mouse is clicked 100
  /// pixels inward from the left edge of the view, the value returned by
  /// `pageX` will be 300.
  ///
  /// Originally, this property was defined as a `long` integer. The
  /// [CSSOM View Module](https://developer.mozilla.org/en-US/docs/Web/CSS/CSSOM_view)
  /// redefined it as a
  /// `double` float. See the [Browser compatibility](#browser_compatibility)
  /// section for
  /// details.
  ///
  /// See
  /// [Coordinate systems](https://developer.mozilla.org/en-US/docs/Web/CSS/CSSOM_view/Coordinate_systems#page)
  /// for additional information about coordinates specified in this fashion.
  external double get pageX;

  /// The **`pageY`** read-only property of the [MouseEvent] interface returns
  /// the Y (vertical) coordinate (in pixels) at which the mouse was clicked,
  /// relative to the top edge of the entire document.
  /// This includes any portion of the document not currently visible.
  ///
  /// See [MouseEvent.pageX] for more information.
  external double get pageY;

  /// The **`MouseEvent.x`** property is an alias for the [MouseEvent.clientX]
  /// property.
  external double get x;

  /// The **`MouseEvent.y`** property is an alias for the [MouseEvent.clientY]
  /// property.
  external double get y;

  /// The **`offsetX`** read-only property of the [MouseEvent] interface
  /// provides the offset in the X coordinate of the mouse pointer between that
  /// event and the padding edge of the target node.
  external double get offsetX;

  /// The **`offsetY`** read-only property of the [MouseEvent] interface
  /// provides the offset in the Y coordinate of the mouse pointer between that
  /// event and the padding edge of the target node.
  external double get offsetY;

  /// The **`movementX`** read-only property of the [MouseEvent] interface
  /// provides the difference in the X coordinate of the mouse pointer between
  /// the given event and the previous [Element.mousemove_event] event.
  /// In other words, the value of the property is computed like this:
  /// `currentEvent.movementX = currentEvent.screenX - previousEvent.screenX`.
  ///
  /// > [!WARNING]
  /// > Browsers [use different units for `movementX` and
  /// > [MouseEvent.screenX]](https://github.com/w3c/pointerlock/issues/42) than
  /// > what the specification defines. Depending on the browser and operating
  /// > system, the `movementX` units may be a physical pixel, a logical pixel,
  /// > or a CSS pixel. You may want to avoid the movement properties, and
  /// > instead calculate the delta between the current client values
  /// > ([MouseEvent.screenX], [MouseEvent.screenY]) and the previous client
  /// > values.
  external double get movementX;

  /// The **`movementY`** read-only property of the [MouseEvent] interface
  /// provides the difference in the Y coordinate of the mouse pointer between
  /// the given event and the previous [Element.mousemove_event] event.
  /// In other words, the value of the property is computed like this:
  /// `currentEvent.movementY = currentEvent.screenY - previousEvent.screenY`.
  ///
  /// > [!WARNING]
  /// > Browsers [use different units for `movementY` and
  /// > [MouseEvent.screenY]](https://github.com/w3c/pointerlock/issues/42) than
  /// > what the specification defines. Depending on the browser and operating
  /// > system, the `movementY` units may be a physical pixel, a logical pixel,
  /// > or a CSS pixel. You may want to avoid the movement properties, and
  /// > instead calculate the delta between the current client values
  /// > ([MouseEvent.screenX], [MouseEvent.screenY]) and the previous client
  /// > values.
  external double get movementY;
}
extension type MouseEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory MouseEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
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
  });

  external int get screenX;
  external set screenX(int value);
  external int get screenY;
  external set screenY(int value);
  external int get clientX;
  external set clientX(int value);
  external int get clientY;
  external set clientY(int value);
  external int get button;
  external set button(int value);
  external int get buttons;
  external set buttons(int value);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? value);
  external double get movementX;
  external set movementX(num value);
  external double get movementY;
  external set movementY(num value);
}
extension type PointerEventInit._(JSObject _)
    implements MouseEventInit, JSObject {
  external factory PointerEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
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
    int persistentDeviceId,
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
  external int get persistentDeviceId;
  external set persistentDeviceId(int value);
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
  ///
  /// > [!NOTE]
  /// > The `pointerId` property is implemented inconsistently across browsers
  /// > and does not always persist for each ink stroke or interaction with the
  /// > screen. For a reliable way of identifying multiple pointing devices on a
  /// > screen simultaneously, see [PointerEvent.persistentDeviceId].
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

  /// The **`tiltX`** read-only property of the [PointerEvent] interface is the
  /// angle (in degrees) between the _Y-Z plane_ of the pointer and the screen.
  /// This property is typically only useful for a pen/stylus pointer type.
  ///
  /// Depending on the specific hardware and platform, user agents will likely
  /// only receive one set of values for the transducer orientation relative to
  /// the screen plane — either `tiltX` and [PointerEvent.tiltY] or
  /// [PointerEvent.altitudeAngle] and [PointerEvent.azimuthAngle].
  ///
  /// ![The tiltX angle of a pointer compared to the tiltY angle](tilt_x_y_angles.svg)
  ///
  /// For an additional illustration of this property see
  /// [Figure 2 in the specification](https://w3c.github.io/pointerevents/#dom-pointerevent-tiltx).
  external int get tiltX;

  /// The **`tiltY`** read-only property of the [PointerEvent] interface is the
  /// angle (in degrees) between the _X-Z plane_ of the pointer and the screen.
  /// This property is typically only useful for a pen/stylus pointer type.
  ///
  /// Depending on the specific hardware and platform, user agents will likely
  /// only receive one set of values for the transducer orientation relative to
  /// the screen plane — either [PointerEvent.tiltX] and `tiltY` or
  /// [PointerEvent.altitudeAngle] and [PointerEvent.azimuthAngle].
  ///
  /// ![The tiltX angle of a pointer compared to the tiltY angle](tilt_x_y_angles.svg)
  ///
  /// For an additional illustration of this property, see
  /// [Figure 3 in the specification](https://w3c.github.io/pointerevents/#dom-pointerevent-tilty).
  external int get tiltY;

  /// The **`twist`** read-only property of the
  /// [PointerEvent] interface represents the clockwise rotation of the pointer
  /// (e.g., pen stylus) around its major axis, in degrees.
  external int get twist;

  /// The **`altitudeAngle`** read-only property of the [PointerEvent] interface
  /// represents the angle between a transducer (a pointer or stylus) axis and
  /// the X-Y plane of a device screen.
  /// The altitude angle describes whether the transducer is perpendicular to
  /// the screen, parallel, or at some angle in between.
  ///
  /// Depending on the specific hardware and platform, user agents will likely
  /// only receive one set of values for the transducer orientation relative to
  /// the screen plane — either [PointerEvent.tiltX] and [PointerEvent.tiltY] or
  /// `altitudeAngle` and [PointerEvent.azimuthAngle].
  ///
  /// ![The azimuth angle of a pointer compared to the altitude angle](./azimuth_altitude_angles.svg)
  ///
  /// For an additional illustration of this property, see
  /// [Figure 4 in the specification](https://w3c.github.io/pointerevents/#figure_altitudeAngle).
  external double get altitudeAngle;

  /// The **`azimuthAngle`** read-only property of the [PointerEvent] interface
  /// represents the angle between the Y-Z plane and the plane containing both
  /// the transducer (pointer or stylus) axis and the Y axis.
  ///
  /// Depending on the specific hardware and platform, user agents will likely
  /// only receive one set of values for the transducer orientation relative to
  /// the screen plane — either [PointerEvent.tiltX] and [PointerEvent.tiltY] or
  /// [PointerEvent.altitudeAngle] and `azimuthAngle`.
  ///
  /// ![The azimuth angle of a pointer compared to the altitude angle](azimuth_altitude_angles.svg)
  ///
  /// For an additional illustration of this property, see
  /// [Figure 5 in the specification](https://w3c.github.io/pointerevents/#figure_azimuthAngle).
  external double get azimuthAngle;

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
  /// [Pointer events](https://developer.mozilla.org/en-US/docs/Web/API/Pointer_events)
  /// for more information about pointer, mouse and touch
  /// interaction).
  external bool get isPrimary;

  /// The **`persistentDeviceId`** read-only property of the
  /// [PointerEvent] interface is a unique identifier for the pointing device
  /// generating the `PointerEvent`. This provides a secure, reliable way to
  /// identify multiple pointing devices (such as pens) interacting with the
  /// screen simultaneously.
  ///
  /// A `persistentDeviceId` persists for the lifetime of a browsing session. To
  /// avoid the risk of fingerprinting/tracking, pointing devices are assigned a
  /// new `persistentDeviceId` at the start of each session.
  ///
  /// Pointer events whose generating device could not be identified are
  /// assigned a `persistentDeviceId` value of `0`.
  external int get persistentDeviceId;
}

/// The **`WheelEvent`** interface represents events that occur due to the user
/// moving a mouse wheel or similar input device.
///
/// > [!NOTE]
/// > This is the standard wheel event interface to use. Old versions of
/// > browsers implemented the non-standard and non-cross-browser-compatible
/// > `MouseWheelEvent` and [MouseScrollEvent] interfaces. Use this interface
/// > and avoid the non-standard ones.
///
/// Don't confuse the `wheel` event with the [Element.scroll_event] event:
///
/// - A `wheel` event doesn't necessarily dispatch a `scroll` event. For
///   example, the element may be unscrollable at all. Zooming actions using the
///   wheel or trackpad also fire `wheel` events.
/// - A `scroll` event isn't necessarily triggered by a `wheel` event. Elements
///   can also be scrolled by using the keyboard, dragging a scrollbar, or using
///   JavaScript.
/// - Even when the `wheel` event does trigger scrolling, the `delta*` values in
///   the `wheel` event don't necessarily reflect the content's scrolling
///   direction.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent).
extension type WheelEvent._(JSObject _) implements MouseEvent, JSObject {
  external factory WheelEvent(
    String type, [
    WheelEventInit eventInitDict,
  ]);

  static const int DOM_DELTA_PIXEL = 0;

  static const int DOM_DELTA_LINE = 1;

  static const int DOM_DELTA_PAGE = 2;

  /// The **`WheelEvent.deltaX`** read-only property is a
  /// `double` representing the horizontal scroll amount in the
  /// [WheelEvent.deltaMode] unit.
  external double get deltaX;

  /// The **`WheelEvent.deltaY`** read-only property is a
  /// `double` representing the vertical scroll amount in the
  /// [WheelEvent.deltaMode] unit.
  external double get deltaY;

  /// The **`WheelEvent.deltaZ`** read-only property is a
  /// `double` representing the scroll amount along the z-axis, in the
  /// [WheelEvent.deltaMode] unit.
  external double get deltaZ;

  /// The **`WheelEvent.deltaMode`** read-only property returns an
  /// `unsigned long` representing the unit of the delta values scroll amount.
  /// Permitted values are:
  ///
  /// | Constant          | Value  | Description                               |
  /// | ----------------- | ------ | ----------------------------------------- |
  /// | `DOM_DELTA_PIXEL` | `0x00` | The delta values are specified in pixels. |
  /// | `DOM_DELTA_LINE`  | `0x01` | The delta values are specified in lines.  |
  /// | `DOM_DELTA_PAGE`  | `0x02` | The delta values are specified in pages.  |
  external int get deltaMode;
}
extension type WheelEventInit._(JSObject _)
    implements MouseEventInit, JSObject {
  external factory WheelEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
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
    num deltaX,
    num deltaY,
    num deltaZ,
    int deltaMode,
  });

  external double get deltaX;
  external set deltaX(num value);
  external double get deltaY;
  external set deltaY(num value);
  external double get deltaZ;
  external set deltaZ(num value);
  external int get deltaMode;
  external set deltaMode(int value);
}
