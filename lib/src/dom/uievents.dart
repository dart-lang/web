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
class UIEvent implements Event {
  external factory UIEvent(
    JSString type, [
    UIEventInit eventInitDict,
  ]);
}

extension UIEventExtension on UIEvent {
  external JSVoid initUIEvent(
    JSString typeArg, [
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSNumber detailArg,
  ]);
  external InputDeviceCapabilities? get sourceCapabilities;
  external Window? get view;
  external JSNumber get detail;
  external JSNumber get which;
}

@JS()
@staticInterop
@anonymous
class UIEventInit implements EventInit {
  external factory UIEventInit({
    InputDeviceCapabilities? sourceCapabilities,
    Window? view,
    JSNumber detail = 0,
    JSNumber which = 0,
  });
}

extension UIEventInitExtension on UIEventInit {
  external set sourceCapabilities(InputDeviceCapabilities? value);
  external InputDeviceCapabilities? get sourceCapabilities;
  external set view(Window? value);
  external Window? get view;
  external set detail(JSNumber value);
  external JSNumber get detail;
  external set which(JSNumber value);
  external JSNumber get which;
}

@JS('FocusEvent')
@staticInterop
class FocusEvent implements UIEvent {
  external factory FocusEvent(
    JSString type, [
    FocusEventInit eventInitDict,
  ]);
}

extension FocusEventExtension on FocusEvent {
  external EventTarget? get relatedTarget;
}

@JS()
@staticInterop
@anonymous
class FocusEventInit implements UIEventInit {
  external factory FocusEventInit({EventTarget? relatedTarget});
}

extension FocusEventInitExtension on FocusEventInit {
  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}

@JS('MouseEvent')
@staticInterop
class MouseEvent implements UIEvent {
  external factory MouseEvent(
    JSString type, [
    MouseEventInit eventInitDict,
  ]);
}

extension MouseEventExtension on MouseEvent {
  external JSBoolean getModifierState(JSString keyArg);
  external JSVoid initMouseEvent(
    JSString typeArg, [
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
  ]);
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
}

@JS()
@staticInterop
@anonymous
class MouseEventInit implements EventModifierInit {
  external factory MouseEventInit({
    JSNumber movementX = 0,
    JSNumber movementY = 0,
    JSNumber screenX = 0,
    JSNumber screenY = 0,
    JSNumber clientX = 0,
    JSNumber clientY = 0,
    JSNumber button = 0,
    JSNumber buttons = 0,
    EventTarget? relatedTarget,
  });
}

extension MouseEventInitExtension on MouseEventInit {
  external set movementX(JSNumber value);
  external JSNumber get movementX;
  external set movementY(JSNumber value);
  external JSNumber get movementY;
  external set screenX(JSNumber value);
  external JSNumber get screenX;
  external set screenY(JSNumber value);
  external JSNumber get screenY;
  external set clientX(JSNumber value);
  external JSNumber get clientX;
  external set clientY(JSNumber value);
  external JSNumber get clientY;
  external set button(JSNumber value);
  external JSNumber get button;
  external set buttons(JSNumber value);
  external JSNumber get buttons;
  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}

@JS()
@staticInterop
@anonymous
class EventModifierInit implements UIEventInit {
  external factory EventModifierInit({
    JSBoolean ctrlKey = false,
    JSBoolean shiftKey = false,
    JSBoolean altKey = false,
    JSBoolean metaKey = false,
    JSBoolean modifierAltGraph = false,
    JSBoolean modifierCapsLock = false,
    JSBoolean modifierFn = false,
    JSBoolean modifierFnLock = false,
    JSBoolean modifierHyper = false,
    JSBoolean modifierNumLock = false,
    JSBoolean modifierScrollLock = false,
    JSBoolean modifierSuper = false,
    JSBoolean modifierSymbol = false,
    JSBoolean modifierSymbolLock = false,
  });
}

extension EventModifierInitExtension on EventModifierInit {
  external set ctrlKey(JSBoolean value);
  external JSBoolean get ctrlKey;
  external set shiftKey(JSBoolean value);
  external JSBoolean get shiftKey;
  external set altKey(JSBoolean value);
  external JSBoolean get altKey;
  external set metaKey(JSBoolean value);
  external JSBoolean get metaKey;
  external set modifierAltGraph(JSBoolean value);
  external JSBoolean get modifierAltGraph;
  external set modifierCapsLock(JSBoolean value);
  external JSBoolean get modifierCapsLock;
  external set modifierFn(JSBoolean value);
  external JSBoolean get modifierFn;
  external set modifierFnLock(JSBoolean value);
  external JSBoolean get modifierFnLock;
  external set modifierHyper(JSBoolean value);
  external JSBoolean get modifierHyper;
  external set modifierNumLock(JSBoolean value);
  external JSBoolean get modifierNumLock;
  external set modifierScrollLock(JSBoolean value);
  external JSBoolean get modifierScrollLock;
  external set modifierSuper(JSBoolean value);
  external JSBoolean get modifierSuper;
  external set modifierSymbol(JSBoolean value);
  external JSBoolean get modifierSymbol;
  external set modifierSymbolLock(JSBoolean value);
  external JSBoolean get modifierSymbolLock;
}

