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

@JS()
@staticInterop
@anonymous
class ColorSelectionResult {
  external factory ColorSelectionResult({String sRGBHex});
}

extension ColorSelectionResultExtension on ColorSelectionResult {
  external set sRGBHex(String value);
  external String get sRGBHex;
}

@JS()
@staticInterop
@anonymous
class ColorSelectionOptions {
  external factory ColorSelectionOptions({AbortSignal signal});
}

extension ColorSelectionOptionsExtension on ColorSelectionOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

/// The **`EyeDropper`** interface represents an instance of an eyedropper tool
/// that can be opened and used by the user to select colors from the screen.
@JS('EyeDropper')
@staticInterop
class EyeDropper {
  external factory EyeDropper();
}

extension EyeDropperExtension on EyeDropper {
  /// The **`EyeDropper.open()`** method starts the eyedropper mode, returning a
  /// promise which is fulfilled once the user has selected a color and exited
  /// the eyedropper mode.
  external JSPromise open([ColorSelectionOptions options]);
}
