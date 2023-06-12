// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

@JS('Selection')
@staticInterop
class Selection implements JSObject {}

extension SelectionExtension on Selection {
  external Range getRangeAt(int index);
  external JSVoid addRange(Range range);
  external JSVoid removeRange(Range range);
  external JSVoid removeAllRanges();
  external JSVoid empty();
  external JSArray getComposedRanges(ShadowRoot shadowRoots);
  external JSVoid collapse(
    Node? node, [
    int offset,
  ]);
  external JSVoid setPosition(
    Node? node, [
    int offset,
  ]);
  external JSVoid collapseToStart();
  external JSVoid collapseToEnd();
  external JSVoid extend(
    Node node, [
    int offset,
  ]);
  external JSVoid setBaseAndExtent(
    Node anchorNode,
    int anchorOffset,
    Node focusNode,
    int focusOffset,
  );
  external JSVoid selectAllChildren(Node node);
  external JSVoid modify([
    String alter,
    String direction,
    String granularity,
  ]);
  external JSVoid deleteFromDocument();
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
