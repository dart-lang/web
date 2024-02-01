// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library css_view_transitions;

import 'dart:js_interop';

typedef UpdateCallback = JSFunction;
extension type ViewTransition._(JSObject _) implements JSObject {
  external void skipTransition();
  external JSPromise get updateCallbackDone;
  external JSPromise get ready;
  external JSPromise get finished;
}
