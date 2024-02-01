// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library testutils;

import 'dart:js_interop';

@JS()
external $TestUtils get TestUtils;
@JS('TestUtils')
extension type $TestUtils._(JSObject _) implements JSObject {
  external JSPromise gc();
}
