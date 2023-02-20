// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS()
@staticInterop
@anonymous
class ColorSelectionResult {
  external factory ColorSelectionResult({JSString sRGBHex});
}

extension ColorSelectionResultExtension on ColorSelectionResult {
  external set sRGBHex(JSString value);
  external JSString get sRGBHex;
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

@JS('EyeDropper')
@staticInterop
class EyeDropper {
  external factory EyeDropper.a0();
}

extension EyeDropperExtension on EyeDropper {
  external JSPromise open();
  external JSPromise open1(ColorSelectionOptions options);
}
