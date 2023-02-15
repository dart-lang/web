// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

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
  external JSVoid addRange(Range range);
  external JSVoid removeRange(Range range);
  external JSVoid removeAllRanges();
  external JSVoid empty();
  external StaticRange getComposedRange(ShadowRoot shadowRoots);
  external JSVoid collapse(Node? node);
  external JSVoid collapse1(
    Node? node,
    JSNumber offset,
  );
  external JSVoid setPosition(Node? node);
  external JSVoid setPosition1(
    Node? node,
    JSNumber offset,
  );
  external JSVoid collapseToStart();
  external JSVoid collapseToEnd();
  external JSVoid extend(Node node);
  external JSVoid extend1(
    Node node,
    JSNumber offset,
  );
  external JSVoid setBaseAndExtent(
    Node anchorNode,
    JSNumber anchorOffset,
    Node focusNode,
    JSNumber focusOffset,
  );
  external JSVoid selectAllChildren(Node node);
  external JSVoid modify();
  external JSVoid modify1(JSString alter);
  external JSVoid modify2(
    JSString alter,
    JSString direction,
  );
  external JSVoid modify3(
    JSString alter,
    JSString direction,
    JSString granularity,
  );
  external JSVoid deleteFromDocument();
  external JSBoolean containsNode(Node node);
  external JSBoolean containsNode1(
    Node node,
    JSBoolean allowPartialContainment,
  );
}
