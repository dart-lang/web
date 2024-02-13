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
import 'html.dart';

/// The **`UIEvent`** interface represents simple user interface events.
///
/// `UIEvent` derives from [Event]. Although the [UIEvent.initUIEvent] method is
/// kept for backward compatibility, you should create a `UIEvent` object using
/// the [UIEvent.UIEvent] constructor.
///
/// Several interfaces are direct or indirect descendants of this one:
/// [MouseEvent], [TouchEvent], [FocusEvent], [KeyboardEvent], [WheelEvent],
/// [InputEvent], and [CompositionEvent].
extension type UIEvent._(JSObject _) implements Event, JSObject {
  external factory UIEvent(
    String type, [
    UIEventInit eventInitDict,
  ]);

  /// The **`UIEvent.initUIEvent()`** method initializes a UI event
  /// once it's been created.
  ///
  /// Events initialized in this way must have been created with the
  /// [Document.createEvent] method. This method must be called to set the event
  /// before it is dispatched, using [EventTarget.dispatchEvent]. Once
  /// dispatched, it doesn't do anything anymore.
  ///
  /// > **Warning:** Do not use this method anymore as it is deprecated.
  /// >
  /// > Instead use specific event constructors, like [UIEvent.UIEvent]. The
  /// > page on
  /// > [Creating and triggering events](https://developer.mozilla.org/en-US/docs/Web/Events/Creating_and_triggering_events)
  /// > gives more information about the way to use these.
  external void initUIEvent(
    String typeArg, [
    bool bubblesArg,
    bool cancelableArg,
    Window? viewArg,
    int detailArg,
  ]);
  external Window? get view;
  external int get detail;
  external int get which;
}
extension type UIEventInit._(JSObject _) implements EventInit, JSObject {
  external factory UIEventInit({
    Window? view,
    int detail,
    int which,
  });

  external set view(Window? value);
  external Window? get view;
  external set detail(int value);
  external int get detail;
  external set which(int value);
  external int get which;
}

/// The **`FocusEvent`** interface represents focus-related events, including
/// [Element/focus_event], [Element/blur_event], [Element/focusin_event], and
/// [Element/focusout_event].
extension type FocusEvent._(JSObject _) implements UIEvent, JSObject {
  external factory FocusEvent(
    String type, [
    FocusEventInit eventInitDict,
  ]);

  external EventTarget? get relatedTarget;
}
extension type FocusEventInit._(JSObject _) implements UIEventInit, JSObject {
  external factory FocusEventInit({EventTarget? relatedTarget});

  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}

/// The **`MouseEvent`** interface represents events that occur due to the user
/// interacting with a pointing device (such as a mouse).
/// Common events using this interface include [Element/click_event],
/// [Element/dblclick_event], [Element/mouseup_event],
/// [Element/mousedown_event].
///
/// `MouseEvent` derives from [UIEvent], which in turn derives from [Event].
/// Though the [MouseEvent.initMouseEvent] method is kept for backward
/// compatibility, creating of a `MouseEvent` object should be done using the
/// [MouseEvent.MouseEvent] constructor.
///
/// Several more specific events are based on `MouseEvent`, including
/// [WheelEvent], [DragEvent], and [PointerEvent].
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
  /// > **Warning:** Do not use this method anymore as it is deprecated.
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
  external num get pageX;
  external num get pageY;
  external num get x;
  external num get y;
  external num get offsetX;
  external num get offsetY;
  external int get screenX;
  external int get screenY;
  external int get clientX;
  external int get clientY;
  external int get layerX;
  external int get layerY;
  external bool get ctrlKey;
  external bool get shiftKey;
  external bool get altKey;
  external bool get metaKey;
  external int get button;
  external int get buttons;
  external EventTarget? get relatedTarget;
}
extension type MouseEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory MouseEventInit({
    int screenX,
    int screenY,
    int clientX,
    int clientY,
    int button,
    int buttons,
    EventTarget? relatedTarget,
  });

  external set screenX(int value);
  external int get screenX;
  external set screenY(int value);
  external int get screenY;
  external set clientX(int value);
  external int get clientX;
  external set clientY(int value);
  external int get clientY;
  external set button(int value);
  external int get button;
  external set buttons(int value);
  external int get buttons;
  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}
