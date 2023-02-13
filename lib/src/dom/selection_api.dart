// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('Selection')
@staticInterop
class Selection {
  external factory Selection();
}

extension SelectionExtension on Selection {
  external Node? get anchorNode;
  external JSNumber get anchorOffset;
  external Node? get focusNode;
  external JSNumber get focusOffset;
  external JSBoolean get isCollapsed;
  external JSNumber get rangeCount;
  external JSString get type;
  external Range getRangeAt(JSNumber index);
  external JSUndefined addRange(Range range);
  external JSUndefined removeRange(Range range);
  external JSUndefined removeAllRanges();
  external JSUndefined empty();
  external StaticRange getComposedRange(ShadowRoot shadowRoots);
  external JSUndefined collapse(Node? node);
  external JSUndefined collapse_1(Node? node, JSNumber offset);
  external JSUndefined setPosition(Node? node);
  external JSUndefined setPosition_1(Node? node, JSNumber offset);
  external JSUndefined collapseToStart();
  external JSUndefined collapseToEnd();
  external JSUndefined extend(Node node);
  external JSUndefined extend_1(Node node, JSNumber offset);
  external JSUndefined setBaseAndExtent(Node anchorNode, JSNumber anchorOffset,
      Node focusNode, JSNumber focusOffset);
  external JSUndefined selectAllChildren(Node node);
  external JSUndefined modify();
  external JSUndefined modify_1(JSString alter);
  external JSUndefined modify_2(JSString alter, JSString direction);
  external JSUndefined modify_3(
      JSString alter, JSString direction, JSString granularity);
  external JSUndefined deleteFromDocument();
  external JSBoolean containsNode(Node node);
  external JSBoolean containsNode_1(
      Node node, JSBoolean allowPartialContainment);
}
