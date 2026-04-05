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

  external String get text;
  external set text(String value);
  external int get selectionStart;
  external set selectionStart(int value);
  external int get selectionEnd;
  external set selectionEnd(int value);
}

/// The **`EditContext`** interface represents the text edit context of an
/// element that was made editable by using the [EditContext API].
///
/// The [EditContext API] can be used to build rich text editors on the web that
/// support advanced text input experiences, such as  (IME) composition, emoji
/// picker, or any other platform-specific editing-related UI surfaces.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/EditContext).
extension type EditContext._(JSObject _) implements EventTarget, JSObject {
  external factory EditContext([EditContextInit options]);

  /// The **`updateText()`** method of the [EditContext] interface updates the
  /// internal text content of an `EditContext` object.
  ///
  /// This method doesn't need to be used when the user types text in the
  /// associated element. The `EditContext` object will automatically update its
  /// internal text content, and will fire [EditContext.textupdate_event] events
  /// as needed.
  ///
  /// This method can, however, be used when the user interacts with the text
  /// content in other ways, such as when pasting text from the clipboard.
  external void updateText(
    int rangeStart,
    int rangeEnd,
    String text,
  );

  /// The **`updateSelection()`** method of the [EditContext] interface updates
  /// the internal state of the selection within the editable text context. This
  /// method is used to update the selection state when the user interacts with
  /// the text rendering in the `EditContext`'s associated element, such as by
  /// clicking or dragging the mouse, or by using the keyboard.
  external void updateSelection(
    int start,
    int end,
  );

  /// The **`EditContext.updateControlBounds()`** method of the [EditContext]
  /// interface is used to inform the operating system about the position and
  /// size of the editable text region of the `EditContext` object.
  ///
  /// Call this method to tell the operating system the bounds of the current
  /// editable region. You should call it when initializing the EditContext, and
  /// whenever the editable region's bounds change such as when the webpage is
  /// resized. These bounds are used to position platform-specific
  /// editing-related UI surfaces such as an  (IME) window.
  external void updateControlBounds(DOMRect controlBounds);

  /// The **`EditContext.updateSelectionBounds()`** method of the [EditContext]
  /// interface is used to inform the operating system about the bounds of the
  /// text selection within the editable region that's associated with the
  /// `EditContext` object.
  ///
  /// Call this method to tell the operating system the bounds of the user's
  /// current selection. You should call the method whenever the user's
  /// selection changes in the editable region. The selection bounds are used by
  /// the operating system to help position the IME window or any other
  /// platform-specific editing-related UI surfaces.
  external void updateSelectionBounds(DOMRect selectionBounds);

  /// The **`EditContext.updateCharacterBounds()`** method of the [EditContext]
  /// interface should be called as response to a
  /// [EditContext.characterboundsupdate_event] event to inform the operating
  /// system about the position and size of the characters in the `EditContext`
  /// object.
  ///
  /// The `characterboundsupdate` event is the only time you need to call the
  /// `updateCharacterBounds()` method.
  ///
  /// The character bounds information is then used by the operating system to
  /// correctly position the  (IME) window when needed. This is especially
  /// important in situations where the operating system can't automatically
  /// detect the position and size of the characters, such as when rendering
  /// text in a `<canvas>` element.
  ///
  /// ### Avoid sudden jumps in the IME window position
  ///
  /// Calculating the character bounds and calling `updateCharacterBounds`
  /// synchronously, within the `characterboundsupdate` event ensures that the
  /// operating system has the information it needs when it displays the IME
  /// window. If you don't call `updateCharacterBounds()` synchronously within
  /// the event handler, users may observe the IME window being displayed in the
  /// wrong position before being moved to the correct position.
  ///
  /// ### Which characters to include
  ///
  /// The `updateCharacterBounds()` method should only be called when the
  /// operating system indicates that it requires the information, and only for
  /// the characters that are included in the current IME composition.
  ///
  /// The event object passed to the `characterboundsupdate` event handler
  /// contains a `rangeStart` and `rangeEnd` properties that indicate the range
  /// of characters that are currently being composed. The
  /// `updateCharacterBounds()` method should only be called for the characters
  /// in this range.
  external void updateCharacterBounds(
    int rangeStart,
    JSArray<DOMRect> characterBounds,
  );

  /// The **`attachedElements()`** method of the [EditContext] interface returns
  /// an `Array` that contains only one item. This item is the element that's
  /// associated with the `EditContext` object.
  external JSArray<HTMLElement> attachedElements();

