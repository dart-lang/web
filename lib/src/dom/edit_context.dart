// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('EditContextInit')
@staticInterop
class EditContextInit {
  external factory EditContextInit();
}

extension EditContextInitExtension on EditContextInit {
  // TODO
  // TODO
  // TODO
}

@JS('EditContext')
@staticInterop
class EditContext extends EventTarget {
  external factory EditContext();
  external factory EditContext.a1();
  external factory EditContext.a1_1(EditContextInit options);
}

extension EditContextExtension on EditContext {
  external JSUndefined updateText(
      JSNumber rangeStart, JSNumber rangeEnd, JSString text);
  external JSUndefined updateSelection(JSNumber start, JSNumber end);
  external JSUndefined updateControlBound(DOMRect controlBound);
  external JSUndefined updateSelectionBound(DOMRect selectionBound);
  external JSUndefined updateCharacterBounds(
      JSNumber rangeStart, JSArray characterBounds);
  external JSArray attachedElements();
  external JSString get text;
  external JSNumber get selectionStart;
  external JSNumber get selectionEnd;
  external JSNumber get compositionRangeStart;
  external JSNumber get compositionRangeEnd;
  external JSBoolean get isInComposition;
  external DOMRect get controlBound;
  external DOMRect get selectionBound;
  external JSNumber get characterBoundsRangeStart;
  external JSArray characterBounds();
  external EventHandler get ontextupdate;
  external set ontextupdate(EventHandler value);
  external EventHandler get ontextformatupdate;
  external set ontextformatupdate(EventHandler value);
  external EventHandler get oncharacterboundsupdate;
  external set oncharacterboundsupdate(EventHandler value);
  external EventHandler get oncompositionstart;
  external set oncompositionstart(EventHandler value);
  external EventHandler get oncompositionend;
  external set oncompositionend(EventHandler value);
}

@JS('TextUpdateEventInit')
@staticInterop
class TextUpdateEventInit {
  external factory TextUpdateEventInit();
}

extension TextUpdateEventInitExtension on TextUpdateEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TextUpdateEvent')
@staticInterop
class TextUpdateEvent extends Event {
  external factory TextUpdateEvent();
  external factory TextUpdateEvent.a1();
  external factory TextUpdateEvent.a1_1(TextUpdateEventInit options);
}

extension TextUpdateEventExtension on TextUpdateEvent {
  external JSNumber get updateRangeStart;
  external JSNumber get updateRangeEnd;
  external JSString get text;
  external JSNumber get selectionStart;
  external JSNumber get selectionEnd;
  external JSNumber get compositionStart;
  external JSNumber get compositionEnd;
}

@JS('TextFormatInit')
@staticInterop
class TextFormatInit {
  external factory TextFormatInit();
}

extension TextFormatInitExtension on TextFormatInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TextFormat')
@staticInterop
class TextFormat {
  external factory TextFormat();
  external factory TextFormat.a1();
  external factory TextFormat.a1_1(TextFormatInit options);
}

extension TextFormatExtension on TextFormat {
  external JSNumber get rangeStart;
  external set rangeStart(JSNumber value);
  external JSNumber get rangeEnd;
  external set rangeEnd(JSNumber value);
  external JSString get textColor;
  external set textColor(JSString value);
  external JSString get backgroundColor;
  external set backgroundColor(JSString value);
  external JSString get underlineStyle;
  external set underlineStyle(JSString value);
  external JSString get underlineThickness;
  external set underlineThickness(JSString value);
  external JSString get underlineColor;
  external set underlineColor(JSString value);
}

@JS('TextFormatUpdateEventInit')
@staticInterop
class TextFormatUpdateEventInit {
  external factory TextFormatUpdateEventInit();
}

extension TextFormatUpdateEventInitExtension on TextFormatUpdateEventInit {
  // TODO
}

@JS('TextFormatUpdateEvent')
@staticInterop
class TextFormatUpdateEvent extends Event {
  external factory TextFormatUpdateEvent();
  external factory TextFormatUpdateEvent.a1();
  external factory TextFormatUpdateEvent.a1_1(
      TextFormatUpdateEventInit options);
}

extension TextFormatUpdateEventExtension on TextFormatUpdateEvent {
  external JSArray getTextFormats();
}

@JS('CharacterBoundsUpdateEventInit')
@staticInterop
class CharacterBoundsUpdateEventInit {
  external factory CharacterBoundsUpdateEventInit();
}

extension CharacterBoundsUpdateEventInitExtension
    on CharacterBoundsUpdateEventInit {
  // TODO
  // TODO
}

@JS('CharacterBoundsUpdateEvent')
@staticInterop
class CharacterBoundsUpdateEvent extends Event {
  external factory CharacterBoundsUpdateEvent();
  external factory CharacterBoundsUpdateEvent.a1();
  external factory CharacterBoundsUpdateEvent.a1_1(
      CharacterBoundsUpdateEventInit options);
}

extension CharacterBoundsUpdateEventExtension on CharacterBoundsUpdateEvent {
  external JSNumber get rangeStart;
  external JSNumber get rangeEnd;
}
