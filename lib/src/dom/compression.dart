// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'streams.dart';

typedef CompressionFormat = String;
extension type CompressionStream._(JSObject _) implements JSObject {
  external factory CompressionStream(CompressionFormat format);

  external ReadableStream get readable;
  external WritableStream get writable;
}
extension type DecompressionStream._(JSObject _) implements JSObject {
  external factory DecompressionStream(CompressionFormat format);

  external ReadableStream get readable;
  external WritableStream get writable;
}
