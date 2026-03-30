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

/// The **`UIEvent`** interface represents simple user interface events. It is
/// part of the
/// [UI Events](https://developer.mozilla.org/en-US/docs/Web/API/UI_Events) API,
/// which includes various event types and interfaces related to user
/// interactions.
///
/// `UIEvent` derives from [Event]. Although the [UIEvent.initUIEvent] method is
/// kept for backward compatibility, you should create a `UIEvent` object using
/// the [UIEvent.UIEvent] constructor.
///
/// Several interfaces are direct or indirect descendants of this one:
/// [MouseEvent], [TouchEvent], [FocusEvent], [KeyboardEvent], [WheelEvent],
/// [InputEvent], and [CompositionEvent].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent).
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
  /// > [!WARNING]
  /// > Do not use this method anymore as it is deprecated.
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

  /// The **`UIEvent.view`** read-only property returns the
  /// object from which the event was generated. In browsers, this
  /// is the [Window] object the event happened in.
  external Window? get view;

  /// The **`UIEvent.detail`** read-only property, when non-zero, provides the
  /// current (or next, depending on the event) click count.
  ///
  /// For [Element.click_event] or [Element.dblclick_event] events,
  /// `UIEvent.detail` is the current click count.
  ///
  /// For [Element.mousedown_event] or [Element.mouseup_event] events,
  /// `UIEvent.detail` is _1 plus_ the current click count.
  ///
  /// For all other [UIEvent] objects, `UIEvent.detail` is always zero.
  external int get detail;

  /// The **`sourceCapabilities`** read-only property of the [UIEvent] interface
  /// returns
  /// an instance of the [InputDeviceCapabilities] interface which provides
  /// information about the physical device responsible for generating a touch
  /// event. If no
  /// input device was responsible for the event, it returns `null`.
  ///
  /// When a single user interaction with an input device generates a series of
  /// different
  /// input events, the `sourceCapabilities` property for all of them will point
  /// to
  /// the same instance of `InputDeviceCapabilities`. For example, when a user
  /// lifts their finger off of a touchscreen, several UIEvents may be generated
  /// including
  /// `touchend`, `mousedown`, `click`, and
  /// `focus`. All of these events must have the same
  /// `sourceCapabilities` representing the touchscreen.
  ///
  /// A device is considered "responsible" for an event only when that
  /// interaction is part of
  /// the abstraction provided by the web platform. For example, many user
  /// agents allow a
  /// window to be resized with a mouse or a keyboard, but this detail is not
  /// exposed to the
  /// web platform in any way, and so the sourceCapabilities of a resize event
  /// will typically
  /// be null.
  external InputDeviceCapabilities? get sourceCapabilities;

  /// The **`UIEvent.which`** read-only property of the [UIEvent] interface
  /// returns a number that indicates which button was pressed on the mouse, or
  /// the numeric `keyCode` or the character code (`charCode`) of the key
  /// pressed on the keyboard.
  external int get which;
}
extension type UIEventInit._(JSObject _) implements EventInit, JSObject {
  external factory UIEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
    int which,
  });

  external Window? get view;
  external set view(Window? value);
  external int get detail;
  external set detail(int value);
  external InputDeviceCapabilities? get sourceCapabilities;
  external set sourceCapabilities(InputDeviceCapabilities? value);
  external int get which;
  external set which(int value);
}

/// The **`FocusEvent`** interface represents focus-related events, including
/// [Element.focus_event], [Element.blur_event], [Element.focusin_event], and
/// [Element.focusout_event].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent).
extension type FocusEvent._(JSObject _) implements UIEvent, JSObject {
  external factory FocusEvent(
    String type, [
    FocusEventInit eventInitDict,
  ]);

