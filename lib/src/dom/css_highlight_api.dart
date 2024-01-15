// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'status.dart';

typedef HighlightType = String;

@JS('Highlight')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class Highlight {
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
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class HighlightRegistry {}

extension HighlightRegistryExtension on HighlightRegistry {}
