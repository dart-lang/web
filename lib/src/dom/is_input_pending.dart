// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
@staticInterop
@anonymous
class IsInputPendingOptions {
  external factory IsInputPendingOptions({JSBoolean includeContinuous = false});
}

extension IsInputPendingOptionsExtension on IsInputPendingOptions {
  external set includeContinuous(JSBoolean value);
  external JSBoolean get includeContinuous;
}

@JS('Scheduling')
@staticInterop
class Scheduling {}

extension SchedulingExtension on Scheduling {
  external JSBoolean isInputPending(
      [IsInputPendingOptions isInputPendingOptions]);
}