  /// The **`relatedTarget`** read-only property of the [FocusEvent] interface
  /// is the secondary target, depending on the type of event:
  ///
  /// <table class="no-markdown">
  ///   <thead>
  ///     <tr>
  ///       <th scope="col">Event name</th>
  ///       <th scope="col"><code>target</code></th>
  ///       <th scope="col"><code>relatedTarget</code></th>
  ///     </tr>
  ///   </thead>
  ///   <tbody>
  ///     <tr>
  ///       <td>[Element.blur_event]</td>
  ///       <td>The [EventTarget] losing focus</td>
  ///       <td>The [EventTarget] receiving focus (if any).</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[Element.focus_event]</td>
  ///       <td>The [EventTarget] receiving focus</td>
  ///       <td>The [EventTarget] losing focus (if any)</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[Element.focusin_event]</td>
  ///       <td>The [EventTarget] receiving focus</td>
  ///       <td>The [EventTarget] losing focus (if any)</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[Element.focusout_event]</td>
  ///       <td>The [EventTarget] losing focus</td>
  ///       <td>The [EventTarget] receiving focus (if any)</td>
  ///     </tr>
  ///   </tbody>
  /// </table>
  ///
  /// Note that [many elements can't have
  /// focus](https://stackoverflow.com/questions/42764494/blur-event-relatedtarget-returns-null/42764495),
  /// which is a common reason for `relatedTarget` to be `null`. `relatedTarget`
  /// may also be set to `null` for security reasons, like when tabbing in or
  /// out of a page.
  ///
  /// [MouseEvent.relatedTarget] is a similar property for mouse events.
  external EventTarget? get relatedTarget;
}
extension type FocusEventInit._(JSObject _) implements UIEventInit, JSObject {
  external factory FocusEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
    int which,
    EventTarget? relatedTarget,
  });

  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? value);
}
extension type EventModifierInit._(JSObject _)
    implements UIEventInit, JSObject {
  external factory EventModifierInit({
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
  });

  external bool get ctrlKey;
  external set ctrlKey(bool value);
  external bool get shiftKey;
  external set shiftKey(bool value);
  external bool get altKey;
  external set altKey(bool value);
  external bool get metaKey;
  external set metaKey(bool value);
  external bool get modifierAltGraph;
  external set modifierAltGraph(bool value);
  external bool get modifierCapsLock;
  external set modifierCapsLock(bool value);
  external bool get modifierFn;
  external set modifierFn(bool value);
  external bool get modifierFnLock;
  external set modifierFnLock(bool value);
  external bool get modifierHyper;
  external set modifierHyper(bool value);
  external bool get modifierNumLock;
  external set modifierNumLock(bool value);
  external bool get modifierScrollLock;
  external set modifierScrollLock(bool value);
  external bool get modifierSuper;
  external set modifierSuper(bool value);
  external bool get modifierSymbol;
  external set modifierSymbol(bool value);
  external bool get modifierSymbolLock;
  external set modifierSymbolLock(bool value);
}

/// The **`InputEvent`** interface represents an event notifying the user of
/// editable content changes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent).
extension type InputEvent._(JSObject _) implements UIEvent, JSObject {
  external factory InputEvent(
    String type, [
    InputEventInit eventInitDict,
  ]);

  /// The **`getTargetRanges()`** method of the [InputEvent] interface returns
  /// an array of [StaticRange] objects that will be affected by a change to the
  /// DOM if the input event is not canceled.
  ///
  /// This allows web apps to override text edit behavior before the browser
  /// modifies the DOM tree, and provides more control over input events to
  /// improve performance.
  ///
  /// Depending on the value of `inputType` and the current editing host, the
  /// expected return value of this method varies:
  ///
  /// <table>
  ///   <thead>
  ///     <tr>
  ///       <th>inputType</th>
  ///       <th>Editing host</th>
  ///       <th>Response of <code>getTargetRanges()</code></th>
  ///     </tr>
  ///   </thead>
  ///   <tbody>
  ///     <tr>
  ///       <td><code>"historyUndo"</code> or <code>"historyRedo"</code></td>
  ///       <td>Any</td>
  ///       <td>empty Array</td>
  ///     </tr>
  ///     <tr>
  ///       <td>All remaining</td>
  ///       <td><code>contenteditable</code></td>
  ///       <td>
  /// an Array of
  /// [StaticRange]
  /// objects associated with event
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>All remaining</td>
  ///       <td>
  ///         <a href="/en-US/docs/Web/HTML/Element/input"><code>input</code></a>
  /// or <a
  /// href="/en-US/docs/Web/HTML/Element/textarea"><code>textarea</code></a>
  ///       </td>
  ///       <td>
  /// an empty Array
  ///       </td>
  ///     </tr>
  ///   </tbody>
  /// </table>
  external JSArray<StaticRange> getTargetRanges();

  /// The **`data`** read-only property of the
  /// [InputEvent] interface returns a string with inserted
  /// characters. This may be an empty string if the change doesn't insert text,
  /// such as when
  /// characters are deleted.
  external String? get data;

  /// The **`InputEvent.isComposing`** read-only property returns a
  /// boolean value indicating if the event is fired after
  /// [Element.compositionstart_event] and before
  /// [Element.compositionend_event].
  external bool get isComposing;

  /// The **`inputType`** read-only property of the
  /// [InputEvent] interface returns the type of change made to editable
  /// content.
  /// Possible changes include for example inserting, deleting, and formatting
  /// text.
  external String get inputType;

