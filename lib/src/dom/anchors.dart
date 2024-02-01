// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library anchors;

import 'dart:js_interop';

import 'webxr.dart';

extension type XRAnchor._(JSObject _) implements JSObject {
  external JSPromise requestPersistentHandle();
  external void delete();
  external XRSpace get anchorSpace;
}
extension type XRAnchorSet._(JSObject _) implements JSObject {}
