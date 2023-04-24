// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
external WebRefIDL get idl;

@JS()
@staticInterop
class WebRefIDL {}

// TODO(joshualitt): Replace `JSObject` with `JSPromise`.
extension WebRefIDLExtension on WebRefIDL {
  external JSObject parseAll();
}
