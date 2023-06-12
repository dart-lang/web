// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

typedef HighlightType = String;

@JS('Highlight')
@staticInterop
class Highlight implements JSObject {
  external factory Highlight(AbstractRange initialRanges);
}

extension HighlightExtension on Highlight {
  external set priority(int value);
  external int get priority;
  external set type(HighlightType value);
  external HighlightType get type;
}

@JS('HighlightRegistry')
@staticInterop
class HighlightRegistry implements JSObject {}

extension HighlightRegistryExtension on HighlightRegistry {}
