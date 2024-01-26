// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
