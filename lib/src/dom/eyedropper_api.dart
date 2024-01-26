// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

  /// The **`EyeDropper.open()`** method starts the eyedropper mode, returning a
  /// promise which is fulfilled once the user has selected a color and exited
  /// the eyedropper mode.
  external JSPromise open([ColorSelectionOptions options]);
}
