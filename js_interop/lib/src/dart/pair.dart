// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import '../pair.dart';

/// Conversion from a two-element [Record] to [JSPair].
extension RecordPairToJSPair<E1 extends JSAny?, E2 extends JSAny?> on (E1, E2) {
  /// Converts [this] to a [JSPair] by shallowly copying it.
  JSPair<E1, E2> get toJS => JSPair<E1, E2>($1, $2);
}
