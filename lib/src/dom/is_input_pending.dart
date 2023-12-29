// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

extension type IsInputPendingOptions._(JSObject _) implements JSObject {
  external factory IsInputPendingOptions({bool includeContinuous});
}

extension IsInputPendingOptionsExtension on IsInputPendingOptions {
  external set includeContinuous(bool value);
  external bool get includeContinuous;
}

extension type Scheduling._(JSObject _) implements JSObject {}

extension SchedulingExtension on Scheduling {
  external bool isInputPending([IsInputPendingOptions isInputPendingOptions]);
}
