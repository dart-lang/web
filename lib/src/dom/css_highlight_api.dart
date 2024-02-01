// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library css_highlight_api;

import 'dart:js_interop';

import 'dom.dart';

typedef HighlightType = String;
extension type Highlight._(JSObject _) implements JSObject {
  external factory Highlight(AbstractRange initialRanges);

  external set priority(int value);
  external int get priority;
  external set type(HighlightType value);
  external HighlightType get type;
}
extension type HighlightRegistry._(JSObject _) implements JSObject {}
