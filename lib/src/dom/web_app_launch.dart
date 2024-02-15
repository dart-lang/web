// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'fs.dart';

typedef LaunchConsumer = JSFunction;
extension type LaunchParams._(JSObject _) implements JSObject {
  external String? get targetURL;
  external JSArray<FileSystemHandle> get files;
}
extension type LaunchQueue._(JSObject _) implements JSObject {
  external void setConsumer(LaunchConsumer consumer);
}
