// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

extension type ContentVisibilityAutoStateChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory ContentVisibilityAutoStateChangeEvent(
    String type, [
    ContentVisibilityAutoStateChangeEventInit eventInitDict,
  ]);

  external bool get skipped;
}
extension type ContentVisibilityAutoStateChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory ContentVisibilityAutoStateChangeEventInit({bool skipped});

  external set skipped(bool value);
  external bool get skipped;
}
