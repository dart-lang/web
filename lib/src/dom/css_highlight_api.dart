// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

typedef HighlightType = JSString;

@JS('Highlight')
@staticInterop
class Highlight {
  external factory Highlight();

  external factory Highlight.a1(AbstractRange initialRanges);
}

extension HighlightExtension on Highlight {
  external set priority(JSNumber value);
  external JSNumber get priority;
  external set type(HighlightType value);
  external HighlightType get type;
}

@JS('HighlightRegistry')
@staticInterop
class HighlightRegistry {
  external factory HighlightRegistry();
}

extension HighlightRegistryExtension on HighlightRegistry {}