  /// The **`dataTransfer`** read-only property of the
  /// [InputEvent] interface returns a [DataTransfer] object
  /// containing information about richtext or plaintext data being added to or
  /// removed from
  /// editable content.
  external DataTransfer? get dataTransfer;
}
extension type InputEventInit._(JSObject _) implements UIEventInit, JSObject {
  external factory InputEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
    int which,
    String? data,
    bool isComposing,
    String inputType,
    DataTransfer? dataTransfer,
    JSArray<StaticRange> targetRanges,
  });

  external String? get data;
  external set data(String? value);
  external bool get isComposing;
  external set isComposing(bool value);
  external String get inputType;
  external set inputType(String value);
  external DataTransfer? get dataTransfer;
  external set dataTransfer(DataTransfer? value);
  external JSArray<StaticRange> get targetRanges;
  external set targetRanges(JSArray<StaticRange> value);
}

/// **`KeyboardEvent`** objects describe a user interaction with the keyboard;
/// each event describes a single interaction between the user and a key (or
/// combination of a key with modifier keys) on the keyboard. The event type
/// ([Element.keydown_event], [Element.keypress_event], or
/// [Element.keyup_event]) identifies what kind of keyboard activity occurred.
///
/// > **Note:** `KeyboardEvent` events just indicate what interaction the user
/// > had with a key on the keyboard at a low level, providing no contextual
/// > meaning to that interaction. When you need to handle text input, use the
/// > [Element.input_event] event instead. Keyboard events may not be fired if
/// > the user is using an alternate means of entering text, such as a
/// > handwriting system on a tablet or graphics tablet.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent).
extension type KeyboardEvent._(JSObject _) implements UIEvent, JSObject {
  external factory KeyboardEvent(
    String type, [
    KeyboardEventInit eventInitDict,
  ]);

  static const int DOM_KEY_LOCATION_STANDARD = 0;

  static const int DOM_KEY_LOCATION_LEFT = 1;

  static const int DOM_KEY_LOCATION_RIGHT = 2;

  static const int DOM_KEY_LOCATION_NUMPAD = 3;

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

  /// The [KeyboardEvent] interface's **`key`** read-only property returns the
  /// value of the key pressed by the user, taking into consideration the state
  /// of modifier keys such as <kbd>Shift</kbd> as well as the keyboard locale
  /// and layout.
  external String get key;

  /// The `KeyboardEvent.code` property represents a physical key on the
  /// keyboard (as opposed to the character generated by pressing the key). In
  /// other words, this property returns a value that isn't altered by keyboard
  /// layout or the state of the modifier keys.
  ///
  /// If the input device isn't a physical keyboard, but is instead a virtual
  /// keyboard or accessibility device, the returned value will be set by the
  /// browser to match as closely as possible to what would happen with a
  /// physical keyboard, to maximize compatibility between physical and virtual
  /// input devices.
  ///
  /// This property is useful when you want to handle keys based on their
  /// physical positions on the input device rather than the characters
  /// associated with those keys; this is especially common when writing code to
  /// handle input for games that simulate a gamepad-like environment using keys
  /// on the keyboard. Be aware, however, that you can't use the value reported
  /// by `KeyboardEvent.code` to determine the character generated by the
  /// keystroke, because the keycode's name may not match the actual character
  /// that's printed on the key or that's generated by the computer when the key
  /// is pressed.
  ///
  /// For example, the `code` returned is `"KeyQ"` for the <kbd>Q</kbd> key on a
  /// QWERTY layout keyboard, but the same `code` value also represents the
  /// <kbd>'</kbd> key on Dvorak keyboards and the <kbd>A</kbd> key on AZERTY
  /// keyboards. That makes it impossible to use the value of `code` to
  /// determine what the name of the key is to users if they're not using an
  /// anticipated keyboard layout.
  ///
  /// To determine what character corresponds with the key event, use the
  /// [KeyboardEvent.key] property instead.
  external String get code;