@JS('WheelEvent')
@staticInterop
class WheelEvent implements MouseEvent {
  external factory WheelEvent(
    JSString type, [
    WheelEventInit eventInitDict,
  ]);

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

@JS()
@staticInterop
@anonymous
class WheelEventInit implements MouseEventInit {
  external factory WheelEventInit({
    JSNumber deltaX = 0.0,
    JSNumber deltaY = 0.0,
    JSNumber deltaZ = 0.0,
    JSNumber deltaMode = 0,
  });
}

extension WheelEventInitExtension on WheelEventInit {
  external set deltaX(JSNumber value);
  external JSNumber get deltaX;
  external set deltaY(JSNumber value);
  external JSNumber get deltaY;
  external set deltaZ(JSNumber value);
  external JSNumber get deltaZ;
  external set deltaMode(JSNumber value);
  external JSNumber get deltaMode;
}

@JS('InputEvent')
@staticInterop
class InputEvent implements UIEvent {
  external factory InputEvent(
    JSString type, [
    InputEventInit eventInitDict,
  ]);
}

extension InputEventExtension on InputEvent {
  external JSArray getTargetRanges();
  external DataTransfer? get dataTransfer;
  external JSString? get data;
  external JSBoolean get isComposing;
  external JSString get inputType;
}

@JS()
@staticInterop
@anonymous
class InputEventInit implements UIEventInit {
  external factory InputEventInit({
    DataTransfer? dataTransfer,
    JSArray targetRanges = const [],
    JSString? data,
    JSBoolean isComposing = false,
    JSString inputType = '',
  });
}

extension InputEventInitExtension on InputEventInit {
  external set dataTransfer(DataTransfer? value);
  external DataTransfer? get dataTransfer;
  external set targetRanges(JSArray value);
  external JSArray get targetRanges;
  external set data(JSString? value);
  external JSString? get data;
  external set isComposing(JSBoolean value);
  external JSBoolean get isComposing;
  external set inputType(JSString value);
  external JSString get inputType;
}

@JS('KeyboardEvent')
@staticInterop
class KeyboardEvent implements UIEvent {
  external factory KeyboardEvent(
    JSString type, [
    KeyboardEventInit eventInitDict,
  ]);

  external static JSNumber get DOM_KEY_LOCATION_STANDARD;
  external static JSNumber get DOM_KEY_LOCATION_LEFT;
  external static JSNumber get DOM_KEY_LOCATION_RIGHT;
  external static JSNumber get DOM_KEY_LOCATION_NUMPAD;
}

extension KeyboardEventExtension on KeyboardEvent {
  external JSBoolean getModifierState(JSString keyArg);
  external JSVoid initKeyboardEvent(
    JSString typeArg, [
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString keyArg,
    JSNumber locationArg,
    JSBoolean ctrlKey,
    JSBoolean altKey,
    JSBoolean shiftKey,
    JSBoolean metaKey,
  ]);
  external JSString get key;
  external JSString get code;
  external JSNumber get location;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSBoolean get repeat;
  external JSBoolean get isComposing;
  external JSNumber get charCode;
  external JSNumber get keyCode;
}

@JS()
@staticInterop
@anonymous
class KeyboardEventInit implements EventModifierInit {
  external factory KeyboardEventInit({
    JSString key = '',
    JSString code = '',
    JSNumber location = 0,
    JSBoolean repeat = false,
    JSBoolean isComposing = false,
    JSNumber charCode = 0,
    JSNumber keyCode = 0,
  });
}

extension KeyboardEventInitExtension on KeyboardEventInit {
  external set key(JSString value);
  external JSString get key;
  external set code(JSString value);
  external JSString get code;
  external set location(JSNumber value);
  external JSNumber get location;
  external set repeat(JSBoolean value);
  external JSBoolean get repeat;
  external set isComposing(JSBoolean value);
  external JSBoolean get isComposing;
  external set charCode(JSNumber value);
  external JSNumber get charCode;
  external set keyCode(JSNumber value);
  external JSNumber get keyCode;
}

@JS('CompositionEvent')
@staticInterop
class CompositionEvent implements UIEvent {
  external factory CompositionEvent(
    JSString type, [
    CompositionEventInit eventInitDict,
  ]);
}

extension CompositionEventExtension on CompositionEvent {
  external JSVoid initCompositionEvent(
    JSString typeArg, [
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Window? viewArg,
    JSString dataArg,
  ]);
  external JSString get data;
}

@JS()
@staticInterop
@anonymous
class CompositionEventInit implements UIEventInit {
  external factory CompositionEventInit({JSString data = ''});
}

extension CompositionEventInitExtension on CompositionEventInit {
  external set data(JSString value);
  external JSString get data;
}

@JS('MutationEvent')
@staticInterop
class MutationEvent implements Event {
  external static JSNumber get MODIFICATION;
  external static JSNumber get ADDITION;
  external static JSNumber get REMOVAL;
}

extension MutationEventExtension on MutationEvent {
  external JSVoid initMutationEvent(
    JSString typeArg, [
    JSBoolean bubblesArg,
    JSBoolean cancelableArg,
    Node? relatedNodeArg,
    JSString prevValueArg,
    JSString newValueArg,
    JSString attrNameArg,
    JSNumber attrChangeArg,
  ]);
  external Node? get relatedNode;
  external JSString get prevValue;
  external JSString get newValue;
  external JSString get attrName;
  external JSNumber get attrChange;
}
