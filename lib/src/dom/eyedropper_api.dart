// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

extension type ColorSelectionResult._(JSObject _) implements JSObject {
  external factory ColorSelectionResult({String sRGBHex});

  external set sRGBHex(String value);
  external String get sRGBHex;
}
extension type ColorSelectionOptions._(JSObject _) implements JSObject {
  external factory ColorSelectionOptions({AbortSignal signal});

  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
extension type EyeDropper._(JSObject _) implements JSObject {
  external factory EyeDropper();

  external JSPromise<ColorSelectionResult> open(
      [ColorSelectionOptions options]);
}
