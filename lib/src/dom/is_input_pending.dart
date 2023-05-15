// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class IsInputPendingOptions implements JSObject {
  external factory IsInputPendingOptions({JSBoolean includeContinuous});
}

extension IsInputPendingOptionsExtension on IsInputPendingOptions {
  external set includeContinuous(JSBoolean value);
  external JSBoolean get includeContinuous;
}

@JS('Scheduling')
@staticInterop
class Scheduling implements JSObject {}

extension SchedulingExtension on Scheduling {
  external JSBoolean isInputPending(
      [IsInputPendingOptions isInputPendingOptions]);
}
