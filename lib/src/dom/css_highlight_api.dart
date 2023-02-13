// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef HighlightType = JSString;

@JS('Highlight')
@staticInterop
class Highlight {
  external factory Highlight();
  external factory Highlight.a1(AbstractRange initialRanges);
}

extension HighlightExtension on Highlight {
  // TODO
  external JSNumber get priority;
  external set priority(JSNumber value);
  external HighlightType get type;
  external set type(HighlightType value);
}

@JS('HighlightRegistry')
@staticInterop
class HighlightRegistry {
  external factory HighlightRegistry();
}

extension HighlightRegistryExtension on HighlightRegistry {
  // TODO
}
