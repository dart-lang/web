// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('UIEvent')
@staticInterop
class UIEvent extends Event {
  external factory UIEvent();
  external factory UIEvent.a1(JSString type);
  external factory UIEvent.a1_1(JSString type, UIEventInit eventInitDict);
}

extension UIEventExtension on UIEvent {
  external InputDeviceCapabilities? get sourceCapabilities;
  external Window? get view;
  external JSNumber get detail;
  external JSUndefined initUIEvent(JSString typeArg);
  external JSUndefined initUIEvent_1(JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initUIEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initUIEvent_3(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initUIEvent_4(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg, JSNumber detailArg);
  external JSNumber get which;
}

@JS('UIEventInit')
@staticInterop
class UIEventInit extends EventInit {
  external factory UIEventInit();
}

extension UIEventInitExtension on UIEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FocusEvent')
@staticInterop
class FocusEvent extends UIEvent {
  external factory FocusEvent();
  external factory FocusEvent.a1(JSString type);
  external factory FocusEvent.a1_1(JSString type, FocusEventInit eventInitDict);
}

extension FocusEventExtension on FocusEvent {
  external EventTarget? get relatedTarget;
}

@JS('FocusEventInit')
@staticInterop
class FocusEventInit extends UIEventInit {
  external factory FocusEventInit();
}

extension FocusEventInitExtension on FocusEventInit {
  // TODO
}

@JS('MouseEvent')
@staticInterop
class MouseEvent extends UIEvent {
  external factory MouseEvent();
  external factory MouseEvent.a1(JSString type);
  external factory MouseEvent.a1_1(JSString type, MouseEventInit eventInitDict);
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
  external JSUndefined initMouseEvent(JSString typeArg);
  external JSUndefined initMouseEvent_1(JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initMouseEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initMouseEvent_3(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initMouseEvent_4(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg, JSNumber detailArg);
  external JSUndefined initMouseEvent_5(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg);
  external JSUndefined initMouseEvent_6(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg);
  external JSUndefined initMouseEvent_7(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg);
  external JSUndefined initMouseEvent_8(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg);
  external JSUndefined initMouseEvent_9(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg);
  external JSUndefined initMouseEvent_10(
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
      JSBoolean altKeyArg);
  external JSUndefined initMouseEvent_11(
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
      JSBoolean shiftKeyArg);
  external JSUndefined initMouseEvent_12(
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
      JSBoolean metaKeyArg);
  external JSUndefined initMouseEvent_13(
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
      JSNumber buttonArg);
  external JSUndefined initMouseEvent_14(
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
      EventTarget? relatedTargetArg);
}

@JS('MouseEventInit')
@staticInterop
class MouseEventInit extends EventModifierInit {
  external factory MouseEventInit();
}

extension MouseEventInitExtension on MouseEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('EventModifierInit')
@staticInterop
class EventModifierInit extends UIEventInit {
  external factory EventModifierInit();
}

extension EventModifierInitExtension on EventModifierInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WheelEvent')
@staticInterop
class WheelEvent extends MouseEvent {
  external factory WheelEvent();
  external factory WheelEvent.a1(JSString type);
  external factory WheelEvent.a1_1(JSString type, WheelEventInit eventInitDict);
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

extension WheelEventInitExtension on WheelEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('InputEvent')
@staticInterop
class InputEvent extends UIEvent {
  external factory InputEvent();
  external factory InputEvent.a1(JSString type);
  external factory InputEvent.a1_1(JSString type, InputEventInit eventInitDict);
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

extension InputEventInitExtension on InputEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('KeyboardEvent')
@staticInterop
class KeyboardEvent extends UIEvent {
  external factory KeyboardEvent();
  external factory KeyboardEvent.a1(JSString type);
  external factory KeyboardEvent.a1_1(
      JSString type, KeyboardEventInit eventInitDict);
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
  external JSUndefined initKeyboardEvent(JSString typeArg);
  external JSUndefined initKeyboardEvent_1(
      JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initKeyboardEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initKeyboardEvent_3(JSString typeArg,
      JSBoolean bubblesArg, JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initKeyboardEvent_4(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg);
  external JSUndefined initKeyboardEvent_5(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg);
  external JSUndefined initKeyboardEvent_6(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey);
  external JSUndefined initKeyboardEvent_7(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey,
      JSBoolean altKey);
  external JSUndefined initKeyboardEvent_8(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey,
      JSBoolean altKey,
      JSBoolean shiftKey);
  external JSUndefined initKeyboardEvent_9(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey,
      JSBoolean altKey,
      JSBoolean shiftKey,
      JSBoolean metaKey);
  external JSNumber get charCode;
  external JSNumber get keyCode;
}

@JS('KeyboardEventInit')
@staticInterop
class KeyboardEventInit extends EventModifierInit {
  external factory KeyboardEventInit();
}

extension KeyboardEventInitExtension on KeyboardEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CompositionEvent')
@staticInterop
class CompositionEvent extends UIEvent {
  external factory CompositionEvent();
  external factory CompositionEvent.a1(JSString type);
  external factory CompositionEvent.a1_1(
      JSString type, CompositionEventInit eventInitDict);
}

extension CompositionEventExtension on CompositionEvent {
  external JSString get data;
  external JSUndefined initCompositionEvent(JSString typeArg);
  external JSUndefined initCompositionEvent_1(
      JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initCompositionEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initCompositionEvent_3(JSString typeArg,
      JSBoolean bubblesArg, JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initCompositionEvent_4(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString dataArg);
}

@JS('CompositionEventInit')
@staticInterop
class CompositionEventInit extends UIEventInit {
  external factory CompositionEventInit();
}

extension CompositionEventInitExtension on CompositionEventInit {
  // TODO
}

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
  external JSUndefined initMutationEvent(JSString typeArg);
  external JSUndefined initMutationEvent_1(
      JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initMutationEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initMutationEvent_3(JSString typeArg,
      JSBoolean bubblesArg, JSBoolean cancelableArg, Node? relatedNodeArg);
  external JSUndefined initMutationEvent_4(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg);
  external JSUndefined initMutationEvent_5(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg,
      JSString newValueArg);
  external JSUndefined initMutationEvent_6(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg,
      JSString newValueArg,
      JSString attrNameArg);
  external JSUndefined initMutationEvent_7(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg,
      JSString newValueArg,
      JSString attrNameArg,
      JSNumber attrChangeArg);
}