  /// The **`KeyboardEvent.location`** read-only property returns an
  /// `unsigned long` representing the location of the key on the keyboard or
  /// other
  /// input device.
  ///
  /// Possible values are:
  ///
  /// <table class="standard-table">
  ///   <thead>
  ///     <tr>
  ///       <th>Constant</th>
  ///       <th>Value</th>
  ///       <th>Description</th>
  ///     </tr>
  ///   </thead>
  ///   <tbody>
  ///     <tr>
  ///       <td><code>DOM_KEY_LOCATION_STANDARD</code></td>
  ///       <td>0</td>
  ///       <td>
  /// The key has only one version, or can't be distinguished between the left
  /// and right versions of the key, and was not pressed on the numeric keypad
  /// or a key that is considered to be part of the keypad.
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td><code>DOM_KEY_LOCATION_LEFT</code></td>
  ///       <td>1</td>
  ///       <td>
  /// The key was the left-hand version of the key; for example, the left-hand
  ///         <kbd>Control</kbd> key was pressed on a standard 101 key US keyboard.
  /// This value is only used for keys that have more than one possible
  /// location on the keyboard.
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td><code>DOM_KEY_LOCATION_RIGHT</code></td>
  ///       <td>2</td>
  ///       <td>
  /// The key was the right-hand version of the key; for example, the
  /// right-hand <kbd>Control</kbd> key is pressed on a standard 101 key US
  /// keyboard. This value is only used for keys that have more than one
  /// possible location on the keyboard.
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td><code>DOM_KEY_LOCATION_NUMPAD</code></td>
  ///       <td>3</td>
  ///       <td>
  ///         <p>
  /// The key was on the numeric keypad, or has a virtual key code that
  /// corresponds to the numeric keypad.
  ///         </p>
  ///         <div class="note">
  ///           <p>
  ///             <strong>Note:</strong> When <kbd>NumLock</kbd> is locked, Firefox
  /// always returns <code>DOM_KEY_LOCATION_NUMPAD</code> for the keys on
  /// the numeric pad. Otherwise, when <kbd>NumLock</kbd> is unlocked and
  /// the keyboard actually has a numeric keypad, Firefox always returns
  ///             <code>DOM_KEY_LOCATION_NUMPAD</code> too. On the other hand, if the
  /// keyboard doesn't have a keypad, such as on a notebook computer, some
  /// keys become Numpad only when NumLock is locked. When such keys fires
  /// key events, the location attribute value depends on the key. That
  /// is, it must not be <code>DOM_KEY_LOCATION_NUMPAD</code>.
  ///           </p>
  ///         </div>
  ///         <div class="note">
  ///           <p>
  ///             <strong>Note:</strong> <kbd>NumLock</kbd> key's key events indicate
  ///             <code>DOM_KEY_LOCATION_STANDARD</code> both on Firefox and Internet
  /// Explorer.
  ///           </p>
  ///         </div>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>
  ///         <code>DOM_KEY_LOCATION_MOBILE</code>
  ///       </td>
  ///       <td>4</td>
  ///       <td>
  ///         <p>
  /// The key was on a mobile device; this can be on either a physical
  /// keypad or a virtual keyboard.
  ///         </p>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>
  ///         <code>DOM_KEY_LOCATION_JOYSTICK</code>
  ///       </td>
  ///       <td>5</td>
  ///       <td>
  ///         <p>
  /// The key was a button on a game controller or a joystick on a mobile
  /// device.
  ///         </p>
  ///       </td>
  ///     </tr>
  ///   </tbody>
  /// </table>
  external int get location;

  /// The **`KeyboardEvent.ctrlKey`** read-only property returns a
  /// boolean value that indicates if the <kbd>control</kbd> key was pressed
  /// (`true`) or not (`false`) when the event occurred.
  external bool get ctrlKey;

  /// The **`KeyboardEvent.shiftKey`** read-only property is a
  /// boolean value that indicates if the <kbd>shift</kbd> key was pressed
  /// (`true`) or not (`false`) when the event occurred.
  ///
  /// The pressing of the shift key may change the [KeyboardEvent.key] of the
  /// event too. For example, pressing <kbd>B</kbd> generates `key: "b"`, while
  /// simultaneously pressing <kbd>Shift</kbd> generates `key: "B"`.
  external bool get shiftKey;

  /// The **`KeyboardEvent.altKey`** read-only property is a
  /// boolean value that indicates if the <kbd>alt</kbd> key (<kbd>Option</kbd>
  /// or <kbd>⌥</kbd> on macOS) was pressed (`true`) or not (`false`) when
  /// the event occurred.
  external bool get altKey;

  /// The **`KeyboardEvent.metaKey`** read-only property returning a
  /// boolean value that indicates if the <kbd>Meta</kbd> key was pressed
  /// (`true`) or not (`false`) when the event occurred. Some operating
  /// systems may intercept the key so it is never detected.
  ///
  /// > [!NOTE]
  /// > On Macintosh keyboards, this is the <kbd>⌘ Command</kbd> key.
  ///
  /// > [!NOTE]
  /// > Before Firefox 118, the <kbd>⊞ Windows</kbd> key was handled
  /// > as an "OS" key rather than the "Meta" key. `KeyboardEvent.metaKey` was
  /// > `false` when the <kbd>⊞ Windows</kbd> key was pressed.
  external bool get metaKey;

