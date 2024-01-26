// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

typedef UnderlineStyle = String;
typedef UnderlineThickness = String;
extension type EditContextInit._(JSObject _) implements JSObject {
  external factory EditContextInit({
    String text,
    int selectionStart,
    int selectionEnd,
  });

  external set text(String value);
  external String get text;
  external set selectionStart(int value);
  external int get selectionStart;
  external set selectionEnd(int value);
  external int get selectionEnd;
}
extension type EditContext._(JSObject _) implements EventTarget, JSObject {
  external factory EditContext([EditContextInit options]);

  external void updateText(
    int rangeStart,
    int rangeEnd,
    String text,
  );
  external void updateSelection(
    int start,
    int end,
  );
  external void updateControlBounds(DOMRect controlBounds);
  external void updateSelectionBounds(DOMRect selectionBounds);
  external void updateCharacterBounds(
    int rangeStart,
    JSArray characterBounds,
  );
  external JSArray attachedElements();
  external JSArray characterBounds();
  external String get text;
  external int get selectionStart;
  external int get selectionEnd;
  external int get compositionRangeStart;
  external int get compositionRangeEnd;
  external bool get isComposing;
  external DOMRect get controlBounds;
  external DOMRect get selectionBounds;
  external int get characterBoundsRangeStart;
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
extension type TextUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TextUpdateEventInit({
    int updateRangeStart,
    int updateRangeEnd,
    String text,
    int selectionStart,
    int selectionEnd,
    int compositionStart,
    int compositionEnd,
  });

  external set updateRangeStart(int value);
  external int get updateRangeStart;
  external set updateRangeEnd(int value);
  external int get updateRangeEnd;
  external set text(String value);
  external String get text;
  external set selectionStart(int value);
  external int get selectionStart;
  external set selectionEnd(int value);
  external int get selectionEnd;
  external set compositionStart(int value);
  external int get compositionStart;
  external set compositionEnd(int value);
  external int get compositionEnd;
}
extension type TextUpdateEvent._(JSObject _) implements Event, JSObject {
  external factory TextUpdateEvent(
    String type, [
    TextUpdateEventInit options,
  ]);

  external int get updateRangeStart;
  external int get updateRangeEnd;
  external String get text;
  external int get selectionStart;
  external int get selectionEnd;
  external int get compositionStart;
  external int get compositionEnd;
}
extension type TextFormatInit._(JSObject _) implements JSObject {
  external factory TextFormatInit({
    int rangeStart,
    int rangeEnd,
    UnderlineStyle underlineStyle,
    UnderlineThickness underlineThickness,
  });

  external set rangeStart(int value);
  external int get rangeStart;
  external set rangeEnd(int value);
  external int get rangeEnd;
  external set underlineStyle(UnderlineStyle value);
  external UnderlineStyle get underlineStyle;
  external set underlineThickness(UnderlineThickness value);
  external UnderlineThickness get underlineThickness;
}
extension type TextFormat._(JSObject _) implements JSObject {
  external factory TextFormat([TextFormatInit options]);

  external int get rangeStart;
  external int get rangeEnd;
  external UnderlineStyle get underlineStyle;
  external UnderlineThickness get underlineThickness;
}
extension type TextFormatUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TextFormatUpdateEventInit({JSArray textFormats});

  external set textFormats(JSArray value);
  external JSArray get textFormats;
}
extension type TextFormatUpdateEvent._(JSObject _) implements Event, JSObject {
  external factory TextFormatUpdateEvent(
    String type, [
    TextFormatUpdateEventInit options,
  ]);

  external JSArray getTextFormats();
}
extension type CharacterBoundsUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory CharacterBoundsUpdateEventInit({
    int rangeStart,
    int rangeEnd,
  });

  external set rangeStart(int value);
  external int get rangeStart;
  external set rangeEnd(int value);
  external int get rangeEnd;
}
extension type CharacterBoundsUpdateEvent._(JSObject _)
    implements Event, JSObject {
  external factory CharacterBoundsUpdateEvent(
    String type, [
    CharacterBoundsUpdateEventInit options,
  ]);

  external int get rangeStart;
  external int get rangeEnd;
}
