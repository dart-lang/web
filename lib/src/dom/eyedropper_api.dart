// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('ColorSelectionResult')
@staticInterop
class ColorSelectionResult {
  external factory ColorSelectionResult();
}

extension ColorSelectionResultExtension on ColorSelectionResult {}

@JS('ColorSelectionOptions')
@staticInterop
class ColorSelectionOptions {
  external factory ColorSelectionOptions();
}

extension ColorSelectionOptionsExtension on ColorSelectionOptions {}

@JS('EyeDropper')
@staticInterop
class EyeDropper {
  external factory EyeDropper.a0();
}

extension EyeDropperExtension on EyeDropper {
  external JSPromise open();
  external JSPromise open1(ColorSelectionOptions options);
}