  /// The **`characterBounds()`** method of the [EditContext] interface returns
  /// an `Array` containing the list of bounding rectangles for the characters
  /// in the `EditContext` object.
  ///
  /// The position and size of the characters in an `EditContext` object is used
  /// by the operating system to correctly position platform-specific
  /// editing-related UI surfaces such as an  (IME) window when needed. This is
  /// especially important in situations where the operating system can't
  /// automatically detect the position and size of the characters, such as when
  /// rendering text in a `<canvas>` element.
  ///
  /// Web developers will most likely be interested in using the
  /// [EditContext.characterboundsupdate_event] event together with the
  /// [EditContext.updateCharacterBounds] method to update the character bounds
  /// when the operating system indicates that it requires information about the
  /// position and size of the characters.
  ///
  /// The `characterBounds()` method returns the list of character bounds that
  /// were last updated with `updateCharacterBounds()`. The list doesn't contain
  /// an item for every character in the `EditContext` object, only for the
  /// characters that were updated with `updateCharacterBounds()`. To know where
  /// the characters are located in the `EditContext` object, use the
  /// [EditContext.characterBoundsRangeStart] property.
  external JSArray<DOMRect> characterBounds();

  /// The **`text`** read-only property of the [EditContext] interface
  /// represents the editable content of the element.
  external String get text;

  /// The **`selectionStart`** read-only property of the [EditContext] refers to
  /// the offset, within the editable text content, of the start of the current
  /// selection.
  external int get selectionStart;

  /// The **`selectionEnd`** read-only property of the [EditContext] refers to
  /// the offset, within the editable text content, of the end of the current
  /// selection.
  external int get selectionEnd;

  /// The **`characterBoundsRangeStart`** read-only property of the
  /// [EditContext] interface indicates the index of the character, within the
  /// editable text content, that corresponds to the first item in the
  /// [EditContext.characterBounds] array.
  ///
  /// For example, if the `EditContent` contains the characters `abc`, and if
  /// `characterBoundRangeStart` is `1`, the first item in the `characterBounds`
  /// array contains the bounds for the character `b`.
  external int get characterBoundsRangeStart;
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
extension type TextUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TextUpdateEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    int updateRangeStart,
    int updateRangeEnd,
    String text,
    int selectionStart,
    int selectionEnd,
    int compositionStart,
    int compositionEnd,
  });

  external int get updateRangeStart;
  external set updateRangeStart(int value);
  external int get updateRangeEnd;
  external set updateRangeEnd(int value);
  external String get text;
  external set text(String value);
  external int get selectionStart;
  external set selectionStart(int value);
  external int get selectionEnd;
  external set selectionEnd(int value);
  external int get compositionStart;
  external set compositionStart(int value);
  external int get compositionEnd;
  external set compositionEnd(int value);
}

/// The **`TextUpdateEvent`** interface is a
/// [DOM event](https://developer.mozilla.org/en-US/docs/Web/API/Event) that
/// represents a text or selection update in an editable text region that's
/// attached to an [EditContext] instance.
///
/// This interface inherits properties from [Event].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextUpdateEvent).
extension type TextUpdateEvent._(JSObject _) implements Event, JSObject {
  external factory TextUpdateEvent(
    String type, [
    TextUpdateEventInit options,
  ]);

  /// The **`TextUpdateEvent.updateRangeStart`** read-only property indicates
  /// the start position of the text range that is being replaced in the
  /// [EditContext] object.
  external int get updateRangeStart;

  /// The **`TextUpdateEvent.updateRangeEnd`** read-only property indicates the
  /// end position of the text range that is being replaced in the [EditContext]
  /// object.
  external int get updateRangeEnd;

  /// The **`TextUpdateEvent.text`** read-only property contains the text that
  /// was inserted within the updated range of a [EditContext]'s `textupdate`
  /// event.
  external String get text;

  /// The **`TextUpdateEvent.selectionStart`** read-only property indicates the
  /// position of the start of the selection (or caret) within the text content
  /// of the editable region attached to the [EditContext] object.
  external int get selectionStart;

  /// The **`TextUpdateEvent.selectionEnd`** read-only property indicates the
  /// position of the end of the selection (or caret) within the text content of
  /// the editable region attached to the [EditContext] object.
  external int get selectionEnd;
}
extension type TextFormatInit._(JSObject _) implements JSObject {
  external factory TextFormatInit({
    int rangeStart,
    int rangeEnd,
    UnderlineStyle underlineStyle,
    UnderlineThickness underlineThickness,
  });

  external int get rangeStart;
  external set rangeStart(int value);
  external int get rangeEnd;
  external set rangeEnd(int value);
  external UnderlineStyle get underlineStyle;
  external set underlineStyle(UnderlineStyle value);
  external UnderlineThickness get underlineThickness;
  external set underlineThickness(UnderlineThickness value);
}

