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

  external int get identifier;
  external set identifier(int value);
  external EventTarget get target;
  external set target(EventTarget value);
  external double get clientX;
  external set clientX(num value);
  external double get clientY;
  external set clientY(num value);
  external double get screenX;
  external set screenX(num value);
  external double get screenY;
  external set screenY(num value);
  external double get pageX;
  external set pageX(num value);
  external double get pageY;
  external set pageY(num value);
  external double get radiusX;
  external set radiusX(num value);
  external double get radiusY;
  external set radiusY(num value);
  external double get rotationAngle;
  external set rotationAngle(num value);
  external double get force;
  external set force(num value);
  external double get altitudeAngle;
  external set altitudeAngle(num value);
  external double get azimuthAngle;
  external set azimuthAngle(num value);
  external TouchType get touchType;
  external set touchType(TouchType value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Touch).
extension type Touch._(JSObject _) implements JSObject {
  external factory Touch(TouchInit touchInitDict);

  /// The **`Touch.identifier`** returns a value uniquely identifying
  /// this point of contact with the touch surface. This value remains
  /// consistent for every
  /// event involving this finger's (or stylus's) movement on the surface until
  /// it is lifted
  /// off the surface.
  external int get identifier;

  /// The read-only **`target`** property of the `Touch` interface returns the
  /// ([EventTarget]) on which the touch contact started when it was first
  /// placed on the surface, even if the touch point has since moved outside the
  /// interactive area of that element or even been removed from the document.
  /// Note that if the target element is removed from the document, events will
  /// still be targeted at it, and hence won't necessarily bubble up to the
  /// window or document anymore. If there is any risk of an element being
  /// removed while it is being touched, the best practice is to attach the
  /// touch listeners directly to the target.
  external EventTarget get target;

  /// Returns the X coordinate of the touch point relative to the screen, not
  /// including any scroll offset.
  external double get screenX;

  /// Returns the Y coordinate of the touch point relative to the screen, not
  /// including any scroll offset.
  external double get screenY;

  /// The `Touch.clientX` read-only property returns the X coordinate of the
  /// touch
  /// point relative to the viewport, not including any scroll offset.
  external double get clientX;

  /// The **`Touch.clientY`** read-only property returns the Y
  /// coordinate of the touch point relative to the browser's viewport, not
  /// including any
  /// scroll offset.
  external double get clientY;

  /// The **`Touch.pageX`** read-only property returns the X
  /// coordinate of the touch point relative to the viewport, including any
  /// scroll offset.
  external double get pageX;

  /// The **`Touch.pageY`** read-only property returns the Y
  /// coordinate of the touch point relative to the viewport, including any
  /// scroll offset.
  external double get pageY;

  /// The **`radiusX`** read-only property of the [Touch] interface returns the
  /// X radius of the ellipse that most closely circumscribes the area of
  /// contact with the touch surface. The value is in CSS pixels of the same
  /// scale as [Touch.screenX].
  ///
  /// This value, in combination with [Touch.radiusY] and [Touch.rotationAngle]
  /// constructs an ellipse that approximates the size and shape of the area of
  /// contact between the user and the screen. This may be a relatively large
  /// ellipse representing the contact between a fingertip and the screen or a
  /// small area representing the tip of a stylus, for example.
  external double get radiusX;

  /// The **`radiusY`** read-only property of the [Touch] interface returns the
  /// Y radius of the ellipse that most closely circumscribes the area of
  /// contact with the touch surface. The value is in CSS pixels of the same
  /// scale as [Touch.screenX].
  ///
  /// This value, in combination with [Touch.radiusX] and [Touch.rotationAngle]
  /// constructs an ellipse that approximates the size and shape of the area of
  /// contact between the user and the screen. This may be a large ellipse
  /// representing the contact between a fingertip and the screen or a small one
  /// representing the tip of a stylus, for example.
  external double get radiusY;

  /// The **`rotationAngle`** read-only property of the [Touch] interface
  /// returns the rotation angle, in degrees, of the contact area ellipse
  /// defined by [Touch.radiusX] and [Touch.radiusY]. The value may be between 0
  /// and 90. Together, these three values describe an ellipse that approximates
  /// the size and shape of the area of contact between the user and the screen.
  /// This may be a relatively large ellipse representing the contact between a
  /// fingertip and the screen or a small area representing the tip of a stylus,
  /// for example.
  external double get rotationAngle;

  /// The **`Touch.force`** read-only property returns the amount of
  /// pressure the user is applying to the touch surface for a [Touch] point.
  external double get force;
  external double get altitudeAngle;
  external double get azimuthAngle;
  external TouchType get touchType;
}