extension type EventModifierInit._(JSObject _)
    implements UIEventInit, JSObject {
  external factory EventModifierInit({
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
  });

  external set ctrlKey(bool value);
  external bool get ctrlKey;
  external set shiftKey(bool value);
  external bool get shiftKey;
  external set altKey(bool value);
  external bool get altKey;
  external set metaKey(bool value);
  external bool get metaKey;
  external set modifierAltGraph(bool value);
  external bool get modifierAltGraph;
  external set modifierCapsLock(bool value);
  external bool get modifierCapsLock;
  external set modifierFn(bool value);
  external bool get modifierFn;
  external set modifierFnLock(bool value);
  external bool get modifierFnLock;
  external set modifierHyper(bool value);
  external bool get modifierHyper;
  external set modifierNumLock(bool value);
  external bool get modifierNumLock;
  external set modifierScrollLock(bool value);
  external bool get modifierScrollLock;
  external set modifierSuper(bool value);
  external bool get modifierSuper;
  external set modifierSymbol(bool value);
  external bool get modifierSymbol;
  external set modifierSymbolLock(bool value);
  external bool get modifierSymbolLock;
}

/// The **`WheelEvent`** interface represents events that occur due to the user
/// moving a mouse wheel or similar input device.
///
/// > **Note:** This is the standard wheel event interface to use. Old versions
/// > of browsers implemented the non-standard and non-cross-browser-compatible
/// > `MouseWheelEvent` and [MouseScrollEvent] interfaces. Use this interface
/// > and avoid the non-standard ones.
///
/// > **Note:** Do not confuse the [Element/wheel_event] event with the
/// > [Element/scroll_event] event. The default action of a `wheel` event is
/// > implementation-defined. Thus, a `wheel` event doesn't necessarily dispatch
/// > a `scroll` event. Even when it does, that doesn't mean that the `delta*`
/// > values in the `wheel` event necessarily reflect the content's scrolling
/// > direction. Therefore, do not rely on `delta*` properties to get the
/// > content's scrolling direction. Instead, detect value changes to
/// > [Element.scrollLeft] and [Element.scrollTop] of the target in the `scroll`
/// > event.
extension type WheelEvent._(JSObject _) implements MouseEvent, JSObject {
  external factory WheelEvent(
    String type, [
    WheelEventInit eventInitDict,
  ]);

  external static int get DOM_DELTA_PIXEL;
  external static int get DOM_DELTA_LINE;
  external static int get DOM_DELTA_PAGE;
  external num get deltaX;
  external num get deltaY;
  external num get deltaZ;
  external int get deltaMode;
}
extension type WheelEventInit._(JSObject _)
    implements MouseEventInit, JSObject {
  external factory WheelEventInit({
    num deltaX,
    num deltaY,
    num deltaZ,
    int deltaMode,
  });

  external set deltaX(num value);
  external num get deltaX;
  external set deltaY(num value);
  external num get deltaY;
  external set deltaZ(num value);
  external num get deltaZ;
  external set deltaMode(int value);
  external int get deltaMode;
}

/// The **`InputEvent`** interface represents an event notifying the user of
/// editable content changes.
extension type InputEvent._(JSObject _) implements UIEvent, JSObject {
  external factory InputEvent(
    String type, [
    InputEventInit eventInitDict,
  ]);

  external String? get data;
  external bool get isComposing;
  external String get inputType;
}
extension type InputEventInit._(JSObject _) implements UIEventInit, JSObject {
  external factory InputEventInit({
    String? data,
    bool isComposing,
    String inputType,
  });

  external set data(String? value);
  external String? get data;
  external set isComposing(bool value);
  external bool get isComposing;
  external set inputType(String value);
  external String get inputType;
}

/// **`KeyboardEvent`** objects describe a user interaction with the keyboard;
/// each event describes a single interaction between the user and a key (or
/// combination of a key with modifier keys) on the keyboard. The event type
/// ([Element/keydown_event], [Element/keypress_event], or
/// [Element/keyup_event]) identifies what kind of keyboard activity occurred.
///
/// > **Note:** `KeyboardEvent` events just indicate what interaction the user
/// > had with a key on the keyboard at a low level, providing no contextual
/// > meaning to that interaction. When you need to handle text input, use the
/// > [Element/input_event] event instead. Keyboard events may not be fired if
/// > the user is using an alternate means of entering text, such as a
/// > handwriting system on a tablet or graphics tablet.
extension type KeyboardEvent._(JSObject _) implements UIEvent, JSObject {
  external factory KeyboardEvent(
    String type, [
    KeyboardEventInit eventInitDict,
  ]);

  external static int get DOM_KEY_LOCATION_STANDARD;
  external static int get DOM_KEY_LOCATION_LEFT;
  external static int get DOM_KEY_LOCATION_RIGHT;
  external static int get DOM_KEY_LOCATION_NUMPAD;

  /// The **`KeyboardEvent.getModifierState()`** method returns the
  /// current state of the specified modifier key: `true` if the modifier is
  /// active
  /// (that is the modifier key is pressed or locked), otherwise, `false`.
  external bool getModifierState(String keyArg);

