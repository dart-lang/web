// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

@JS()
@staticInterop
@anonymous
class EditContextInit {
  external factory EditContextInit({
    JSString text,
    JSNumber selectionStart,
    JSNumber selectionEnd,
  });
}

extension EditContextInitExtension on EditContextInit {
  external set text(JSString value);
  external JSString get text;
  external set selectionStart(JSNumber value);
  external JSNumber get selectionStart;
  external set selectionEnd(JSNumber value);
  external JSNumber get selectionEnd;
}

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

@JS()
@staticInterop
@anonymous
class TextUpdateEventInit {
  external factory TextUpdateEventInit({
    JSNumber updateRangeStart,
    JSNumber updateRangeEnd,
    JSString text,
    JSNumber selectionStart,
    JSNumber selectionEnd,
    JSNumber compositionStart,
    JSNumber compositionEnd,
  });
}

extension TextUpdateEventInitExtension on TextUpdateEventInit {
  external set updateRangeStart(JSNumber value);
  external JSNumber get updateRangeStart;
  external set updateRangeEnd(JSNumber value);
  external JSNumber get updateRangeEnd;
  external set text(JSString value);
  external JSString get text;
  external set selectionStart(JSNumber value);
  external JSNumber get selectionStart;
  external set selectionEnd(JSNumber value);
  external JSNumber get selectionEnd;
  external set compositionStart(JSNumber value);
  external JSNumber get compositionStart;
  external set compositionEnd(JSNumber value);
  external JSNumber get compositionEnd;
}

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

@JS()
@staticInterop
@anonymous
class TextFormatInit {
  external factory TextFormatInit({
    JSNumber rangeStart,
    JSNumber rangeEnd,
    JSString textColor,
    JSString backgroundColor,
    JSString underlineStyle,
    JSString underlineThickness,
    JSString underlineColor,
  });
}

extension TextFormatInitExtension on TextFormatInit {
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

@JS()
@staticInterop
@anonymous
class TextFormatUpdateEventInit {
  external factory TextFormatUpdateEventInit({JSArray textFormats});
}

extension TextFormatUpdateEventInitExtension on TextFormatUpdateEventInit {
  external set textFormats(JSArray value);
  external JSArray get textFormats;
}

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

@JS()
@staticInterop
@anonymous
class CharacterBoundsUpdateEventInit {
  external factory CharacterBoundsUpdateEventInit({
    JSNumber rangeStart,
    JSNumber rangeEnd,
  });
}

extension CharacterBoundsUpdateEventInitExtension
    on CharacterBoundsUpdateEventInit {
  external set rangeStart(JSNumber value);
  external JSNumber get rangeStart;
  external set rangeEnd(JSNumber value);
  external JSNumber get rangeEnd;
}

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
