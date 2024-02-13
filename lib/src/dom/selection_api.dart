// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

/// A **`Selection`** object represents the range of text selected by the user
/// or the current position of the caret. To obtain a `Selection` object for
/// examination or manipulation, call [window.getSelection].
///
/// A user may make a selection from left to right (in document order) or right
/// to left (reverse of document order). The **_anchor_** is where the user
/// began the selection and the **_focus_** is where the user ends the
/// selection. If you make a selection with a desktop mouse, the anchor is
/// placed where you pressed the mouse button, and the focus is placed where you
/// released the mouse button.
///
/// > **Note:** _Anchor_ and _focus_ should not be confused with the _start_ and
/// > _end_ positions of a selection. The anchor can be placed before the focus
/// > or vice versa, depending on the direction you made your selection.
extension type Selection._(JSObject _) implements JSObject {
  /// The **`Selection.getRangeAt()`** method returns a range object
  /// representing one of the ranges currently selected.
  external Range getRangeAt(int index);

  /// The **`Selection.addRange()`** method adds a
  /// [Range] to a [Selection].
  external void addRange(Range range);

  /// The **`Selection.removeRange()`** method removes a range from a
  /// selection.
  external void removeRange(Range range);

  /// The **`Selection.removeAllRanges()`** method removes all ranges from the
  /// selection, leaving the [Selection.anchorNode] and [Selection.focusNode]
  /// properties equal to `null` and nothing selected. When this method is
  /// called, a [Document/selectionchange_event] event is fired at the document.
  ///
  /// > **Note:** This method is an alias for the [Selection.empty] method.
  external void removeAllRanges();

  /// The **`Selection.empty()`** method removes all ranges from the selection,
  /// leaving the [Selection.anchorNode] and [Selection.focusNode] properties
  /// equal to `null` and nothing selected. When this method is called, a
  /// [Document/selectionchange_event] event is fired at the document.
  ///
  /// > **Note:** This method is an alias for the [Selection.removeAllRanges]
  /// > method.
  external void empty();
  external JSArray<StaticRange> getComposedRanges(ShadowRoot shadowRoots);

  /// The **`Selection.collapse()`** method collapses the current selection to a
  /// single point. The document is not modified. If the content is focused and
  /// editable, the caret will blink there.
  ///
  /// > **Note:** This method is an alias for the [Selection.setPosition]
  /// > method.
  external void collapse(
    Node? node, [
    int offset,
  ]);

  /// The **`Selection.setPosition()`** method collapses the current selection
  /// to a single point. The document is not modified. If the content is focused
  /// and editable, the caret will blink there.
  ///
  /// > **Note:** This method is an alias for the [Selection.collapse] method.
  external void setPosition(
    Node? node, [
    int offset,
  ]);

  /// The **`Selection.collapseToStart()`** method collapses the
  /// selection to the start of the first range in the selection. If the content
  /// of the
  /// selection is focused and editable, the caret will blink there.
  external void collapseToStart();

  /// The **`Selection.collapseToEnd()`** method collapses the
  /// selection to the end of the last range in the selection. If the content of
  /// the selection
  /// is focused and editable, the caret will blink there.
  external void collapseToEnd();

  /// The **`Selection.extend()`** method moves the focus of the
  /// selection to a specified point. The anchor of the selection does not move.
  /// The selection
  /// will be from the anchor to the new focus, regardless of direction.
  external void extend(
    Node node, [
    int offset,
  ]);

  /// The **`setBaseAndExtent()`** method of the
  /// [Selection] interface sets the selection to be a range including all or
  /// parts of two specified DOM nodes, and any content located between them.
  external void setBaseAndExtent(
    Node anchorNode,
    int anchorOffset,
    Node focusNode,
    int focusOffset,
  );

  /// The **`Selection.selectAllChildren()`** method adds all the
  /// children of the specified node to the selection. Previous selection is
  /// lost.
  external void selectAllChildren(Node node);

  /// The **`Selection.modify()`** method applies a change to the
  /// current selection or cursor position, using simple textual commands.
  external void modify([
    String alter,
    String direction,
    String granularity,
  ]);

  /// The **`deleteFromDocument()`** method of the
  /// [Selection] interface deletes the selected text from the document's DOM.
  external void deleteFromDocument();

  /// The **`Selection.containsNode()`** method indicates whether a
  /// specified node is part of the selection.
  external bool containsNode(
    Node node, [
    bool allowPartialContainment,
  ]);
  external Node? get anchorNode;
  external int get anchorOffset;
  external Node? get focusNode;
  external int get focusOffset;
  external bool get isCollapsed;
  external int get rangeCount;
  external String get type;
  external String get direction;
}