  /// The **`repeat`** read-only property of the
  /// [KeyboardEvent] interface returns a boolean value that is
  /// `true` if the given key is being held down such that it is automatically
  /// repeating.
  external bool get repeat;

  /// The **`KeyboardEvent.isComposing`** read-only property returns
  /// a boolean value indicating if the event is fired within a composition
  /// session, i.e. after [Element.compositionstart_event]
  /// and before [Element.compositionend_event].
  external bool get isComposing;

  /// The **`charCode`** read-only property of the
  /// [KeyboardEvent] interface returns the Unicode value of a character key
  /// pressed during a [Element.keypress_event] event.
  ///
  /// > [!WARNING]
  /// > Do not use this property, as it is deprecated. Instead, get the
  /// > Unicode value of the character using the [KeyboardEvent.key]
  /// > property.
  external int get charCode;

  /// The deprecated **`KeyboardEvent.keyCode`** read-only property represents a
  /// system and implementation dependent numerical code identifying the
  /// unmodified value of the pressed key.
  ///
  /// This is usually the decimal ASCII (`20`) or Windows 1252 code
  /// corresponding to the key. If the key can't be identified, this value is
  /// `0`.
  ///
  /// You should avoid using this if possible; it's been deprecated for some
  /// time. Instead, you should use [KeyboardEvent.code] (for the physical key
  /// pressed) or [KeyboardEvent.key] (for the character the key maps to). Check
  /// compatibility for either property if you target very old browsers.
  ///
  /// > [!NOTE]
  /// > Web developers shouldn't use the `keyCode` attribute for printable
  /// > characters when handling `keydown` and `keyup` events. As described
  /// > above, the `keyCode` attribute is not useful for printable characters,
  /// > especially those input with the <kbd>Shift</kbd> or <kbd>Alt</kbd> key
  /// > pressed.
  external int get keyCode;
}
extension type KeyboardEventInit._(JSObject _)
    implements EventModifierInit, JSObject {
  external factory KeyboardEventInit({
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
    String key,
    String code,
    int location,
    bool repeat,
    bool isComposing,
    int charCode,
    int keyCode,
  });

  external String get key;
  external set key(String value);
  external String get code;
  external set code(String value);
  external int get location;
  external set location(int value);
  external bool get repeat;
  external set repeat(bool value);
  external bool get isComposing;
  external set isComposing(bool value);
  external int get charCode;
  external set charCode(int value);
  external int get keyCode;
  external set keyCode(int value);
}

/// The DOM **`CompositionEvent`** represents events that occur due to the user
/// indirectly entering text.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent).
extension type CompositionEvent._(JSObject _) implements UIEvent, JSObject {
  external factory CompositionEvent(
    String type, [
    CompositionEventInit eventInitDict,
  ]);

  /// The **`initCompositionEvent()`**
  /// method of the [CompositionEvent] interface initializes the attributes of a
  /// `CompositionEvent` object instance.
  ///
  /// > [!NOTE]
  /// > The correct way of creating a [CompositionEvent] is to use
  /// > the constructor [CompositionEvent.CompositionEvent].
  external void initCompositionEvent(
    String typeArg, [
    bool bubblesArg,
    bool cancelableArg,
    Window? viewArg,
    String dataArg,
  ]);

  /// The **`data`** read-only property of the
  /// [CompositionEvent] interface returns the characters generated by the input
  /// method that raised the event; its exact nature varies depending on the
  /// type of event
  /// that generated the `CompositionEvent` object.
  external String get data;
}
extension type CompositionEventInit._(JSObject _)
    implements UIEventInit, JSObject {
  external factory CompositionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
    int which,
    String data,
  });

  external String get data;
  external set data(String value);
}

/// The **`TextEvent`** interface is a legacy UI event interface for reporting
/// changes to text UI elements.
///
/// > **Note:** `TextEvent` events have been superseded by events such as
/// > `input`, `beforeinput`, `keypress`, `keyup`, and `keydown`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextEvent).
extension type TextEvent._(JSObject _) implements UIEvent, JSObject {
  /// The **`initTextEventEvent()`** method of the [TextEvent] interface
  /// initializes the value of a `TextEvent` after it has been created.
  ///
  /// This method must be called to set the event before it is dispatched, using
  /// [EventTarget.dispatchEvent].
  ///
  /// > [!NOTE]
  /// > In general, you won't create these events yourself; they are created by
  /// > the browser.
  external void initTextEvent(
    String type, [
    bool bubbles,
    bool cancelable,
    Window? view,
    String data,
  ]);

  /// The **`data`** read-only property of the [TextEvent] interface returns the
  /// last character added to the input element.
  external String get data;
}
