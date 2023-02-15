// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('IsInputPendingOptions')
@staticInterop
class IsInputPendingOptions {
  external factory IsInputPendingOptions();
}

extension IsInputPendingOptionsExtension on IsInputPendingOptions {}

@JS('Scheduling')
@staticInterop
class Scheduling {
  external factory Scheduling();
}

extension SchedulingExtension on Scheduling {
  external JSBoolean isInputPending();
  external JSBoolean isInputPending1(
      IsInputPendingOptions isInputPendingOptions);
}
