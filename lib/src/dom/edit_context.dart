// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

@JS('EditContextInit')
@staticInterop
class EditContextInit {
  external factory EditContextInit();
}

extension EditContextInitExtension on EditContextInit {}

@JS('EditContext')
@staticInterop
class EditContext extends EventTarget {
  external factory EditContext();

  external factory EditContext.a1();

  external factory EditContext.a2(EditContextInit options);
}

extension EditContextExtension on EditContext {
  external JSVoid updateText(
    JSNumber rangeStart,
    JSNumber rangeEnd,
    JSString text,
  );
  external JSVoid updateSelection(
    JSNumber start,
    JSNumber end,
  );
  external JSVoid updateControlBound(DOMRect controlBound);
  external JSVoid updateSelectionBound(DOMRect selectionBound);
  external JSVoid updateCharacterBounds(
    JSNumber rangeStart,
    JSArray characterBounds,
  );
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
  external set ontextupdate(EventHandler value);
  external EventHandler get ontextupdate;
  external set ontextformatupdate(EventHandler value);
  external EventHandler get ontextformatupdate;
  external set oncharacterboundsupdate(EventHandler value);
  external EventHandler get oncharacterboundsupdate;
  external set oncompositionstart(EventHandler value);
  external EventHandler get oncompositionstart;
  external set oncompositionend(EventHandler value);
  external EventHandler get oncompositionend;
}

@JS('TextUpdateEventInit')
@staticInterop
class TextUpdateEventInit {
  external factory TextUpdateEventInit();
}

extension TextUpdateEventInitExtension on TextUpdateEventInit {}

@JS('TextUpdateEvent')
@staticInterop
class TextUpdateEvent extends Event {
  external factory TextUpdateEvent();

  external factory TextUpdateEvent.a1();

  external factory TextUpdateEvent.a2(TextUpdateEventInit options);
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

extension TextFormatInitExtension on TextFormatInit {}

@JS('TextFormat')
@staticInterop
class TextFormat {
  external factory TextFormat();

  external factory TextFormat.a1();

  external factory TextFormat.a2(TextFormatInit options);
}

extension TextFormatExtension on TextFormat {
  external set rangeStart(JSNumber value);
  external JSNumber get rangeStart;
  external set rangeEnd(JSNumber value);
  external JSNumber get rangeEnd;
  external set textColor(JSString value);
  external JSString get textColor;
  external set backgroundColor(JSString value);
  external JSString get backgroundColor;
  external set underlineStyle(JSString value);
  external JSString get underlineStyle;
  external set underlineThickness(JSString value);
  external JSString get underlineThickness;
  external set underlineColor(JSString value);
  external JSString get underlineColor;
}

@JS('TextFormatUpdateEventInit')
@staticInterop
class TextFormatUpdateEventInit {
  external factory TextFormatUpdateEventInit();
}

extension TextFormatUpdateEventInitExtension on TextFormatUpdateEventInit {}

@JS('TextFormatUpdateEvent')
@staticInterop
class TextFormatUpdateEvent extends Event {
  external factory TextFormatUpdateEvent();

  external factory TextFormatUpdateEvent.a1();

  external factory TextFormatUpdateEvent.a2(TextFormatUpdateEventInit options);
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
    on CharacterBoundsUpdateEventInit {}

@JS('CharacterBoundsUpdateEvent')
@staticInterop
class CharacterBoundsUpdateEvent extends Event {
  external factory CharacterBoundsUpdateEvent();

  external factory CharacterBoundsUpdateEvent.a1();

  external factory CharacterBoundsUpdateEvent.a2(
      CharacterBoundsUpdateEventInit options);
}

extension CharacterBoundsUpdateEventExtension on CharacterBoundsUpdateEvent {
  external JSNumber get rangeStart;
  external JSNumber get rangeEnd;
}
