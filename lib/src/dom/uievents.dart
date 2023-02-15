// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'input_device_capabilities.dart';

@JS('UIEvent')
@staticInterop
class UIEvent extends Event {
  external factory UIEvent();

  external factory UIEvent.a1(JSString type);

  external factory UIEvent.a2(
    JSString type,
    UIEventInit eventInitDict,
  );
}

extension UIEventExtension on UIEvent {
  external InputDeviceCapabilities? get sourceCapabilities;
  external Window? get view;
  external JSNumber get detail;
  external JSVoid initUIEvent(JSString typeArg);
  external JSVoid initUIEvent1(
    JSString typeArg,
    JSBoolean bubblesArg,
  );
  external JSVoid initUIEvent2(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
  );
  external JSVoid initUIEvent3(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
  );
  external JSVoid initUIEvent4(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
  );
  external JSNumber get which;
}

@JS('UIEventInit')
@staticInterop
class UIEventInit extends EventInit {
  external factory UIEventInit();
}

extension UIEventInitExtension on UIEventInit {}

@JS('FocusEvent')
@staticInterop
class FocusEvent extends UIEvent {
  external factory FocusEvent();

  external factory FocusEvent.a1(JSString type);

  external factory FocusEvent.a2(
    JSString type,
    FocusEventInit eventInitDict,
  );
}

extension FocusEventExtension on FocusEvent {
  external EventTarget? get relatedTarget;
}

@JS('FocusEventInit')
@staticInterop
class FocusEventInit extends UIEventInit {
  external factory FocusEventInit();
}

extension FocusEventInitExtension on FocusEventInit {}

@JS('MouseEvent')
@staticInterop
class MouseEvent extends UIEvent {
  external factory MouseEvent();

  external factory MouseEvent.a1(JSString type);

  external factory MouseEvent.a2(
    JSString type,
    MouseEventInit eventInitDict,
  );
}

extension MouseEventExtension on MouseEvent {
  external JSNumber get pageX;
  external JSNumber get pageY;
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get offsetX;
  external JSNumber get offsetY;
  external JSNumber get movementX;
  external JSNumber get movementY;
  external JSNumber get screenX;
  external JSNumber get screenY;
  external JSNumber get clientX;
  external JSNumber get clientY;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSNumber get button;
  external JSNumber get buttons;
  external EventTarget? get relatedTarget;
  external JSBoolean getModifierState(JSString keyArg);
  external JSVoid initMouseEvent(JSString typeArg);
  external JSVoid initMouseEvent1(
    JSString typeArg,
    JSBoolean bubblesArg,
  );
  external JSVoid initMouseEvent2(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
  );
  external JSVoid initMouseEvent3(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
  );
  external JSVoid initMouseEvent4(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
  );
  external JSVoid initMouseEvent5(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
  );
  external JSVoid initMouseEvent6(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
  );
  external JSVoid initMouseEvent7(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
  );
  external JSVoid initMouseEvent8(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
  );
  external JSVoid initMouseEvent9(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
    JSBoolean ctrlKeyArg,
  );
  external JSVoid initMouseEvent10(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
    JSBoolean ctrlKeyArg,
    JSBoolean altKeyArg,
  );
  external JSVoid initMouseEvent11(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
    JSBoolean ctrlKeyArg,
    JSBoolean altKeyArg,
    JSBoolean shiftKeyArg,
  );
  external JSVoid initMouseEvent12(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
    JSBoolean ctrlKeyArg,
    JSBoolean altKeyArg,
    JSBoolean shiftKeyArg,
    JSBoolean metaKeyArg,
  );
  external JSVoid initMouseEvent13(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
    JSBoolean ctrlKeyArg,
    JSBoolean altKeyArg,
    JSBoolean shiftKeyArg,
    JSBoolean metaKeyArg,
    JSNumber buttonArg,
  );
  external JSVoid initMouseEvent14(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
    JSNumber screenXArg,
    JSNumber screenYArg,
    JSNumber clientXArg,
    JSNumber clientYArg,
    JSBoolean ctrlKeyArg,
    JSBoolean altKeyArg,
    JSBoolean shiftKeyArg,
    JSBoolean metaKeyArg,
    JSNumber buttonArg,
    EventTarget? relatedTargetArg,
  );
}

@JS('MouseEventInit')
@staticInterop
class MouseEventInit extends EventModifierInit {
  external factory MouseEventInit();
}

extension MouseEventInitExtension on MouseEventInit {}

@JS('EventModifierInit')
@staticInterop
class EventModifierInit extends UIEventInit {
  external factory EventModifierInit();
}

extension EventModifierInitExtension on EventModifierInit {}

@JS('WheelEvent')
@staticInterop
class WheelEvent extends MouseEvent {
  external factory WheelEvent();

  external factory WheelEvent.a1(JSString type);

  external factory WheelEvent.a2(
    JSString type,
    WheelEventInit eventInitDict,
  );

  external static JSNumber get DOM_DELTA_PIXEL;
  external static JSNumber get DOM_DELTA_LINE;
  external static JSNumber get DOM_DELTA_PAGE;
}

extension WheelEventExtension on WheelEvent {
  external JSNumber get deltaX;
  external JSNumber get deltaY;
  external JSNumber get deltaZ;
  external JSNumber get deltaMode;
}

@JS('WheelEventInit')
@staticInterop
class WheelEventInit extends MouseEventInit {
  external factory WheelEventInit();
}

