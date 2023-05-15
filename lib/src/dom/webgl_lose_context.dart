// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('WEBGL_lose_context')
@staticInterop
class WEBGL_lose_context implements JSObject {}

extension WEBGLLoseContextExtension on WEBGL_lose_context {
  external JSVoid loseContext();
  external JSVoid restoreContext();
}
