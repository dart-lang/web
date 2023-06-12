// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'streams.dart';

typedef CompressionFormat = String;

@JS('CompressionStream')
@staticInterop
class CompressionStream implements GenericTransformStream {
  external factory CompressionStream(CompressionFormat format);
}

@JS('DecompressionStream')
@staticInterop
class DecompressionStream implements GenericTransformStream {
  external factory DecompressionStream(CompressionFormat format);
}