extension WheelEventInitExtension on WheelEventInit {}

@JS('InputEvent')
@staticInterop
class InputEvent extends UIEvent {
  external factory InputEvent();

  external factory InputEvent.a1(JSString type);

  external factory InputEvent.a2(
    JSString type,
    InputEventInit eventInitDict,
  );
}

extension InputEventExtension on InputEvent {
  external DataTransfer? get dataTransfer;
  external JSArray getTargetRanges();
  external JSString? get data;
  external JSBoolean get isComposing;
  external JSString get inputType;
}

@JS('InputEventInit')
@staticInterop
class InputEventInit extends UIEventInit {
  external factory InputEventInit();
}

extension InputEventInitExtension on InputEventInit {}

@JS('KeyboardEvent')
@staticInterop
class KeyboardEvent extends UIEvent {
  external factory KeyboardEvent();

  external factory KeyboardEvent.a1(JSString type);

  external factory KeyboardEvent.a2(
    JSString type,
    KeyboardEventInit eventInitDict,
  );

  external static JSNumber get DOM_KEY_LOCATION_STANDARD;
  external static JSNumber get DOM_KEY_LOCATION_LEFT;
  external static JSNumber get DOM_KEY_LOCATION_RIGHT;
  external static JSNumber get DOM_KEY_LOCATION_NUMPAD;
}

extension KeyboardEventExtension on KeyboardEvent {
  external JSString get key;
  external JSString get code;
  external JSNumber get location;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSBoolean get repeat;
  external JSBoolean get isComposing;
  external JSBoolean getModifierState(JSString keyArg);
  external JSVoid initKeyboardEvent(JSString typeArg);
  external JSVoid initKeyboardEvent1(
    JSString typeArg,
    JSBoolean bubblesArg,
  );
  external JSVoid initKeyboardEvent2(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
  );
  external JSVoid initKeyboardEvent3(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
  );
  external JSVoid initKeyboardEvent4(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
  );
  external JSVoid initKeyboardEvent5(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
    JSNumber locationArg,
  );
  external JSVoid initKeyboardEvent6(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
    JSNumber locationArg,
    JSBoolean ctrlKey,
  );
  external JSVoid initKeyboardEvent7(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
    JSNumber locationArg,
    JSBoolean ctrlKey,
    JSBoolean altKey,
  );
  external JSVoid initKeyboardEvent8(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
    JSNumber locationArg,
    JSBoolean ctrlKey,
    JSBoolean altKey,
    JSBoolean shiftKey,
  );
  external JSVoid initKeyboardEvent9(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
    JSNumber locationArg,
    JSBoolean ctrlKey,
    JSBoolean altKey,
    JSBoolean shiftKey,
    JSBoolean metaKey,
  );
  external JSNumber get charCode;
  external JSNumber get keyCode;
}

@JS('KeyboardEventInit')
@staticInterop
class KeyboardEventInit extends EventModifierInit {
  external factory KeyboardEventInit();
}

extension KeyboardEventInitExtension on KeyboardEventInit {}

@JS('CompositionEvent')
@staticInterop
class CompositionEvent extends UIEvent {
  external factory CompositionEvent();

  external factory CompositionEvent.a1(JSString type);

  external factory CompositionEvent.a2(
    JSString type,
    CompositionEventInit eventInitDict,
  );
}

extension CompositionEventExtension on CompositionEvent {
  external JSString get data;
  external JSVoid initCompositionEvent(JSString typeArg);
  external JSVoid initCompositionEvent1(
    JSString typeArg,
    JSBoolean bubblesArg,
  );
  external JSVoid initCompositionEvent2(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
  );
  external JSVoid initCompositionEvent3(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
  );
  external JSVoid initCompositionEvent4(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString dataArg,
  );
}

@JS('CompositionEventInit')
@staticInterop
class CompositionEventInit extends UIEventInit {
  external factory CompositionEventInit();
}

extension CompositionEventInitExtension on CompositionEventInit {}

@JS('MutationEvent')
@staticInterop
class MutationEvent extends Event {
  external factory MutationEvent();

  external static JSNumber get MODIFICATION;
  external static JSNumber get ADDITION;
  external static JSNumber get REMOVAL;
}

extension MutationEventExtension on MutationEvent {
  external Node? get relatedNode;
  external JSString get prevValue;
  external JSString get newValue;
  external JSString get attrName;
  external JSNumber get attrChange;
  external JSVoid initMutationEvent(JSString typeArg);
  external JSVoid initMutationEvent1(
    JSString typeArg,
    JSBoolean bubblesArg,
  );
  external JSVoid initMutationEvent2(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
  );
  external JSVoid initMutationEvent3(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Node? relatedNodeArg,
  );
  external JSVoid initMutationEvent4(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Node? relatedNodeArg,
    JSString prevValueArg,
  );
  external JSVoid initMutationEvent5(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Node? relatedNodeArg,
    JSString prevValueArg,
    JSString newValueArg,
  );
  external JSVoid initMutationEvent6(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Node? relatedNodeArg,
    JSString prevValueArg,
    JSString newValueArg,
    JSString attrNameArg,
  );
  external JSVoid initMutationEvent7(
    JSString typeArg,
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Node? relatedNodeArg,
    JSString prevValueArg,
    JSString newValueArg,
    JSString attrNameArg,
    JSNumber attrChangeArg,
  );
}
