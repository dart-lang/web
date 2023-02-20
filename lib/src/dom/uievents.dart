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

@JS()
@staticInterop
@anonymous
class UIEventInit extends EventInit {
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

@JS()
@staticInterop
@anonymous
class FocusEventInit extends UIEventInit {
  external factory FocusEventInit({EventTarget? relatedTarget});
}

extension FocusEventInitExtension on FocusEventInit {
  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}

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

@JS()
@staticInterop
@anonymous
class MouseEventInit extends EventModifierInit {
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
class EventModifierInit extends UIEventInit {
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

@JS()
@staticInterop
@anonymous
class WheelEventInit extends MouseEventInit {
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

@JS()
@staticInterop
@anonymous
class InputEventInit extends UIEventInit {
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

@JS()
@staticInterop
@anonymous
class KeyboardEventInit extends EventModifierInit {
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

@JS()
@staticInterop
@anonymous
class CompositionEventInit extends UIEventInit {
  external factory CompositionEventInit({JSString data = ''});
}

extension CompositionEventInitExtension on CompositionEventInit {
  external set data(JSString value);
  external JSString get data;
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
