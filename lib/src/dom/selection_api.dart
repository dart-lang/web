// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

@JS('Selection')
@staticInterop
class Selection implements JSObject {}

extension SelectionExtension on Selection {
  external Range getRangeAt(JSNumber index);
  external JSVoid addRange(Range range);
  external JSVoid removeRange(Range range);
  external JSVoid removeAllRanges();
  external JSVoid empty();
  external JSArray getComposedRanges(ShadowRoot shadowRoots);
  external JSVoid collapse(
    Node? node, [
    JSNumber offset,
  ]);
  external JSVoid setPosition(
    Node? node, [
    JSNumber offset,
  ]);
  external JSVoid collapseToStart();
  external JSVoid collapseToEnd();
  external JSVoid extend(
    Node node, [
    JSNumber offset,
  ]);
  external JSVoid setBaseAndExtent(
    Node anchorNode,
    JSNumber anchorOffset,
    Node focusNode,
    JSNumber focusOffset,
  );
  external JSVoid selectAllChildren(Node node);
  external JSVoid modify([
    JSString alter,
    JSString direction,
    JSString granularity,
  ]);
  external JSVoid deleteFromDocument();
  external JSBoolean containsNode(
    Node node, [
    JSBoolean allowPartialContainment,
  ]);
  external Node? get anchorNode;
  external JSNumber get anchorOffset;
  external Node? get focusNode;
  external JSNumber get focusOffset;
  external JSBoolean get isCollapsed;
  external JSNumber get rangeCount;
  external JSString get type;
  external JSString get direction;
}