  /// The **`KeyboardEvent.initKeyboardEvent()`** method initializes
  /// the attributes of a keyboard event object. This method was introduced in
  /// draft of DOM
  /// Level 3 Events, but deprecated in newer draft. Gecko won't support this
  /// feature since
  /// implementing this method as experimental broke existing web apps (see
  /// [Firefox bug 999645](https://bugzil.la/999645)).
  /// Web applications should use constructor instead of this if it's available.
  external void initKeyboardEvent(
    String typeArg, [
    bool bubblesArg,
    bool cancelableArg,
    Window? viewArg,
    String keyArg,
    int locationArg,
    bool ctrlKey,
    bool altKey,
    bool shiftKey,
    bool metaKey,
  ]);
  external String get key;
  external String get code;
  external int get location;
  external bool get ctrlKey;
  external bool get shiftKey;
  external bool get altKey;
  external bool get metaKey;
  external bool get repeat;
  external bool get isComposing;
  external int get charCode;
  external int get keyCode;
}
extension type KeyboardEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory KeyboardEventInit({
    String key,
    String code,
    int location,
    bool repeat,
    bool isComposing,
    int charCode,
    int keyCode,
  });

  external set key(String value);
  external String get key;
  external set code(String value);
  external String get code;
  external set location(int value);
  external int get location;
  external set repeat(bool value);
  external bool get repeat;
  external set isComposing(bool value);
  external bool get isComposing;
  external set charCode(int value);
  external int get charCode;
  external set keyCode(int value);
  external int get keyCode;
}

/// The DOM **`CompositionEvent`** represents events that occur due to the user
/// indirectly entering text.
extension type CompositionEvent._(JSObject _) implements UIEvent, JSObject {
  external factory CompositionEvent(
    String type, [
    CompositionEventInit eventInitDict,
  ]);

  /// The **`initCompositionEvent()`**
  /// method of the [CompositionEvent] interface initializes the attributes of a
  /// `CompositionEvent` object instance.
  ///
  /// > **Note:** The correct way of creating a [CompositionEvent] is to use
  /// > the constructor [CompositionEvent.CompositionEvent].
  external void initCompositionEvent(
    String typeArg, [
    bool bubblesArg,
    bool cancelableArg,
    Window? viewArg,
    String dataArg,
  ]);
  external String get data;
}
extension type CompositionEventInit._(JSObject _)
    implements UIEventInit, JSObject {
  external factory CompositionEventInit({String data});

  external set data(String value);
  external String get data;
}

/// The **`MutationEvent`** interface provides event properties that are
/// specific to modifications to the Document Object Model (DOM) hierarchy and
/// nodes.
///
/// > **Note:** Using _mutation events_ is problematic:
/// >
/// > - Their design is
/// > [flawed](https://lists.w3.org/Archives/Public/public-webapps/2011JulSep/0779.html).
/// > - Adding DOM mutation listeners to a document
/// > [profoundly degrades the performance](https://groups.google.com/d/topic/mozilla.dev.platform/L0Lx11u5Bvs?pli=1)
/// > of further DOM modifications to that document (making them 1.5 - 7 times
/// > slower!). Moreover, removing the listeners does not reverse the damage.
/// > - They have poor cross-browser compatibility: Safari doesn't support
/// > `DOMAttrModified` (see [WebKit bug 8191](https://webkit.org/b/8191)) and
/// > Firefox doesn't support _mutation name events_ (like
/// > `DOMElementNameChanged` and `DOMAttributeNameChanged`).
/// >
/// > They have been deprecated in favor of
/// > [mutation observers](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver).
/// > **Consider using these instead.**
extension type MutationEvent._(JSObject _) implements Event, JSObject {
  external static int get MODIFICATION;
  external static int get ADDITION;
  external static int get REMOVAL;

  /// The **`initMutationEvent()`** method of the [MutationEvent] interface
  /// initializes the
  /// value of a mutation event once it's been created (normally using the
  /// [Document.createEvent] method).
  ///
  /// This method must be called to set the event before it is dispatched, using
  /// [EventTarget.dispatchEvent].
  ///
  /// > **Note:** In general, you won't create these events yourself; they are
  /// > created by the browser.
  external void initMutationEvent(
    String typeArg, [
    bool bubblesArg,
    bool cancelableArg,
    Node? relatedNodeArg,
    String prevValueArg,
    String newValueArg,
    String attrNameArg,
    int attrChangeArg,
  ]);
  external Node? get relatedNode;
  external String get prevValue;
  external String get newValue;
  external String get attrName;
  external int get attrChange;
}
