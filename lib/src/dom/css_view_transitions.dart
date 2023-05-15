// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef UpdateCallback = JSFunction;

@JS('ViewTransition')
@staticInterop
class ViewTransition implements JSObject {}

extension ViewTransitionExtension on ViewTransition {
  external JSVoid skipTransition();
  external JSPromise get updateCallbackDone;
  external JSPromise get ready;
  external JSPromise get finished;
}