/// The **`TextFormat`** interface represents specific formatting that should be
/// applied to a range of text in an editable text region that's attached to an
/// [EditContext] instance. The text formatting is requested by the  (IME)
/// window that the user is composing text with.
///
/// When using one of the default editable regions of the web, such as a
/// [`<textarea>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
/// element, IME composition is handled by the browser and operating system for
/// you. For example, when using Japanese IME in a textarea, on Windows, the
/// following text formats can be applied:
///
/// - When text is being composed with the keyboard, the typed characters have a
///   thin wavy underline:
///
/// ![A textarea in Microsoft Edge on Windows with some Japanese text being composed from the IME window](./ime-squiggle-underline.png)
///
/// - When the user selects a suggestion from the list of candidates in the IME
///   window, the text is replaced and is underlined with a thick solid line:
///
/// ![A textarea in Microsoft Edge on Windows with some Japanese text being selected from the IME window](./ime-solid-underline.png)
///
/// When creating your own custom editable region by using the
/// [EditContext API], you need to handle IME composition yourself. You should
/// listen for the [EditContext.textformatupdate_event] event, which gives you
/// the list of text formats that the IME window wants to apply to the text
/// being composed. You should then update the formatting of the text displayed
/// in your editable region accordingly.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextFormat).
extension type TextFormat._(JSObject _) implements JSObject {
  external factory TextFormat([TextFormatInit options]);

  /// The **`rangeStart`** property of the [TextFormat] interface indicates the
  /// start position of the text range that needs to be formatted with the given
  /// text format.
  external int get rangeStart;

  /// The **`rangeEnd`** property of the [TextFormat] interface indicates the
  /// end position of the text range that needs to be formatted with the given
  /// text format.
  external int get rangeEnd;

  /// The **`underlineStyle`** property of the [TextFormat] interface indicates
  /// the style of the underline that needs to be applied to the text range that
  /// is being formatted.
  external UnderlineStyle get underlineStyle;

  /// The **`underlineThickness`** property of the [TextFormat] interface
  /// indicates the thickness of the underline that needs to be applied to the
  /// text range that is being formatted.
  external UnderlineThickness get underlineThickness;
}
extension type TextFormatUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TextFormatUpdateEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    JSArray<TextFormat> textFormats,
  });

  external JSArray<TextFormat> get textFormats;
  external set textFormats(JSArray<TextFormat> value);
}

/// The **`TextFormatUpdateEvent`** interface is a
/// [DOM event](https://developer.mozilla.org/en-US/docs/Web/API/Event) that
/// represents a list of text formats that an  (IME) window wants to apply to
/// the text being composed in an editable region that's attached to an
/// [EditContext] instance.
///
/// This interface inherits properties from [Event].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextFormatUpdateEvent).
extension type TextFormatUpdateEvent._(JSObject _) implements Event, JSObject {
  external factory TextFormatUpdateEvent(
    String type, [
    TextFormatUpdateEventInit options,
  ]);

  /// The **`getTextFormats()`** method of the [TextFormatUpdateEvent] interface
  /// returns an `Array` of [TextFormat] objects that represent the formats that
  /// an  (IME) window wants to apply to the text being composed.
  external JSArray<TextFormat> getTextFormats();
}
extension type CharacterBoundsUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory CharacterBoundsUpdateEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    int rangeStart,
    int rangeEnd,
  });

  external int get rangeStart;
  external set rangeStart(int value);
  external int get rangeEnd;
  external set rangeEnd(int value);
}

/// The **`CharacterBoundsUpdateEvent`** interface is a
/// [DOM event](https://developer.mozilla.org/en-US/docs/Web/API/Event) that
/// represents a request from the operating system to know the bounds of certain
/// characters within an editable region that's attached to an [EditContext]
/// instance.
///
/// This interface inherits properties from [Event].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CharacterBoundsUpdateEvent).
extension type CharacterBoundsUpdateEvent._(JSObject _)
    implements Event, JSObject {
  external factory CharacterBoundsUpdateEvent(
    String type, [
    CharacterBoundsUpdateEventInit options,
  ]);

  /// The **`CharacterBoundsUpdateEvent.rangeStart`** read-only property
  /// represents the offset of the first character within the editable text
  /// region for which the operating system needs the bounds.
  external int get rangeStart;

  /// The **`CharacterBoundsUpdateEvent.rangeEnd`** read-only property
  /// represents the offset of the last character within the editable text
  /// region for which the operating system needs the bounds.
  external int get rangeEnd;
}