/// The **`TouchList`** interface represents a list of contact points on a touch
/// surface. For example, if the user has three fingers on the touch surface
/// (such as a screen or trackpad), the corresponding `TouchList` object would
/// have one [Touch] object for each finger, for a total of three entries.
///
/// This interface was an
/// [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// and only continues to be supported to not break code that's already using
/// it. Modern APIs represent list structures using types based on JavaScript
/// [arrays](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array),
/// thus making many array methods available, and at the same time imposing
/// additional semantics on their usage (such as making their items read-only).
///
/// These historical reasons do not mean that you as a developer should avoid
/// `TouchList`. You don't create `TouchList` objects yourself, but you get them
/// from APIs such as [TouchEvent.targetTouches], and these APIs are not
/// deprecated. However, be careful of the semantic differences from a real
/// array.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TouchList).
extension type TouchList._(JSObject _) implements JSObject {
  /// The **`item()`** method returns the [Touch]
  /// object at the specified index in the [TouchList].
  external Touch? item(int index);

  /// The **`length`** read-only property indicates the number of
  /// items (touch points) in a given [TouchList].
  external int get length;
}
extension type TouchEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory TouchEventInit({
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
    JSArray<Touch> touches,
    JSArray<Touch> targetTouches,
    JSArray<Touch> changedTouches,
  });

  external JSArray<Touch> get touches;
  external set touches(JSArray<Touch> value);
  external JSArray<Touch> get targetTouches;
  external set targetTouches(JSArray<Touch> value);
  external JSArray<Touch> get changedTouches;
  external set changedTouches(JSArray<Touch> value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent).
extension type TouchEvent._(JSObject _) implements UIEvent, JSObject {
  external factory TouchEvent(
    String type, [
    TouchEventInit eventInitDict,
  ]);

  /// **`touches`** is a read-only [TouchList] listing
  /// all the [Touch] objects for touch points that are currently in contact
  /// with the touch surface, regardless of whether or not they've changed or
  /// what their
  /// target element was at [Element.touchstart_event] time.
  ///
  /// You can think of it as how many separate fingers are able to be identified
  /// as touching
  /// the screen.
  ///
  /// > **Note:** Touches inside the array are not necessarily ordered by order
  /// > of occurrences (the
  /// > i-th element in the array being the i-th touch that happened). You
  /// > cannot assume a specific order. To determine the order of occurrences of
  /// > the touches, use the `touch` object IDs.
  external TouchList get touches;

  /// The **`targetTouches`** read-only property is a [TouchList] listing all
  /// the [Touch] objects for touch points that are still in contact with the
  /// touch surface **and** whose [Element.touchstart_event] event occurred
  /// inside the same target [element] as the current target element.
  external TouchList get targetTouches;

  /// The **`changedTouches`** read-only property is a [TouchList] whose touch
  /// points ([Touch] objects) varies depending on the event type, as follows:
  ///
  /// - For the [Element.touchstart_event] event, it is a list of the touch
  ///   points that became active with the current event.
  /// - For the [Element.touchmove_event] event, it is a list of the touch
  ///   points that have changed since the last event.
  /// - For the [Element.touchend_event] event, it is a list of the touch points
  ///   that have been removed from the surface (that is, the set of touch
  ///   points corresponding to fingers no longer touching the surface).
  external TouchList get changedTouches;

  /// The read-only **`altKey`** property of the [TouchEvent] interface returns
  /// a boolean value indicating whether or not the <kbd>alt</kbd> (Alternate)
  /// key is enabled when the touch event is created. If the <kbd>alt</kbd> key
  /// is enabled, the attribute's value is `true`. Otherwise, it is `false`.
  ///
  /// This property is .
  external bool get altKey;

  /// The read-only **`metaKey`** property of the [TouchEvent] interface returns
  /// a boolean value indicating whether or not the <kbd>Meta</kbd> key is
  /// enabled when the touch event is created. If this key is enabled, the
  /// attribute's value is `true`. Otherwise, it is `false`.
  ///
  /// This property is .
  ///
  /// > **Note:** On Macintosh keyboards, this is the <kbd>⌘ Command</kbd> key.
  /// > On Windows keyboards, this is the Windows key (<kbd>⊞</kbd>).
  external bool get metaKey;

  /// The read-only **`ctrlKey`** property of the [TouchEvent] interface returns
  /// a boolean value indicating whether the <kbd>control</kbd> (Control) key is
  /// enabled when the touch event is created. If this key is enabled, the
  /// attribute's value is `true`. Otherwise, it is `false`.
  ///
  /// This property is .
  external bool get ctrlKey;

  /// The read-only **`shiftKey`** property of the `TouchEvent` interface
  /// returns a boolean value indicating whether or not the <kbd>shift</kbd> key
  /// is enabled when the touch event is created. If this key is enabled, the
  /// attribute's value is `true`. Otherwise, it is `false`.
  external bool get shiftKey;
}
